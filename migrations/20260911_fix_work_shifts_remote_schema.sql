-- ─────────────────────────────────────────────────────────────────────────────
-- Fix: Recreate work_shifts with the per-table-sync schema.
--
-- The original table was created by supabase_sync_queue_rpc.sql with columns
-- `session_user_id NOT NULL` and `shift_staff_pin NOT NULL` that the client
-- no longer sends (privacy). The 20260907 migration used CREATE TABLE IF NOT
-- EXISTS which was a no-op when the old table already existed, causing a 400
-- error on every upsert because:
--   1. Missing required columns: session_user_id, shift_staff_pin
--   2. Unknown column: deleted_at (added in new schema)
--
-- Run ONCE from the Supabase SQL Editor. Idempotent.
-- ─────────────────────────────────────────────────────────────────────────────

-- 0. Clean up old RLS policies / triggers that reference the old schema.
DROP TRIGGER IF EXISTS trg_work_shifts_set_tenant ON public.work_shifts;
DROP POLICY IF EXISTS work_shifts_select_own  ON public.work_shifts;
DROP POLICY IF EXISTS work_shifts_insert_own  ON public.work_shifts;
DROP POLICY IF EXISTS work_shifts_update_own  ON public.work_shifts;
DROP POLICY IF EXISTS work_shifts_delete_own  ON public.work_shifts;

-- 1. Drop old table (data is recoverable via sync pull from other devices).
DROP TABLE IF EXISTS public.work_shifts CASCADE;

-- 2. Recreate with the per-table-sync schema (matches
--    lib/services/cloud_sync_service.dart _perTableRemoteColumns).
CREATE TABLE public.work_shifts (
  global_id                     text PRIMARY KEY,
  tenant_id                     integer NOT NULL DEFAULT 1,
  opened_at                     timestamptz NOT NULL,
  closed_at                     timestamptz,
  system_balance_at_open        double precision NOT NULL DEFAULT 0,
  declared_physical_cash        double precision NOT NULL DEFAULT 0,
  added_cash_at_open            double precision NOT NULL DEFAULT 0,
  shift_staff_name              text NOT NULL,
  declared_closing_cash         double precision,
  system_balance_at_close       double precision,
  withdrawn_at_close            double precision,
  declared_cash_in_box_at_close double precision,
  created_at                    timestamptz,
  updated_at                    timestamptz,
  deleted_at                    timestamptz
);

CREATE INDEX IF NOT EXISTS idx_work_shifts_tenant  ON public.work_shifts(tenant_id);
CREATE INDEX IF NOT EXISTS idx_work_shifts_updated ON public.work_shifts(updated_at);

-- 3. RLS — open policy consistent with other per-table-sync tables.
ALTER TABLE public.work_shifts ENABLE ROW LEVEL SECURITY;

DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies
    WHERE tablename = 'work_shifts'
      AND policyname = 'Allow all for service role'
  ) THEN
    CREATE POLICY "Allow all for service role"
      ON public.work_shifts FOR ALL USING (true) WITH CHECK (true);
  END IF;
END $$;
