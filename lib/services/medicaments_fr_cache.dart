import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'medicaments_fr_service.dart';

/// Local cache for medicine API results.
///
/// Stores up to [maxEntries] recently looked-up medicines in SharedPreferences
/// with a configurable TTL (default 24 hours). Keyed by barcode/CIS string.
class MedsFrCache {
  MedsFrCache._();
  static final instance = MedsFrCache._();

  static const _prefix = 'meds_cache_';
  static const _metaPrefix = 'meds_cache_meta_';
  static const _maxEntries = 200;
  static const _ttl = Duration(hours: 24);

  /// Look up a cached medicine by key (barcode, CIS, or CIP).
  /// Returns `null` if not cached or expired.
  Future<MedsFrProduct?> get(String key) async {
    if (key.isEmpty) return null;
    final prefs = await SharedPreferences.getInstance();
    final metaRaw = prefs.getString('$_metaPrefix$key');
    if (metaRaw == null) return null;

    try {
      final meta = jsonDecode(metaRaw) as Map<String, dynamic>;
      final cachedAt = DateTime.tryParse(meta['cachedAt'] as String? ?? '');
      if (cachedAt == null) return null;
      if (DateTime.now().difference(cachedAt) > _ttl) {
        // Expired — remove
        await prefs.remove('$_prefix$key');
        await prefs.remove('$_metaPrefix$key');
        return null;
      }
    } catch (_) {
      return null;
    }

    final dataRaw = prefs.getString('$_prefix$key');
    if (dataRaw == null) return null;

    try {
      final data = jsonDecode(dataRaw) as Map<String, dynamic>;
      return MedsFrProduct.fromJson(data);
    } catch (_) {
      return null;
    }
  }

  /// Store a medicine result in the cache.
  Future<void> put(String key, MedsFrProduct product) async {
    if (key.isEmpty) return;
    final prefs = await SharedPreferences.getInstance();

    // Store the medicine data
    final jsonData = jsonEncode({
      'cis': product.cis,
      'elementPharmaceutique': product.name,
      'formePharmaceutique': product.formePharmaceutique,
      'titulaire': product.titulaire,
      'dateAMM': product.dateAMM,
      'etatComercialisation': product.etatComercialisation,
      'voiesAdministration': product.voiesAdministration,
      'composition': product.composition
          .map((c) => {
                'cis': c.cis,
                'elementPharmaceutique': c.elementPharmaceutique,
                'codeSubstance': c.codeSubstance,
                'denominationSubstance': c.denominationSubstance,
                'dosage': c.dosage,
                'referenceDosage': c.referenceDosage,
                'natureComposant': c.natureComposant,
              })
          .toList(),
      'presentation': product.presentations
          .map((p) => {
                'cis': p.cis,
                'cip7': p.cip7,
                'cip13': p.cip13,
                'libelle': p.libelle,
                'statusAdministratif': p.statusAdministratif,
                'etatComercialisation': p.etatComercialisation,
                'dateDeclaration': p.dateDeclaration,
                'agreement': p.agreement,
                'tauxRemboursement': p.tauxRemboursement,
                'prix': p.prix,
              })
          .toList(),
      'conditions': product.conditions,
    });

    final metaData = jsonEncode({
      'cachedAt': DateTime.now().toIso8601String(),
    });

    await prefs.setString('$_prefix$key', jsonData);
    await prefs.setString('$_metaPrefix$key', metaData);

    // Evict old entries if we exceed the limit
    _evictIfNeeded(prefs);
  }

  /// Evict the oldest entries if we exceed [_maxEntries].
  Future<void> _evictIfNeeded(SharedPreferences prefs) async {
    final keys = prefs.getKeys().where((k) => k.startsWith(_metaPrefix));
    if (keys.length <= _maxEntries) return;

    // Sort by cachedAt and remove oldest
    final entries = <(String, DateTime)>[];
    for (final k in keys) {
      try {
        final meta = jsonDecode(prefs.getString(k) ?? '{}');
        final cachedAt = DateTime.tryParse(meta['cachedAt'] ?? '');
        if (cachedAt != null) {
          final dataKey = k.replaceFirst(_metaPrefix, _prefix);
          entries.add((dataKey, cachedAt));
        }
      } catch (_) {}
    }

    entries.sort((a, b) => a.$2.compareTo(b.$2));
    final toRemove = entries.length - _maxEntries;
    for (var i = 0; i < toRemove; i++) {
      final dataKey = entries[i].$1;
      await prefs.remove(dataKey);
      await prefs.remove(dataKey.replaceFirst(_prefix, _metaPrefix));
    }
  }

  /// Clear all cached medicine data.
  Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = prefs
        .getKeys()
        .where((k) => k.startsWith(_prefix) || k.startsWith(_metaPrefix))
        .toList();
    for (final k in keys) {
      await prefs.remove(k);
    }
  }
}
