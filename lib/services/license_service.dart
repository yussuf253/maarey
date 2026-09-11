import 'dart:async' show unawaited;

import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../utils/app_logger.dart';

import 'license/license_engine_v2.dart';
import 'license/license_token.dart';
import 'license/trusted_time_service.dart';
import '../l10n/generated/app_localizations.dart';
import '../providers/open_ops_registry.dart';
import 'security_audit_log_service.dart';

// ── خطط الاشتراك ─────────────────────────────────────────────────────────────

class SubscriptionPlan {
  const SubscriptionPlan({
    required this.key,
    required this.nameAr,
    required this.priceIQD,
    required this.maxDevices,
    required this.features,
  });

  final String key;
  final String nameAr;
  final int priceIQD;
  final int maxDevices;
  final List<String> features;

  bool get isUnlimited => maxDevices == 0;

  /// بطاقة واجهة للتجربة التلقائية — ليست خطة «الأساسية» المدفوعة؛ حد الأجهزة كما في التجربة السابقة (جهازان).
  bool get isIntroTrialTier => key == 'trial';

  String get devicesLabel =>
      isUnlimited ? 'أجهزة غير محدودة' : '$maxDevices أجهزة';

  String get priceLabel =>
      isIntroTrialTier ? 'مجاناً — 15 يوماً' : '${_fmt(priceIQD)} Fdj / شهر';

  static String _fmt(int p) {
    final s = p.toString();
    final b = StringBuffer();
    for (var i = 0; i < s.length; i++) {
      if (i > 0 && (s.length - i) % 3 == 0) b.write(',');
      b.write(s[i]);
    }
    return b.toString();
  }

  static const trial = SubscriptionPlan(
    key: 'trial',
    nameAr: 'التجربة المجانية',
    priceIQD: 0,
    maxDevices: 2,
    features: [
      '15 يوماً من أول استخدام (أو من أول تسجيل للحساب السحابي)',
      'جهازان على نفس الحساب',
      'بعدها اختر خطة مدفوعة وفعّل المفتاح الذي ترسله الإدارة',
    ],
  );

  static const basic = SubscriptionPlan(
    key: 'basic',
    nameAr: 'الأساسية',
    priceIQD: 15000,
    maxDevices: 2,
    features: [
      'جهازان على نفس الحساب',
      'جميع ميزات المخزون والفواتير',
      'التقارير والتحليلات',
      'دعم فني',
    ],
  );

  static const pro = SubscriptionPlan(
    key: 'pro',
    nameAr: 'الاحترافية',
    priceIQD: 30000,
    maxDevices: 3,
    features: [
      '3 أجهزة على نفس الحساب',
      'جميع ميزات الخطة الأساسية',
      'أوامر الشراء وإدارة الموردين',
      'تقارير متقدمة',
      'أولوية في الدعم الفني',
    ],
  );

  static const unlimited = SubscriptionPlan(
    key: 'unlimited',
    nameAr: 'غير المحدودة',
    priceIQD: 50000,
    maxDevices: 0,
    features: [
      'أجهزة غير محدودة على حساب واحد',
      'جميع ميزات الخطة الاحترافية',
      'متعدد الفروع',
      'أولوية قصوى في الدعم',
    ],
  );

  static const all = [trial, basic, pro, unlimited];

  static SubscriptionPlan fromKey(String? k) => switch (k) {
    'trial' => trial,
    'basic' => basic,
    'pro' => pro,
    'unlimited' => unlimited,
    _ => basic,
  };
}

/// Locale-aware plan name lookup by key.
String planNameForKey(String? key, AppLocalizations loc) {
  switch (key) {
    case 'trial':
      return loc.spTrialName;
    case 'basic':
      return loc.spBasicName;
    case 'pro':
      return loc.spProName;
    case 'unlimited':
      return loc.spUnlimitedName;
    default:
      return '—';
  }
}

// ── مفاتيح الكاش ─────────────────────────────────────────────────────────────

abstract class _Prefs {
  static const licenseKey = 'lic.key';
  static const status = 'lic.status';
  static const expiresAt = 'lic.expires_at';
  static const lastCheckAt = 'lic.last_check';
  static const businessName = 'lic.business_name';
  static const trialEndsAt = 'lic.trial_ends_at';
  static const localTrialStartAt = 'lic.local_trial_start_at';
  static const useCloudTrial = 'lic.use_cloud_trial';
  static const planKey = 'lic.plan';
  static const maxDevices = 'lic.max_devices';
  static const deviceCount = 'lic.device_count';

  /// مصدر الحقيقة من السيرفر فقط. كاش offline: true تبقى true حتى يثبت السيرفر عكسها.
  static const deviceOverLimit = 'lic.device_over_limit';
  static const deviceOverLimitCheckedAt = 'lic.device_over_limit_checked_at';

  /// مفتاح قديم من نظام v1؛ يُمسح في [resetLicenseStateForDataScopeChange] لتنظيف التركة.
  static const legacyLicenseSystemVersion = 'lic.license_system_version';

  /// آخر بصمة إصدار طُبِّقت بعدها سياسة الترخيص (`version+buildNumber` من [PackageInfo]).
  static const appVersion = 'lic.app_version';

  // ── Step 21: Kill Switch / tenant_access cache ───────────────────────────
  // مصدر الحقيقة على الخادم (جدول tenant_access). نُخزّنه offline لاتخاذ
  // قرار "آخر حالة معروفة + تحذير" عند انقطاع الشبكة.
  static const tenantAccessStatus = 'lic.tenant.access_status';
  static const tenantAccessKillSwitch = 'lic.tenant.kill_switch';
  static const tenantAccessValidUntil = 'lic.tenant.valid_until';
  static const tenantAccessGraceUntil = 'lic.tenant.grace_until';
  static const tenantAccessCheckedAt = 'lic.tenant.checked_at';
}

// ── حالة الترخيص ─────────────────────────────────────────────────────────────

enum LicenseStatus {
  trial,
  active,
  expired,
  suspended,
  none,
  checking,
  offline,
  restricted,
  pendingLock,
}

enum LockReason { expired, suspended, timeTamper }

class LicenseState {
  const LicenseState({
    required this.status,
    this.businessName,
    this.expiresAt,
    this.trialEndsAt,
    this.daysLeft,
    this.message,
    this.plan,
    this.registeredDeviceCount = 0,
    this.maxDevices = 1,
    this.lockReason,
  });

  final LicenseStatus status;
  final String? businessName;
  final DateTime? expiresAt;
  final DateTime? trialEndsAt;
  final int? daysLeft;
  final String? message;
  final SubscriptionPlan? plan;
  final int registeredDeviceCount;
  final int maxDevices;
  final LockReason? lockReason;

  bool get isAllowed =>
      status == LicenseStatus.trial || status == LicenseStatus.active;

  bool get isUnlimited => maxDevices == 0;

  String get devicesInfo => isUnlimited
      ? 'أجهزة غير محدودة'
      : '$registeredDeviceCount / $maxDevices جهاز';

  static const none = LicenseState(status: LicenseStatus.none);

  static const checking = LicenseState(status: LicenseStatus.checking);
}

// ── Step 21: Kill Switch decision ────────────────────────────────────────────

@immutable
class KillSwitchDecision {
  const KillSwitchDecision({
    required this.status,
    required this.message,
    this.lockReason,
  });

  final LicenseStatus status;
  final String message;
  final LockReason? lockReason;
}

/// منطق قرار Kill Switch — pure function.
KillSwitchDecision? computeKillSwitchDecision({
  required String? accessStatus,
  required bool killSwitch,
  required DateTime? validUntil,
  required DateTime? graceUntil,
  required DateTime trustedNow,
}) {
  if (killSwitch) {
    return const KillSwitchDecision(
      status: LicenseStatus.suspended,
      lockReason: LockReason.suspended,
      message:
          'تم إيقاف الوصول إلى حسابك إدارياً. تواصل مع الدعم لإعادة التفعيل.',
    );
  }

  if (accessStatus == 'revoked') {
    return const KillSwitchDecision(
      status: LicenseStatus.suspended,
      lockReason: LockReason.suspended,
      message: 'تم إلغاء وصولك إلى الخدمة. تواصل مع الدعم.',
    );
  }

  if (accessStatus == 'suspended') {
    return const KillSwitchDecision(
      status: LicenseStatus.suspended,
      lockReason: LockReason.suspended,
      message: 'حسابك معلَّق مؤقتاً. تواصل مع الدعم لمتابعة الاستخدام.',
    );
  }

  if (accessStatus == 'grace') {
    return const KillSwitchDecision(
      status: LicenseStatus.restricted,
      message:
          'حسابك في فترة سماح بعد انتهاء الاشتراك. جدّد قبل انتهاء المهلة لاستعادة جميع الميزات.',
    );
  }

  if (validUntil != null) {
    final nowUtc = trustedNow.toUtc();
    final endUtc = validUntil.toUtc();

    if (!nowUtc.isBefore(endUtc)) {
      return const KillSwitchDecision(
        status: LicenseStatus.expired,
        lockReason: LockReason.expired,
        message: 'انتهت صلاحية اشتراكك. جدّد المفتاح للمتابعة.',
      );
    }
  }

  return null;
}

// ── الخدمة الرئيسية ───────────────────────────────────────────────────────────

/// خدمة الترخيص — نظام v2 (JWT RS256) فقط.
///
/// تم إلغاء v1 (المفتاح القديم + جدول `licenses`) بالكامل في 2026-05-07؛
/// كل التفعيلات الآن عبر JWT موقّع.
class LicenseService extends ChangeNotifier {
  LicenseService._();

  static final LicenseService instance = LicenseService._();

  final TrustedTimeService _trustedTime = TrustedTimeService();

  late final LicenseEngineV2 _v2Activator = LicenseEngineV2(
    trustedTime: _trustedTime,
  );

  bool get usesSignedLicenseJwt => true;

  OpenOpsRegistry? _openOps;

  void attachOpenOpsRegistry(OpenOpsRegistry r) {
    if (_openOps == r) return;

    _openOps?.removeListener(_onOpenOpsChanged);
    _openOps = r;
    _openOps?.addListener(_onOpenOpsChanged);
  }

  void _onOpenOpsChanged() {
    if (_state.status != LicenseStatus.pendingLock) return;

    final hasOpen = _openOps?.hasOpenOperation ?? false;

    if (!hasOpen) {
      _setState(
        const LicenseState(
          status: LicenseStatus.expired,
          lockReason: LockReason.timeTamper,
          message:
              'تم اكتشاف تعارض في إعدادات الوقت. تواصل مع الدعم للمساعدة في إعادة التحقق.',
        ),
      );
    }
  }

  LicenseState _state = LicenseState.checking;

  LicenseState get state => _state;

  // ── تهيئة ─────────────────────────────────────────────────────────────────

  Future<void> initialize() async {
    final prefs = await SharedPreferences.getInstance();
    final packageInfo = await PackageInfo.fromPlatform();

    final currentVersion = packageInfo.version.trim();
    final buildNumber = packageInfo.buildNumber.trim();

    final fullVersion = buildNumber.isEmpty
        ? currentVersion
        : '$currentVersion+$buildNumber';

    final storedVersion = (prefs.getString(_Prefs.appVersion) ?? '').trim();

    if (storedVersion != fullVersion) {
      await resetLicenseStateForDataScopeChange();
      await prefs.setString(_Prefs.appVersion, fullVersion);
    }

    await _initializeV2();
  }

  /// Initialisation non bloquante par le réseau.
  ///
  /// Règle importante :
  /// - la licence locale/JWT est évaluée en premier ;
  /// - les appels Supabase ne doivent jamais empêcher l'ouverture de l'application ;
  /// - les contrôles serveur sont ensuite exécutés en arrière-plan.
  Future<void> _initializeV2() async {
    _setState(LicenseState.checking);

    try {
      final prefs = await SharedPreferences.getInstance();
      final user = Supabase.instance.client.auth.currentUser;
      final tok = await _v2Activator.loadAndVerifyStoredToken();

      if (tok == null) {
        if (user != null) {
          try {
            await applyTrialFromSupabaseProfileV2().timeout(
              const Duration(seconds: 8),
            );
          } catch (e) {
            if (kDebugMode) {
              debugPrint(
                '[LicenseService] Cloud trial unavailable during startup: $e',
              );
            }

            if (_state.status == LicenseStatus.checking) {
              try {
                _setState(await _resolveLocalTrialState(prefs));
              } catch (e2) {
                if (kDebugMode) {
                  debugPrint(
                    '[LicenseService] Local trial fallback failed: $e2',
                  );
                }
              }
            }
          }
        } else {
          try {
            _setState(await _resolveLocalTrialState(prefs));
          } catch (e) {
            if (kDebugMode) {
              debugPrint(
                '[LicenseService] Local trial resolution failed: $e',
              );
            }
          }
        }

        unawaited(_runBackgroundLicenseSync(includeTenantAccess: false));

        return;
      }

      // Le JWT est vérifié localement avant toute dépendance réseau.
      try {
        await _maybeApplySignedTokenAndTrustedTimeOverlay();
      } catch (e) {
        if (kDebugMode) {
          debugPrint('[LicenseService] Token overlay failed: $e');
        }
      }

      // Kill-switch + limite appareils en arrière-plan.
      unawaited(_runBackgroundLicenseSync(includeTenantAccess: true));
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[LicenseService] _initializeV2 failed: $e');
      }
    }

    // Safety net: ensure state is never stuck on 'checking'.
    if (_state.status == LicenseStatus.checking) {
      try {
        final prefs = await SharedPreferences.getInstance();
        _setState(await _resolveLocalTrialState(prefs));
      } catch (_) {
        _setState(
          const LicenseState(
            status: LicenseStatus.trial,
            plan: SubscriptionPlan.trial,
            maxDevices: 2,
            daysLeft: 15,
          ),
        );
      }
    }
  }

  /// Vérifications serveur exécutées en arrière-plan.
  ///
  /// Aucun de ces appels ne doit bloquer le démarrage.
  Future<void> _runBackgroundLicenseSync({
    required bool includeTenantAccess,
  }) async {
    try {
      if (includeTenantAccess) {
        await _maybeApplyTenantAccessOverlay(
          forceRemote: true,
        ).timeout(const Duration(seconds: 7));
      }

      await _maybeApplyServerDeviceLimitOverlay(
        forceRemote: true,
      ).timeout(const Duration(seconds: 7));
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[LicenseService] Background license sync failed: $e');
      }
    }
  }

  Future<void> _checkLicenseV2({bool forceRemote = false}) async {
    _setState(LicenseState.checking);

    try {
      final prefs = await SharedPreferences.getInstance();
      final tok = await _v2Activator.loadAndVerifyStoredToken();

      if (tok == null) {
        final user = Supabase.instance.client.auth.currentUser;

        if (user != null) {
          try {
            await applyTrialFromSupabaseProfileV2().timeout(
              const Duration(seconds: 8),
            );
          } catch (e) {
            if (kDebugMode) {
              debugPrint('[LicenseService] Cloud trial check failed: $e');
            }

            if (_state.status == LicenseStatus.checking) {
              try {
                _setState(await _resolveLocalTrialState(prefs));
              } catch (e2) {
                if (kDebugMode) {
                  debugPrint(
                    '[LicenseService] Local trial fallback failed: $e2',
                  );
                }
              }
            }
          }
        } else {
          try {
            _setState(await _resolveLocalTrialState(prefs));
          } catch (e) {
            if (kDebugMode) {
              debugPrint('[LicenseService] Local trial resolution failed: $e');
            }
          }
        }

        await _maybeApplyTenantAccessOverlay(forceRemote: forceRemote);

        await _maybeApplyServerDeviceLimitOverlay(forceRemote: forceRemote);

        return;
      }

      try {
        await _maybeApplySignedTokenAndTrustedTimeOverlay();
      } catch (e) {
        if (kDebugMode) {
          debugPrint('[LicenseService] Token overlay check failed: $e');
        }
      }

      await _maybeApplyTenantAccessOverlay(forceRemote: forceRemote);

      await _maybeApplyServerDeviceLimitOverlay(forceRemote: forceRemote);
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[LicenseService] _checkLicenseV2 failed: $e');
      }
    }

    // Safety net: ensure state is never stuck on 'checking'.
    if (_state.status == LicenseStatus.checking) {
      try {
        final prefs = await SharedPreferences.getInstance();
        _setState(await _resolveLocalTrialState(prefs));
      } catch (_) {
        _setState(
          const LicenseState(
            status: LicenseStatus.trial,
            plan: SubscriptionPlan.trial,
            maxDevices: 2,
            daysLeft: 15,
          ),
        );
      }
    }
  }

  // ── معرّف الجهاز ──────────────────────────────────────────────────────────

  Future<String> getDeviceId() => _v2Activator.getDeviceId();

  Future<String> getDeviceName() => _v2Activator.getDeviceName();

  // ── التحقق من الترخيص ─────────────────────────────────────────────────────

  Future<void> checkLicense({bool forceRemote = false}) =>
      _checkLicenseV2(forceRemote: forceRemote);

  bool _readCachedOverLimit(SharedPreferences prefs) =>
      prefs.getBool(_Prefs.deviceOverLimit) ?? false;

  Future<void> _writeCachedOverLimit(SharedPreferences prefs, bool v) async {
    await prefs.setBool(_Prefs.deviceOverLimit, v);

    final trustedNow = await _trustedTime.currentTrustedTime();

    await prefs.setInt(
      _Prefs.deviceOverLimitCheckedAt,
      trustedNow.millisecondsSinceEpoch,
    );
  }

  Future<({bool isOverLimit, int activeDevices, int maxDevices})?>
  _tryFetchOverLimitFromServer() async {
    final user = Supabase.instance.client.auth.currentUser;

    if (user == null) return null;

    try {
      final res = await Supabase.instance.client
          .rpc('app_device_limit_status')
          .timeout(const Duration(seconds: 6));

      if (res is List && res.isNotEmpty && res.first is Map) {
        final m = Map<String, dynamic>.from(res.first as Map);

        return (
          isOverLimit: m['is_over_limit'] == true,
          activeDevices: (m['active_devices'] as num?)?.toInt() ?? 0,
          maxDevices: (m['max_devices'] as num?)?.toInt() ?? 0,
        );
      }

      if (res is Map) {
        final m = Map<String, dynamic>.from(res);

        return (
          isOverLimit: m['is_over_limit'] == true,
          activeDevices: (m['active_devices'] as num?)?.toInt() ?? 0,
          maxDevices: (m['max_devices'] as num?)?.toInt() ?? 0,
        );
      }
    } on PostgrestException catch (_) {
      return null;
    } catch (_) {
      return null;
    }

    return null;
  }

  Future<void> _maybeApplyServerDeviceLimitOverlay({
    required bool forceRemote,
  }) async {
    if (_state.status == LicenseStatus.pendingLock) return;

    if (_state.lockReason == LockReason.timeTamper) return;

    final prefs = await SharedPreferences.getInstance();

    final cached = _readCachedOverLimit(prefs);

    final checkedAtMs = prefs.getInt(_Prefs.deviceOverLimitCheckedAt);

    final checkedAt = checkedAtMs != null
        ? DateTime.fromMillisecondsSinceEpoch(checkedAtMs, isUtc: true)
        : null;

    final trustedNow = await _trustedTime.currentTrustedTime();

    final recentlyChecked =
        checkedAt != null &&
        trustedNow.difference(checkedAt) < const Duration(minutes: 5);

    if (!forceRemote && recentlyChecked) {
      if (cached) {
        _setState(
          const LicenseState(
            status: LicenseStatus.restricted,
            message:
                'تم تجاوز حد الأجهزة في حسابك. افصل جهازاً من لوحة الإدارة أو قم بترقية الخطة.',
          ),
        );
      }

      return;
    }

    final server = await _tryFetchOverLimitFromServer();

    if (server == null) {
      // Offline/failed : un cache "true" reste appliqué.
      if (cached) {
        _setState(
          const LicenseState(
            status: LicenseStatus.restricted,
            message:
                'تم تجاوز حد الأجهزة في حسابك. اتصل بالإنترنت لإعادة التحقق بعد فصل جهاز.',
          ),
        );
      }

      return;
    }

    await _writeCachedOverLimit(prefs, server.isOverLimit);

    if (server.isOverLimit) {
      final maxLabel = server.maxDevices == 0
          ? 'غير محدود'
          : '${server.maxDevices}';

      _setState(
        LicenseState(
          status: LicenseStatus.restricted,
          message:
              'عدد الأجهزة النشطة على الحساب تجاوز الحد (${server.activeDevices}/$maxLabel). افصل جهازاً أو قم بترقية الخطة.',
        ),
      );
    }
  }

  // ── Step 21: Kill Switch overlay ──────────────────────────────────────────

  @visibleForTesting
  Future<Map<String, dynamic>?> Function()? tenantAccessFetcherForTesting;

  @visibleForTesting
  Future<DateTime> Function()? trustedNowOverrideForTesting;

  @visibleForTesting
  void debugSetStateForTesting(LicenseState s) => _setState(s);

  @visibleForTesting
  Future<void> applyTenantAccessOverlayForTesting({bool forceRemote = true}) =>
      _maybeApplyTenantAccessOverlay(forceRemote: forceRemote);

  Future<DateTime> _resolveTrustedNow() async {
    final override = trustedNowOverrideForTesting;

    if (override != null) return override();

    return _trustedTime.currentTrustedTime();
  }

  Future<Map<String, dynamic>?> _fetchTenantAccessFromServer() async {
    final override = tenantAccessFetcherForTesting;

    if (override != null) return override();

    try {
      final user = Supabase.instance.client.auth.currentUser;

      if (user == null) return null;

      final res = await Supabase.instance.client
          .rpc('app_tenant_access_status')
          .timeout(const Duration(seconds: 6));

      if (res is Map) {
        return Map<String, dynamic>.from(res);
      }

      if (res is List && res.isNotEmpty && res.first is Map) {
        return Map<String, dynamic>.from(res.first as Map);
      }
    } on PostgrestException catch (_) {
      return null;
    } catch (_) {
      return null;
    }

    return null;
  }

  static bool _coerceBool(Object? raw) {
    if (raw is bool) return raw;

    if (raw is num) return raw != 0;

    if (raw is String) {
      final s = raw.toLowerCase().trim();

      return s == 'true' || s == 't' || s == '1' || s == 'yes';
    }

    return false;
  }

  static DateTime? _coerceTimestamp(Object? raw) {
    if (raw == null) return null;

    if (raw is DateTime) {
      return raw.toUtc();
    }

    if (raw is int) {
      return DateTime.fromMillisecondsSinceEpoch(raw, isUtc: true);
    }

    if (raw is num) {
      return DateTime.fromMillisecondsSinceEpoch(raw.toInt(), isUtc: true);
    }

    if (raw is String) {
      final s = raw.trim();

      if (s.isEmpty) return null;

      return DateTime.tryParse(s)?.toUtc();
    }

    return null;
  }

  Future<void> _persistTenantAccess(
    SharedPreferences prefs,
    Map<String, dynamic> data, {
    required DateTime trustedNow,
  }) async {
    final status = data['access_status']?.toString();

    if (status != null && status.isNotEmpty) {
      await prefs.setString(_Prefs.tenantAccessStatus, status);
    } else {
      await prefs.remove(_Prefs.tenantAccessStatus);
    }

    await prefs.setBool(
      _Prefs.tenantAccessKillSwitch,
      _coerceBool(data['kill_switch']),
    );

    final validUntil = _coerceTimestamp(data['valid_until']);

    if (validUntil != null) {
      await prefs.setInt(
        _Prefs.tenantAccessValidUntil,
        validUntil.millisecondsSinceEpoch,
      );
    } else {
      await prefs.remove(_Prefs.tenantAccessValidUntil);
    }

    final graceUntil = _coerceTimestamp(data['grace_until']);

    if (graceUntil != null) {
      await prefs.setInt(
        _Prefs.tenantAccessGraceUntil,
        graceUntil.millisecondsSinceEpoch,
      );
    } else {
      await prefs.remove(_Prefs.tenantAccessGraceUntil);
    }

    await prefs.setInt(
      _Prefs.tenantAccessCheckedAt,
      trustedNow.millisecondsSinceEpoch,
    );
  }

  Map<String, dynamic>? _readTenantAccessCache(SharedPreferences prefs) {
    final status = prefs.getString(_Prefs.tenantAccessStatus);

    if (status == null) return null;

    return {
      'access_status': status,
      'kill_switch': prefs.getBool(_Prefs.tenantAccessKillSwitch) ?? false,
      'valid_until': prefs.getInt(_Prefs.tenantAccessValidUntil),
      'grace_until': prefs.getInt(_Prefs.tenantAccessGraceUntil),
    };
  }

  Future<void> _maybeApplyTenantAccessOverlay({
    required bool forceRemote,
  }) async {
    if (_state.status == LicenseStatus.pendingLock) {
      return;
    }

    if (_state.lockReason == LockReason.timeTamper) {
      return;
    }

    final prefs = await SharedPreferences.getInstance();

    final trustedNow = await _resolveTrustedNow();

    Map<String, dynamic>? data = await _fetchTenantAccessFromServer();

    bool fromCache = false;

    if (data != null) {
      await _persistTenantAccess(prefs, data, trustedNow: trustedNow);
    } else {
      final cached = _readTenantAccessCache(prefs);

      if (cached == null) {
        if (kDebugMode) {
          debugPrint(
            '[LicenseService] tenant_access offline + no cache; keeping current state.',
          );
        }

        return;
      }

      data = cached;
      fromCache = true;
    }

    final decision = computeKillSwitchDecision(
      accessStatus: data['access_status']?.toString(),
      killSwitch: _coerceBool(data['kill_switch']),
      validUntil: _coerceTimestamp(data['valid_until']),
      graceUntil: _coerceTimestamp(data['grace_until']),
      trustedNow: trustedNow,
    );

    if (decision == null) return;

    final messageWithWarning = fromCache
        ? '${decision.message}\n(تعذّر التحقق من الخادم — الحالة من آخر مزامنة.)'
        : decision.message;

    _setState(
      LicenseState(
        status: decision.status,
        lockReason: decision.lockReason,
        message: messageWithWarning,
      ),
    );
  }

  Future<void> _maybeApplySignedTokenAndTrustedTimeOverlay() async {
    final tok = await _v2Activator.loadAndVerifyStoredToken();

    if (tok == null) return;

    // Ne pas attendre le serveur.
    unawaited(_trustedTime.confirmWithServer());

    final local = await _trustedTime.checkLocalClock(
      backJumpTolerance: const Duration(minutes: 10),
    );

    if (local.isTampered) {
      final prefs = await SharedPreferences.getInstance();

      const countKey = 'lic.v2.time_tamper_count';

      final count = (prefs.getInt(countKey) ?? 0) + 1;

      await prefs.setInt(countKey, count);

      final diff = local.deltaFromLastKnown.abs();

      final severe = diff >= const Duration(hours: 2);

      if (severe || count >= 2) {
        _setState(
          const LicenseState(
            status: LicenseStatus.pendingLock,
            lockReason: LockReason.timeTamper,
            message:
                'تم اكتشاف تعارض في إعدادات الوقت. أكمل العملية الحالية ثم سيُقفل التطبيق.',
          ),
        );
      } else {
        _setState(
          const LicenseState(
            status: LicenseStatus.restricted,
            lockReason: LockReason.timeTamper,
            message: 'يرجى الاتصال بالإنترنت للتحقق من الوقت.',
          ),
        );
      }

      _onOpenOpsChanged();

      return;
    }

    if (tok.isExpired) {
      _setState(
        const LicenseState(
          status: LicenseStatus.expired,
          lockReason: LockReason.expired,
          message: 'انتهى اشتراكك. جدّد للمتابعة.',
        ),
      );

      return;
    }

    final trustedNow = (await _trustedTime.currentTrustedTime()).toLocal();

    final endsLocal = tok.endsAt.toLocal();

    _setState(
      LicenseState(
        status: tok.isTrial ? LicenseStatus.trial : LicenseStatus.active,
        lockReason: null,
        message: null,
        plan: tok.isTrial
            ? SubscriptionPlan.trial
            : SubscriptionPlan.fromKey(tok.plan),
        maxDevices: tok.maxDevices,
        trialEndsAt: tok.isTrial ? endsLocal : null,
        daysLeft: tok.isTrial
            ? trialDaysLeftCalendar(endsLocal, trustedNow).clamp(0, 15)
            : null,
        expiresAt: tok.isTrial ? null : endsLocal,
      ),
    );
  }

  /// حساب الأيام المتبقية بشكل يوم كامل تقريبًا.
  static int trialDaysLeftCalendar(DateTime trialEnd, DateTime now) {
    if (!now.isBefore(trialEnd)) {
      return 0;
    }

    final ms = trialEnd.millisecondsSinceEpoch - now.millisecondsSinceEpoch;

    return ((ms + 86400000 - 1) ~/ 86400000).clamp(0, 9999);
  }

  Future<LicenseState> _stateFromTrialEndLocal(
    DateTime trialEnd, {
    required bool cloud,
  }) async {
    final trustedNow = (await _trustedTime.currentTrustedTime()).toLocal();

    if (!trustedNow.isBefore(trialEnd)) {
      return LicenseState(
        status: LicenseStatus.expired,
        trialEndsAt: trialEnd,
        plan: SubscriptionPlan.trial,
        maxDevices: SubscriptionPlan.trial.maxDevices,
        registeredDeviceCount: 1,
        message: 'انتهت التجربة المجانية (15 يوم). اختر خطة اشتراك للمتابعة.',
      );
    }

    return LicenseState(
      status: LicenseStatus.trial,
      trialEndsAt: trialEnd,
      daysLeft: trialDaysLeftCalendar(trialEnd, trustedNow).clamp(0, 15),
      plan: SubscriptionPlan.trial,
      maxDevices: SubscriptionPlan.trial.maxDevices,
      registeredDeviceCount: 1,
      message: cloud
          ? 'تجربة مجانية 15 يوم من أول تسجيل Google لهذا الحساب (موحّدة لكل الأجهزة).'
          : 'تجربة مجانية مفعلة لمدة 15 يوم من أول استخدام لهذا الجهاز.',
    );
  }

  Future<LicenseState> _resolveLocalTrialState(SharedPreferences prefs) async {
    final useCloud = prefs.getBool(_Prefs.useCloudTrial) ?? false;

    final endMs = prefs.getInt(_Prefs.trialEndsAt);

    if (useCloud && endMs != null) {
      final trialEnd = DateTime.fromMillisecondsSinceEpoch(endMs);

      return _stateFromTrialEndLocal(trialEnd, cloud: true);
    }

    final trialStartMs =
        prefs.getInt(_Prefs.localTrialStartAt) ??
        (await _trustedTime.currentTrustedTime()).millisecondsSinceEpoch;

    if (!prefs.containsKey(_Prefs.localTrialStartAt)) {
      await prefs.setInt(_Prefs.localTrialStartAt, trialStartMs);
    }

    final trialStart = DateTime.fromMillisecondsSinceEpoch(trialStartMs);

    final trialEnd = trialStart.add(const Duration(days: 15));

    return _stateFromTrialEndLocal(trialEnd, cloud: false);
  }

  // ── Trial cloud ───────────────────────────────────────────────────────────

  Future<void> applyTrialFromSupabaseProfile() async {
    await applyTrialFromSupabaseProfileV2();
  }

  Future<void> applyTrialFromSupabaseProfileV2() async {
    final user = Supabase.instance.client.auth.currentUser;

    if (user == null) {
      await ensureLocalTrialStartedV2();
      return;
    }

    if ((await _v2Activator.loadAndVerifyStoredToken()) != null) {
      await checkLicense(forceRemote: true);
      return;
    }

    // ── Step 1: licence assignée ────────────────────────────────────────────
    try {
      final client = Supabase.instance.client;

      final licRow = await client
          .from('licenses')
          .select('id, license_jwt, status, plan, assigned_user_id')
          .eq('assigned_user_id', user.id)
          .inFilter('status', ['active', 'trial'])
          .order('id', ascending: false)
          .limit(1)
          .maybeSingle()
          .timeout(const Duration(seconds: 6));

      if (licRow != null) {
        final jwt = (licRow['license_jwt'] as String?)?.trim() ?? '';

        if (jwt.isNotEmpty && jwt.split('.').length == 3) {
          final licId = licRow['id'];
          final plan = licRow['plan'];

          AppLogger.info(
            'LicenseService',
            'Auto-activating assigned license #$licId (plan=$plan) for user ${user.email}',
          );

          final result = await activateSignedToken(jwt);

          if (result.ok) return;

          AppLogger.warn(
            'LicenseService',
            'Auto-activate failed: ${result.message}',
          );
        }
      }
    } catch (e) {
      AppLogger.warn('LicenseService', 'Failed to query assigned license: $e');
    }

    // ── Step 2: Trial cloud ─────────────────────────────────────────────────
    final accountCreatedAtIso = _supabaseUserCreatedAtIsoUtc(user);

    try {
      final client = Supabase.instance.client;

      var row = await client
          .from('profiles')
          .select('trial_started_at')
          .eq('id', user.id)
          .maybeSingle()
          .timeout(const Duration(seconds: 6));

      final updatedAtIso = (await _trustedTime.currentTrustedTime())
          .toUtc()
          .toIso8601String();

      if (row == null) {
        await client
            .from('profiles')
            .insert({
              'id': user.id,
              'email': user.email,
              'trial_started_at': accountCreatedAtIso,
              'updated_at': updatedAtIso,
            })
            .timeout(const Duration(seconds: 6));
      } else {
        await client
            .from('profiles')
            .update({'email': user.email, 'updated_at': updatedAtIso})
            .eq('id', user.id)
            .timeout(const Duration(seconds: 6));
      }

      row = await client
          .from('profiles')
          .select('trial_started_at')
          .eq('id', user.id)
          .maybeSingle()
          .timeout(const Duration(seconds: 6));

      dynamic ts = row?['trial_started_at'];

      if (ts == null || ts.toString().isEmpty) {
        await client
            .from('profiles')
            .update({'trial_started_at': accountCreatedAtIso})
            .eq('id', user.id)
            .timeout(const Duration(seconds: 6));

        ts = accountCreatedAtIso;
      }

      final start = DateTime.parse(ts.toString()).toUtc();

      final endUtc = start.add(const Duration(days: 15));

      final prefs = await SharedPreferences.getInstance();

      await prefs.setBool(_Prefs.useCloudTrial, true);

      await prefs.setInt(_Prefs.trialEndsAt, endUtc.millisecondsSinceEpoch);

      await prefs.remove(_Prefs.localTrialStartAt);

      _setState(await _stateFromTrialEndLocal(endUtc.toLocal(), cloud: true));
    } catch (e) {
      if (kDebugMode) {
        debugPrint(
          '[LicenseService] Cloud trial failed, using local trial: $e',
        );
      }

      await ensureLocalTrialStartedV2();
    }
  }

  String _supabaseUserCreatedAtIsoUtc(User user) {
    try {
      final raw = user.toJson()['created_at'];

      if (raw is String && raw.trim().isNotEmpty) {
        return DateTime.parse(raw).toUtc().toIso8601String();
      }
    } catch (_) {}

    return DateTime.now().toUtc().toIso8601String();
  }

  Future<void> ensureLocalTrialStarted() async {
    await ensureLocalTrialStartedV2();
  }

  Future<void> ensureLocalTrialStartedV2() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(_Prefs.useCloudTrial, false);

    if (!prefs.containsKey(_Prefs.localTrialStartAt)) {
      final trustedNow = await _trustedTime.currentTrustedTime();

      await prefs.setInt(
        _Prefs.localTrialStartAt,
        trustedNow.millisecondsSinceEpoch,
      );
    }

    final hasJwt = (await _v2Activator.loadAndVerifyStoredToken()) != null;

    if (!hasJwt && (prefs.getString(_Prefs.licenseKey) ?? '').isEmpty) {
      _setState(await _resolveLocalTrialState(prefs));
    }
  }

  // ── Activation JWT ────────────────────────────────────────────────────────

  Future<({bool ok, String message})> activateLicense(String key) async {
    final k = normalizeJwtCompactInput(key);

    if (k.split('.').length != 3) {
      return (
        ok: false,
        message:
            'حسابك يستخدم ترخيصاً موقّعاً. الصق رمز التفعيل الكامل (JWT) وليس المفتاح القديم.',
      );
    }

    return activateSignedToken(k);
  }

  Future<({bool ok, String message})> activateSignedToken(String jwt) async {
    final r = await _v2Activator.activateLicense(jwt);

    if (!r.ok) return r;

    unawaited(_trustedTime.confirmWithServer());

    await checkLicense(forceRemote: true);

    return r;
  }

  // ── إلغاء الترخيص ─────────────────────────────────────────────────────────

  Future<void> deactivate() async {
    await _v2Activator.deactivate();

    await _clearLegacyLicensePrefs();

    _setState(LicenseState.none);
  }

  Future<void> resetLicenseStateForDataScopeChange() async {
    await _v2Activator.deactivate();

    final prefs = await SharedPreferences.getInstance();

    for (final k in [
      _Prefs.licenseKey,
      _Prefs.status,
      _Prefs.expiresAt,
      _Prefs.trialEndsAt,
      _Prefs.useCloudTrial,
      _Prefs.lastCheckAt,
      _Prefs.businessName,
      _Prefs.planKey,
      _Prefs.maxDevices,
      _Prefs.deviceCount,
      _Prefs.localTrialStartAt,
      _Prefs.deviceOverLimit,
      _Prefs.deviceOverLimitCheckedAt,
      _Prefs.legacyLicenseSystemVersion,
      _Prefs.tenantAccessStatus,
      _Prefs.tenantAccessKillSwitch,
      _Prefs.tenantAccessValidUntil,
      _Prefs.tenantAccessGraceUntil,
      _Prefs.tenantAccessCheckedAt,
    ]) {
      await prefs.remove(k);
    }

    _setState(LicenseState.checking);
  }

  Future<void> _clearLegacyLicensePrefs() async {
    final prefs = await SharedPreferences.getInstance();

    for (final k in [
      _Prefs.licenseKey,
      _Prefs.status,
      _Prefs.expiresAt,
      _Prefs.trialEndsAt,
      _Prefs.useCloudTrial,
      _Prefs.lastCheckAt,
      _Prefs.businessName,
      _Prefs.planKey,
      _Prefs.maxDevices,
      _Prefs.deviceCount,
      _Prefs.localTrialStartAt,
    ]) {
      await prefs.remove(k);
    }
  }

  // ── State ─────────────────────────────────────────────────────────────────

  void _setState(LicenseState s) {
    _state = s;

    notifyListeners();

    unawaited(_auditStateChange(s));
  }

  Future<void> _auditStateChange(LicenseState s) async {
    try {
      final st = s.status;

      if (st == LicenseStatus.restricted) {
        await SecurityAuditLogService.instance.log(
          event: 'license_restricted',
          eventTier: 'critical',
          context: {'reason': s.lockReason?.name ?? ''},
        );
      } else if (st == LicenseStatus.pendingLock) {
        await SecurityAuditLogService.instance.log(
          event: 'license_pending_lock',
          eventTier: 'critical',
          context: {'reason': s.lockReason?.name ?? ''},
        );
      } else if (st == LicenseStatus.expired) {
        await SecurityAuditLogService.instance.log(
          event: 'license_expired',
          eventTier: 'critical',
          context: {'reason': s.lockReason?.name ?? ''},
        );
      } else if (st == LicenseStatus.suspended) {
        await SecurityAuditLogService.instance.log(
          event: 'license_suspended',
          eventTier: 'critical',
          context: const {},
        );
      }
    } catch (_) {
      // Best-effort uniquement.
    }
  }
}
