-- ─────────────────────────────────────────────────────────────────────────────
-- Remediation: RLS 403 on push for print_settings / expense_categories
--
-- Symptom (Supabase logs, 2026-09-28):
--   42501 "new row violates row-level security policy (USING expression)"
--   POST /rest/v1/print_settings   → 403
--   POST /rest/v1/expense_categories → 403
--
-- Why: rows created before 20260912_owner_isolation.sql have owner_id = NULL.
-- RLS evaluates USING/WITH CHECK against the EXISTING cloud row on upsert,
-- and NULL owner_id never matches auth.uid(), so every upsert from the app is
-- rejected. The pull cannot see those rows either, so:
--   • print settings never reach the cloud → other devices (and reinstalls)
--     never receive them → receipts keep printing stale values.
--   • the push fails every cycle (cursor never advances) → endless 403s.
--
-- Fix option A (recommended, automatic): the app now calls
-- claim_ownerless_rows() on every RLS-rejected push and retries once.
-- No SQL needed — just deploy the updated app.
--
-- Fix option B (one-time, immediate): assign the unowned rows to the owner.
-- Replace the UUID with the owner's auth.users.id (the auth_user shown in the
-- 403 log lines) and run in the Supabase SQL editor:
--
select public.assign_unowned_sync_rows('18efcc81-070c-41aa-8aa4-8cae27d91469');

-- ── Verification ─────────────────────────────────────────────────────────────
-- No sync table should contain unowned rows after the fix.

select count(*) as unowned_print_settings
  from public.print_settings where owner_id is null;

select count(*) as unowned_expense_categories
  from public.expense_categories where owner_id is null;

-- Sanity: ownership policy + owner-stamp trigger must exist.
select policyname from pg_policies where schemaname = 'public' and tablename = 'print_settings';
select tgname from pg_trigger
  where tgrelid = 'public.print_settings'::regclass and not tgisinternal;

-- If the policy lacks an explicit WITH CHECK (the "(USING expression)" error
-- variant suggests it does), re-apply it so the error message is unambiguous:
drop policy if exists print_settings_owner_isolation on public.print_settings;
create policy print_settings_owner_isolation on public.print_settings
  for all using (auth.uid() = owner_id) with check (auth.uid() = owner_id);

drop policy if exists expense_categories_owner_isolation on public.expense_categories;
create policy expense_categories_owner_isolation on public.expense_categories
  for all using (auth.uid() = owner_id) with check (auth.uid() = owner_id);
