import 'dart:convert';

import 'package:http/http.dart' as http;

/// Result from OpenFoodFacts lookup.
class OffProduct {
  final String? barcode;
  final String? productName;
  final String? brands;
  final String? categories;
  final String? imageUrl;
  final String? genericName;
  final String? quantity;
  final String? packaging;
  final String? countries;
  final Map<String, dynamic>? nutriments;
  final String? ingredientsText;

  const OffProduct({
    this.barcode,
    this.productName,
    this.brands,
    this.categories,
    this.imageUrl,
    this.genericName,
    this.quantity,
    this.packaging,
    this.countries,
    this.nutriments,
    this.ingredientsText,
  });

  factory OffProduct.fromJson(Map<String, dynamic> json) {
    return OffProduct(
      barcode: json['code']?.toString(),
      productName: json['product_name']?.toString(),
      brands: json['brands']?.toString(),
      categories: json['categories']?.toString(),
      imageUrl: json['image_url']?.toString(),
      genericName: json['generic_name']?.toString(),
      quantity: json['quantity']?.toString(),
      packaging: json['packaging']?.toString(),
      countries: json['countries']?.toString(),
      nutriments: json['nutriments'] as Map<String, dynamic>?,
      ingredientsText: json['ingredients_text']?.toString(),
    );
  }

  /// Display name: prefer product_name, fallback to generic_name.
  String? get displayName =>
      (productName?.isNotEmpty == true) ? productName : genericName;

  /// Short description combining brand + quantity.
  String? get shortDescription {
    final parts = <String>[];
    if (brands?.isNotEmpty == true) parts.add(brands!);
    if (quantity?.isNotEmpty == true) parts.add(quantity!);
    return parts.isEmpty ? null : parts.join(' · ');
  }
}

/// Service for querying the OpenFoodFacts API.
///
/// - Barcode lookup: `GET /api/v2/product/{barcode}.json`
/// - Name search: `GET /cgi/search.pl?search_terms={query}&json=1&page_size=20`
class OpenFoodFactsService {
  OpenFoodFactsService._();
  static final instance = OpenFoodFactsService._();

  static const _baseUrl = 'https://world.openfoodfacts.org';
  static const _userAgent = 'NabooStoreManager/1.0 (contact@naboo.app)';

  final http.Client _client = http.Client();

  /// Look up a product by barcode (EAN-13, EAN-8, UPC-A, etc.).
  ///
  /// Returns `null` if not found or on error.
  Future<OffProduct?> lookupByBarcode(String barcode) async {
    final trimmed = barcode.trim();
    if (trimmed.isEmpty) return null;

    try {
      final url = Uri.parse('$_baseUrl/api/v2/product/$trimmed.json');
      final response = await _client.get(url, headers: {
        'User-Agent': _userAgent,
        'Accept': 'application/json',
      }).timeout(const Duration(seconds: 10));

      if (response.statusCode != 200) return null;

      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final status = data['status'] ?? 0;
      if (status != 1) return null;

      final product = data['product'] as Map<String, dynamic>?;
      if (product == null) return null;

      product['code'] = trimmed;
      return OffProduct.fromJson(product);
    } catch (_) {
      return null;
    }
  }

  /// Search products by name (partial match).
  ///
  /// Returns up to [limit] results.
  Future<List<OffProduct>> searchByName(String query, {int limit = 20}) async {
    final trimmed = query.trim();
    if (trimmed.isEmpty) return const [];

    try {
      final url = Uri.parse('$_baseUrl/cgi/search.pl').replace(queryParameters: {
        'search_terms': trimmed,
        'json': '1',
        'page_size': limit.toString(),
        'fields': 'code,product_name,brands,categories,image_url,'
            'generic_name,quantity,packaging,countries,ingredients_text',
      });
      final response = await _client.get(url, headers: {
        'User-Agent': _userAgent,
        'Accept': 'application/json',
      }).timeout(const Duration(seconds: 10));

      if (response.statusCode != 200) return const [];

      final data = jsonDecode(response.body) as Map<String, dynamic>;
      final products = data['products'] as List<dynamic>?;
      if (products == null || products.isEmpty) return const [];

      return products
          .whereType<Map<String, dynamic>>()
          .map(OffProduct.fromJson)
          .toList();
    } catch (_) {
      return const [];
    }
  }
}
