-- =========================================================================
-- Invoices & Invoice Items — Mutation-based Sync (Phase 8)
-- =========================================================================
-- WHY: Every sale pushed the ENTIRE database as one JSON snapshot into
-- app_snapshots (gzip+base64 blob, re-uploaded on every change). Invoices
-- are the largest, fastest-growing tables, so the snapshot grew without
-- bound while searches still ran locally only.
--
-- This migration moves invoices/invoice_items to the SAME per-table
-- mutation sync every other entity already uses:
--   client --rpc_process_sync_queue--> remote invoices/invoice_items tables
--   other devices <--sync_notifications-- realtime delta fetch + merge
--
-- app_snapshots remains only for essential, small data (the client's
-- _shouldSyncTable now excludes every mutation-synced table).
--
-- Run ONCE in the Supabase SQL Editor. Safe to re-run (idempotent).
--
-- PRE-REQUISITES (already deployed in this project):
--   - 20260531_full_sync_coverage.sql  (rpc_process_sync_queue base)
-- =========================================================================

-- ── 1. Remote invoices ─────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.invoices (
  global_id                        text PRIMARY KEY,
  tenant_id                        integer NOT NULL DEFAULT 1,
  customer_name                    text,
  date                             timestamptz,
  type                             integer NOT NULL DEFAULT 0,
  discount                         double precision NOT NULL DEFAULT 0,
  discount_fils                    bigint NOT NULL DEFAULT 0,
  tax                              double precision NOT NULL DEFAULT 0,
  tax_fils                         bigint NOT NULL DEFAULT 0,
  advance_payment                  double precision NOT NULL DEFAULT 0,
  advance_payment_fils             bigint NOT NULL DEFAULT 0,
  total                            double precision NOT NULL DEFAULT 0,
  total_fils                       bigint NOT NULL DEFAULT 0,
  is_returned                      boolean NOT NULL DEFAULT false,
  original_invoice_global_id       text,
  delivery_address                 text,
  created_by_user_name             text,
  discount_percent                 double precision NOT NULL DEFAULT 0,
  work_shift_global_id             text,
  customer_global_id               text,
  loyalty_discount                 double precision NOT NULL DEFAULT 0,
  loyalty_discount_fils            bigint NOT NULL DEFAULT 0,
  loyalty_points_redeemed          integer NOT NULL DEFAULT 0,
  loyalty_points_earned            integer NOT NULL DEFAULT 0,
  installment_interest_pct         double precision,
  installment_planned_months       integer,
  installment_financed_amount      double precision,
  installment_interest_amount      double precision,
  installment_total_with_interest  double precision,
  installment_suggested_monthly    double precision,
  created_at                       timestamptz,
  updated_at                       timestamptz,
  deleted_at                       timestamptz
);

CREATE INDEX IF NOT EXISTS idx_invoices_tenant   ON public.invoices(tenant_id);
CREATE INDEX IF NOT EXISTS idx_invoices_customer ON public.invoices(customer_global_id);
CREATE INDEX IF NOT EXISTS idx_invoices_updated  ON public.invoices(updated_at);

-- ── 2. Remote invoice_items ────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.invoice_items (
  global_id                    text PRIMARY KEY,
  tenant_id                    integer NOT NULL DEFAULT 1,
  invoice_global_id            text,
  product_name                 text,
  quantity                     double precision,
  price                        double precision,
  price_fils                   bigint NOT NULL DEFAULT 0,
  total                        double precision,
  total_fils                   bigint NOT NULL DEFAULT 0,
  unit_cost                    double precision,
  unit_cost_fils               bigint NOT NULL DEFAULT 0,
  product_global_id            text,
  unit_variant_id              integer,
  unit_label                   text,
  unit_factor                  double precision,
  entered_qty                  double precision,
  base_qty                     double precision,
  product_variant_global_id    text,
  variant_color_name_snapshot  text,
  variant_size_snapshot        text,
  created_at                   timestamptz,
  updated_at                   timestamptz,
  deleted_at                   timestamptz
);

CREATE INDEX IF NOT EXISTS idx_invoice_items_tenant  ON public.invoice_items(tenant_id);
CREATE INDEX IF NOT EXISTS idx_invoice_items_invoice ON public.invoice_items(invoice_global_id);
CREATE INDEX IF NOT EXISTS idx_invoice_items_product ON public.invoice_items(product_global_id);

-- ── 3. RLS (same permissive pattern as the other sync tables) ──────────
ALTER TABLE public.invoices      ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.invoice_items ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'invoices' AND policyname = 'Allow all for service role'
  ) THEN
    CREATE POLICY "Allow all for service role" ON public.invoices FOR ALL USING (true) WITH CHECK (true);
  END IF;
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'invoice_items' AND policyname = 'Allow all for service role'
  ) THEN
    CREATE POLICY "Allow all for service role" ON public.invoice_items FOR ALL USING (true) WITH CHECK (true);
  END IF;
END $$;

-- ── 4. Extend rpc_process_sync_queue via a WRAPPER (additive, safe) ────
-- We never rebuild the 35-handler base function here. Instead:
--   1) rename the existing function to rpc_process_sync_queue_base (once),
--   2) create a wrapper with the SAME public name that handles
--      'invoice' / 'invoice_item' and delegates everything else to base.
-- Re-running is safe: the rename only happens when base doesn't exist yet.
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_proc
    WHERE proname = 'rpc_process_sync_queue'
      AND pronamespace = 'public'::regnamespace
  ) THEN
    RAISE EXCEPTION
      'rpc_process_sync_queue not found — run 20260531_full_sync_coverage.sql first'
      USING ERRCODE = 'P0001';
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM pg_proc
    WHERE proname = 'rpc_process_sync_queue_base'
      AND pronamespace = 'public'::regnamespace
  ) THEN
    ALTER FUNCTION public.rpc_process_sync_queue(jsonb)
      RENAME TO rpc_process_sync_queue_base;
  END IF;
END $$;

DROP FUNCTION IF EXISTS public.rpc_process_sync_queue(jsonb);

CREATE OR REPLACE FUNCTION public.rpc_process_sync_queue(mutations_json jsonb)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public, auth
AS $$
DECLARE
    mutation       jsonb;
    entity_type    text;
    operation      text;
    v_global_id    text;
    v_updated_at   timestamp with time zone;
    v_sender_device_id text;
    v_user_id      uuid;
    v_customer_gid text;
    v_invoice_gid  text;
BEGIN
    v_user_id := auth.uid();

    FOR mutation IN SELECT * FROM jsonb_array_elements(mutations_json)
    LOOP
        entity_type        := mutation->>'_entity_type';
        operation          := mutation->>'_operation';
        v_global_id        := mutation->>'global_id';
        v_sender_device_id := mutation->>'_device_id';

        IF v_sender_device_id IS NULL OR trim(v_sender_device_id) = '' THEN
            v_sender_device_id := 'unknown_device';
        END IF;

        -- ================================================================
        -- INVOICES (insert-mostly; LWW by updated_at)
        -- ================================================================
        IF entity_type = 'invoice' THEN
            v_updated_at := COALESCE((mutation->>'updatedAt')::timestamptz, now());

            IF operation = 'DELETE' THEN
                DELETE FROM invoice_items WHERE invoice_global_id = v_global_id;
                DELETE FROM invoices WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_customer_gid := NULLIF(trim(mutation->>'customerGlobalId'), '');

                INSERT INTO invoices (
                    global_id, tenant_id, customer_name, date, type,
                    discount, discount_fils, tax, tax_fils,
                    advance_payment, advance_payment_fils, total, total_fils,
                    is_returned, original_invoice_global_id, delivery_address,
                    created_by_user_name, discount_percent,
                    work_shift_global_id, customer_global_id,
                    loyalty_discount, loyalty_discount_fils,
                    loyalty_points_redeemed, loyalty_points_earned,
                    installment_interest_pct, installment_planned_months,
                    installment_financed_amount, installment_interest_amount,
                    installment_total_with_interest, installment_suggested_monthly,
                    created_at, updated_at, deleted_at
                ) VALUES (
                    v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'customerName',
                    (mutation->>'date')::timestamptz,
                    COALESCE((mutation->>'type')::integer, 0),
                    COALESCE((mutation->>'discount')::double precision, 0),
                    COALESCE((mutation->>'discountFils')::bigint, 0),
                    COALESCE((mutation->>'tax')::double precision, 0),
                    COALESCE((mutation->>'taxFils')::bigint, 0),
                    COALESCE((mutation->>'advancePayment')::double precision, 0),
                    COALESCE((mutation->>'advancePaymentFils')::bigint, 0),
                    COALESCE((mutation->>'total')::double precision, 0),
                    COALESCE((mutation->>'totalFils')::bigint, 0),
                    (COALESCE((mutation->>'isReturned')::integer, 0) <> 0),
                    NULLIF(trim(mutation->>'originalInvoiceGlobalId'), ''),
                    mutation->>'deliveryAddress',
                    mutation->>'createdByUserName',
                    COALESCE((mutation->>'discountPercent')::double precision, 0),
                    NULLIF(trim(mutation->>'workShiftGlobalId'), ''),
                    v_customer_gid,
                    COALESCE((mutation->>'loyaltyDiscount')::double precision, 0),
                    COALESCE((mutation->>'loyaltyDiscountFils')::bigint, 0),
                    COALESCE((mutation->>'loyaltyPointsRedeemed')::integer, 0),
                    COALESCE((mutation->>'loyaltyPointsEarned')::integer, 0),
                    (mutation->>'installmentInterestPct')::double precision,
                    (mutation->>'installmentPlannedMonths')::integer,
                    (mutation->>'installmentFinancedAmount')::double precision,
                    (mutation->>'installmentInterestAmount')::double precision,
                    (mutation->>'installmentTotalWithInterest')::double precision,
                    (mutation->>'installmentSuggestedMonthly')::double precision,
                    COALESCE((mutation->>'createdAt')::timestamptz, now()),
                    v_updated_at,
                    (mutation->>'deletedAt')::timestamptz
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    customer_name = EXCLUDED.customer_name,
                    date = EXCLUDED.date, type = EXCLUDED.type,
                    discount = EXCLUDED.discount,
                    discount_fils = EXCLUDED.discount_fils,
                    tax = EXCLUDED.tax, tax_fils = EXCLUDED.tax_fils,
                    advance_payment = EXCLUDED.advance_payment,
                    advance_payment_fils = EXCLUDED.advance_payment_fils,
                    total = EXCLUDED.total, total_fils = EXCLUDED.total_fils,
                    is_returned = EXCLUDED.is_returned,
                    original_invoice_global_id = EXCLUDED.original_invoice_global_id,
                    delivery_address = EXCLUDED.delivery_address,
                    created_by_user_name = EXCLUDED.created_by_user_name,
                    discount_percent = EXCLUDED.discount_percent,
                    work_shift_global_id = EXCLUDED.work_shift_global_id,
                    customer_global_id = EXCLUDED.customer_global_id,
                    loyalty_discount = EXCLUDED.loyalty_discount,
                    loyalty_discount_fils = EXCLUDED.loyalty_discount_fils,
                    loyalty_points_redeemed = EXCLUDED.loyalty_points_redeemed,
                    loyalty_points_earned = EXCLUDED.loyalty_points_earned,
                    installment_interest_pct = EXCLUDED.installment_interest_pct,
                    installment_planned_months = EXCLUDED.installment_planned_months,
                    installment_financed_amount = EXCLUDED.installment_financed_amount,
                    installment_interest_amount = EXCLUDED.installment_interest_amount,
                    installment_total_with_interest = EXCLUDED.installment_total_with_interest,
                    installment_suggested_monthly = EXCLUDED.installment_suggested_monthly,
                    updated_at = EXCLUDED.updated_at,
                    deleted_at = EXCLUDED.deleted_at
                WHERE invoices.updated_at IS NULL OR invoices.updated_at < EXCLUDED.updated_at;
            END IF;

            -- Realtime notification (base handles it for delegated entities).
            IF v_user_id IS NOT NULL THEN
                INSERT INTO public.sync_notifications (
                    user_id, sender_device_id, entity_type, global_id, operation
                ) VALUES (
                    v_user_id, v_sender_device_id, entity_type, v_global_id, operation
                );
            END IF;
            CONTINUE;
        END IF;

        -- ================================================================
        -- INVOICE ITEMS
        -- ================================================================
        IF entity_type = 'invoice_item' THEN
            v_updated_at := COALESCE((mutation->>'updatedAt')::timestamptz, now());

            IF operation = 'DELETE' THEN
                DELETE FROM invoice_items WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_invoice_gid := NULLIF(trim(mutation->>'invoiceGlobalId'), '');

                INSERT INTO invoice_items (
                    global_id, tenant_id, invoice_global_id, product_name,
                    quantity, price, price_fils, total, total_fils,
                    unit_cost, unit_cost_fils, product_global_id,
                    unit_variant_id, unit_label, unit_factor,
                    entered_qty, base_qty, product_variant_global_id,
                    variant_color_name_snapshot, variant_size_snapshot,
                    created_at, updated_at, deleted_at
                ) VALUES (
                    v_global_id, (mutation->>'tenantId')::integer,
                    v_invoice_gid,
                    mutation->>'productName',
                    (mutation->>'quantity')::double precision,
                    (mutation->>'price')::double precision,
                    COALESCE((mutation->>'priceFils')::bigint, 0),
                    (mutation->>'total')::double precision,
                    COALESCE((mutation->>'totalFils')::bigint, 0),
                    (mutation->>'unitCost')::double precision,
                    COALESCE((mutation->>'unitCostFils')::bigint, 0),
                    NULLIF(trim(mutation->>'productGlobalId'), ''),
                    (mutation->>'unitVariantId')::integer,
                    mutation->>'unitLabel',
                    (mutation->>'unitFactor')::double precision,
                    (mutation->>'enteredQty')::double precision,
                    (mutation->>'baseQty')::double precision,
                    NULLIF(trim(mutation->>'productVariantGlobalId'), ''),
                    mutation->>'variantColorNameSnapshot',
                    mutation->>'variantSizeSnapshot',
                    COALESCE((mutation->>'createdAt')::timestamptz, now()),
                    v_updated_at,
                    (mutation->>'deletedAt')::timestamptz
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    invoice_global_id = EXCLUDED.invoice_global_id,
                    product_name = EXCLUDED.product_name,
                    quantity = EXCLUDED.quantity,
                    price = EXCLUDED.price, price_fils = EXCLUDED.price_fils,
                    total = EXCLUDED.total, total_fils = EXCLUDED.total_fils,
                    unit_cost = EXCLUDED.unit_cost,
                    unit_cost_fils = EXCLUDED.unit_cost_fils,
                    product_global_id = EXCLUDED.product_global_id,
                    unit_variant_id = EXCLUDED.unit_variant_id,
                    unit_label = EXCLUDED.unit_label,
                    unit_factor = EXCLUDED.unit_factor,
                    entered_qty = EXCLUDED.entered_qty,
                    base_qty = EXCLUDED.base_qty,
                    product_variant_global_id = EXCLUDED.product_variant_global_id,
                    variant_color_name_snapshot = EXCLUDED.variant_color_name_snapshot,
                    variant_size_snapshot = EXCLUDED.variant_size_snapshot,
                    updated_at = EXCLUDED.updated_at,
                    deleted_at = EXCLUDED.deleted_at
                WHERE invoice_items.updated_at IS NULL OR invoice_items.updated_at < EXCLUDED.updated_at;
            END IF;

            IF v_user_id IS NOT NULL THEN
                INSERT INTO public.sync_notifications (
                    user_id, sender_device_id, entity_type, global_id, operation
                ) VALUES (
                    v_user_id, v_sender_device_id, entity_type, v_global_id, operation
                );
            END IF;
            CONTINUE;
        END IF;

        -- ================================================================
        -- Everything else: delegate to the untouched base function.
        -- ================================================================
        PERFORM public.rpc_process_sync_queue_base(jsonb_build_array(mutation));
    END LOOP;
END;
$$;

-- ── 5. Grants ───────────────────────────────────────────────────────────
GRANT EXECUTE ON FUNCTION public.rpc_process_sync_queue(jsonb) TO authenticated;
GRANT EXECUTE ON FUNCTION public.rpc_process_sync_queue_base(jsonb) TO authenticated;
