-- Per-user ownership for all mutation-synced data.
-- Run this once in the Supabase SQL editor before deploying the updated app.
-- Existing rows keep owner_id NULL until an administrator assigns the intended
-- owner. Ownership of legacy rows cannot be inferred from tenant_id = 1.

create or replace function public.set_sync_owner_id()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  if auth.uid() is not null then
    new.owner_id := auth.uid();
  end if;
  return new;
end;
$$;

do $$
declare
  table_name text;
  policy_name text;
  sync_tables constant text[] := array[
    'categories', 'brands', 'products', 'product_unit_variants',
    'customers', 'suppliers', 'warehouses', 'expenses', 'expense_categories',
    'installment_plans', 'installments', 'customer_debt_payments',
    'supplier_bills', 'supplier_payouts', 'purchase_orders',
    'purchase_order_items', 'po_receipts', 'stock_vouchers',
    'stock_voucher_items', 'stocktaking_sessions', 'stocktaking_items',
    'parked_sales', 'activity_logs', 'work_shifts', 'cash_ledger',
    'invoices', 'invoice_items', 'service_orders', 'service_order_items',
    'print_settings', 'sync_hard_deletes'
  ];
begin
  foreach table_name in array sync_tables loop
    if to_regclass('public.' || table_name) is null then
      continue;
    end if;

    execute format(
      'alter table public.%I add column if not exists owner_id uuid references auth.users(id)',
      table_name
    );
    execute format(
      'create index if not exists %I on public.%I(owner_id)',
      'idx_' || table_name || '_owner', table_name
    );

    -- Existing permissive policies (often named "Allow all for service role")
    -- would otherwise OR with the owner policy and keep the leak open.
    for policy_name in
      select policyname from pg_policies
      where schemaname = 'public' and tablename = table_name
    loop
      execute format('drop policy if exists %I on public.%I', policy_name, table_name);
    end loop;

    execute format('alter table public.%I enable row level security', table_name);
    execute format(
      'create policy %I on public.%I for all using (auth.uid() = owner_id) with check (auth.uid() = owner_id)',
      table_name || '_owner_isolation', table_name
    );

    execute format('drop trigger if exists %I on public.%I', table_name || '_owner_stamp', table_name);
    execute format(
      'create trigger %I before insert or update on public.%I for each row execute function public.set_sync_owner_id()',
      table_name || '_owner_stamp', table_name
    );
  end loop;
end $$;

-- Existing rows are intentionally left unowned. Their owner cannot be inferred
-- from the old tenant_id = 1 value. After choosing the correct owner UUID,
-- an administrator can run:
--   select public.assign_unowned_sync_rows('<OWNER_UUID>');

create or replace function public.assign_unowned_sync_rows(p_owner_id uuid)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  table_name text;
  sync_tables constant text[] := array[
    'categories', 'brands', 'products', 'product_unit_variants',
    'customers', 'suppliers', 'warehouses', 'expenses', 'expense_categories',
    'installment_plans', 'installments', 'customer_debt_payments',
    'supplier_bills', 'supplier_payouts', 'purchase_orders',
    'purchase_order_items', 'po_receipts', 'stock_vouchers',
    'stock_voucher_items', 'stocktaking_sessions', 'stocktaking_items',
    'parked_sales', 'activity_logs', 'work_shifts', 'cash_ledger',
    'invoices', 'invoice_items', 'service_orders', 'service_order_items',
    'print_settings', 'sync_hard_deletes'
  ];
begin
  if p_owner_id is null then
    raise exception 'Owner UUID is required';
  end if;
  if not exists (select 1 from auth.users where id = p_owner_id) then
    raise exception 'Owner UUID does not exist in auth.users';
  end if;
  foreach table_name in array sync_tables loop
    if to_regclass('public.' || table_name) is not null then
      execute format(
        'update public.%I set owner_id = $1 where owner_id is null',
        table_name
      ) using p_owner_id;
    end if;
  end loop;
end;
$$;

revoke all on function public.assign_unowned_sync_rows(uuid) from public;
revoke all on function public.assign_unowned_sync_rows(uuid) from authenticated;
