import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../l10n/generated/app_localizations.dart';
import '../../services/medicaments_fr_service.dart';
import '../../services/medicaments_fr_cache.dart';
import '../../services/product_repository.dart';
import '../../widgets/glass/glass_background.dart';

/// Result returned when a product is selected from the lookup screen.
class ProductLookupResult {
  final String? barcode;
  final String? name;
  final String? brand;
  final String? category;
  final String? description;
  final String? imageUrl;
  final bool foundOnline;

  const ProductLookupResult({
    this.barcode,
    this.name,
    this.brand,
    this.category,
    this.description,
    this.imageUrl,
    this.foundOnline = false,
  });
}

/// Full-screen product lookup: scan barcode or search by name.
///
/// Searches local DB first, then OpenFoodFacts if not found.
/// Returns [ProductLookupResult] via [Navigator.pop].
class ProductLookupScreen extends StatefulWidget {
  const ProductLookupScreen({
    super.key,
    this.initialBarcode,
    this.initialQuery,
  });

  final String? initialBarcode;
  final String? initialQuery;

  @override
  State<ProductLookupScreen> createState() => _ProductLookupScreenState();
}

class _ProductLookupScreenState extends State<ProductLookupScreen> {
  AppLocalizations get loc => AppLocalizations.of(context)!;
  final _searchCtrl = TextEditingController();
  final _repo = ProductRepository();
  final _meds = MedsFrService.instance;

  bool _isSearching = false;
  bool _scanned = false;
  String? _statusMessage;

  // Local results
  List<Map<String, dynamic>> _localResults = [];

  // Online results
  List<MedsFrProduct> _onlineMedResults = [];
  bool _searchedOnline = false;

  @override
  void initState() {
    super.initState();
    if (widget.initialBarcode != null && widget.initialBarcode!.isNotEmpty) {
      _searchCtrl.text = widget.initialBarcode!;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _lookupBarcode(widget.initialBarcode!);
      });
    } else if (widget.initialQuery != null && widget.initialQuery!.isNotEmpty) {
      _searchCtrl.text = widget.initialQuery!;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _searchByName(widget.initialQuery!);
      });
    }
  }

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  // ── Lookup logic ──────────────────────────────────────────────────────

  Future<void> _lookupBarcode(String barcode) async {
    if (!mounted) return;
    setState(() {
      _isSearching = true;
      _localResults = [];
      _onlineMedResults = [];
      _searchedOnline = false;
      _statusMessage = null;
    });

    // Step 1: Local lookup
    final local = await _repo.findProductByBarcode(barcode);
    if (!mounted) return;

    if (local != null) {
      setState(() {
        _localResults = [local];
        _isSearching = false;
        _statusMessage = loc.olFoundInLocal;
      });
      return;
    }

    // Step 2: Online lookup via French medicine API
    setState(() {
      _statusMessage = loc.olSearchingOnline;
    });

    final med = await _meds.lookupByBarcode(barcode);
    if (!mounted) return;

    if (med != null) {
      setState(() {
        _onlineMedResults = [med];
        _searchedOnline = true;
        _isSearching = false;
        _statusMessage = loc.olOnlineFound;
      });
    } else {
      setState(() {
        _searchedOnline = true;
        _isSearching = false;
        _statusMessage = loc.olOnlineNotFound;
      });
    }
  }

  Future<void> _searchByName(String query) async {
    if (!mounted) return;
    setState(() {
      _isSearching = true;
      _localResults = [];
      _onlineMedResults = [];
      _searchedOnline = false;
      _statusMessage = null;
    });

    // Step 1: Local search
    final local = await _repo.searchProducts(query, limit: 50);
    if (!mounted) return;

    if (local.isNotEmpty) {
      setState(() {
        _localResults = local;
        _isSearching = false;
        _statusMessage = loc.olFoundInLocal;
      });
      return;
    }

    // Step 2: Online search via French medicine API
    setState(() {
      _statusMessage = loc.olSearchingOnline;
    });

    final meds = await _meds.searchByName(query, limit: 20);
    if (!mounted) return;

    setState(() {
      _onlineMedResults = meds;
      _searchedOnline = true;
      _isSearching = false;
      _statusMessage =
          meds.isNotEmpty ? loc.olOnlineFound : loc.olOnlineNotFound;
    });
  }

  void _selectLocalProduct(Map<String, dynamic> product) {
    Navigator.pop(
      context,
      ProductLookupResult(
        barcode: product['barcode']?.toString(),
        name: product['name']?.toString(),
        brand: product['supplierName']?.toString(),
        category: product['description']?.toString(),
        foundOnline: false,
      ),
    );
  }

  void _selectOnlineProduct(MedsFrProduct product) {
    Navigator.pop(
      context,
      ProductLookupResult(
        barcode: product.presentations.isNotEmpty
            ? product.presentations.first.cip13?.toString()
            : product.cis?.toString(),
        name: product.name,
        brand: product.titulaire,
        category: product.formePharmaceutique,
        description: product.activeSubstances,
        foundOnline: true,
      ),
    );
  }

  // ── UI ────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final bg = Theme.of(context).brightness == Brightness.dark
        ? const Color(0xFF0F172A)
        : const Color(0xFFF8FAFC);

    return Directionality(
      textDirection: Directionality.of(context),
      child: Scaffold(
        backgroundColor: bg,
        appBar: AppBar(
          backgroundColor: const Color(0xFF1E293B),
          foregroundColor: Colors.white,
          title: Text(loc.olTitle),
          actions: [
            IconButton(
              icon: const Icon(Icons.qr_code_scanner, size: 22),
              tooltip: loc.apScanProductBarcode,
              onPressed: _openScanner,
            ),
          ],
        ),
        body: Column(
          children: [
            // Search bar
            _buildSearchBar(),
            // Status message
            if (_statusMessage != null) _buildStatusBanner(),
            // Results
            Expanded(child: _buildResults()),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      color: const Color(0xFF1E293B),
      child: TextField(
        controller: _searchCtrl,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: loc.olScanHint,
          hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.5)),
          prefixIcon:
              const Icon(Icons.search, color: Colors.white70),
          suffixIcon: _searchCtrl.text.isNotEmpty
              ? IconButton(
                  icon: const Icon(Icons.clear, color: Colors.white70),
                  onPressed: () {
                    _searchCtrl.clear();
                    setState(() {
                      _localResults = [];
                      _onlineMedResults = [];
                      _searchedOnline = false;
                      _statusMessage = null;
                    });
                  },
                )
              : null,
          filled: true,
          fillColor: Colors.white.withValues(alpha: 0.1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        textInputAction: TextInputAction.search,
        onSubmitted: (value) {
          final v = value.trim();
          if (v.isEmpty) return;
          // If it looks like a barcode (all digits, 8-14 chars), do barcode lookup
          if (RegExp(r'^\d{8,14}$').hasMatch(v)) {
            _lookupBarcode(v);
          } else {
            _searchByName(v);
          }
        },
        onChanged: (_) => setState(() {}),
      ),
    );
  }

  Widget _buildStatusBanner() {
    final isOnline = _searchedOnline;
    final hasResults =
        _localResults.isNotEmpty || _onlineMedResults.isNotEmpty;
    final color = hasResults
        ? Colors.green.shade700
        : isOnline
            ? Colors.orange.shade700
            : Colors.blue.shade700;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: color.withValues(alpha: 0.15),
      child: Row(
        children: [
          Icon(
            hasResults
                ? Icons.check_circle_outline
                : isOnline
                    ? Icons.info_outline
                    : Icons.search,
            size: 18,
            color: color,
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              _statusMessage ?? '',
              style: TextStyle(color: color, fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResults() {
    if (_isSearching) {
      return const Center(child: CircularProgressIndicator());
    }

    final hasAnyResults =
        _localResults.isNotEmpty || _onlineMedResults.isNotEmpty;

    if (!hasAnyResults && !_searchedOnline) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.qr_code_scanner,
                size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text(
              loc.olScanHint,
              style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
            ),
          ],
        ),
      );
    }

    if (!hasAnyResults && _searchedOnline) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.search_off, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text(
              loc.olNoResults,
              style: TextStyle(color: Colors.grey.shade500, fontSize: 15),
            ),
          ],
        ),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Local results
        if (_localResults.isNotEmpty) ...[
          _sectionHeader(loc.olFoundInLocal, Icons.storage, Colors.green),
          const SizedBox(height: 8),
          ..._localResults.map(_buildLocalTile),
          const SizedBox(height: 16),
        ],
        // Online results (medicines)
        if (_onlineMedResults.isNotEmpty) ...[
          _sectionHeader(loc.olOnlineFound, Icons.cloud_outlined, Colors.blue),
          const SizedBox(height: 8),
          ..._onlineMedResults.map(_buildMedsTile),
        ],
      ],
    );
  }

  Widget _sectionHeader(String text, IconData icon, Color color) {
    return Row(
      children: [
        Icon(icon, size: 18, color: color),
        const SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildLocalTile(Map<String, dynamic> product) {
    final name = product['name']?.toString() ?? '';
    final barcode = product['barcode']?.toString() ?? '';
    final price = (product['sellPrice'] as num?)?.toStringAsFixed(0) ?? '0';
    final qty = (product['qty'] as num?)?.toStringAsFixed(0) ?? '0';

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        onTap: () => _selectLocalProduct(product),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: Colors.green.withValues(alpha: 0.15),
          child: const Icon(Icons.check_circle, color: Colors.green, size: 20),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(
          '$barcode · $qty in stock',
          style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.green.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            '$price',
            style: const TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _buildMedsTile(MedsFrProduct product) {
    final name = product.name ?? 'Unknown';
    final cis = product.cis?.toString() ?? '';
    final desc = product.shortDescription ?? '';
    final subs = product.activeSubstances;
    final presentations = product.presentations;
    final cip13 = presentations.isNotEmpty
        ? presentations.first.cip13?.toString() ?? ''
        : '';
    final prix = presentations.isNotEmpty && presentations.first.prix != null
        ? '${presentations.first.prix!.toStringAsFixed(2)} €'
        : '';

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        onTap: () => _selectOnlineProduct(product),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: Colors.blue.withValues(alpha: 0.15),
          child: const Icon(Icons.medication, color: Colors.blue, size: 20),
        ),
        title: Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (subs.isNotEmpty)
              Text(subs,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 12)),
            if (desc.isNotEmpty)
              Text(desc,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 11)),
            const SizedBox(height: 2),
            Row(
              children: [
                if (cis.isNotEmpty)
                  Text('CIS: $cis',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 10)),
                if (cip13.isNotEmpty) ...[
                  const SizedBox(width: 8),
                  Text('CIP: $cip13',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 10)),
                ],
                if (prix.isNotEmpty) ...[
                  const SizedBox(width: 8),
                  Text(prix,
                      style: const TextStyle(color: Colors.green, fontSize: 10, fontWeight: FontWeight.bold)),
                ],
              ],
            ),
          ],
        ),
        trailing: ElevatedButton(
          onPressed: () => _selectOnlineProduct(product),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2563EB),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            minimumSize: Size.zero,
          ),
          child: Text(loc.olUseThisProduct, style: const TextStyle(fontSize: 12)),
        ),
      ),
    );
  }

  // ── Barcode scanner ───────────────────────────────────────────────────

  void _openScanner() {
    Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => _BarcodeScanPage(
          onScanned: (code) {
            Navigator.pop(context, true);
            _searchCtrl.text = code;
            _lookupBarcode(code);
          },
        ),
      ),
    );
  }
}

// ── Minimal barcode scanner page ────────────────────────────────────────

class _BarcodeScanPage extends StatefulWidget {
  const _BarcodeScanPage({required this.onScanned});
  final void Function(String code) onScanned;

  @override
  State<_BarcodeScanPage> createState() => _BarcodeScanPageState();
}

class _BarcodeScanPageState extends State<_BarcodeScanPage> {
  bool _handled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: const Text('Scan'),
      ),
      body: MobileScanner(
        onDetect: (capture) {
          if (_handled) return;
          final code = capture.barcodes.firstOrNull?.rawValue;
          if (code == null || code.isEmpty) return;
          _handled = true;
          widget.onScanned(code);
        },
      ),
    );
  }
}
