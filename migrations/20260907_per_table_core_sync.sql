-- ─────────────────────────────────────────────────────────────────────────────
-- Per-table sync — Phase 1: products / product_unit_variants / customers / suppliers
--
-- Moves these tables to the same per-table sync model as invoices:
--   local writes → updatedAt cursor → direct upsert into these tables
--   remote rows  → incremental pull (updated_at > cursor) → LWW merge by global_id
--
-- Run ONCE from the Supabase SQL Editor. Idempotent (IF NOT EXISTS everywhere).
-- ─────────────────────────────────────────────────────────────────────────────

-- ── 1. Remote products ────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.products (
  global_id                text PRIMARY KEY,
  tenant_id                integer NOT NULL DEFAULT 1,
  name                     text NOT NULL,
  barcode                  text,
  product_code             text,
  category_global_id       text,
  brand_global_id          text,
  buy_price                double precision NOT NULL DEFAULT 0,
  sell_price               double precision NOT NULL DEFAULT 0,
  min_sell_price           double precision NOT NULL DEFAULT 0,
  qty                      double precision NOT NULL DEFAULT 0,
  low_stock_threshold      double precision NOT NULL DEFAULT 0,
  status                   text NOT NULL DEFAULT 'instock',
  is_active                integer NOT NULL DEFAULT 1,
  is_pinned                integer NOT NULL DEFAULT 0,
  pinned_at                timestamptz,
  image_path               text,
  image_url                text,
  is_service               integer NOT NULL DEFAULT 0,
  service_kind             text,
  description              text,
  internal_notes           text,
  tags                     text,
  sale_unit                text,
  supplier_name            text,
  supplier_item_code       text,
  tax_percent              double precision NOT NULL DEFAULT 0,
  discount_percent         double precision NOT NULL DEFAULT 0,
  discount_amount          double precision NOT NULL DEFAULT 0,
  buy_conversion_label     text,
  stock_base_kind          integer NOT NULL DEFAULT 0,
  track_inventory          integer NOT NULL DEFAULT 1,
  allow_negative_stock     integer NOT NULL DEFAULT 0,
  net_weight_grams         double precision,
  manufacturing_date       text,
  expiry_date              text,
  expiry_alert_days_before integer,
  grade                    text,
  batch_number             text,
  created_at               timestamptz,
  updated_at               timestamptz,
  deleted_at               timestamptz
);

CREATE INDEX IF NOT EXISTS idx_products_tenant      ON public.products(tenant_id);
CREATE INDEX IF NOT EXISTS idx_products_updated     ON public.products(updated_at);
CREATE INDEX IF NOT EXISTS idx_products_category    ON public.products(category_global_id);
CREATE INDEX IF NOT EXISTS idx_products_brand       ON public.products(brand_global_id);

-- ── 2. Remote product_unit_variants ───────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.product_unit_variants (
  global_id          text PRIMARY KEY,
  tenant_id          integer NOT NULL DEFAULT 1,
  product_global_id  text,
  unit_name          text NOT NULL,
  unit_symbol        text,
  barcode            text,
  sell_price         double precision,
  min_sell_price     double precision,
  factor_to_base     double precision NOT NULL DEFAULT 1,
  is_default         integer NOT NULL DEFAULT 0,
  is_active          integer NOT NULL DEFAULT 1,
  created_at         timestamptz,
  updated_at         timestamptz,
  deleted_at         timestamptz
);

CREATE INDEX IF NOT EXISTS idx_puv_tenant   ON public.product_unit_variants(tenant_id);
CREATE INDEX IF NOT EXISTS idx_puv_updated  ON public.product_unit_variants(updated_at);
CREATE INDEX IF NOT EXISTS idx_puv_product  ON public.product_unit_variants(product_global_id);

-- ── 3. Remote customers ───────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.customers (
  global_id       text PRIMARY KEY,
  tenant_id       integer NOT NULL DEFAULT 1,
  name            text NOT NULL,
  phone           text,
  email           text,
  address         text,
  notes           text,
  balance         double precision NOT NULL DEFAULT 0,
  loyalty_points  integer NOT NULL DEFAULT 0,
  created_at      timestamptz,
  updated_at      timestamptz,
  deleted_at      timestamptz
);

CREATE INDEX IF NOT EXISTS idx_customers_tenant  ON public.customers(tenant_id);
CREATE INDEX IF NOT EXISTS idx_customers_updated ON public.customers(updated_at);

-- ── 4. Remote suppliers ───────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.suppliers (
  global_id   text PRIMARY KEY,
  tenant_id   integer NOT NULL DEFAULT 1,
  name        text NOT NULL,
  phone       text,
  notes       text,
  is_active   integer NOT NULL DEFAULT 1,
  created_at  timestamptz,
  updated_at  timestamptz,
  deleted_at  timestamptz
);

CREATE INDEX IF NOT EXISTS idx_suppliers_tenant  ON public.suppliers(tenant_id);
CREATE INDEX IF NOT EXISTS idx_suppliers_updated ON public.suppliers(updated_at);

-- ── 4b. Phase 4: work_shifts (new remote table) + missing updated_at columns.
-- DROP the old RPC-era table (had session_user_id/shift_staff_pin NOT NULL)
-- that CREATE TABLE IF NOT EXISTS cannot replace.
DROP TRIGGER IF EXISTS trg_work_shifts_set_tenant ON public.work_shifts;
DROP POLICY IF EXISTS work_shifts_select_own  ON public.work_shifts;
DROP POLICY IF EXISTS work_shifts_insert_own  ON public.work_shifts;
DROP POLICY IF EXISTS work_shifts_update_own  ON public.work_shifts;
DROP POLICY IF EXISTS work_shifts_delete_own  ON public.work_shifts;
DROP TABLE IF EXISTS public.work_shifts CASCADE;
CREATE TABLE public.work_shifts (
  global_id                    text PRIMARY KEY,
  tenant_id                    integer NOT NULL DEFAULT 1,
  opened_at                    timestamptz NOT NULL,
  closed_at                    timestamptz,
  system_balance_at_open       double precision NOT NULL DEFAULT 0,
  declared_physical_cash       double precision NOT NULL DEFAULT 0,
  added_cash_at_open           double precision NOT NULL DEFAULT 0,
  shift_staff_name             text NOT NULL,
  declared_closing_cash        double precision,
  system_balance_at_close      double precision,
  withdrawn_at_close           double precision,
  declared_cash_in_box_at_close double precision,
  created_at                   timestamptz,
  updated_at                   timestamptz,
  deleted_at                   timestamptz
);
CREATE INDEX IF NOT EXISTS idx_work_shifts_tenant  ON public.work_shifts(tenant_id);
CREATE INDEX IF NOT EXISTS idx_work_shifts_updated ON public.work_shifts(updated_at);

-- parked_sales / activity_logs remote tables exist (20260531_full_sync_coverage.sql)
-- but had no updated_at — required for cursor-based incremental pulls.
ALTER TABLE public.parked_sales  ADD COLUMN IF NOT EXISTS updated_at timestamptz;
ALTER TABLE public.activity_logs ADD COLUMN IF NOT EXISTS updated_at timestamptz;
CREATE INDEX IF NOT EXISTS idx_parked_sales_updated  ON public.parked_sales(updated_at);
CREATE INDEX IF NOT EXISTS idx_activity_logs_updated ON public.activity_logs(updated_at);

-- ── 5. Compatibility with earlier RPC-era tables (supabase_sync_expenses_rpc.sql,
-- supabase_sync_queue_rpc.sql, migrations/20260531_expenses_sync.sql).
-- Missing columns are added idempotently so the direct per-table upserts work.
ALTER TABLE public.customers ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
ALTER TABLE public.suppliers ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
ALTER TABLE public.products    ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
ALTER TABLE public.product_unit_variants ADD COLUMN IF NOT EXISTS deleted_at timestamptz;

-- cash_ledger (RPC-era: had only work_shift_id/invoice_id local ints).
ALTER TABLE public.cash_ledger ADD COLUMN IF NOT EXISTS work_shift_global_id text;
ALTER TABLE public.cash_ledger ADD COLUMN IF NOT EXISTS invoice_global_id  text;
ALTER TABLE public.cash_ledger ADD COLUMN IF NOT EXISTS deleted_at         timestamptz;
CREATE INDEX IF NOT EXISTS idx_cash_ledger_updated ON public.cash_ledger(updated_at);

-- installment_plans (RPC-era: missing money-model + audit columns).
ALTER TABLE public.installment_plans ADD COLUMN IF NOT EXISTS interest_pct        double precision;
ALTER TABLE public.installment_plans ADD COLUMN IF NOT EXISTS interest_amount     double precision;
ALTER TABLE public.installment_plans ADD COLUMN IF NOT EXISTS financed_at_sale    double precision;
ALTER TABLE public.installment_plans ADD COLUMN IF NOT EXISTS total_with_interest double precision;
ALTER TABLE public.installment_plans ADD COLUMN IF NOT EXISTS planned_months      integer;
ALTER TABLE public.installment_plans ADD COLUMN IF NOT EXISTS suggested_monthly   double precision;
ALTER TABLE public.installment_plans ADD COLUMN IF NOT EXISTS created_at          timestamptz;
ALTER TABLE public.installment_plans ADD COLUMN IF NOT EXISTS deleted_at          timestamptz;
CREATE INDEX IF NOT EXISTS idx_installment_plans_updated ON public.installment_plans(updated_at);

-- installments
ALTER TABLE public.installments ADD COLUMN IF NOT EXISTS created_at timestamptz;
ALTER TABLE public.installments ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
CREATE INDEX IF NOT EXISTS idx_installments_updated ON public.installments(updated_at);

-- customer_debt_payments
ALTER TABLE public.customer_debt_payments ADD COLUMN IF NOT EXISTS deleted_at timestamptz;
CREATE INDEX IF NOT EXISTS idx_customer_debt_payments_updated
  ON public.customer_debt_payments(updated_at);

-- expense_categories (identity PK + UNIQUE global_id — upsert uses onConflict global_id)
ALTER TABLE public.expense_categories ADD COLUMN IF NOT EXISTS updated_at timestamptz;
CREATE INDEX IF NOT EXISTS idx_expense_categories_updated
  ON public.expense_categories(updated_at);

-- ── 6. Hard-delete tombstones ─────────────────────────────────────────────
-- Hard-deleted rows can never be discovered by incremental pulls (which read
-- existing rows only). Deletes are therefore published as rows here; every
-- device pulls them and deletes its matching local row (LWW-guarded).
-- Entity rows are NEVER physically deleted on the remote by this path.
CREATE TABLE IF NOT EXISTS public.sync_hard_deletes (
  table_name  text NOT NULL,
  global_id   text NOT NULL,
  deleted_at  timestamptz NOT NULL,
  created_at  timestamptz NOT NULL DEFAULT now(),
  PRIMARY KEY (table_name, global_id)
);

CREATE INDEX IF NOT EXISTS idx_sync_hard_deletes_created
  ON public.sync_hard_deletes(created_at);

ALTER TABLE public.sync_hard_deletes ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'sync_hard_deletes' AND policyname = 'Allow all for service role') THEN
    CREATE POLICY "Allow all for service role" ON public.sync_hard_deletes FOR ALL USING (true) WITH CHECK (true);
  END IF;
END $$;

-- ── 7. RLS: same open policy used by invoices/invoice_items ───────────────
ALTER TABLE public.products             ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.product_unit_variants ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.customers            ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.suppliers            ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'products' AND policyname = 'Allow all for service role') THEN
    CREATE POLICY "Allow all for service role" ON public.products FOR ALL USING (true) WITH CHECK (true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'product_unit_variants' AND policyname = 'Allow all for service role') THEN
    CREATE POLICY "Allow all for service role" ON public.product_unit_variants FOR ALL USING (true) WITH CHECK (true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'customers' AND policyname = 'Allow all for service role') THEN
    CREATE POLICY "Allow all for service role" ON public.customers FOR ALL USING (true) WITH CHECK (true);
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'suppliers' AND policyname = 'Allow all for service role') THEN
    CREATE POLICY "Allow all for service role" ON public.suppliers FOR ALL USING (true) WITH CHECK (true);
  END IF;
END $$;
