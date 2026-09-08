import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
const _migrationPath = 'migrations/20260510_lww_clock_skew.sql';

// ─── Pure-Dart simulation of the SQL guard ───────────────────────────────────
// تحاكي نفس منطق `_parse_client_ts` و `_reject_clock_skew` في الترحيل.
// المقصد: تثبيت العقد السلوكي للحارس بحيث يكشف أي تغيير غير مقصود لاحقاً.

const _kClockSkewKeys = <String>[
  'updatedAt', 'updated_at',
  'createdAt', 'created_at',
  'occurredAt', 'occurred_at',
];

DateTime? simulateParseClientTs(Map<String, dynamic>? payload) {
  if (payload == null) return null;
  for (final k in _kClockSkewKeys) {
    final v = payload[k];
    if (v == null) continue;
    final s = v.toString();
    if (s.isEmpty) continue;
    final parsed = DateTime.tryParse(s);
    if (parsed != null) return parsed;
  }
  return null;
}

class ClockSkewRejected implements Exception {
  ClockSkewRejected({
    required this.clientTs,
    required this.serverNow,
    required this.threshold,
  });
  final DateTime clientTs;
  final DateTime serverNow;
  final DateTime threshold;
  @override
  String toString() =>
      'clock_skew_rejected: client timestamp $clientTs is >= server now()+5min '
      '(server now=$serverNow, threshold=$threshold)';
}

/// محاكاة Dart لـ `_reject_clock_skew(payload)` على الخادم. ترمي
/// [ClockSkewRejected] إن كان زمن العميل >= [serverNow]+5min.
void simulateClockSkewGuard(
  Map<String, dynamic> payload, {
  required DateTime serverNow,
}) {
  final ts = simulateParseClientTs(payload);
  if (ts == null) return;
  final threshold = serverNow.add(const Duration(minutes: 5));
  // `>=` مطابق للـ SQL: العميل عند الحدّ بالضبط ⇒ مرفوض.
  if (!ts.isBefore(threshold)) {
    throw ClockSkewRejected(
      clientTs: ts,
      serverNow: serverNow,
      threshold: threshold,
    );
  }
}

void main() {
  // ───────────────────────────────────────────────────────────────────────
  // 1) Documentary tests على ملف SQL.
  // ───────────────────────────────────────────────────────────────────────
  group('lww_clock_skew migration — documentary', () {
    late String sql;
    late String sqlLower;

    setUpAll(() {
      final f = File(_migrationPath);
      expect(f.existsSync(), isTrue,
          reason: '$_migrationPath must exist');
      sql = f.readAsStringSync();
      sqlLower = sql.toLowerCase();
    });

    test('helper _parse_client_ts exists and is IMMUTABLE', () {
      expect(sql, contains('create or replace function public._parse_client_ts(payload jsonb)'));
      expect(sqlLower, contains('immutable'));
    });

    test('helper _reject_clock_skew exists', () {
      expect(sql, contains('create or replace function public._reject_clock_skew(payload jsonb)'));
    });

    test('guard is wired into rpc_process_sync_queue wrapper', () {
      // داخل الـ wrapper (Step 17 + Step 19) قبل التفويض إلى legacy.
      expect(sql, contains('perform public._reject_clock_skew(mutation)'));
      expect(sql, contains('perform public._rpc_process_sync_queue_legacy(jsonb_build_array(mutation))'));
      // ترتيب الاستدعاءات: guard أوّلاً ثم legacy.
      final guardIdx = sql.indexOf('_reject_clock_skew(mutation)');
      final legacyIdx = sql.indexOf('_rpc_process_sync_queue_legacy(jsonb_build_array(mutation))');
      expect(guardIdx, greaterThan(0));
      expect(legacyIdx, greaterThan(guardIdx),
          reason: 'guard must run BEFORE delegating to legacy');
    });

    test('uses server now() — never client timestamp', () {
      // الحارس يستعمل `now()` و `interval '5 minutes'` على الخادم فقط.
      expect(sql, contains("interval '5 minutes'"));
      expect(sql, contains('v_server_now := now()'));
      // لا يجب أن يستعمل أيّ زمن قادم من العميل في المقارنة (نفحص أن الدالة
      // لا تأخذ timestamp parameter من الخارج).
      expect(
        RegExp(r"_reject_clock_skew\([^)]*\btimestamptz\b").hasMatch(sql),
        isFalse,
        reason: 'guard must not accept a client-supplied timestamp parameter',
      );
    });

    test('rejection error code is clock_skew_rejected', () {
      expect(sql, contains("'clock_skew_rejected:"));
      expect(sql, contains("using errcode = 'P0001'"));
    });

    test('boundary semantics use >= (not strict >) — 5 min exact is rejected', () {
      expect(
        sql,
        contains('if v_client_ts >= v_threshold then'),
      );
    });

    test('idempotent + has rollback section', () {
      expect(sql, contains('create or replace function public._parse_client_ts'));
      expect(sql, contains('create or replace function public._reject_clock_skew'));
      expect(sql, contains('create or replace function public.rpc_process_sync_queue'));
      expect(sqlLower, contains('rollback'));
    });

    test('preserves Step 17 guarantees (per-mutation BEGIN/EXCEPTION + cross-tenant)', () {
      expect(sql, contains('exception when others'));
      expect(sql, contains('tenant_unauthenticated'));
      expect(sql, contains('tenant_mismatch'));
      expect(sql, contains("returns jsonb"));
    });
  });

  // ───────────────────────────────────────────────────────────────────────
  // 2) Behavioral simulation in pure Dart (mirrors the SQL guard logic).
  // ───────────────────────────────────────────────────────────────────────
  group('clock-skew guard — behavioral simulation', () {
    final serverNow = DateTime.utc(2026, 5, 7, 12, 0, 0);

    test('future timestamp +6 minutes → rejected', () {
      expect(
        () => simulateClockSkewGuard(
          {'updatedAt': serverNow.add(const Duration(minutes: 6)).toIso8601String()},
          serverNow: serverNow,
        ),
        throwsA(isA<ClockSkewRejected>()),
      );
    });

    test('current timestamp → accepted', () {
      simulateClockSkewGuard(
        {'updatedAt': serverNow.toIso8601String()},
        serverNow: serverNow,
      );
    });

    test('past timestamp → accepted', () {
      simulateClockSkewGuard(
        {'updatedAt': serverNow.subtract(const Duration(hours: 1)).toIso8601String()},
        serverNow: serverNow,
      );
    });

    test('exactly +5 min boundary → rejected (>= semantics)', () {
      expect(
        () => simulateClockSkewGuard(
          {'updatedAt': serverNow.add(const Duration(minutes: 5)).toIso8601String()},
          serverNow: serverNow,
        ),
        throwsA(isA<ClockSkewRejected>()),
      );
    });

    test('+4 min 59 s 999 ms → accepted (just under boundary)', () {
      simulateClockSkewGuard(
        {
          'updatedAt': serverNow
              .add(const Duration(minutes: 4, seconds: 59, milliseconds: 999))
              .toIso8601String()
        },
        serverNow: serverNow,
      );
    });

    test('snake_case key updated_at is also recognised', () {
      expect(
        () => simulateClockSkewGuard(
          {'updated_at': serverNow.add(const Duration(minutes: 7)).toIso8601String()},
          serverNow: serverNow,
        ),
        throwsA(isA<ClockSkewRejected>()),
      );
    });

    test('falls back to createdAt when updatedAt missing', () {
      expect(
        () => simulateClockSkewGuard(
          {'createdAt': serverNow.add(const Duration(minutes: 8)).toIso8601String()},
          serverNow: serverNow,
        ),
        throwsA(isA<ClockSkewRejected>()),
      );
    });

    test('payload with no recognised timestamp → guard does NOT reject', () {
      // legacy سيتعامل مع الحالة (عادةً يتجاهل الـ mutation أو يستعمل default).
      simulateClockSkewGuard(
        {'someOtherField': 'value'},
        serverNow: serverNow,
      );
    });

    test('malformed timestamp string → guard does NOT reject (treated as null)', () {
      // legacy سيتعامل مع الـ malformed payload بسياسته — الحارس لا يحوّل
      // مدخلات سيئة إلى رفض clock skew.
      simulateClockSkewGuard(
        {'updatedAt': 'not-a-date'},
        serverNow: serverNow,
      );
    });

    test('rejection error message contains clock_skew_rejected and the threshold', () {
      try {
        simulateClockSkewGuard(
          {'updatedAt': serverNow.add(const Duration(minutes: 10)).toIso8601String()},
          serverNow: serverNow,
        );
        fail('expected ClockSkewRejected');
      } on ClockSkewRejected catch (e) {
        final s = e.toString();
        expect(s, contains('clock_skew_rejected'));
        // server now أُدرج في الرسالة (نُقارن بمكوّنات ثابتة للتقاط أيّ شكل DateTime).
        expect(s, contains('2026-05-07'));
        expect(s, contains('12:00:00'));
        expect(s, contains('12:05:00'),
            reason: 'threshold (now + 5min) must be reported');
      }
    });
  });

}
