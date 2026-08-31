-- =========================================================================
-- Expenses & Expense Categories — Critical Fix (Phase 7.1)
-- =========================================================================
-- The rpc_process_sync_queue function already handles 'expense' and
-- 'expense_category' mutations, but the underlying Supabase tables were
-- never created.  Every expense mutation pushed from the Dart client
-- fails silently.
--
-- Run this in the Supabase SQL Editor BEFORE re-running
-- supabase_sync_queue_rpc.sql (or the new 20260531_products_sync.sql
-- which recreates the function).
-- =========================================================================

-- ── 1. Expense Categories ──────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.expense_categories (
  id            integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  global_id     text UNIQUE,
  tenant_id     integer NOT NULL DEFAULT 1,
  name          text NOT NULL,
  sort_order    integer NOT NULL DEFAULT 0,
  is_active     boolean NOT NULL DEFAULT true,
  created_at    timestamptz NOT NULL DEFAULT now(),
  updated_at    timestamptz NOT NULL DEFAULT now()
);

CREATE INDEX IF NOT EXISTS idx_expense_categories_tenant
  ON public.expense_categories(tenant_id);
CREATE UNIQUE INDEX IF NOT EXISTS idx_expense_categories_global_id
  ON public.expense_categories(global_id)
  WHERE global_id IS NOT NULL AND trim(global_id) != '';

-- ── 2. Expenses ────────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS public.expenses (
  id                    integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  global_id             text UNIQUE,
  tenant_id             integer NOT NULL DEFAULT 1,
  category_id           integer REFERENCES public.expense_categories(id) ON DELETE RESTRICT,
  amount                numeric NOT NULL,
  occurred_at           timestamptz NOT NULL,
  status                text NOT NULL DEFAULT 'paid',
  description           text,
  employee_user_id      integer,
  is_recurring          boolean NOT NULL DEFAULT false,
  recurring_day         integer,
  recurring_origin_id   integer,
  attachment_path       text,
  affects_cash          boolean NOT NULL DEFAULT true,
  invoice_ref           text,
  landlord_or_property  text,
  tax_kind              text,
  category_global_id    text,
  deleted_at            timestamptz,
  created_at            timestamptz NOT NULL DEFAULT now(),
  updated_at            timestamptz
);

CREATE INDEX IF NOT EXISTS idx_expenses_tenant ON public.expenses(tenant_id);
CREATE INDEX IF NOT EXISTS idx_expenses_category ON public.expenses(category_id);
CREATE INDEX IF NOT EXISTS idx_expenses_deleted_at ON public.expenses(deleted_at);
CREATE UNIQUE INDEX IF NOT EXISTS idx_expenses_global_id
  ON public.expenses(global_id)
  WHERE global_id IS NOT NULL AND trim(global_id) != '';

-- ── 3. Enable RLS ──────────────────────────────────────────────────────
ALTER TABLE public.expense_categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.expenses ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'expense_categories'
      AND policyname = 'Allow all for service role'
  ) THEN
    CREATE POLICY "Allow all for service role"
      ON public.expense_categories FOR ALL USING (true) WITH CHECK (true);
  END IF;
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'expenses'
      AND policyname = 'Allow all for service role'
  ) THEN
    CREATE POLICY "Allow all for service role"
      ON public.expenses FOR ALL USING (true) WITH CHECK (true);
  END IF;
END $$;
