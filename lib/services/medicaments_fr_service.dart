import 'dart:convert';

import 'package:http/http.dart' as http;

import 'medicaments_fr_cache.dart';

/// Result from the French medicine API.
class MedsFrProduct {
  final int? cis;
  final String? name;
  final String? formePharmaceutique;
  final String? titulaire;
  final String? dateAMM;
  final String? etatComercialisation;
  final List<String> voiesAdministration;
  final List<MedsFrComposition> composition;
  final List<MedsFrPresentation> presentations;
  final List<String>? conditions;

  const MedsFrProduct({
    this.cis,
    this.name,
    this.formePharmaceutique,
    this.titulaire,
    this.dateAMM,
    this.etatComercialisation,
    this.voiesAdministration = const [],
    this.composition = const [],
    this.presentations = const [],
    this.conditions,
  });

  factory MedsFrProduct.fromJson(Map<String, dynamic> json) {
    return MedsFrProduct(
      cis: json['cis'] as int?,
      name: json['elementPharmaceutique']?.toString(),
      formePharmaceutique: json['formePharmaceutique']?.toString(),
      titulaire: json['titulaire']?.toString(),
      dateAMM: json['dateAMM']?.toString(),
      etatComercialisation: json['etatComercialisation']?.toString(),
      voiesAdministration: (json['voiesAdministration'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          const [],
      composition: (json['composition'] as List<dynamic>?)
              ?.map((e) => MedsFrComposition.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      presentations: (json['presentation'] as List<dynamic>?)
              ?.map((e) => MedsFrPresentation.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => e.toString())
          .toList(),
    );
  }

  /// Short description: forme pharmaceutique + titulaire.
  String? get shortDescription {
    final parts = <String>[];
    if (formePharmaceutique?.isNotEmpty == true) {
      parts.add(formePharmaceutique!);
    }
    if (titulaire?.isNotEmpty == true) parts.add(titulaire!);
    return parts.isEmpty ? null : parts.join(' · ');
  }

  /// Primary active substance(s).
  String get activeSubstances {
    final subs = composition
        .where((c) => c.natureComposant == 'SA')
        .map((c) => '${c.denominationSubstance} ${c.dosage}')
        .toList();
    return subs.isEmpty ? (name ?? '') : subs.join(' + ');
  }
}

class MedsFrComposition {
  final int? cis;
  final String? elementPharmaceutique;
  final int? codeSubstance;
  final String? denominationSubstance;
  final String? dosage;
  final String? referenceDosage;
  final String? natureComposant;

  const MedsFrComposition({
    this.cis,
    this.elementPharmaceutique,
    this.codeSubstance,
    this.denominationSubstance,
    this.dosage,
    this.referenceDosage,
    this.natureComposant,
  });

  factory MedsFrComposition.fromJson(Map<String, dynamic> json) {
    return MedsFrComposition(
      cis: json['cis'] as int?,
      elementPharmaceutique: json['elementPharmaceutique']?.toString(),
      codeSubstance: json['codeSubstance'] as int?,
      denominationSubstance: json['denominationSubstance']?.toString(),
      dosage: json['dosage']?.toString(),
      referenceDosage: json['referenceDosage']?.toString(),
      natureComposant: json['natureComposant']?.toString(),
    );
  }
}

class MedsFrPresentation {
  final int? cis;
  final int? cip7;
  final int? cip13;
  final String? libelle;
  final String? statusAdministratif;
  final String? etatComercialisation;
  final String? dateDeclaration;
  final String? agreement;
  final String? tauxRemboursement;
  final double? prix;

  const MedsFrPresentation({
    this.cis,
    this.cip7,
    this.cip13,
    this.libelle,
    this.statusAdministratif,
    this.etatComercialisation,
    this.dateDeclaration,
    this.agreement,
    this.tauxRemboursement,
    this.prix,
  });

  factory MedsFrPresentation.fromJson(Map<String, dynamic> json) {
    return MedsFrPresentation(
      cis: json['cis'] as int?,
      cip7: json['cip7'] as int?,
      cip13: json['cip13'] as int?,
      libelle: json['libelle']?.toString(),
      statusAdministratif: json['statusAdministratif']?.toString(),
      etatComercialisation: json['etatComercialisation']?.toString(),
      dateDeclaration: json['dateDeclaration']?.toString(),
      agreement: json['agreement']?.toString(),
      tauxRemboursement: json['tauxRemboursement']?.toString(),
      prix: (json['prix'] as num?)?.toDouble(),
    );
  }
}

/// Service for querying the French medicine API (api-medicaments-fr).
///
/// - Search by name: `GET /v1/medicaments?search={query}`
/// - Lookup by CIS:  `GET /v1/medicaments/{cis}`
/// - Lookup by CIP:  `GET /v1/medicaments?cip={code}`
/// - Presentation:   `GET /v1/presentations/{cip}`
class MedsFrService {
  MedsFrService._();
  static final instance = MedsFrService._();

  static const _baseUrl = 'https://medicaments-api.giygas.dev';
  static const _userAgent = 'NabooStoreManager/1.0 (contact@naboo.app)';

  final http.Client _client = http.Client();

  /// Search medicines by name (partial match, max 250 results).
  Future<List<MedsFrProduct>> searchByName(String query,
      {int limit = 20}) async {
    final trimmed = query.trim();
    if (trimmed.isEmpty) return const [];

    try {
      final url = Uri.parse('$_baseUrl/v1/medicaments').replace(
        queryParameters: {'search': trimmed},
      );
      final response = await _client.get(url, headers: {
        'User-Agent': _userAgent,
        'Accept': 'application/json',
      }).timeout(const Duration(seconds: 10));

      if (response.statusCode != 200) return const [];

      final data = jsonDecode(response.body);
      if (data is! List) return const [];

      return data
          .whereType<Map<String, dynamic>>()
          .take(limit)
          .map(MedsFrProduct.fromJson)
          .toList();
    } catch (_) {
      return const [];
    }
  }

  /// Lookup a medicine by CIS (Code Identifiant de Spécialité).
  Future<MedsFrProduct?> lookupByCis(int cis) async {
    // Check cache first
    final cached = await MedsFrCache.instance.get('cis_$cis');
    if (cached != null) return cached;

    try {
      final url = Uri.parse('$_baseUrl/v1/medicaments/$cis');
      final response = await _client.get(url, headers: {
        'User-Agent': _userAgent,
        'Accept': 'application/json',
      }).timeout(const Duration(seconds: 10));

      if (response.statusCode != 200) return null;

      final data = jsonDecode(response.body);
      if (data is! Map<String, dynamic>) return null;

      final product = MedsFrProduct.fromJson(data);
      // Cache by CIS
      await MedsFrCache.instance.put('cis_$cis', product);
      return product;
    } catch (_) {
      return null;
    }
  }

  /// Lookup a medicine by CIP-13 (barcode).
  ///
  /// First tries cache, then the `?cip=` endpoint, then falls back to presentation lookup.
  Future<MedsFrProduct?> lookupByCip(String cip) async {
    final trimmed = cip.trim();
    if (trimmed.isEmpty) return null;

    // Check cache first
    final cached = await MedsFrCache.instance.get('cip_$trimmed');
    if (cached != null) return cached;

    // Try the cip parameter first
    try {
      final url = Uri.parse('$_baseUrl/v1/medicaments').replace(
        queryParameters: {'cip': trimmed},
      );
      final response = await _client.get(url, headers: {
        'User-Agent': _userAgent,
        'Accept': 'application/json',
      }).timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        if (data is List && data.isNotEmpty) {
          final first = data.first;
          if (first is Map<String, dynamic>) {
            final product = MedsFrProduct.fromJson(first);
            await MedsFrCache.instance.put('cip_$trimmed', product);
            return product;
          }
        }
      }
    } catch (_) {}

    // Fallback: get presentation by CIP, then fetch full medicine by CIS
    try {
      final presUrl = Uri.parse('$_baseUrl/v1/presentations/$trimmed');
      final presResponse = await _client.get(presUrl, headers: {
        'User-Agent': _userAgent,
        'Accept': 'application/json',
      }).timeout(const Duration(seconds: 10));

      if (presResponse.statusCode == 200) {
        final presData = jsonDecode(presResponse.body);
        if (presData is Map<String, dynamic>) {
          final cis = presData['cis'] as int?;
          if (cis != null) {
            final product = await lookupByCis(cis);
            if (product != null) {
              await MedsFrCache.instance.put('cip_$trimmed', product);
            }
            return product;
          }
        }
      }
    } catch (_) {}

    return null;
  }

  /// Lookup a medicine by barcode (auto-detects CIP-13 vs other codes).
  ///
  /// CIP-13 barcodes are 13 digits starting with 34.
  /// Other barcodes are tried as CIS.
  Future<MedsFrProduct?> lookupByBarcode(String barcode) async {
    final trimmed = barcode.trim();
    if (trimmed.isEmpty) return null;

    // CIP-13: 13 digits, typically starting with 34
    if (RegExp(r'^\d{13}$').hasMatch(trimmed)) {
      return lookupByCip(trimmed);
    }

    // Try as CIS (numeric, 8+ digits)
    if (RegExp(r'^\d{8,}$').hasMatch(trimmed)) {
      final cis = int.tryParse(trimmed);
      if (cis != null) {
        return lookupByCis(cis);
      }
    }

    // Try as CIP-7 or other CIP format
    return lookupByCip(trimmed);
  }
}
