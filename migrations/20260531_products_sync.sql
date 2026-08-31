-- =========================================================================
-- Products, Categories & Brands — Mutation-based Sync (Phase 7)
-- =========================================================================
-- Run this migration in the Supabase SQL Editor AFTER the existing
-- supabase_sync_queue_rpc.sql has been applied.
--
-- This adds the three tables that the Dart client already expects
-- (see _entityToTableMap in cloud_sync_service.dart) and extends
-- rpc_process_sync_queue to handle 'category', 'brand', and 'product'
-- mutations.
-- =========================================================================

-- ── 1. Categories ──────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.categories (
  global_id      text PRIMARY KEY,
  tenant_id      integer NOT NULL DEFAULT 1,
  name           text NOT NULL,
  code           text,
  parent_global_id text,
  description    text,
  sort_order     integer NOT NULL DEFAULT 0,
  is_active      boolean NOT NULL DEFAULT true,
  created_at     timestamptz NOT NULL DEFAULT now(),
  updated_at     timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_categories_tenant ON public.categories(tenant_id);

-- ── 2. Brands ──────────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.brands (
  global_id      text PRIMARY KEY,
  tenant_id      integer NOT NULL DEFAULT 1,
  name           text NOT NULL,
  code           text,
  is_active      boolean NOT NULL DEFAULT true,
  created_at     timestamptz NOT NULL DEFAULT now(),
  updated_at     timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_brands_tenant ON public.brands(tenant_id);

-- ── 3. Products ────────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.products (
  global_id            text PRIMARY KEY,
  tenant_id            integer NOT NULL DEFAULT 1,
  name                 text NOT NULL,
  barcode              text,
  product_code         text,
  category_global_id   text REFERENCES public.categories(global_id) ON DELETE SET NULL,
  brand_global_id      text REFERENCES public.brands(global_id) ON DELETE SET NULL,
  buy_price            numeric NOT NULL DEFAULT 0,
  sell_price           numeric NOT NULL DEFAULT 0,
  min_sell_price       numeric NOT NULL DEFAULT 0,
  qty                  numeric NOT NULL DEFAULT 0,
  low_stock_threshold  numeric NOT NULL DEFAULT 0,
  status               text NOT NULL DEFAULT 'instock',
  is_active            boolean NOT NULL DEFAULT true,
  created_at           timestamptz NOT NULL DEFAULT now(),
  updated_at           timestamptz,
  description          text,
  image_path           text,
  image_url            text,
  internal_notes       text,
  tags                 text,
  sale_unit            text,
  supplier_name        text,
  tax_percent          numeric NOT NULL DEFAULT 0,
  discount_percent     numeric NOT NULL DEFAULT 0,
  discount_amount      numeric NOT NULL DEFAULT 0,
  buy_conversion_label text,
  track_inventory      boolean NOT NULL DEFAULT true,
  allow_negative_stock boolean NOT NULL DEFAULT false,
  supplier_item_code   text,
  net_weight_grams     numeric,
  manufacturing_date   text,
  expiry_date          text,
  grade                text,
  batch_number         text,
  expiry_alert_days_before integer,
  stock_base_kind      integer NOT NULL DEFAULT 0,
  is_service           boolean NOT NULL DEFAULT false,
  service_kind         text,
  is_pinned            boolean NOT NULL DEFAULT false,
  pinned_at            bigint
);

CREATE INDEX IF NOT EXISTS idx_products_tenant ON public.products(tenant_id);
CREATE INDEX IF NOT EXISTS idx_products_barcode ON public.products(barcode);
CREATE INDEX IF NOT EXISTS idx_products_category ON public.products(category_global_id);
CREATE INDEX IF NOT EXISTS idx_products_brand ON public.products(brand_global_id);

-- ── 4. Enable RLS ──────────────────────────────────────────────────────
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.brands    ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.products  ENABLE ROW LEVEL SECURITY;

-- Policies: service-role (used by rpc_process_sync_queue) bypasses RLS,
-- but direct client reads need a permissive SELECT.
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'categories' AND policyname = 'Allow all for service role'
  ) THEN
    CREATE POLICY "Allow all for service role" ON public.categories FOR ALL USING (true) WITH CHECK (true);
  END IF;
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'brands' AND policyname = 'Allow all for service role'
  ) THEN
    CREATE POLICY "Allow all for service role" ON public.brands FOR ALL USING (true) WITH CHECK (true);
  END IF;
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'products' AND policyname = 'Allow all for service role'
  ) THEN
    CREATE POLICY "Allow all for service role" ON public.products FOR ALL USING (true) WITH CHECK (true);
  END IF;
END $$;

-- ── 5. Extend rpc_process_sync_queue ───────────────────────────────────
-- We DROP and recreate the function to add the new entity handlers.
-- This is safe because the function signature is unchanged.

DROP FUNCTION IF EXISTS rpc_process_sync_queue(jsonb);

CREATE OR REPLACE FUNCTION rpc_process_sync_queue(mutations_json jsonb)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
    mutation jsonb;
    entity_type text;
    operation text;
    mutation_id text;
    v_global_id text;
    v_updated_at timestamp with time zone;
    existing_updated_at timestamp with time zone;
    v_cat_id integer;
    v_should_ledger boolean;
    cle jsonb;
    v_cash_updated timestamptz;
    v_sender_device_id text;
    v_user_id uuid;
    v_brand_gid text;
    v_cat_gid text;
BEGIN
    v_user_id := auth.uid();

    FOR mutation IN SELECT * FROM jsonb_array_elements(mutations_json)
    LOOP
        mutation_id := mutation->>'_mutation_id';
        entity_type := mutation->>'_entity_type';
        operation   := mutation->>'_operation';
        v_global_id := mutation->>'global_id';
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
                SELECT id INTO v_cat_id
                FROM expense_categories
                WHERE global_id = (mutation->>'category_global_id')
                  AND tenant_id = (mutation->>'tenantId')::integer
                LIMIT 1;

                IF v_cat_id IS NULL THEN
                    CONTINUE;
                END IF;

                INSERT INTO expenses (
                    global_id, tenant_id, category_id, amount, occurred_at,
                    status, description, employee_user_id, is_recurring,
                    recurring_day, recurring_origin_id, attachment_path,
                    affects_cash, invoice_ref, landlord_or_property, tax_kind,
                    created_at, updated_at
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
                    mutation->>'taxKind', (mutation->>'createdAt')::timestamptz,
                    v_updated_at
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
                WHERE expenses.updated_at < EXCLUDED.updated_at;

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
                        tenant_id = EXCLUDED.tenant_id,
                        transaction_type = EXCLUDED.transaction_type,
                        amount = EXCLUDED.amount, amount_fils = EXCLUDED.amount_fils,
                        description = EXCLUDED.description, invoice_id = EXCLUDED.invoice_id,
                        work_shift_id = EXCLUDED.work_shift_id,
                        work_shift_global_id = EXCLUDED.work_shift_global_id,
                        expense_global_id = EXCLUDED.expense_global_id,
                        updated_at = EXCLUDED.updated_at
                    WHERE cash_ledger.updated_at < EXCLUDED.updated_at;
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
                INSERT INTO expense_categories (
                    global_id, tenant_id, name, sort_order, is_active, created_at
                ) VALUES (
                    v_global_id, (mutation->>'tenantId')::integer,
                    mutation->>'name', (mutation->>'sortOrder')::integer,
                    (COALESCE((mutation->>'isActive')::integer, 1) <> 0),
                    (mutation->>'createdAt')::timestamptz
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id, name = EXCLUDED.name,
                    sort_order = EXCLUDED.sort_order, is_active = EXCLUDED.is_active
                WHERE expense_categories.created_at < EXCLUDED.created_at;
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
                    opened_at, closed_at, system_balance_at_open,
                    declared_physical_cash, added_cash_at_open, shift_staff_name,
                    shift_staff_pin, declared_closing_cash, system_balance_at_close,
                    withdrawn_at_close, declared_cash_in_box_at_close, updated_at
                ) VALUES (
                    v_global_id, (mutation->>'tenantId')::integer,
                    (mutation->>'sessionUserId')::integer,
                    NULLIF(trim(mutation->>'shiftStaffUserId'), '')::integer,
                    (mutation->>'openedAt')::timestamptz,
                    (NULLIF(trim(mutation->>'closedAt'), ''))::timestamptz,
                    (mutation->>'systemBalanceAtOpen')::numeric,
                    (mutation->>'declaredPhysicalCash')::numeric,
                    (mutation->>'addedCashAtOpen')::numeric,
                    mutation->>'shiftStaffName', mutation->>'shiftStaffPin',
                    (NULLIF(trim(mutation->>'declaredClosingCash'), ''))::numeric,
                    (NULLIF(trim(mutation->>'systemBalanceAtClose'), ''))::numeric,
                    (NULLIF(trim(mutation->>'withdrawnAtClose'), ''))::numeric,
                    (NULLIF(trim(mutation->>'declaredCashInBoxAtClose'), ''))::numeric,
                    v_updated_at
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    session_user_id = EXCLUDED.session_user_id,
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
                WHERE work_shifts.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 4. STANDALONE CASH LEDGER ENTRIES
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
                    COALESCE((mutation->>'amountFils')::integer, 0),
                    mutation->>'description',
                    NULLIF(trim(mutation->>'invoiceId'), '')::integer,
                    NULLIF(trim(mutation->>'workShiftId'), '')::integer,
                    NULLIF(trim(mutation->>'work_shift_global_id'), ''),
                    NULLIF(trim(mutation->>'expense_global_id'), ''),
                    (mutation->>'createdAt')::timestamptz, v_updated_at
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    transaction_type = EXCLUDED.transaction_type,
                    amount = EXCLUDED.amount, amount_fils = EXCLUDED.amount_fils,
                    description = EXCLUDED.description, invoice_id = EXCLUDED.invoice_id,
                    work_shift_id = EXCLUDED.work_shift_id,
                    work_shift_global_id = EXCLUDED.work_shift_global_id,
                    expense_global_id = EXCLUDED.expense_global_id,
                    updated_at = EXCLUDED.updated_at
                WHERE cash_ledger.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 5. CATEGORIES (products)
        -- =================================================================
        IF entity_type = 'category' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;

            IF operation = 'DELETE' THEN
                IF v_updated_at IS NULL THEN
                    DELETE FROM categories WHERE global_id = v_global_id;
                ELSE
                    SELECT updated_at INTO existing_updated_at FROM categories WHERE global_id = v_global_id;
                    IF existing_updated_at IS NULL OR existing_updated_at <= v_updated_at THEN
                        DELETE FROM categories WHERE global_id = v_global_id;
                    END IF;
                END IF;

            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                -- Resolve parent_global_id → local category id (self-referential)
                -- We keep parent_global_id as text for cross-device resolution.

                INSERT INTO categories (
                    global_id, tenant_id, name, code, parent_global_id,
                    description, sort_order, is_active, created_at, updated_at
                ) VALUES (
                    v_global_id,
                    (mutation->>'tenantId')::integer,
                    mutation->>'name',
                    mutation->>'code',
                    NULLIF(trim(mutation->>'parent_global_id'), ''),
                    mutation->>'description',
                    COALESCE((mutation->>'sort_order')::integer, 0),
                    (COALESCE((mutation->>'isActive')::integer,
                              CASE WHEN mutation->>'isActive' IS NULL THEN 1 ELSE 0 END) <> 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()),
                    v_updated_at
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    name = EXCLUDED.name,
                    code = EXCLUDED.code,
                    parent_global_id = EXCLUDED.parent_global_id,
                    description = EXCLUDED.description,
                    sort_order = EXCLUDED.sort_order,
                    is_active = EXCLUDED.is_active,
                    updated_at = EXCLUDED.updated_at
                WHERE categories.updated_at IS NULL
                   OR categories.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 6. BRANDS (products)
        -- =================================================================
        IF entity_type = 'brand' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;

            IF operation = 'DELETE' THEN
                IF v_updated_at IS NULL THEN
                    DELETE FROM brands WHERE global_id = v_global_id;
                ELSE
                    SELECT updated_at INTO existing_updated_at FROM brands WHERE global_id = v_global_id;
                    IF existing_updated_at IS NULL OR existing_updated_at <= v_updated_at THEN
                        DELETE FROM brands WHERE global_id = v_global_id;
                    END IF;
                END IF;

            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                INSERT INTO brands (
                    global_id, tenant_id, name, code, is_active, created_at, updated_at
                ) VALUES (
                    v_global_id,
                    (mutation->>'tenantId')::integer,
                    mutation->>'name',
                    mutation->>'code',
                    (COALESCE((mutation->>'isActive')::integer,
                              CASE WHEN mutation->>'isActive' IS NULL THEN 1 ELSE 0 END) <> 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()),
                    v_updated_at
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    name = EXCLUDED.name,
                    code = EXCLUDED.code,
                    is_active = EXCLUDED.is_active,
                    updated_at = EXCLUDED.updated_at
                WHERE brands.updated_at IS NULL
                   OR brands.updated_at < EXCLUDED.updated_at;
            END IF;
        END IF;

        -- =================================================================
        -- 7. PRODUCTS
        -- =================================================================
        IF entity_type = 'product' THEN
            v_updated_at := (mutation->>'updatedAt')::timestamptz;

            IF operation = 'DELETE' THEN
                IF v_updated_at IS NULL THEN
                    DELETE FROM products WHERE global_id = v_global_id;
                ELSE
                    SELECT updated_at INTO existing_updated_at FROM products WHERE global_id = v_global_id;
                    IF existing_updated_at IS NULL OR existing_updated_at <= v_updated_at THEN
                        DELETE FROM products WHERE global_id = v_global_id;
                    END IF;
                END IF;

            ELSIF operation IN ('INSERT', 'UPDATE') THEN
                -- The client sends category_global_id and brand_global_id in the
                -- mutation payload (from the JOIN in _enqueueProductMutation).
                v_cat_gid  := NULLIF(trim(mutation->>'category_global_id'), '');
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
                    stock_base_kind, is_service, service_kind,
                    is_pinned, pinned_at
                ) VALUES (
                    v_global_id,
                    (mutation->>'tenantId')::integer,
                    mutation->>'name',
                    mutation->>'barcode',
                    mutation->>'productCode',
                    v_cat_gid,
                    v_brand_gid,
                    (mutation->>'buyPrice')::numeric,
                    (mutation->>'sellPrice')::numeric,
                    (mutation->>'minSellPrice')::numeric,
                    (mutation->>'qty')::numeric,
                    (mutation->>'lowStockThreshold')::numeric,
                    COALESCE(mutation->>'status', 'instock'),
                    (COALESCE((mutation->>'isActive')::integer, 1) <> 0),
                    COALESCE((mutation->>'createdAt')::timestamptz, now()),
                    v_updated_at,
                    mutation->>'description',
                    mutation->>'imagePath',
                    mutation->>'imageUrl',
                    mutation->>'internalNotes',
                    mutation->>'tags',
                    mutation->>'saleUnit',
                    mutation->>'supplierName',
                    (mutation->>'taxPercent')::numeric,
                    (mutation->>'discountPercent')::numeric,
                    (mutation->>'discountAmount')::numeric,
                    mutation->>'buyConversionLabel',
                    (COALESCE((mutation->>'trackInventory')::integer, 1) <> 0),
                    (COALESCE((mutation->>'allowNegativeStock')::integer, 0) <> 0),
                    mutation->>'supplierItemCode',
                    (mutation->>'netWeightGrams')::numeric,
                    mutation->>'manufacturingDate',
                    mutation->>'expiryDate',
                    mutation->>'grade',
                    mutation->>'batchNumber',
                    (mutation->>'expiryAlertDaysBefore')::integer,
                    (mutation->>'stockBaseKind')::integer,
                    (COALESCE((mutation->>'isService')::integer, 0) <> 0),
                    mutation->>'serviceKind',
                    (COALESCE((mutation->>'isPinned')::integer, 0) <> 0),
                    (mutation->>'pinnedAt')::bigint
                )
                ON CONFLICT (global_id) DO UPDATE SET
                    tenant_id = EXCLUDED.tenant_id,
                    name = EXCLUDED.name,
                    barcode = EXCLUDED.barcode,
                    product_code = EXCLUDED.product_code,
                    category_global_id = EXCLUDED.category_global_id,
                    brand_global_id = EXCLUDED.brand_global_id,
                    buy_price = EXCLUDED.buy_price,
                    sell_price = EXCLUDED.sell_price,
                    min_sell_price = EXCLUDED.min_sell_price,
                    qty = EXCLUDED.qty,
                    low_stock_threshold = EXCLUDED.low_stock_threshold,
                    status = EXCLUDED.status,
                    is_active = EXCLUDED.is_active,
                    updated_at = EXCLUDED.updated_at,
                    description = EXCLUDED.description,
                    image_path = EXCLUDED.image_path,
                    image_url = EXCLUDED.image_url,
                    internal_notes = EXCLUDED.internal_notes,
                    tags = EXCLUDED.tags,
                    sale_unit = EXCLUDED.sale_unit,
                    supplier_name = EXCLUDED.supplier_name,
                    tax_percent = EXCLUDED.tax_percent,
                    discount_percent = EXCLUDED.discount_percent,
                    discount_amount = EXCLUDED.discount_amount,
                    buy_conversion_label = EXCLUDED.buy_conversion_label,
                    track_inventory = EXCLUDED.track_inventory,
                    allow_negative_stock = EXCLUDED.allow_negative_stock,
                    supplier_item_code = EXCLUDED.supplier_item_code,
                    net_weight_grams = EXCLUDED.net_weight_grams,
                    manufacturing_date = EXCLUDED.manufacturing_date,
                    expiry_date = EXCLUDED.expiry_date,
                    grade = EXCLUDED.grade,
                    batch_number = EXCLUDED.batch_number,
                    expiry_alert_days_before = EXCLUDED.expiry_alert_days_before,
                    stock_base_kind = EXCLUDED.stock_base_kind,
                    is_service = EXCLUDED.is_service,
                    service_kind = EXCLUDED.service_kind,
                    is_pinned = EXCLUDED.is_pinned,
                    pinned_at = EXCLUDED.pinned_at
                WHERE products.updated_at IS NULL
                   OR products.updated_at < EXCLUDED.updated_at;
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
