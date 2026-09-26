import 'package:sqflite/sqflite.dart';

import '../utils/barcode_keystroke_decoder.dart';
import 'database_helper.dart';

/// إعدادات عامة مفتاح/قيمة في جدول [app_settings].
class AppSettingsRepository {
  AppSettingsRepository._();
  static final AppSettingsRepository instance = AppSettingsRepository._();

  final DatabaseHelper _dbHelper = DatabaseHelper();
  static const String _activeTenantIdKey = '_system.active_tenant_id';

  Future<Database> get _db async => _dbHelper.database;

  Future<void> _ensureSettingsTable(Database db) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS app_settings (
        key TEXT PRIMARY KEY,
        value TEXT,
        updatedAt TEXT NOT NULL
      )
    ''');
  }

  Future<String?> get(String key) async {
    final db = await _db;
    await _ensureSettingsTable(db);
    final rows = await db.query(
      'app_settings',
      columns: ['value'],
      where: 'key = ?',
      whereArgs: [key],
      limit: 1,
    );
    if (rows.isEmpty) return null;
    return rows.first['value'] as String?;
  }

  Future<String?> getForTenant(String key, {int tenantId = 1}) {
    return get(_tenantScopedKey(key, tenantId));
  }

  Future<void> set(String key, String value) async {
    final db = await _db;
    await _ensureSettingsTable(db);
    final now = DateTime.now().toIso8601String();
    await db.insert('app_settings', {
      'key': key,
      'value': value,
      'updatedAt': now,
    }, conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<void> setForTenant(String key, String value, {int tenantId = 1}) {
    return set(_tenantScopedKey(key, tenantId), value);
  }

  Future<int> getActiveTenantId() async {
    final raw = await get(_activeTenantIdKey);
    return int.tryParse(raw ?? '') ?? 1;
  }

  Future<void> setActiveTenantId(int tenantId) {
    final v = tenantId <= 0 ? 1 : tenantId;
    return set(_activeTenantIdKey, '$v');
  }

  String _tenantScopedKey(String key, int tenantId) {
    final v = tenantId <= 0 ? 1 : tenantId;
    return 't:$v:$key';
  }

  Future<Map<String, String>> getKeys(Iterable<String> keys) async {
    final out = <String, String>{};
    for (final k in keys) {
      final v = await get(k);
      if (v != null) out[k] = v;
    }
    return out;
  }
}

/// مفاتيح إعدادات قارئ الباركود العتادي (USB HID) — قابلة للتخزين.
abstract class HardwareScannerSettingsKeys {
  static const enabled = 'scan.hw.enabled';
  static const profile = 'scan.hw.profile';
  static const suffix = 'scan.hw.suffix';
  static const maxInterKeyGapMs = 'scan.hw.max_inter_key_gap_ms';
  static const minCodeLength = 'scan.hw.min_code_length';
  static const dedupeWindowMs = 'scan.hw.dedupe_window_ms';
}

/// إعدادات قارئ الباركود العتادي (لوحة المفاتيح).
/// القيم الافتراضية من مواصفات القارئ المحمول (100fps ⇒ فجوات ~10ms).
class HardwareScannerSettingsData {
  const HardwareScannerSettingsData({
    required this.enabled,
    required this.profile,
    required this.suffix,
    required this.maxInterKeyGapMs,
    required this.minCodeLength,
    required this.dedupeWindowMs,
  });

  final bool enabled;
  final ScannerProfile profile;
  final BarcodeSuffix suffix;
  final int maxInterKeyGapMs;
  final int minCodeLength;
  final int dedupeWindowMs;

  static HardwareScannerSettingsData defaults() =>
      const HardwareScannerSettingsData(
        enabled: true,
        profile: ScannerProfile.handheld,
        suffix: BarcodeSuffix.enter,
        maxInterKeyGapMs: BarcodeCaptureSettings.defaultMaxInterKeyGapMs,
        minCodeLength: BarcodeCaptureSettings.defaultMinCodeLength,
        dedupeWindowMs: BarcodeCaptureSettings.defaultDedupeWindowMs,
      );

  BarcodeCaptureSettings toCaptureSettings() => BarcodeCaptureSettings(
    enabled: enabled,
    profile: profile,
    suffix: suffix,
    maxInterKeyGapMs: maxInterKeyGapMs,
    minCodeLength: minCodeLength,
    dedupeWindowMs: dedupeWindowMs,
  );

  HardwareScannerSettingsData copyWith({
    bool? enabled,
    ScannerProfile? profile,
    BarcodeSuffix? suffix,
    int? maxInterKeyGapMs,
    int? minCodeLength,
    int? dedupeWindowMs,
  }) {
    return HardwareScannerSettingsData(
      enabled: enabled ?? this.enabled,
      profile: profile ?? this.profile,
      suffix: suffix ?? this.suffix,
      maxInterKeyGapMs: maxInterKeyGapMs ?? this.maxInterKeyGapMs,
      minCodeLength: minCodeLength ?? this.minCodeLength,
      dedupeWindowMs: dedupeWindowMs ?? this.dedupeWindowMs,
    );
  }

  static Future<HardwareScannerSettingsData> load(
    AppSettingsRepository repo,
  ) async {
    final d = defaults();
    final raw = await repo.getKeys(const [
      HardwareScannerSettingsKeys.enabled,
      HardwareScannerSettingsKeys.profile,
      HardwareScannerSettingsKeys.suffix,
      HardwareScannerSettingsKeys.maxInterKeyGapMs,
      HardwareScannerSettingsKeys.minCodeLength,
      HardwareScannerSettingsKeys.dedupeWindowMs,
    ]);
    return HardwareScannerSettingsData(
      enabled: (raw[HardwareScannerSettingsKeys.enabled] ?? '1') == '1',
      profile: _profileFromRaw(
        raw[HardwareScannerSettingsKeys.profile],
        d.profile,
      ),
      suffix: _suffixFromRaw(raw[HardwareScannerSettingsKeys.suffix], d.suffix),
      maxInterKeyGapMs:
          int.tryParse(
            raw[HardwareScannerSettingsKeys.maxInterKeyGapMs] ?? '',
          ) ??
          d.maxInterKeyGapMs,
      minCodeLength:
          int.tryParse(raw[HardwareScannerSettingsKeys.minCodeLength] ?? '') ??
          d.minCodeLength,
      dedupeWindowMs:
          int.tryParse(raw[HardwareScannerSettingsKeys.dedupeWindowMs] ?? '') ??
          d.dedupeWindowMs,
    );
  }

  static ScannerProfile _profileFromRaw(String? raw, ScannerProfile fallback) {
    switch (raw) {
      case 'handheld':
        return ScannerProfile.handheld;
      case 'omnidirectionalDesktop':
        return ScannerProfile.omnidirectionalDesktop;
      case 'generic':
        return ScannerProfile.generic;
      default:
        return fallback;
    }
  }

  static BarcodeSuffix _suffixFromRaw(String? raw, BarcodeSuffix fallback) {
    switch (raw) {
      case 'enter':
        return BarcodeSuffix.enter;
      case 'tab':
        return BarcodeSuffix.tab;
      case 'enterOrTab':
        return BarcodeSuffix.enterOrTab;
      case 'none':
        return BarcodeSuffix.none;
      default:
        return fallback;
    }
  }

  Future<void> save(AppSettingsRepository repo) async {
    final profileRaw = switch (profile) {
      ScannerProfile.handheld => 'handheld',
      ScannerProfile.omnidirectionalDesktop => 'omnidirectionalDesktop',
      ScannerProfile.generic => 'generic',
    };
    final suffixRaw = switch (suffix) {
      BarcodeSuffix.enter => 'enter',
      BarcodeSuffix.tab => 'tab',
      BarcodeSuffix.enterOrTab => 'enterOrTab',
      BarcodeSuffix.none => 'none',
    };
    await repo.set(HardwareScannerSettingsKeys.enabled, enabled ? '1' : '0');
    await repo.set(HardwareScannerSettingsKeys.profile, profileRaw);
    await repo.set(HardwareScannerSettingsKeys.suffix, suffixRaw);
    await repo.set(
      HardwareScannerSettingsKeys.maxInterKeyGapMs,
      maxInterKeyGapMs.toString(),
    );
    await repo.set(
      HardwareScannerSettingsKeys.minCodeLength,
      minCodeLength.toString(),
    );
    await repo.set(
      HardwareScannerSettingsKeys.dedupeWindowMs,
      dedupeWindowMs.toString(),
    );
  }
}

/// مفاتيح إعدادات الباركود (مخزن — قيم افتراضية في [BarcodeSettingsData.defaults]).
abstract class BarcodeSettingsKeys {
  static const standard = 'inv.barcode.standard';
  static const weightEmbed = 'inv.barcode.weight_embed';
  static const embedPattern = 'inv.barcode.embed_pattern';
  static const weightDivisor = 'inv.barcode.weight_divisor';
  static const currencyDivisor = 'inv.barcode.currency_divisor';
}

class BarcodeSettingsData {
  const BarcodeSettingsData({
    required this.standard,
    required this.weightEmbedEnabled,
    required this.embedPattern,
    required this.weightDivisor,
    required this.currencyDivisor,
  });

  /// `code128` | `ean13`
  final String standard;
  final bool weightEmbedEnabled;
  final String embedPattern;
  final double weightDivisor;
  final double currencyDivisor;

  static BarcodeSettingsData defaults() => const BarcodeSettingsData(
    standard: 'code128',
    weightEmbedEnabled: false,
    embedPattern: 'XXXXXXXXWWWWWWPPPPN',
    weightDivisor: 1000,
    currencyDivisor: 100,
  );

  static Future<BarcodeSettingsData> load(AppSettingsRepository repo) async {
    final d = defaults();
    final raw = await repo.getKeys([
      BarcodeSettingsKeys.standard,
      BarcodeSettingsKeys.weightEmbed,
      BarcodeSettingsKeys.embedPattern,
      BarcodeSettingsKeys.weightDivisor,
      BarcodeSettingsKeys.currencyDivisor,
    ]);
    return BarcodeSettingsData(
      standard: raw[BarcodeSettingsKeys.standard] ?? d.standard,
      weightEmbedEnabled: (raw[BarcodeSettingsKeys.weightEmbed] ?? '0') == '1',
      embedPattern: raw[BarcodeSettingsKeys.embedPattern] ?? d.embedPattern,
      weightDivisor:
          double.tryParse(raw[BarcodeSettingsKeys.weightDivisor] ?? '') ??
          d.weightDivisor,
      currencyDivisor:
          double.tryParse(raw[BarcodeSettingsKeys.currencyDivisor] ?? '') ??
          d.currencyDivisor,
    );
  }

  Future<void> save(AppSettingsRepository repo) async {
    await repo.set(BarcodeSettingsKeys.standard, standard);
    await repo.set(
      BarcodeSettingsKeys.weightEmbed,
      weightEmbedEnabled ? '1' : '0',
    );
    await repo.set(BarcodeSettingsKeys.embedPattern, embedPattern);
    await repo.set(BarcodeSettingsKeys.weightDivisor, weightDivisor.toString());
    await repo.set(
      BarcodeSettingsKeys.currencyDivisor,
      currencyDivisor.toString(),
    );
  }
}

