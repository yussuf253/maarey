-- =========================================================================
-- Full Sync Coverage — Inventory, Config, & Remaining Tables (Phase 7.2)
-- =========================================================================
-- Run AFTER:
--   20260531_expenses_sync.sql
--   20260531_products_sync.sql
-- This migration creates Supabase tables for every local SQLite table
-- that is not yet covered, then extends rpc_process_sync_queue to handle
-- the new entity types.
-- =========================================================================

-- ══════════════════════════════════════════════════════════════════════════
-- SECTION 1: TABLES
-- ══════════════════════════════════════════════════════════════════════════

-- ── 1a. Warehouses ─────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.warehouses (
  global_id     text PRIMARY KEY,
  tenant_id     integer NOT NULL DEFAULT 1,
  name          text NOT NULL,
  code          text,
  location      text,
  is_default    boolean NOT NULL DEFAULT false,
  is_active     boolean NOT NULL DEFAULT true,
  created_at    timestamptz NOT NULL DEFAULT now(),
  updated_at    timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_warehouses_tenant ON public.warehouses(tenant_id);

-- ── 1b. Purchase Orders ────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.purchase_orders (
  global_id            text PRIMARY KEY,
  tenant_id            integer NOT NULL DEFAULT 1,
  po_number            text NOT NULL,
  supplier_global_id   text REFERENCES public.suppliers(global_id) ON DELETE SET NULL,
  supplier_name        text,
  status               text NOT NULL DEFAULT 'draft',
  order_date           timestamptz NOT NULL,
  expected_date        timestamptz,
  notes                text,
  total_amount         numeric NOT NULL DEFAULT 0,
  received_amount      numeric NOT NULL DEFAULT 0,
  created_by_user_name text,
  created_at           timestamptz NOT NULL DEFAULT now(),
  updated_at           timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_purchase_orders_tenant ON public.purchase_orders(tenant_id);

-- ── 1c. Purchase Order Items ───────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.purchase_order_items (
  global_id          text PRIMARY KEY,
  tenant_id          integer NOT NULL DEFAULT 1,
  po_global_id       text REFERENCES public.purchase_orders(global_id) ON DELETE CASCADE,
  product_global_id  text REFERENCES public.products(global_id) ON DELETE SET NULL,
  product_name       text NOT NULL,
  ordered_qty        numeric NOT NULL DEFAULT 0,
  received_qty       numeric NOT NULL DEFAULT 0,
  unit_price         numeric NOT NULL DEFAULT 0,
  total              numeric NOT NULL DEFAULT 0,
  created_at         timestamptz NOT NULL DEFAULT now(),
  updated_at         timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_po_items_tenant ON public.purchase_order_items(tenant_id);

-- ── 1d. PO Receipts ───────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.po_receipts (
  global_id              text PRIMARY KEY,
  tenant_id              integer NOT NULL DEFAULT 1,
  po_global_id           text REFERENCES public.purchase_orders(global_id) ON DELETE CASCADE,
  stock_voucher_global_id text,
  received_at            timestamptz NOT NULL,
  note                   text,
  created_by_user_name   text,
  created_at             timestamptz NOT NULL DEFAULT now(),
  updated_at             timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_po_receipts_tenant ON public.po_receipts(tenant_id);

-- ── 1e. Stock Vouchers ────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.stock_vouchers (
  global_id            text PRIMARY KEY,
  tenant_id            integer NOT NULL DEFAULT 1,
  voucher_no           text NOT NULL,
  voucher_type         text NOT NULL,
  voucher_date         timestamptz NOT NULL,
  warehouse_from_gid   text,
  warehouse_to_gid     text,
  reference_no         text,
  notes                text,
  supplier_name        text,
  source_type          text NOT NULL DEFAULT 'manual',
  source_name          text,
  source_ref_id        integer,
  created_by_user_id   integer,
  created_at           timestamptz NOT NULL DEFAULT now(),
  updated_at           timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_stock_vouchers_tenant ON public.stock_vouchers(tenant_id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_stock_vouchers_no ON public.stock_vouchers(voucher_no);

-- ── 1f. Stock Voucher Items ────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.stock_voucher_items (
  global_id          text PRIMARY KEY,
  tenant_id          integer NOT NULL DEFAULT 1,
  voucher_global_id  text REFERENCES public.stock_vouchers(global_id) ON DELETE CASCADE,
  product_global_id  text REFERENCES public.products(global_id) ON DELETE RESTRICT,
  qty                numeric NOT NULL,
  unit_price         numeric NOT NULL DEFAULT 0,
  total              numeric NOT NULL DEFAULT 0,
  stock_before       numeric NOT NULL DEFAULT 0,
  stock_after        numeric NOT NULL DEFAULT 0,
  created_at         timestamptz NOT NULL DEFAULT now(),
  updated_at         timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_sv_items_tenant ON public.stock_voucher_items(tenant_id);

-- ── 1g. Stocktaking Sessions ──────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.stocktaking_sessions (
  global_id            text PRIMARY KEY,
  tenant_id            integer NOT NULL DEFAULT 1,
  warehouse_global_id  text,
  title                text NOT NULL,
  status               text NOT NULL DEFAULT 'open',
  notes                text,
  started_at           timestamptz NOT NULL,
  closed_at            timestamptz,
  created_by_user_id   integer,
  created_at           timestamptz NOT NULL DEFAULT now(),
  updated_at           timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_stocktaking_tenant ON public.stocktaking_sessions(tenant_id);

-- ── 1h. Stocktaking Items ─────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.stocktaking_items (
  global_id                 text PRIMARY KEY,
  tenant_id                 integer NOT NULL DEFAULT 1,
  session_global_id         text REFERENCES public.stocktaking_sessions(global_id) ON DELETE CASCADE,
  product_global_id         text REFERENCES public.products(global_id) ON DELETE RESTRICT,
  system_qty                numeric NOT NULL DEFAULT 0,
  counted_qty               numeric,
  difference                numeric,
  adjustment_voucher_global_id text,
  created_at                timestamptz NOT NULL DEFAULT now(),
  updated_at                timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_st_items_tenant ON public.stocktaking_items(tenant_id);

-- ── 1i. Price Lists ──────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.price_lists (
  global_id     text PRIMARY KEY,
  tenant_id     integer NOT NULL DEFAULT 1,
  name          text NOT NULL,
  description   text,
  is_default    boolean NOT NULL DEFAULT false,
  is_active     boolean NOT NULL DEFAULT true,
  created_at    timestamptz NOT NULL DEFAULT now(),
  updated_at    timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_price_lists_tenant ON public.price_lists(tenant_id);

-- ── 1j. Price List Items ─────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.price_list_items (
  global_id          text PRIMARY KEY,
  tenant_id          integer NOT NULL DEFAULT 1,
  price_list_global_id text REFERENCES public.price_lists(global_id) ON DELETE CASCADE,
  product_global_id  text REFERENCES public.products(global_id) ON DELETE CASCADE,
  price              numeric NOT NULL DEFAULT 0,
  min_qty            numeric NOT NULL DEFAULT 1,
  is_active          boolean NOT NULL DEFAULT true,
  created_at         timestamptz NOT NULL DEFAULT now(),
  updated_at         timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_pli_tenant ON public.price_list_items(tenant_id);

-- ── 1k. Loyalty Settings (singleton per tenant) ───────────────────────
CREATE TABLE IF NOT EXISTS public.loyalty_settings (
  global_id     text PRIMARY KEY,
  tenant_id     integer NOT NULL DEFAULT 1,
  payload       jsonb NOT NULL DEFAULT '{}',
  updated_at    timestamptz NOT NULL DEFAULT now()
);

-- ── 1l. Loyalty Ledger ────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.loyalty_ledger (
  global_id          text PRIMARY KEY,
  tenant_id          integer NOT NULL DEFAULT 1,
  customer_global_id text REFERENCES public.customers(global_id) ON DELETE CASCADE,
  invoice_global_id  text,
  kind               text NOT NULL,
  points             integer NOT NULL,
  balance_after      integer NOT NULL,
  note               text,
  created_at         timestamptz NOT NULL DEFAULT now(),
  updated_at         timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_loyalty_ledger_tenant ON public.loyalty_ledger(tenant_id);

-- ── 1m. Debt Settings (singleton per tenant) ──────────────────────────
CREATE TABLE IF NOT EXISTS public.debt_settings (
  global_id     text PRIMARY KEY,
  tenant_id     integer NOT NULL DEFAULT 1,
  payload       jsonb NOT NULL DEFAULT '{}',
  updated_at    timestamptz NOT NULL DEFAULT now()
);

-- ── 1n. Installment Settings (singleton per tenant) ───────────────────
CREATE TABLE IF NOT EXISTS public.installment_settings (
  global_id     text PRIMARY KEY,
  tenant_id     integer NOT NULL DEFAULT 1,
  payload       jsonb NOT NULL DEFAULT '{}',
  updated_at    timestamptz NOT NULL DEFAULT now()
);

-- ── 1o. Branches ──────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.branches (
  global_id     text PRIMARY KEY,
  tenant_id     integer NOT NULL DEFAULT 1,
  code          text NOT NULL,
  name          text NOT NULL,
  is_active     boolean NOT NULL DEFAULT true,
  created_at    timestamptz NOT NULL DEFAULT now(),
  updated_at    timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_branches_tenant ON public.branches(tenant_id);

-- ── 1p. Parked Sales ─────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.parked_sales (
  global_id     text PRIMARY KEY,
  tenant_id     integer NOT NULL DEFAULT 1,
  title         text,
  payload       jsonb NOT NULL,
  created_at    timestamptz NOT NULL DEFAULT now(),
  updated_at    timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_parked_sales_tenant ON public.parked_sales(tenant_id);

-- ── 1q. Customer Extra Phones ─────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.customer_extra_phones (
  global_id          text PRIMARY KEY,
  tenant_id          integer NOT NULL DEFAULT 1,
  customer_global_id text REFERENCES public.customers(global_id) ON DELETE CASCADE,
  phone              text NOT NULL,
  sort_order         integer NOT NULL DEFAULT 0,
  created_at         timestamptz NOT NULL DEFAULT now(),
  updated_at         timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_cep_tenant ON public.customer_extra_phones(tenant_id);

-- ── 1r. Activity Logs ────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.activity_logs (
  global_id          text PRIMARY KEY,
  tenant_id          integer NOT NULL DEFAULT 1,
  type               text NOT NULL,
  ref_table          text,
  ref_id             integer,
  title              text NOT NULL,
  details            text,
  amount             numeric,
  created_by_user_id integer,
  created_at         timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_activity_logs_tenant ON public.activity_logs(tenant_id);

-- ── 1s. Unit Templates ───────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.unit_templates (
  global_id     text PRIMARY KEY,
  tenant_id     integer NOT NULL DEFAULT 1,
  name          text NOT NULL,
  description   text,
  is_active     boolean NOT NULL DEFAULT true,
  created_at    timestamptz NOT NULL DEFAULT now(),
  updated_at    timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_unit_templates_tenant ON public.unit_templates(tenant_id);

-- ── 1t. Unit Template Conversions ────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.unit_template_conversions (
  global_id                text PRIMARY KEY,
  tenant_id                integer NOT NULL DEFAULT 1,
  template_global_id       text REFERENCES public.unit_templates(global_id) ON DELETE CASCADE,
  from_unit                text NOT NULL,
  to_unit                  text NOT NULL,
  factor                   numeric NOT NULL DEFAULT 1,
  created_at               timestamptz NOT NULL DEFAULT now(),
  updated_at               timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_utc_tenant ON public.unit_template_conversions(tenant_id);

-- ── 1u. Print Settings (singleton per tenant) ────────────────────────
CREATE TABLE IF NOT EXISTS public.print_settings (
  global_id     text PRIMARY KEY,
  tenant_id     integer NOT NULL DEFAULT 1,
  payload       jsonb NOT NULL DEFAULT '{}',
  updated_at    timestamptz NOT NULL DEFAULT now()
);

-- ── 1v. App Settings (singleton per tenant) ──────────────────────────
CREATE TABLE IF NOT EXISTS public.app_settings (
  global_id     text PRIMARY KEY,
  tenant_id     integer NOT NULL DEFAULT 1,
  payload       jsonb NOT NULL DEFAULT '{}',
  updated_at    timestamptz NOT NULL DEFAULT now()
);

-- ── 1w. Product Batches ──────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.product_batches (
  global_id          text PRIMARY KEY,
  tenant_id          integer NOT NULL DEFAULT 1,
  product_global_id  text REFERENCES public.products(global_id) ON DELETE CASCADE,
  batch_number       text,
  manufacturing_date text,
  expiry_date        text,
  qty                numeric NOT NULL DEFAULT 0,
  buy_price          numeric NOT NULL DEFAULT 0,
  created_at         timestamptz NOT NULL DEFAULT now(),
  updated_at         timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_product_batches_tenant ON public.product_batches(tenant_id);

-- ══════════════════════════════════════════════════════════════════════════
-- SECTION 2: RLS
-- ══════════════════════════════════════════════════════════════════════════
DO $$
DECLARE
  t text;
  tbls text[] := ARRAY[
    'warehouses','purchase_orders','purchase_order_items','po_receipts',
    'stock_vouchers','stock_voucher_items','stocktaking_sessions','stocktaking_items',
    'price_lists','price_list_items','loyalty_settings','loyalty_ledger',
    'debt_settings','installment_settings','branches','parked_sales',
    'customer_extra_phones','activity_logs','unit_templates',
    'unit_template_conversions','print_settings','app_settings','product_batches'
  ];
BEGIN
  FOREACH t IN ARRAY tbls LOOP
    EXECUTE format('ALTER TABLE public.%I ENABLE ROW LEVEL SECURITY', t);
    IF NOT EXISTS (
      SELECT 1 FROM pg_policies WHERE tablename = t
        AND policyname = 'Allow all for service role'
    ) THEN
      EXECUTE format(
        'CREATE POLICY "Allow all for service role" ON public.%I FOR ALL USING (true) WITH CHECK (true)',
        t
      );
    END IF;
  END LOOP;
END $$;

-- ══════════════════════════════════════════════════════════════════════════
-- SECTION 3: EXTEND rpc_process_sync_queue
-- ══════════════════════════════════════════════════════════════════════════
-- DROP and recreate to add the new entity handlers.
-- The function signature is unchanged so all callers remain compatible.

DROP FUNCTION IF EXISTS rpc_process_sync_queue(jsonb);

CREATE OR REPLACE FUNCTION rpc_process_sync_queue(mutations_json jsonb)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
    mutation       jsonb;
    entity_type    text;
    operation      text;
    mutation_id    text;
    v_global_id    text;
    v_updated_at   timestamp with time zone;
    existing_updated_at timestamp with time zone;
    v_cat_id       integer;
    v_should_ledger boolean;
    cle            jsonb;
    v_cash_updated timestamptz;
    v_sender_device_id text;
    v_user_id      uuid;
    v_cat_gid      text;
    v_brand_gid    text;
    v_supplier_gid text;
    v_po_gid       text;
    v_voucher_gid  text;
    v_session_gid  text;
    v_pl_gid       text;
    v_tmpl_gid     text;
    v_customer_gid text;
BEGIN
    v_user_id := auth.uid();

    FOR mutation IN SELECT * FROM jsonb_array_elements(mutations_json)
    LOOP
        mutation_id        := mutation->>'_mutation_id';
        entity_type        := mutation->>'_entity_type';
        operation          := mutation->>'_operation';
        v_global_id        := mutation->>'global_id';
        v_sender_device_id := mutation->>'_device_id';

        IF v_sender_device_id IS NULL OR trim(v_sender_device_id) = '' THEN
            v_sender_device_id := 'unknown_device';
        END IF;

        -- =================================================================
        -- 1. EXPENSES
        -- =================================================================
        IF entity_type = 'expense' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM cash_ledger WHERE global_id = (v_global_id || '_cash');
                IF v_updated_at IS NULL THEN
                    DELETE FROM expenses WHERE global_id = v_global_id;
                ELSE
                    SELECT updated_at INTO existing_updated_at FROM expenses WHERE global_id = v_global_id;
                    IF existing_updated_at IS NULL OR existing_updated_at <= v_updated_at THEN
                        DELETE FROM expenses WHERE global_id = v_global_id;
                    END IF;
                END IF;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_cat_id := NULL;
                SELECT id INTO v_cat_id FROM expense_categories
                WHERE global_id = (mutation->>'category_global_id')
                  AND tenant_id = (mutation->>'tenantId')::integer LIMIT 1;
                IF v_cat_id IS NULL THEN CONTINUE; END IF;

                INSERT INTO expenses (
                    global_id, tenant_id, category_id, amount, occurred_at,
                    status, description, employee_user_id, is_recurring,
                    recurring_day, recurring_origin_id, attachment_path,
                    affects_cash, invoice_ref, landlord_or_property, tax_kind,
                    category_global_id, created_at, updated_at
                ) VALUES (
                    v_global_id, (mutation->>'tenantId')::integer, v_cat_id,
                    (mutation->>'amount')::numeric, (mutation->>'occurredAt')::timestamptz,
                    mutation->>'status', mutation->>'description',
                    NULLIF(trim(mutation->>'employeeUserId'), '')::integer,
                    (COALESCE((mutation->>'isRecurring')::integer, 0) <> 0),
                    NULLIF(trim(mutation->>'recurringDay'), '')::integer,
                    NULLIF(trim(mutation->>'recurringOriginId'), '')::integer,
                    mutation->>'attachmentPath',
                    (COALESCE((mutation->>'affectsCash')::integer, 1) <> 0),
                    mutation->>'invoiceRef', mutation->>'landlordOrProperty',
                    mutation->>'taxKind',
                    NULLIF(trim(mutation->>'category_global_id'), ''),
                    (mutation->>'createdAt')::timestamptz, v_updated_at
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, category_id = EXCLUDED.category_id,
                    amount = EXCLUDED.amount, occurred_at = EXCLUDED.occurred_at,
                    status = EXCLUDED.status, description = EXCLUDED.description,
                    employee_user_id = EXCLUDED.employee_user_id,
                    is_recurring = EXCLUDED.is_recurring, recurring_day = EXCLUDED.recurring_day,
                    recurring_origin_id = EXCLUDED.recurring_origin_id,
                    attachment_path = EXCLUDED.attachment_path,
                    affects_cash = EXCLUDED.affects_cash, invoice_ref = EXCLUDED.invoice_ref,
                    landlord_or_property = EXCLUDED.landlord_or_property,
                    tax_kind = EXCLUDED.tax_kind, updated_at = EXCLUDED.updated_at
                WHERE expenses.updated_at IS NULL OR expenses.updated_at < EXCLUDED.updated_at;

                v_should_ledger := (mutation->>'status' = 'paid')
                    AND (COALESCE((mutation->>'affectsCash')::integer, 1) <> 0);
                cle := mutation->'cash_ledger_entry';
                IF v_should_ledger AND cle IS NOT NULL AND jsonb_typeof(cle) = 'object' THEN
                    v_cash_updated := (cle->>'updatedAt')::timestamptz;
                    INSERT INTO cash_ledger (
                        global_id, tenant_id, transaction_type, amount, amount_fils,
                        description, invoice_id, work_shift_id, work_shift_global_id,
                        expense_global_id, created_at, updated_at
                    ) VALUES (
                        cle->>'global_id', (cle->>'tenantId')::integer,
                        cle->>'transactionType', (cle->>'amount')::numeric,
                        COALESCE((cle->>'amountFils')::integer, 0), cle->>'description',
                        NULLIF(trim(cle->>'invoiceId'), '')::integer,
                        NULLIF(trim(cle->>'workShiftId'), '')::integer,
                        NULLIF(trim(cle->>'work_shift_global_id'), ''),
                        COALESCE(NULLIF(trim(cle->>'expense_global_id'), ''), v_global_id),
                        (cle->>'createdAt')::timestamptz, v_cash_updated
                    )
                    ON CONFLICT (global_id) DO UPDATE SET
                        tenant_id = EXCLUDED.tenant_id, transaction_type = EXCLUDED.transaction_type,
                        amount = EXCLUDED.amount, amount_fils = EXCLUDED.amount_fils,
                        description = EXCLUDED.description, invoice_id = EXCLUDED.invoice_id,
                        work_shift_id = EXCLUDED.work_shift_id,
                        work_shift_global_id = EXCLUDED.work_shift_global_id,
                        expense_global_id = EXCLUDED.expense_global_id, updated_at = EXCLUDED.updated_at
                    WHERE cash_ledger.updated_at IS NULL OR cash_ledger.updated_at < EXCLUDED.updated_at;
                ELSIF NOT v_should_ledger THEN
                    DELETE FROM cash_ledger WHERE global_id = (v_global_id || '_cash');
                END IF;
            END IF;
        END IF;

        -- =================================================================
        -- 2. EXPENSE CATEGORIES
        -- =================================================================
        IF entity_type = 'expense_category' THEN
            v_updated_at := (mutation->>'createdAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM expense_categories WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO expense_categories (global_id, tenant_id, name, sort_order, is_active, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer, mutation->>'name',
                    COALESCE((mutation->>'sortOrder')::integer, 0),
                    (COALESCE((mutation->>'isActive')::integer, 1) <> 0),
                    COALESCE(v_updated_at, now()), COALESCE(v_updated_at, now()))
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, name = EXCLUDED.name,
                    sort_order = EXCLUDED.sort_order, is_active = EXCLUDED.is_active,
                    updated_at = EXCLUDED.updated_at
                WHERE expense_categories.updated_at IS NULL OR expense_categories.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 3. WORK SHIFTS
        -- =================================================================
        IF entity_type = 'work_shift' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM work_shifts WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO work_shifts (
                    global_id, tenant_id, session_user_id, shift_staff_user_id,
                    opened_at, closed_at, system_balance_at_open, declared_physical_cash,
                    added_cash_at_open, shift_staff_name, shift_staff_pin,
                    declared_closing_cash, system_balance_at_close, withdrawn_at_close,
                    declared_cash_in_box_at_close, updated_at
                ) VALUES (
                    v_global_id, (mutation->>'tenantId')::integer,
                    (mutation->>'sessionUserId')::integer,
                    NULLIF(trim(mutation->>'shiftStaffUserId'), '')::integer,
                    (mutation->>'openedAt')::timestamptz,
                    NULLIF(trim(mutation->>'closedAt'), '')::timestamptz,
                    (mutation->>'systemBalanceAtOpen')::numeric,
                    (mutation->>'declaredPhysicalCash')::numeric,
                    (mutation->>'addedCashAtOpen')::numeric,
                    mutation->>'shiftStaffName', mutation->>'shiftStaffPin',
                    NULLIF(trim(mutation->>'declaredClosingCash'), '')::numeric,
                    NULLIF(trim(mutation->>'systemBalanceAtClose'), '')::numeric,
                    NULLIF(trim(mutation->>'withdrawnAtClose'), '')::numeric,
                    NULLIF(trim(mutation->>'declaredCashInBoxAtClose'), '')::numeric,
                    v_updated_at
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, session_user_id = EXCLUDED.session_user_id,
                    shift_staff_user_id = EXCLUDED.shift_staff_user_id,
                    opened_at = EXCLUDED.opened_at, closed_at = EXCLUDED.closed_at,
                    system_balance_at_open = EXCLUDED.system_balance_at_open,
                    declared_physical_cash = EXCLUDED.declared_physical_cash,
                    added_cash_at_open = EXCLUDED.added_cash_at_open,
                    shift_staff_name = EXCLUDED.shift_staff_name,
                    shift_staff_pin = EXCLUDED.shift_staff_pin,
                    declared_closing_cash = EXCLUDED.declared_closing_cash,
                    system_balance_at_close = EXCLUDED.system_balance_at_close,
                    withdrawn_at_close = EXCLUDED.withdrawn_at_close,
                    declared_cash_in_box_at_close = EXCLUDED.declared_cash_in_box_at_close,
                    updated_at = EXCLUDED.updated_at
                WHERE work_shifts.updated_at IS NULL OR work_shifts.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 4. CASH LEDGER
        -- =================================================================
        IF entity_type = 'cash_ledger' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM cash_ledger WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO cash_ledger (
                    global_id, tenant_id, transaction_type, amount, amount_fils,
                    description, invoice_id, work_shift_id, work_shift_global_id,
                    expense_global_id, created_at, updated_at
                ) VALUES (
                    v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'transactionType', (mutation->>'amount')::numeric,
                    COALESCE((mutation->>'amountFils')::integer, 0), mutation->>'description',
                    NULLIF(trim(mutation->>'invoiceId'), '')::integer,
                    NULLIF(trim(mutation->>'workShiftId'), '')::integer,
                    NULLIF(trim(mutation->>'work_shift_global_id'), ''),
                    NULLIF(trim(mutation->>'expense_global_id'), ''),
                    (mutation->>'createdAt')::timestamptz, v_updated_at
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, transaction_type = EXCLUDED.transaction_type,
                    amount = EXCLUDED.amount, amount_fils = EXCLUDED.amount_fils,
                    description = EXCLUDED.description, invoice_id = EXCLUDED.invoice_id,
                    work_shift_id = EXCLUDED.work_shift_id,
                    work_shift_global_id = EXCLUDED.work_shift_global_id,
                    expense_global_id = EXCLUDED.expense_global_id, updated_at = EXCLUDED.updated_at
                WHERE cash_ledger.updated_at IS NULL OR cash_ledger.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 5. CATEGORIES
        -- =================================================================
        IF entity_type = 'category' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM categories WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO categories (global_id, tenant_id, name, code, parent_global_id,
                    description, sort_order, is_active, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer, mutation->>'name',
                    mutation->>'code', NULLIF(trim(mutation->>'parent_global_id'), ''),
                    mutation->>'description', COALESCE((mutation->>'sort_order')::integer, 0),
                    (COALESCE((mutation->>'isActive')::integer,
                        CASE WHEN mutation->>'isActive' IS NULL THEN 1 ELSE 0 END) <> 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, name = EXCLUDED.name, code = EXCLUDED.code,
                    parent_global_id = EXCLUDED.parent_global_id, description = EXCLUDED.description,
                    sort_order = EXCLUDED.sort_order, is_active = EXCLUDED.is_active,
                    updated_at = EXCLUDED.updated_at
                WHERE categories.updated_at IS NULL OR categories.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 6. BRANDS
        -- =================================================================
        IF entity_type = 'brand' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM brands WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO brands (global_id, tenant_id, name, code, is_active, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer, mutation->>'name',
                    mutation->>'code',
                    (COALESCE((mutation->>'isActive')::integer,
                        CASE WHEN mutation->>'isActive' IS NULL THEN 1 ELSE 0 END) <> 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, name = EXCLUDED.name, code = EXCLUDED.code,
                    is_active = EXCLUDED.is_active, updated_at = EXCLUDED.updated_at
                WHERE brands.updated_at IS NULL OR brands.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 7. PRODUCTS
        -- =================================================================
        IF entity_type = 'product' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM products WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_cat_gid   := NULLIF(trim(mutation->>'category_global_id'), '');
                v_brand_gid := NULLIF(trim(mutation->>'brand_global_id'), '');
                INSERT INTO products (
                    global_id, tenant_id, name, barcode, product_code,
                    category_global_id, brand_global_id,
                    buy_price, sell_price, min_sell_price, qty,
                    low_stock_threshold, status, is_active,
                    created_at, updated_at, description, image_path, image_url,
                    internal_notes, tags, sale_unit, supplier_name,
                    tax_percent, discount_percent, discount_amount,
                    buy_conversion_label, track_inventory, allow_negative_stock,
                    supplier_item_code, net_weight_grams, manufacturing_date,
                    expiry_date, grade, batch_number, expiry_alert_days_before,
                    stock_base_kind, is_service, service_kind, is_pinned, pinned_at
                ) VALUES (
                    v_global_id, (mutation->>'tenantId')::integer, mutation->>'name',
                    mutation->>'barcode', mutation->>'productCode',
                    v_cat_gid, v_brand_gid,
                    (mutation->>'buyPrice')::numeric, (mutation->>'sellPrice')::numeric,
                    (mutation->>'minSellPrice')::numeric, (mutation->>'qty')::numeric,
                    (mutation->>'lowStockThreshold')::numeric,
                    COALESCE(mutation->>'status', 'instock'),
                    (COALESCE((mutation->>'isActive')::integer, 1) <> 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at,
                    mutation->>'description', mutation->>'imagePath', mutation->>'imageUrl',
                    mutation->>'internalNotes', mutation->>'tags', mutation->>'saleUnit',
                    mutation->>'supplierName', (mutation->>'taxPercent')::numeric,
                    (mutation->>'discountPercent')::numeric, (mutation->>'discountAmount')::numeric,
                    mutation->>'buyConversionLabel',
                    (COALESCE((mutation->>'trackInventory')::integer, 1) <> 0),
                    (COALESCE((mutation->>'allowNegativeStock')::integer, 0) <> 0),
                    mutation->>'supplierItemCode', (mutation->>'netWeightGrams')::numeric,
                    mutation->>'manufacturingDate', mutation->>'expiryDate',
                    mutation->>'grade', mutation->>'batchNumber',
                    (mutation->>'expiryAlertDaysBefore')::integer,
                    (mutation->>'stockBaseKind')::integer,
                    (COALESCE((mutation->>'isService')::integer, 0) <> 0),
                    mutation->>'serviceKind',
                    (COALESCE((mutation->>'isPinned')::integer, 0) <> 0),
                    (mutation->>'pinnedAt')::bigint
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, name = EXCLUDED.name,
                    barcode = EXCLUDED.barcode, product_code = EXCLUDED.product_code,
                    category_global_id = EXCLUDED.category_global_id,
                    brand_global_id = EXCLUDED.brand_global_id,
                    buy_price = EXCLUDED.buy_price, sell_price = EXCLUDED.sell_price,
                    min_sell_price = EXCLUDED.min_sell_price, qty = EXCLUDED.qty,
                    low_stock_threshold = EXCLUDED.low_stock_threshold,
                    status = EXCLUDED.status, is_active = EXCLUDED.is_active,
                    updated_at = EXCLUDED.updated_at, description = EXCLUDED.description,
                    image_path = EXCLUDED.image_path, image_url = EXCLUDED.image_url,
                    internal_notes = EXCLUDED.internal_notes, tags = EXCLUDED.tags,
                    sale_unit = EXCLUDED.sale_unit, supplier_name = EXCLUDED.supplier_name,
                    tax_percent = EXCLUDED.tax_percent,
                    discount_percent = EXCLUDED.discount_percent,
                    discount_amount = EXCLUDED.discount_amount,
                    buy_conversion_label = EXCLUDED.buy_conversion_label,
                    track_inventory = EXCLUDED.track_inventory,
                    allow_negative_stock = EXCLUDED.allow_negative_stock,
                    supplier_item_code = EXCLUDED.supplier_item_code,
                    net_weight_grams = EXCLUDED.net_weight_grams,
                    manufacturing_date = EXCLUDED.manufacturing_date,
                    expiry_date = EXCLUDED.expiry_date, grade = EXCLUDED.grade,
                    batch_number = EXCLUDED.batch_number,
                    expiry_alert_days_before = EXCLUDED.expiry_alert_days_before,
                    stock_base_kind = EXCLUDED.stock_base_kind,
                    is_service = EXCLUDED.is_service, service_kind = EXCLUDED.service_kind,
                    is_pinned = EXCLUDED.is_pinned, pinned_at = EXCLUDED.pinned_at
                WHERE products.updated_at IS NULL OR products.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 8. CUSTOMERS
        -- =================================================================
        IF entity_type = 'customer' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM customers WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO customers (global_id, tenant_id, name, phone, email, address,
                    notes, balance, loyalty_points, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'name', mutation->>'phone', mutation->>'email',
                    mutation->>'address', mutation->>'notes',
                    (mutation->>'balance')::numeric,
                    COALESCE((mutation->>'loyaltyPoints')::integer, 0),
                    (mutation->>'createdAt')::timestamptz, v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, name = EXCLUDED.name,
                    phone = EXCLUDED.phone, email = EXCLUDED.email,
                    address = EXCLUDED.address, notes = EXCLUDED.notes,
                    balance = EXCLUDED.balance, loyalty_points = EXCLUDED.loyalty_points,
                    updated_at = EXCLUDED.updated_at
                WHERE customers.updated_at IS NULL OR customers.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 9. SUPPLIERS
        -- =================================================================
        IF entity_type = 'supplier' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM suppliers WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO suppliers (global_id, tenant_id, name, phone, notes,
                    is_active, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'name', mutation->>'phone', mutation->>'notes',
                    (COALESCE((mutation->>'isActive')::integer, 1) <> 0),
                    (mutation->>'createdAt')::timestamptz, v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, name = EXCLUDED.name,
                    phone = EXCLUDED.phone, notes = EXCLUDED.notes,
                    is_active = EXCLUDED.is_active, updated_at = EXCLUDED.updated_at
                WHERE suppliers.updated_at IS NULL OR suppliers.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 10. CUSTOMER DEBT PAYMENTS
        -- =================================================================
        IF entity_type = 'customer_debt_payment' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM customer_debt_payments WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_customer_gid := NULLIF(trim(mutation->>'customer_global_id'), '');
                INSERT INTO customer_debt_payments (global_id, customer_global_id,
                    customer_name_snapshot, amount, debt_before, debt_after,
                    created_at, created_by_user_name, note, updated_at)
                VALUES (v_global_id, v_customer_gid,
                    COALESCE(mutation->>'customerNameSnapshot', mutation->>'customer_name'),
                    (mutation->>'amount')::numeric,
                    (mutation->>'debtBefore')::numeric, (mutation->>'debtAfter')::numeric,
                    (mutation->>'createdAt')::timestamptz,
                    mutation->>'createdByUserName', mutation->>'note', v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    customer_global_id = EXCLUDED.customer_global_id,
                    customer_name_snapshot = EXCLUDED.customer_name_snapshot,
                    amount = EXCLUDED.amount, debt_before = EXCLUDED.debt_before,
                    debt_after = EXCLUDED.debt_after, note = EXCLUDED.note,
                    updated_at = EXCLUDED.updated_at
                WHERE customer_debt_payments.updated_at IS NULL
                   OR customer_debt_payments.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 11. SUPPLIER BILLS
        -- =================================================================
        IF entity_type = 'supplier_bill' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM supplier_bills WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_supplier_gid := NULLIF(trim(mutation->>'supplier_global_id'), '');
                INSERT INTO supplier_bills (global_id, supplier_global_id,
                    their_reference, their_bill_date, amount, note, image_path,
                    created_at, created_by_user_name, updated_at)
                VALUES (v_global_id, v_supplier_gid,
                    mutation->>'theirReference',
                    NULLIF(trim(mutation->>'theirBillDate'), '')::timestamptz,
                    (mutation->>'amount')::numeric, mutation->>'note',
                    mutation->>'imagePath', (mutation->>'createdAt')::timestamptz,
                    mutation->>'createdByUserName', v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    supplier_global_id = EXCLUDED.supplier_global_id,
                    their_reference = EXCLUDED.their_reference,
                    their_bill_date = EXCLUDED.their_bill_date,
                    amount = EXCLUDED.amount, note = EXCLUDED.note,
                    image_path = EXCLUDED.image_path, updated_at = EXCLUDED.updated_at
                WHERE supplier_bills.updated_at IS NULL OR supplier_bills.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 12. SUPPLIER PAYOUTS
        -- =================================================================
        IF entity_type = 'supplier_payout' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM supplier_payouts WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_supplier_gid := NULLIF(trim(mutation->>'supplier_global_id'), '');
                INSERT INTO supplier_payouts (global_id, supplier_global_id, amount,
                    note, created_at, created_by_user_name, affects_cash,
                    receipt_invoice_id, updated_at)
                VALUES (v_global_id, v_supplier_gid,
                    (mutation->>'amount')::numeric, mutation->>'note',
                    (mutation->>'createdAt')::timestamptz,
                    mutation->>'createdByUserName',
                    (COALESCE((mutation->>'affectsCash')::integer, 1) <> 0),
                    NULLIF(trim(mutation->>'receiptInvoiceId'), '')::integer,
                    v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    supplier_global_id = EXCLUDED.supplier_global_id,
                    amount = EXCLUDED.amount, note = EXCLUDED.note,
                    affects_cash = EXCLUDED.affects_cash, updated_at = EXCLUDED.updated_at
                WHERE supplier_payouts.updated_at IS NULL OR supplier_payouts.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 13. INSTALLMENT PLANS
        -- =================================================================
        IF entity_type = 'installment_plan' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM installment_plans WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO installment_plans (global_id, invoice_global_id,
                    customer_global_id, customer_name, total_amount, paid_amount,
                    number_of_installments, updated_at)
                VALUES (v_global_id,
                    NULLIF(trim(mutation->>'invoice_global_id'), ''),
                    NULLIF(trim(mutation->>'customer_global_id'), ''),
                    mutation->>'customerName',
                    (mutation->>'totalAmount')::numeric,
                    (mutation->>'paidAmount')::numeric,
                    (mutation->>'numberOfInstallments')::integer, v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    invoice_global_id = EXCLUDED.invoice_global_id,
                    customer_global_id = EXCLUDED.customer_global_id,
                    customer_name = EXCLUDED.customer_name,
                    total_amount = EXCLUDED.total_amount, paid_amount = EXCLUDED.paid_amount,
                    number_of_installments = EXCLUDED.number_of_installments,
                    updated_at = EXCLUDED.updated_at
                WHERE installment_plans.updated_at IS NULL OR installment_plans.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 14. INSTALLMENTS
        -- =================================================================
        IF entity_type = 'installment' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM installments WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO installments (global_id, plan_global_id, due_date,
                    amount, paid, paid_date, updated_at)
                VALUES (v_global_id,
                    NULLIF(trim(mutation->>'plan_global_id'), ''),
                    NULLIF(trim(mutation->>'dueDate'), '')::timestamptz,
                    (mutation->>'amount')::numeric,
                    (COALESCE((mutation->>'paid')::integer, 0) <> 0),
                    NULLIF(trim(mutation->>'paidDate'), '')::timestamptz,
                    v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    plan_global_id = EXCLUDED.plan_global_id,
                    due_date = EXCLUDED.due_date, amount = EXCLUDED.amount,
                    paid = EXCLUDED.paid, paid_date = EXCLUDED.paid_date,
                    updated_at = EXCLUDED.updated_at
                WHERE installments.updated_at IS NULL OR installments.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 15. WAREHOUSES
        -- =================================================================
        IF entity_type = 'warehouse' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM warehouses WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO warehouses (global_id, tenant_id, name, code, location,
                    is_default, is_active, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'name', mutation->>'code', mutation->>'location',
                    (COALESCE((mutation->>'isDefault')::integer, 0) <> 0),
                    (COALESCE((mutation->>'isActive')::integer, 1) <> 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, name = EXCLUDED.name,
                    code = EXCLUDED.code, location = EXCLUDED.location,
                    is_default = EXCLUDED.is_default, is_active = EXCLUDED.is_active,
                    updated_at = EXCLUDED.updated_at
                WHERE warehouses.updated_at IS NULL OR warehouses.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 16. PURCHASE ORDERS
        -- =================================================================
        IF entity_type = 'purchase_order' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM purchase_orders WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_supplier_gid := NULLIF(trim(mutation->>'supplier_global_id'), '');
                INSERT INTO purchase_orders (global_id, tenant_id, po_number,
                    supplier_global_id, supplier_name, status, order_date,
                    expected_date, notes, total_amount, received_amount,
                    created_by_user_name, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'poNumber', v_supplier_gid, mutation->>'supplierName',
                    COALESCE(mutation->>'status', 'draft'),
                    (mutation->>'orderDate')::timestamptz,
                    NULLIF(trim(mutation->>'expectedDate'), '')::timestamptz,
                    mutation->>'notes', (mutation->>'totalAmount')::numeric,
                    (mutation->>'receivedAmount')::numeric,
                    mutation->>'createdByUserName',
                    (mutation->>'createdAt')::timestamptz, v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, po_number = EXCLUDED.po_number,
                    supplier_global_id = EXCLUDED.supplier_global_id,
                    supplier_name = EXCLUDED.supplier_name, status = EXCLUDED.status,
                    order_date = EXCLUDED.order_date, expected_date = EXCLUDED.expected_date,
                    notes = EXCLUDED.notes, total_amount = EXCLUDED.total_amount,
                    received_amount = EXCLUDED.received_amount, updated_at = EXCLUDED.updated_at
                WHERE purchase_orders.updated_at IS NULL OR purchase_orders.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 17. PURCHASE ORDER ITEMS
        -- =================================================================
        IF entity_type = 'purchase_order_item' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM purchase_order_items WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_po_gid := NULLIF(trim(mutation->>'po_global_id'), '');
                v_customer_gid := NULLIF(trim(mutation->>'product_global_id'), '');
                INSERT INTO purchase_order_items (global_id, tenant_id, po_global_id,
                    product_global_id, product_name, ordered_qty, received_qty,
                    unit_price, total, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer, v_po_gid,
                    v_customer_gid, mutation->>'productName',
                    (mutation->>'orderedQty')::numeric, (mutation->>'receivedQty')::numeric,
                    (mutation->>'unitPrice')::numeric, (mutation->>'total')::numeric,
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, po_global_id = EXCLUDED.po_global_id,
                    product_global_id = EXCLUDED.product_global_id,
                    product_name = EXCLUDED.product_name,
                    ordered_qty = EXCLUDED.ordered_qty, received_qty = EXCLUDED.received_qty,
                    unit_price = EXCLUDED.unit_price, total = EXCLUDED.total,
                    updated_at = EXCLUDED.updated_at
                WHERE purchase_order_items.updated_at IS NULL
                   OR purchase_order_items.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 18. PO RECEIPTS
        -- =================================================================
        IF entity_type = 'po_receipt' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM po_receipts WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_po_gid := NULLIF(trim(mutation->>'po_global_id'), '');
                v_voucher_gid := NULLIF(trim(mutation->>'stock_voucher_global_id'), '');
                INSERT INTO po_receipts (global_id, tenant_id, po_global_id,
                    stock_voucher_global_id, received_at, note,
                    created_by_user_name, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer, v_po_gid,
                    v_voucher_gid, (mutation->>'receivedAt')::timestamptz,
                    mutation->>'note', mutation->>'createdByUserName',
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, po_global_id = EXCLUDED.po_global_id,
                    stock_voucher_global_id = EXCLUDED.stock_voucher_global_id,
                    received_at = EXCLUDED.received_at, note = EXCLUDED.note,
                    updated_at = EXCLUDED.updated_at
                WHERE po_receipts.updated_at IS NULL OR po_receipts.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 19. STOCK VOUCHERS
        -- =================================================================
        IF entity_type = 'stock_voucher' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM stock_vouchers WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO stock_vouchers (global_id, tenant_id, voucher_no,
                    voucher_type, voucher_date, warehouse_from_gid, warehouse_to_gid,
                    reference_no, notes, supplier_name, source_type, source_name,
                    source_ref_id, created_by_user_id, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'voucherNo', mutation->>'voucherType',
                    (mutation->>'voucherDate')::timestamptz,
                    NULLIF(trim(mutation->>'warehouseFromGid'), ''),
                    NULLIF(trim(mutation->>'warehouseToGid'), ''),
                    mutation->>'referenceNo', mutation->>'notes',
                    mutation->>'supplierName',
                    COALESCE(mutation->>'sourceType', 'manual'),
                    mutation->>'sourceName',
                    NULLIF(trim(mutation->>'sourceRefId'), '')::integer,
                    NULLIF(trim(mutation->>'createdByUserId'), '')::integer,
                    (mutation->>'createdAt')::timestamptz, v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, voucher_no = EXCLUDED.voucher_no,
                    voucher_type = EXCLUDED.voucher_type, voucher_date = EXCLUDED.voucher_date,
                    warehouse_from_gid = EXCLUDED.warehouse_from_gid,
                    warehouse_to_gid = EXCLUDED.warehouse_to_gid,
                    reference_no = EXCLUDED.reference_no, notes = EXCLUDED.notes,
                    supplier_name = EXCLUDED.supplier_name, source_type = EXCLUDED.source_type,
                    source_name = EXCLUDED.source_name, updated_at = EXCLUDED.updated_at
                WHERE stock_vouchers.updated_at IS NULL OR stock_vouchers.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 20. STOCK VOUCHER ITEMS
        -- =================================================================
        IF entity_type = 'stock_voucher_item' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM stock_voucher_items WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_voucher_gid := NULLIF(trim(mutation->>'voucher_global_id'), '');
                v_customer_gid := NULLIF(trim(mutation->>'product_global_id'), '');
                INSERT INTO stock_voucher_items (global_id, tenant_id,
                    voucher_global_id, product_global_id, qty, unit_price, total,
                    stock_before, stock_after, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    v_voucher_gid, v_customer_gid,
                    (mutation->>'qty')::numeric, (mutation->>'unitPrice')::numeric,
                    (mutation->>'total')::numeric, (mutation->>'stockBefore')::numeric,
                    (mutation->>'stockAfter')::numeric,
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    voucher_global_id = EXCLUDED.voucher_global_id,
                    product_global_id = EXCLUDED.product_global_id,
                    qty = EXCLUDED.qty, unit_price = EXCLUDED.unit_price,
                    total = EXCLUDED.total, stock_before = EXCLUDED.stock_before,
                    stock_after = EXCLUDED.stock_after, updated_at = EXCLUDED.updated_at
                WHERE stock_voucher_items.updated_at IS NULL
                   OR stock_voucher_items.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 21. STOCKTAKING SESSIONS
        -- =================================================================
        IF entity_type = 'stocktaking_session' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM stocktaking_sessions WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO stocktaking_sessions (global_id, tenant_id,
                    warehouse_global_id, title, status, notes, started_at, closed_at,
                    created_by_user_id, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    NULLIF(trim(mutation->>'warehouse_global_id'), ''),
                    mutation->>'title', COALESCE(mutation->>'status', 'open'),
                    mutation->>'notes', (mutation->>'startedAt')::timestamptz,
                    NULLIF(trim(mutation->>'closedAt'), '')::timestamptz,
                    NULLIF(trim(mutation->>'createdByUserId'), '')::integer,
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    warehouse_global_id = EXCLUDED.warehouse_global_id,
                    title = EXCLUDED.title, status = EXCLUDED.status,
                    notes = EXCLUDED.notes, started_at = EXCLUDED.started_at,
                    closed_at = EXCLUDED.closed_at, updated_at = EXCLUDED.updated_at
                WHERE stocktaking_sessions.updated_at IS NULL
                   OR stocktaking_sessions.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 22. STOCKTAKING ITEMS
        -- =================================================================
        IF entity_type = 'stocktaking_item' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM stocktaking_items WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_session_gid := NULLIF(trim(mutation->>'session_global_id'), '');
                v_customer_gid := NULLIF(trim(mutation->>'product_global_id'), '');
                v_voucher_gid := NULLIF(trim(mutation->>'adjustment_voucher_global_id'), '');
                INSERT INTO stocktaking_items (global_id, tenant_id,
                    session_global_id, product_global_id, system_qty, counted_qty,
                    difference, adjustment_voucher_global_id, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    v_session_gid, v_customer_gid,
                    (mutation->>'systemQty')::numeric,
                    NULLIF(trim(mutation->>'countedQty'), '')::numeric,
                    NULLIF(trim(mutation->>'difference'), '')::numeric,
                    v_voucher_gid,
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    session_global_id = EXCLUDED.session_global_id,
                    product_global_id = EXCLUDED.product_global_id,
                    system_qty = EXCLUDED.system_qty, counted_qty = EXCLUDED.counted_qty,
                    difference = EXCLUDED.difference,
                    adjustment_voucher_global_id = EXCLUDED.adjustment_voucher_global_id,
                    updated_at = EXCLUDED.updated_at
                WHERE stocktaking_items.updated_at IS NULL
                   OR stocktaking_items.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 23. PRICE LISTS
        -- =================================================================
        IF entity_type = 'price_list' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM price_lists WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO price_lists (global_id, tenant_id, name, description,
                    is_default, is_active, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'name', mutation->>'description',
                    (COALESCE((mutation->>'isDefault')::integer, 0) <> 0),
                    (COALESCE((mutation->>'isActive')::integer, 1) <> 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, name = EXCLUDED.name,
                    description = EXCLUDED.description,
                    is_default = EXCLUDED.is_default, is_active = EXCLUDED.is_active,
                    updated_at = EXCLUDED.updated_at
                WHERE price_lists.updated_at IS NULL OR price_lists.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 24. PRICE LIST ITEMS
        -- =================================================================
        IF entity_type = 'price_list_item' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM price_list_items WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_pl_gid := NULLIF(trim(mutation->>'price_list_global_id'), '');
                v_customer_gid := NULLIF(trim(mutation->>'product_global_id'), '');
                INSERT INTO price_list_items (global_id, tenant_id,
                    price_list_global_id, product_global_id, price, min_qty,
                    is_active, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    v_pl_gid, v_customer_gid,
                    (mutation->>'price')::numeric, (mutation->>'minQty')::numeric,
                    (COALESCE((mutation->>'isActive')::integer, 1) <> 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    price_list_global_id = EXCLUDED.price_list_global_id,
                    product_global_id = EXCLUDED.product_global_id,
                    price = EXCLUDED.price, min_qty = EXCLUDED.min_qty,
                    is_active = EXCLUDED.is_active, updated_at = EXCLUDED.updated_at
                WHERE price_list_items.updated_at IS NULL
                   OR price_list_items.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 25. LOYALTY SETTINGS (singleton)
        -- =================================================================
        IF entity_type = 'loyalty_setting' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            INSERT INTO loyalty_settings (global_id, tenant_id, payload, updated_at)
            VALUES (v_global_id, COALESCE((mutation->>'tenantId')::integer, 1),
                COALESCE(mutation->'payload', '{}'), v_updated_at)
            ON CONFLICT (global_id) DO UPDATE SET
                payload = EXCLUDED.payload, updated_at = EXCLUDED.updated_at
            WHERE loyalty_settings.updated_at IS NULL OR loyalty_settings.updated_at < EXCLUDED.updated_at;
        END IF;

        -- =================================================================
        -- 26. LOYALTY LEDGER
        -- =================================================================
        IF entity_type = 'loyalty_ledger' THEN
            v_updated_at := (mutation->>'createdAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM loyalty_ledger WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_customer_gid := NULLIF(trim(mutation->>'customer_global_id'), '');
                INSERT INTO loyalty_ledger (global_id, tenant_id, customer_global_id,
                    invoice_global_id, kind, points, balance_after, note,
                    created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    v_customer_gid, NULLIF(trim(mutation->>'invoice_global_id'), ''),
                    mutation->>'kind', (mutation->>'points')::integer,
                    (mutation->>'balanceAfter')::integer, mutation->>'note',
                    COALESCE(v_updated_at, now()), COALESCE(v_updated_at, now()))
                ON CONFLICT (global_id) DO UPDATE SET
                    customer_global_id = EXCLUDED.customer_global_id,
                    invoice_global_id = EXCLUDED.invoice_global_id,
                    kind = EXCLUDED.kind, points = EXCLUDED.points,
                    balance_after = EXCLUDED.balance_after, note = EXCLUDED.note,
                    updated_at = EXCLUDED.updated_at
                WHERE loyalty_ledger.updated_at IS NULL OR loyalty_ledger.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 27. DEBT SETTINGS (singleton)
        -- =================================================================
        IF entity_type = 'debt_setting' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            INSERT INTO debt_settings (global_id, tenant_id, payload, updated_at)
            VALUES (v_global_id, COALESCE((mutation->>'tenantId')::integer, 1),
                COALESCE(mutation->'payload', '{}'), v_updated_at)
            ON CONFLICT (global_id) DO UPDATE SET
                payload = EXCLUDED.payload, updated_at = EXCLUDED.updated_at
            WHERE debt_settings.updated_at IS NULL OR debt_settings.updated_at < EXCLUDED.updated_at;
        END IF;

        -- =================================================================
        -- 28. INSTALLMENT SETTINGS (singleton)
        -- =================================================================
        IF entity_type = 'installment_setting' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            INSERT INTO installment_settings (global_id, tenant_id, payload, updated_at)
            VALUES (v_global_id, COALESCE((mutation->>'tenantId')::integer, 1),
                COALESCE(mutation->'payload', '{}'), v_updated_at)
            ON CONFLICT (global_id) DO UPDATE SET
                payload = EXCLUDED.payload, updated_at = EXCLUDED.updated_at
            WHERE installment_settings.updated_at IS NULL
               OR installment_settings.updated_at < EXCLUDED.updated_at;
        END IF;

        -- =================================================================
        -- 29. BRANCHES
        -- =================================================================
        IF entity_type = 'branch' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM branches WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO branches (global_id, tenant_id, code, name,
                    is_active, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'code', mutation->>'name',
                    (COALESCE((mutation->>'isActive')::integer, 1) <> 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, code = EXCLUDED.code,
                    name = EXCLUDED.name, is_active = EXCLUDED.is_active,
                    updated_at = EXCLUDED.updated_at
                WHERE branches.updated_at IS NULL OR branches.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 30. PARKED SALES
        -- =================================================================
        IF entity_type = 'parked_sale' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM parked_sales WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO parked_sales (global_id, tenant_id, title, payload,
                    created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'title', COALESCE(mutation->'payload', '{}'),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, title = EXCLUDED.title,
                    payload = EXCLUDED.payload, updated_at = EXCLUDED.updated_at
                WHERE parked_sales.updated_at IS NULL OR parked_sales.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 31. CUSTOMER EXTRA PHONES
        -- =================================================================
        IF entity_type = 'customer_extra_phone' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM customer_extra_phones WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_customer_gid := NULLIF(trim(mutation->>'customer_global_id'), '');
                INSERT INTO customer_extra_phones (global_id, tenant_id,
                    customer_global_id, phone, sort_order, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    v_customer_gid, mutation->>'phone',
                    COALESCE((mutation->>'sortOrder')::integer, 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    customer_global_id = EXCLUDED.customer_global_id,
                    phone = EXCLUDED.phone, sort_order = EXCLUDED.sort_order,
                    updated_at = EXCLUDED.updated_at
                WHERE customer_extra_phones.updated_at IS NULL
                   OR customer_extra_phones.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 32. ACTIVITY LOGS
        -- =================================================================
        IF entity_type = 'activity_log' THEN
            IF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO activity_logs (global_id, tenant_id, type, ref_table,
                    ref_id, title, details, amount, created_by_user_id, created_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'type', mutation->>'refTable',
                    NULLIF(trim(mutation->>'refId'), '')::integer,
                    mutation->>'title', mutation->>'details',
                    (mutation->>'amount')::numeric,
                    NULLIF(trim(mutation->>'createdByUserId'), '')::integer,
                    (mutation->>'createdAt')::timestamptz)
                ON CONFLICT (global_id) DO NOTHING;
            END IF;
        END IF;

        -- =================================================================
        -- 33. UNIT TEMPLATES
        -- =================================================================
        IF entity_type = 'unit_template' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM unit_templates WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO unit_templates (global_id, tenant_id, name, description,
                    is_active, created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'name', mutation->>'description',
                    (COALESCE((mutation->>'isActive')::integer, 1) <> 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, name = EXCLUDED.name,
                    description = EXCLUDED.description, is_active = EXCLUDED.is_active,
                    updated_at = EXCLUDED.updated_at
                WHERE unit_templates.updated_at IS NULL
                   OR unit_templates.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 34. UNIT TEMPLATE CONVERSIONS
        -- =================================================================
        IF entity_type = 'unit_template_conversion' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM unit_template_conversions WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_tmpl_gid := NULLIF(trim(mutation->>'template_global_id'), '');
                INSERT INTO unit_template_conversions (global_id, tenant_id,
                    template_global_id, from_unit, to_unit, factor,
                    created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    v_tmpl_gid, mutation->>'fromUnit', mutation->>'toUnit',
                    (mutation->>'factor')::numeric,
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    template_global_id = EXCLUDED.template_global_id,
                    from_unit = EXCLUDED.from_unit, to_unit = EXCLUDED.to_unit,
                    factor = EXCLUDED.factor, updated_at = EXCLUDED.updated_at
                WHERE unit_template_conversions.updated_at IS NULL
                   OR unit_template_conversions.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 35. PRODUCT BATCHES
        -- =================================================================
        IF entity_type = 'product_batch' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;
            IF operation = 'DELETE' THEN
                DELETE FROM product_batches WHERE global_id = v_global_id;
            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                v_customer_gid := NULLIF(trim(mutation->>'product_global_id'), '');
                INSERT INTO product_batches (global_id, tenant_id, product_global_id,
                    batch_number, manufacturing_date, expiry_date, qty, buy_price,
                    created_at, updated_at)
                VALUES (v_global_id, (mutation->>'tenantId')::integer,
                    v_customer_gid, mutation->>'batchNumber',
                    mutation->>'manufacturingDate', mutation->>'expiryDate',
                    (mutation->>'qty')::numeric, (mutation->>'buyPrice')::numeric,
                    COALESCE((mutation->>'createdAt')::timestamptz, now()), v_updated_at)
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    product_global_id = EXCLUDED.product_global_id,
                    batch_number = EXCLUDED.batch_number,
                    manufacturing_date = EXCLUDED.manufacturing_date,
                    expiry_date = EXCLUDED.expiry_date, qty = EXCLUDED.qty,
                    buy_price = EXCLUDED.buy_price, updated_at = EXCLUDED.updated_at
                WHERE product_batches.updated_at IS NULL
                   OR product_batches.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- Realtime Notification (all entity types)
        -- =================================================================
        IF v_user_id IS NOT NULL THEN
            INSERT INTO public.sync_notifications (
                user_id, sender_device_id, entity_type, global_id, operation
            ) VALUES (
                v_user_id, v_sender_device_id, entity_type, v_global_id, operation
            );
        END IF;

    END LOOP;
END;
$$;
