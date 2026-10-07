import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// 20260929 — «الترخيص يتبع الحساب لا الجهاز» + عدّ أجهزة واعٍ بالحياة.
///
/// اختبار توثيقي (نمط المشروع: migrations/20260512_register_device_rpc.sql
/// له نظير مماثل) يضمن بقاء عقود SQL التالية في الترحيل:
///
/// 1) `app_assigned_license_jwt()` — إعادة JWT الترخيص المُسند لحساب
///    `auth.uid()`؛ أساس التفعيل التلقائي على أي جهاز بنفس الحساب.
/// 2) `app_user_max_devices()` — تفضيل الترخيص ذي `license_jwt` غير فارغ
///    (نفس معيار التفعيل في التطبيق) حتى لا يتعارض حدّ الأجهزة مع
///    الترخيص المُفعَّل فعلياً.
/// 3) عدّ الأجهزة الحيّة فقط: `last_seen_at` خلال 7 أيام في
///    `app_device_limit_status()` وفي `app_register_device()`.
/// 4) `app_register_device` يحافظ على حراسة Step 23 (advisory lock +
///    FOR UPDATE + idempotency) مع العدّ الجديد.
void main() {
  const migrationPath = 'migrations/20260929_license_per_account_fix.sql';

  late String sql;

  setUpAll(() {
    sql = File(migrationPath).readAsStringSync();
  });

  group('20260929 migration — documentary', () {
    test('migration file exists', () {
      expect(sql, isNotEmpty);
    });

    test('defines app_assigned_license_jwt() RPC for per-account license', () {
      expect(
        sql,
        contains('create or replace function public.app_assigned_license_jwt()'),
      );
      // الحدّ من النتيجة لحساب auth.uid() — لا معرّفات من العميل.
      expect(sql, contains('l.assigned_user_id = auth.uid()'));
      // ACTIVE قبل TRIAL ثم الأحدث.
      expect(sql, contains("when 'active' then 0"));
      expect(sql, contains("when 'trial'  then 1"));
      // SECURITY DEFINER مع search_path مغلق.
      expect(sql, contains('security definer'));
      expect(sql, contains('set search_path = public, auth'));
      // EXECUTE لـ authenticated فقط.
      expect(
        sql,
        contains(
          'grant  execute on function public.app_assigned_license_jwt() to authenticated',
        ),
      );
    });

    test('app_user_max_devices prefers the license that actually carries a JWT', () {
      expect(
        sql,
        contains('create or replace function public.app_user_max_devices()'),
      );
      expect(sql, contains("coalesce(l.license_jwt, '') <> ''"));
    });

    test('device counting is liveness-aware (last_seen_at within 7 days)', () {
      // نافذة الحياة في app_device_limit_status و app_register_device.
      expect(
        sql,
        contains("coalesce(d.last_seen_at, to_timestamp(0)) >= now() - interval '7 days'"),
      );
      // العدّ في الحالتين (RPC + status) بعد إضافة النافذة.
      expect(
        sql.contains('and coalesce(d.last_seen_at'),
        isTrue,
        reason: 'liveness filter must exist in the counting queries',
      );
    });

    test('app_register_device keeps Step 23 guards with the new counting', () {
      expect(
        sql,
        contains('create or replace function public.app_register_device('),
      );
      expect(
        sql,
        contains(
          "pg_advisory_xact_lock(hashtext('register_device:' || v_tenant_id)::bigint)",
        ),
      );
      expect(sql, contains('for update'));
      expect(sql, contains('DEVICE_LIMIT_REACHED'));
      expect(sql, contains("'already_registered'"));
    });

    test('public/anon execution revoked on the new functions', () {
      expect(
        sql.contains('revoke all     on function public.app_assigned_license_jwt() from public'),
        isTrue,
      );
      expect(
        sql.contains('revoke all     on function public.app_register_device(text, text, text) from public'),
        isTrue,
      );
      expect(
        sql.contains('revoke all     on function public.app_device_limit_status() from anon'),
        isTrue,
      );
    });
  });
}
