-- ============================================================================
-- Migration: 20260929_license_per_account_fix.sql
-- الإصلاح: «الترخيص يتبع الحساب لا الجهاز» + دقّة عدّاد الأجهزة.
--
-- المشكلة (تقرير المستخدم):
--   عند الاتصال من جهاز آخر بنفس الحساب لا يُفحص الترخيص حسب الحساب،
--   فيضطر المستخدم لإدخال نفس JWT يدوياً على كل جهاز، وأحياناً يتعطّل
--   فحص الترخيص على أحد الأجهزة.
--
-- الأسباب الجذرية على الخادم:
--   1) app_user_max_devices() تختار «أي» ترخيص active/trial مُسند للحساب
--      (order by status ثم id) حتى لو كان صفه بلا license_jwt — بينما
--      التفعيل الفعلي في التطبيق يعتمد على jwt الصف المختار ⇒ تعارض.
--   2) عدّ الأجهزة النشطة يعتبر أي صف access_status='active' حيّاً حتى لو
--      لم يُرَ منذ أسابيع (أوفلاين/أُعيد تثبيته) ⇒ DEVICE_LIMIT_REACHED
--      لجهاز جديد رغم أن الأجهزة القديمة ميتة فعلياً.
--
-- المحتوى:
--   1) app_assigned_license_jwt() — دالة جديدة تعيد JWT الترخيص المُسند
--      لحساب auth.uid() الحالي. التطبيق يستدعيها بعد كل تسجيل دخول لتفعيل
--      الترخيص تلقائياً على أي جهاز بنفس الحساب (بلا نسخ يدوي).
--   2) app_user_max_devices() — تفضيل الترخيص الذي يحمل license_jwt غير
--      فارغ (نفس معيار التفعيل في التطبيق) ثم الأحدث.
--   3) app_device_limit_status() — نفس تفضيل الترخيص + نافذة حياة 7 أيام
--      على last_seen_at عند عدّ الأجهزة النشطة.
--   4) app_register_device(text,text,text) — نفس حراسة 20260512 لكن مع
--      العدّ الواعي بالحياة (liveness-aware) حتى لا يُرفض جهاز جديد بسبب
--      صفوف أشباح قديمة.
--
-- المتطلبات:
--   - migrations/20260512_register_device_rpc.sql (نفس تواقيع الدوال).
--   - admin-web/supabase/licenses_assigned_user_id.sql (عمود assigned_user_id).
--   - عمود license_jwt على public.licenses (نظام v2).
--   - جدول public.tenant_access + public.app_current_tenant_id() (Step 20).
--
-- ملاحظات:
--   - كل الدوال idempotent (create or replace) وآمنة لإعادة التنفيذ.
--   - لا تغيير على RLS؛ الدوال الجديدة SECURITY DEFINER بـ search_path مغلق.
-- ============================================================================

-- ============================================================================
-- 1) JWT الترخيص المُسند للحساب الحالي — أساس «الترخيص يتبع الحساب».
--    يعيد صفاً واحداً: أحدث ترخيص active/trial مُسند للمستخدم ويحمل jwt.
--    يعيد صفر صفوف إذا لم يوجد ترخيص (يعالجه التطبيق بمنطق التجربة).
-- ============================================================================
create or replace function public.app_assigned_license_jwt()
returns table (
  license_id   int,
  plan         text,
  max_devices  int,
  ends_at      timestamptz,
  license_jwt  text
)
language sql
stable
security definer
set search_path = public, auth
as $$
  select
    l.id::int,
    l.plan,
    l.max_devices::int,
    l.expires_at,
    l.license_jwt
  from public.licenses l
  where l.assigned_user_id = auth.uid()
    and lower(coalesce(l.status, '')) in ('active', 'trial')
    and coalesce(l.license_jwt, '') <> ''
  order by
    case lower(coalesce(l.status, ''))
      when 'active' then 0
      when 'trial'  then 1
      else 9
    end,
    l.id desc
  limit 1;
$$;

revoke all     on function public.app_assigned_license_jwt() from public;
revoke all     on function public.app_assigned_license_jwt() from anon;
grant  execute on function public.app_assigned_license_jwt() to authenticated;

comment on function public.app_assigned_license_jwt() is
  '20260929 — JWT الترخيص المُسند لحساب auth.uid() الحالي. '
  'التطبيق يستدعيها بعد تسجيل الدخول لتفعيل نفس ترخيص الحساب على أي جهاز تلقائياً. '
  'SECURITY DEFINER + STABLE؛ لا تتلقى أي معرّف من العميل.';

-- ============================================================================
-- 2) app_user_max_devices() — حد الخطة من الترخيص الذي يحمل jwt فعلياً.
--    (نفس معيار التفعيل في التطبيق: jwt غير فارغ، active قبل trial، الأحدث.)
--    fallback = 2 كما سابقاً.
-- ============================================================================
create or replace function public.app_user_max_devices()
returns int
language sql
stable
security definer
set search_path = public, auth
as $$
  select coalesce((
    select l.max_devices::int
    from public.licenses l
    where l.assigned_user_id = auth.uid()
      and lower(coalesce(l.status, '')) in ('active', 'trial')
      and coalesce(l.license_jwt, '') <> ''
    order by
      case lower(coalesce(l.status, ''))
        when 'active' then 0
        when 'trial'  then 1
        else 9
      end,
      l.id desc
    limit 1
  ), 2);
$$;

comment on function public.app_user_max_devices() is
  '20260929 — تفضيل الترخيص ذي license_jwt غير فارغ (نفس معيار تفعيل التطبيق) '
  'حتى لا يتعارض حدّ الأجهزة مع الترخيص المُفعَّل فعلياً على الأجهزة.';

-- ============================================================================
-- 3) app_device_limit_status() — العدّ الواعي بالحياة.
--    الصف «الحيّ»: access_status='active' وآخر ظهور خلال 7 أيام.
--    الجهاز النشط يُحدّث last_seen_at كل ~10 دقائق من التطبيق (نبض الجهاز).
-- ============================================================================
create or replace function public.app_device_limit_status()
returns table (
  is_over_limit  boolean,
  active_devices int,
  max_devices    int
)
language sql
stable
security definer
set search_path = public, auth
as $$
  with lim as (
    select public.app_user_max_devices()::int as max_devices
  ),
  dev as (
    select count(*)::int as active_devices
    from public.account_devices d
    where d.user_id = auth.uid()
      and coalesce(d.access_status, 'active') = 'active'
      and coalesce(d.last_seen_at, to_timestamp(0))
            >= now() - interval '7 days'
  )
  select
    case
      when lim.max_devices = 0 then false
      when dev.active_devices > lim.max_devices then true
      else false
    end as is_over_limit,
    dev.active_devices,
    lim.max_devices
  from lim, dev;
$$;

comment on function public.app_device_limit_status() is
  '20260929 — عدّ الأجهزة الحيّة فقط (last_seen_at خلال 7 أيام). '
  'يمنع احتساب صفوف أشباح (إعادة تثبيت/أوفلاين طويل) ضد حدّ الخطة.';

revoke all     on function public.app_device_limit_status() from public;
revoke all     on function public.app_device_limit_status() from anon;
grant  execute on function public.app_device_limit_status() to authenticated;

-- ============================================================================
-- 4) app_register_device(text,text,text) — نسخة 20260512 مع عدّ واعٍ بالحياة.
--    نفس الحراسة: JWT guard + advisory lock + FOR UPDATE + idempotency.
-- ============================================================================
drop function if exists public.app_register_device(text, text, text);

create or replace function public.app_register_device(
  p_device_id   text,
  p_device_name text,
  p_platform    text
)
returns jsonb
language plpgsql
security definer
set search_path = public, auth
as $$
declare
  v_tenant_id  text;
  v_uid        uuid := auth.uid();
  v_now        timestamptz := now();
  v_max        int;
  v_existing   record;
  v_active     int;
  v_was_known  boolean;
begin
  -- (أ) JWT guard — مصدر هويّة الـ tenant واحد فقط: الـ JWT على الخادم.
  v_tenant_id := public.app_current_tenant_id();
  if v_tenant_id is null or length(trim(v_tenant_id)) = 0 then
    raise exception 'tenant_unauthenticated: refusing app_register_device without authenticated tenant'
      using errcode = 'P0001';
  end if;
  if v_uid is null then
    raise exception 'tenant_unauthenticated: missing auth.uid() under JWT-authenticated session'
      using errcode = 'P0001';
  end if;

  -- (ب) تحقّق المدخلات.
  if p_device_id is null or length(trim(p_device_id)) = 0 then
    raise exception 'INVALID_DEVICE_ID: p_device_id must be non-empty'
      using errcode = 'P0001';
  end if;

  -- (ج) Advisory transaction lock — تسلسل مكالمات نفس الـ tenant.
  perform pg_advisory_xact_lock(hashtext('register_device:' || v_tenant_id)::bigint);

  -- (د) قفل صفوف الأجهزة الموجودة ضدّ revoke إداري متزامن.
  perform 1
  from public.account_devices d
  where d.user_id = v_uid
  for update;

  -- جلب صفّ هذا الجهاز إن كان موجوداً.
  select d.access_status, d.device_id is not null as known
    into v_existing
  from public.account_devices d
  where d.user_id = v_uid and d.device_id = p_device_id
  limit 1;

  v_was_known := found;

  -- (هـ) جهاز مُلغى يبقى مُلغى — الإعادة من الإدارة فقط.
  if v_was_known and lower(coalesce(v_existing.access_status, 'active')) = 'revoked' then
    return jsonb_build_object(
      'access_status',      'revoked',
      'is_over_limit',      false,
      'active_devices',     0,
      'max_devices',        coalesce(public.app_user_max_devices(), 0),
      'already_registered', true
    );
  end if;

  -- (و) الحدّ + العدّ الواعي بالحياة (liveness-aware) بعد القفل.
  v_max := coalesce(public.app_user_max_devices(), 0);

  select count(*)::int into v_active
  from public.account_devices d
  where d.user_id = v_uid
    and coalesce(d.access_status, 'active') = 'active'
    and coalesce(d.last_seen_at, to_timestamp(0)) >= now() - interval '7 days';

  -- (ز) قبول/رفض جهاز جديد:
  --     جهاز موجود (idempotent) ⇒ يمرّ دائماً (لا يزيد active).
  --     جهاز جديد ⇒ يخضع للحدّ المحسوب على الأجهزة الحيّة فقط.
  if not v_was_known then
    if v_max <> 0 and v_active >= v_max then
      raise exception 'DEVICE_LIMIT_REACHED: tenant=% has % active devices (limit=%)',
        v_tenant_id, v_active, v_max
        using errcode = 'P0001';
    end if;
  end if;

  -- (ح) Upsert idempotent — يعيد تنشيط الجهاز المعروف ويحدّث نبضه.
  insert into public.account_devices (
    user_id, device_id, device_name, platform, last_seen_at, created_at, access_status
  ) values (
    v_uid,
    p_device_id,
    coalesce(nullif(trim(p_device_name), ''), 'جهاز غير معروف'),
    nullif(trim(p_platform), ''),
    v_now,
    v_now,
    'active'
  )
  on conflict (user_id, device_id)
  do update set
    device_name   = excluded.device_name,
    platform      = excluded.platform,
    last_seen_at  = excluded.last_seen_at,
    access_status = 'active';

  -- (ط) إعادة الحساب بعد الـ upsert (واعياً بالحياة).
  select count(*)::int into v_active
  from public.account_devices d
  where d.user_id = v_uid
    and coalesce(d.access_status, 'active') = 'active'
    and coalesce(d.last_seen_at, to_timestamp(0)) >= now() - interval '7 days';

  return jsonb_build_object(
    'access_status',      'active',
    'is_over_limit',      case when v_max = 0 then false else (v_active > v_max) end,
    'active_devices',     v_active,
    'max_devices',        v_max,
    'already_registered', v_was_known
  );
end;
$$;

revoke all     on function public.app_register_device(text, text, text) from public;
revoke all     on function public.app_register_device(text, text, text) from anon;
grant  execute on function public.app_register_device(text, text, text) to authenticated;

-- ============================================================================
-- 5) فحص نهائي.
-- ============================================================================
do $$
begin
  if not exists (
    select 1 from pg_proc p
    join pg_namespace n on n.oid = p.pronamespace
    where n.nspname = 'public' and p.proname = 'app_assigned_license_jwt'
  ) then
    raise exception 'app_assigned_license_jwt was not created';
  end if;

  if not exists (
    select 1 from information_schema.columns
    where table_schema = 'public' and table_name = 'licenses'
      and column_name = 'license_jwt'
  ) then
    raise notice 'تحذير: عمود licenses.license_jwt غير موجود — نفّذ licenses_license_jwt.sql أولاً وإلا لن يعمل التفعيل التلقائي.';
  end if;

  raise notice '20260929 applied: per-account license RPC + liveness-aware device limits.';
end $$;

-- ============================================================================
-- ROLLBACK (طارئ):
--   drop function if exists public.app_assigned_license_jwt();
--   -- ثم أعد تنفيذ admin-web/supabase/device_limit_functions.sql و
--   -- migrations/20260512_register_device_rpc.sql لاستعادة النسخ السابقة.
-- ============================================================================
