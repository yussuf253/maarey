-- ============================================================================
-- DEPLOY: app_tenant_access_status RPC function (FIXED)
-- ============================================================================
-- Run this in: Supabase Studio → SQL Editor → as superuser (postgres)
--
-- This fixes the type mismatch: the old supabase_tenant_access_manual.sql
-- created tenant_access with tenant_id INTEGER, but app_current_tenant_id()
-- returns TEXT. We drop the old table and recreate with the correct schema.
--
-- ⚠️ WARNING: This drops the existing tenant_access table.
--    If you have important data in it, back it up first:
--      pg_dump -t tenant_access > backup.sql
-- ============================================================================


-- ── Step 1: app_current_tenant_id() (prerequisite) ──────────────────────────
create or replace function public.app_current_tenant_id()
returns text
language sql
stable
security definer
set search_path = public, auth
as $$
  select coalesce(
    nullif(auth.jwt() ->> 'tenant_id', ''),
    nullif(auth.jwt() ->> 'sub', ''),
    case
      when auth.uid() is not null then 'local-' || auth.uid()::text
      else null
    end
  );
$$;


-- ── Step 2: Drop old table (had tenant_id INTEGER — wrong type) ─────────────
-- Safe to drop: the old manual migration created an empty table with no RLS
-- policies and no data from the app. The function was never deployed.
drop policy if exists "tenant_access_self_select" on public.tenant_access;
drop table    if exists public.tenant_access;


-- ── Step 3: Create tenant_access with correct schema (tenant_id TEXT) ────────
create table public.tenant_access (
  tenant_id     text         primary key,
  access_status text         not null default 'active'
                check (access_status in ('active','suspended','revoked','grace')),
  kill_switch   boolean      not null default false,
  grace_until   timestamptz,
  valid_until   timestamptz  not null,
  notes         text,
  updated_at    timestamptz  not null default now()
);

comment on table  public.tenant_access is 'Step 20 — subscription/kill-switch status per tenant. Client reads only.';

-- Indexes
create index if not exists tenant_access_status_idx
  on public.tenant_access (access_status);
create index if not exists tenant_access_valid_until_idx
  on public.tenant_access (valid_until);
create index if not exists tenant_access_killswitch_idx
  on public.tenant_access (kill_switch)
  where kill_switch = true;


-- ── Step 4: Permissions (defense-in-depth) ──────────────────────────────────
revoke all      on public.tenant_access from public;
revoke all      on public.tenant_access from authenticated;
revoke all      on public.tenant_access from anon;
grant  select   on public.tenant_access to authenticated;


-- ── Step 5: RLS ─────────────────────────────────────────────────────────────
alter table public.tenant_access enable row level security;
alter table public.tenant_access force  row level security;

drop policy if exists "tenant_access_self_select" on public.tenant_access;
create policy "tenant_access_self_select"
  on public.tenant_access
  for select
  using (tenant_id = public.app_current_tenant_id());


-- ── Step 6: app_tenant_access_status() RPC function ─────────────────────────
create or replace function public.app_tenant_access_status()
returns public.tenant_access
language sql
stable
security definer
set search_path = public, auth
as $$
  select *
  from public.tenant_access
  where tenant_id = public.app_current_tenant_id()
  limit 1;
$$;

revoke all     on function public.app_tenant_access_status() from public;
grant  execute on function public.app_tenant_access_status() to authenticated;


-- ── Step 7: Insert a default active row ─────────────────────────────────────
-- This ensures existing users get "active" status. The tenant_id must match
-- what app_current_tenant_id() returns for your JWT — typically the 'sub'
-- claim (user UUID) or a custom 'tenant_id' claim.
--
-- Run this AFTER deploying, once you know your tenant_id:
--
--   insert into public.tenant_access (tenant_id, access_status, kill_switch, valid_until)
--   values ('YOUR_TENANT_ID', 'active', false, '2027-12-31T23:59:59Z')
--   on conflict (tenant_id) do nothing;


-- ── Final verification ──────────────────────────────────────────────────────
do $$
begin
  if not exists (
    select 1 from information_schema.tables
    where table_schema = 'public' and table_name = 'tenant_access'
  ) then
    raise exception 'tenant_access table was not created';
  end if;

  -- Verify tenant_id is text, not integer
  if not exists (
    select 1 from information_schema.columns
    where table_schema = 'public'
      and table_name = 'tenant_access'
      and column_name = 'tenant_id'
      and data_type = 'text'
  ) then
    raise exception 'tenant_access.tenant_id is not TEXT — migration failed';
  end if;

  if not exists (
    select 1 from pg_proc p
    join pg_namespace n on n.oid = p.pronamespace
    where n.nspname = 'public'
      and p.proname = 'app_tenant_access_status'
  ) then
    raise exception 'app_tenant_access_status function was not created';
  end if;

  raise notice '✅ Deployed successfully. tenant_access(tenant_id TEXT) + app_tenant_access_status() RPC ready.';
end $$;
