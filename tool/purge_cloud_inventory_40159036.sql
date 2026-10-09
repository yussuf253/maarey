-- ===========================================================================
-- purge_cloud_inventory_40159036.sql
--
-- Deletes ALL cloud inventory (products + children) for ONE owner only:
--   40159036-0250-4b9c-b711-49e8e3e837dc
--
-- Every DELETE is scoped by owner_id = that UUID (RLS already isolates per
-- user; this script makes the scope explicit and auditable). No other user's
-- rows are touched. Grandchild tables that carry no owner_id column are
-- scoped through an IN (...) join to this owner's product_global_ids.
--
-- Ordering respects foreign keys:
--   * stock_voucher_items / stocktaking_items reference products with
--     ON DELETE RESTRICT -> their product link is UNLINKED (set NULL) BEFORE
--     products, preserving the financial history rows.
--   * price_list_items / product_batches reference products with
--     ON DELETE CASCADE -> cleared explicitly anyway (explicit beats implicit).
--   * invoice_items has NO FK to products (plain-text product_global_id) and
--     is intentionally LEFT ALONE so sales history stays intact.
--
-- DRY RUN BY DEFAULT: the script ends with ROLLBACK. To actually apply the
-- purge, comment out the ROLLBACK and uncomment the COMMIT (last lines).
--
-- Run in the Supabase SQL editor.
-- ===========================================================================

-- ── 0. Pre-flight counts (this owner only) ────────────────────────────────
select 'product_variants'      as tbl, count(*) as owner_rows
  from public.product_variants
 where tenant_uuid in (
   '40159036-0250-4b9c-b711-49e8e3e837dc',
   'local-40159036-0250-4b9c-b711-49e8e3e837dc'
 )
union all
select 'product_colors', count(*)
  from public.product_colors
 where tenant_uuid in (
   '40159036-0250-4b9c-b711-49e8e3e837dc',
   'local-40159036-0250-4b9c-b711-49e8e3e837dc'
 )
union all
select 'products'              as tbl, count(*) as owner_rows
  from public.products where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc'
union all
select 'product_unit_variants', count(*)
  from public.product_unit_variants where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc'
union all
select 'stock_voucher_items', count(*)
  from public.stock_voucher_items
 where product_global_id in (select global_id from public.products
                              where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc')
union all
select 'stocktaking_items', count(*)
  from public.stocktaking_items
 where product_global_id in (select global_id from public.products
                              where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc')
union all
select 'price_list_items', count(*)
  from public.price_list_items
 where product_global_id in (select global_id from public.products
                              where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc')
union all
select 'product_batches', count(*)
  from public.product_batches
 where product_global_id in (select global_id from public.products
                              where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc');

-- ── 1. Everything below runs inside one transaction ───────────────────────
begin;

-- ── 2. Children first (RESTRICT tables before products) ───────────────────
-- 2a. Legacy RPC-era color/size variants: tenant_uuid-scoped (no owner_id
--     column), no FK to products, and the legacy RPC ignores DELETE mutations
--     so these rows never self-clean. tenant_uuid may be the raw UUID or the
--     'local-<uuid>' fallback — cover both.
delete from public.product_variants
 where tenant_uuid in (
   '40159036-0250-4b9c-b711-49e8e3e837dc',
   'local-40159036-0250-4b9c-b711-49e8e3e837dc'
 );

delete from public.product_colors
 where tenant_uuid in (
   '40159036-0250-4b9c-b711-49e8e3e837dc',
   'local-40159036-0250-4b9c-b711-49e8e3e837dc'
 );

-- 2b. RESTRICT history tables: UNLINK, do not delete. Stock vouchers,
--     stocktakes and purchase orders are financial history the user keeps —
--     only the product reference is dropped. This is also what satisfies the
--     ON DELETE RESTRICT FK so step 3 can delete the products.
update public.stock_voucher_items
   set product_global_id = null
 where product_global_id in (select global_id from public.products
                              where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc');

update public.stocktaking_items
   set product_global_id = null
 where product_global_id in (select global_id from public.products
                              where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc');

-- 2c. Product-owned children: delete (they mean nothing without the product).
delete from public.price_list_items
 where product_global_id in (select global_id from public.products
                              where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc');

delete from public.product_batches
 where product_global_id in (select global_id from public.products
                              where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc');

delete from public.product_unit_variants
 where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc';

-- ── 3. Products last ──────────────────────────────────────────────────────
delete from public.products
 where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc';

-- ── 4. Post-verify: guard aborts the transaction if anything remains ──────
do $$
declare
  v_left integer;
begin
  select count(*) into v_left from public.products
   where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc';
  if v_left <> 0 then
    raise exception 'refusing: % product rows remain for this owner', v_left;
  end if;

  select count(*) into v_left from public.product_unit_variants
   where owner_id = '40159036-0250-4b9c-b711-49e8e3e837dc';
  if v_left <> 0 then
    raise exception 'refusing: % unit-variant rows remain for this owner', v_left;
  end if;

  raise notice 'verified: owner-scoped products and unit variants are gone';
end $$;

-- ── 5. Dry run: ROLLBACK (default). To APPLY, comment ROLLBACK, use COMMIT. ──
rollback;
-- commit;

-- After a real COMMIT, other devices of this owner self-clean on their next
-- sync via sync_hard_deletes tombstones already pushed from the app wipe.
-- A fresh-device login re-downloads nothing (rows are gone).
