import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import '../../l10n/generated/app_localizations.dart';
import '../../providers/product_provider.dart';
import '../../services/app_settings_repository.dart';
import '../../services/product_repository.dart';
import '../../utils/app_logger.dart';
import '../../widgets/glass/glass_background.dart';

/// Internal parsed row.
class _ParsedRow {
  final int rowNumber;
  final String name;
  final String? barcode;
  final double buyPrice;
  final double sellPrice;
  final double qty;
  final double lowStockThreshold;
  final String? categoryName;
  final String? description;
  final String? supplierName;
  final double taxPercent;
  final String? saleUnit;
  final String? expiryDate;
  final List<String> errors;

  const _ParsedRow({
    required this.rowNumber,
    required this.name,
    this.barcode,
    required this.buyPrice,
    required this.sellPrice,
    required this.qty,
    required this.lowStockThreshold,
    this.categoryName,
    this.description,
    this.supplierName,
    this.taxPercent = 0,
    this.saleUnit,
    this.expiryDate,
    this.errors = const [],
  });

  bool get isValid => errors.isEmpty;
}

class BulkImportScreen extends StatefulWidget {
  const BulkImportScreen({super.key});

  @override
  State<BulkImportScreen> createState() => _BulkImportScreenState();
}

class _BulkImportScreenState extends State<BulkImportScreen> {
  /// لا يوجد `Provider<ProductRepository>` في شجرة الـ providers — كل الشاشات
  /// في هذا المشروع تُنشئ النسخة مباشرة (انظر add_product_screen وغيره).
  final ProductRepository _productRepo = ProductRepository();

  List<_ParsedRow>? _rows;
  bool _importing = false;
  int _imported = 0;
  int _failed = 0;
  int _total = 0;
  String? _fileName;

  /// CSV column mapping: header text → index.
  Map<String, int> _headerMap = {};

  // ── Template download ────────────────────────────────────────────────────

  Future<void> _downloadTemplate() async {
    final loc = AppLocalizations.of(context)!;
    final csv = Csv().encode([
      [
        loc.bulkImportColName,
        loc.bulkImportColBarcode,
        loc.bulkImportColBuyPrice,
        loc.bulkImportColSellPrice,
        loc.bulkImportColQty,
        loc.bulkImportColCategory,
        loc.bulkImportColLowStock,
        loc.bulkImportColDescription,
        loc.bulkImportColSupplier,
        loc.bulkImportColTaxPercent,
        loc.bulkImportColSaleUnit,
        loc.bulkImportColExpiry,
      ],
      [
        loc.bulkImportSampleName,
        loc.bulkImportSampleBarcode,
        loc.bulkImportSampleBuy,
        loc.bulkImportSampleSell,
        loc.bulkImportSampleQty,
        loc.bulkImportSampleCategory,
        loc.bulkImportSampleLowStock,
        loc.bulkImportSampleDesc,
        loc.bulkImportSampleSupplier,
        loc.bulkImportSampleTax,
        loc.bulkImportSampleUnit,
        loc.bulkImportSampleExpiry,
      ],
    ]);

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/products_template.csv');
    await file.writeAsString(csv);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${loc.bulkImportTemplate}: ${file.path}')),
      );
    }
  }

  // ── Pick CSV file ────────────────────────────────────────────────────────

Future<void> _pickFile() async {
    final loc = AppLocalizations.of(context)!;
    
    // Returns List<PlatformFile>? directly in your package version
    final result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
    );
    
    // Cancelled picker returns an empty list (non-nullable in file_picker 12).
    if (result.isEmpty) return;

    // Get the first file directly from 'result'
    final file = result.first;

    // Read via the cross-platform API: on web, file.path is always null
    // (blob: URI), so File(path) must not be the only option.
    String content;
    try {
      final bytes = await file.readAsBytes();
      content = utf8.decode(bytes, allowMalformed: true);
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(loc.bulkImportNoFile)),
        );
      }
      return;
    }
    // Strip a UTF-8 BOM if present (Excel often adds one) so the first
    // header still matches.
    if (content.startsWith('\uFEFF')) content = content.substring(1);

    final rows = Csv().decode(content);
    if (rows.length < 2) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(loc.bulkImportInvalidFormat)),
        );
      }
      return;
    }

    // Build header map (lowercase).
    final headers = rows[0].map((e) => e.toString().trim()).toList();
    _headerMap = {};
    for (var i = 0; i < headers.length; i++) {
      final h = headers[i].toLowerCase();
      if (h.isNotEmpty) _headerMap[h] = i;
    }

    // Parse data rows.
    final parsed = <_ParsedRow>[];
    for (var i = 1; i < rows.length; i++) {
      final row = rows[i];
      if (row.every((c) => c.toString().trim().isEmpty)) continue;
      parsed.add(_parseRow(row, i + 1, loc));
    }

    setState(() {
      _rows = parsed;
      _fileName = file.name;
      _imported = 0;
      _failed = 0;
      _total = 0;
    });
  }

  /// Try to find a column by localized name, then by English fallback.
  int? _ci(AppLocalizations loc, String locKey, String fallback) {
    return _headerMap[locKey.toLowerCase()] ?? _headerMap[fallback.toLowerCase()];
  }

  String _cell(List<dynamic> row, int? idx) =>
      (idx != null && idx < row.length) ? row[idx].toString().trim() : '';

  _ParsedRow _parseRow(List<dynamic> row, int rowNum, AppLocalizations loc) {
    final errors = <String>[];

    // Name (required).
    final name = _cell(row, _ci(loc, loc.bulkImportColName, 'name'));
    if (name.isEmpty) errors.add(loc.bulkImportRequiredField);

    // Barcode.
    final barcode = _cell(row, _ci(loc, loc.bulkImportColBarcode, 'barcode'));

    // Buy price (required).
    final buyStr = _cell(row, _ci(loc, loc.bulkImportColBuyPrice, 'buy price'));
    final buyPrice = double.tryParse(buyStr.replaceAll(',', ''));
    if (buyStr.isNotEmpty && buyPrice == null) {
      errors.add('${loc.bulkImportColBuyPrice}: ${loc.bulkImportInvalidNumber}');
    }

    // Sell price (required).
    final sellStr = _cell(row, _ci(loc, loc.bulkImportColSellPrice, 'sell price'));
    final sellPrice = double.tryParse(sellStr.replaceAll(',', ''));
    if (sellStr.isNotEmpty && sellPrice == null) {
      errors.add('${loc.bulkImportColSellPrice}: ${loc.bulkImportInvalidNumber}');
    }

    // Quantity (required).
    final qtyStr = _cell(row, _ci(loc, loc.bulkImportColQty, 'quantity'));
    final qty = double.tryParse(qtyStr.replaceAll(',', ''));
    if (qtyStr.isNotEmpty && qty == null) {
      errors.add('${loc.bulkImportColQty}: ${loc.bulkImportInvalidNumber}');
    }

    // Low stock threshold.
    final lowStr = _cell(row, _ci(loc, loc.bulkImportColLowStock, 'low stock'));
    final lowStock = double.tryParse(lowStr.replaceAll(',', '')) ?? 5;

    // Category.
    final categoryName = _cell(row, _ci(loc, loc.bulkImportColCategory, 'category'));

    // Description.
    final description = _cell(row, _ci(loc, loc.bulkImportColDescription, 'description'));

    // Supplier.
    final supplier = _cell(row, _ci(loc, loc.bulkImportColSupplier, 'supplier'));

    // Tax %.
    final taxStr = _cell(row, _ci(loc, loc.bulkImportColTaxPercent, 'tax'));
    final tax = double.tryParse(taxStr) ?? 0;

    // Sale unit.
    final unit = _cell(row, _ci(loc, loc.bulkImportColSaleUnit, 'unit'));

    // Expiry date (dd/MM/yyyy or yyyy-MM-dd → stored as ISO yyyy-MM-dd).
    String? expiryIso;
    final expStr = _cell(row, _ci(loc, loc.bulkImportColExpiry, 'expiry date'));
    if (expStr.isNotEmpty) {
      expiryIso = _toIsoDate(expStr);
      if (expiryIso == null) {
        errors.add('${loc.bulkImportColExpiry}: ${loc.bulkImportInvalidDate}');
      }
    }

    return _ParsedRow(
      rowNumber: rowNum,
      name: name,
      barcode: barcode.isNotEmpty ? barcode : null,
      buyPrice: buyPrice ?? 0,
      sellPrice: sellPrice ?? 0,
      qty: qty ?? 0,
      lowStockThreshold: lowStock,
      categoryName: categoryName.isNotEmpty ? categoryName : null,
      description: description.isNotEmpty ? description : null,
      supplierName: supplier.isNotEmpty ? supplier : null,
      taxPercent: tax,
      saleUnit: unit.isNotEmpty ? unit : null,
      expiryDate: expiryIso,
      errors: errors,
    );
  }

  /// Parses `dd/MM/yyyy` or `yyyy-MM-dd` into ISO `yyyy-MM-dd`; null if invalid.
  String? _toIsoDate(String raw) {
    final s = raw.trim();
    final fwd = s.split('/');
    if (fwd.length == 3) {
      final d = int.tryParse(fwd[0]);
      final m = int.tryParse(fwd[1]);
      final y = int.tryParse(fwd[2]);
      if (d == null || m == null || y == null) return null;
      if (d < 1 || d > 31 || m < 1 || m > 12 || y < 1900 || y > 2200) {
        return null;
      }
      return '${y.toString().padLeft(4, '0')}-${m.toString().padLeft(2, '0')}-${d.toString().padLeft(2, '0')}';
    }
    final dash = s.split('-');
    if (dash.length == 3) {
      final y = int.tryParse(dash[0]);
      final m = int.tryParse(dash[1]);
      final d = int.tryParse(dash[2]);
      if (d == null || m == null || y == null) return null;
      if (d < 1 || d > 31 || m < 1 || m > 12 || y < 1900 || y > 2200) {
        return null;
      }
      return '${y.toString().padLeft(4, '0')}-${m.toString().padLeft(2, '0')}-${d.toString().padLeft(2, '0')}';
    }
    return null;
  }

  // ── Import ───────────────────────────────────────────────────────────────

  Future<void> _importAll() async {
    if (_rows == null) return;
    final valid = _rows!.where((r) => r.isValid).toList();
    if (valid.isEmpty) return;

    setState(() {
      _importing = true;
      _total = valid.length;
      _imported = 0;
      _failed = 0;
    });

    var hardFailure = false;
    Object? importError;
    try {
      final productRepo = _productRepo;

      // Resolve default warehouse from settings.
      final settings = AppSettingsRepository.instance;
      final defWhStr = await settings.get('default_warehouse_id');
      final defaultWarehouse = int.tryParse(defWhStr ?? '');

      // معاملة واحدة لكل الملف + مزامنة واحدة بعد الانتهاء — أسرع
      // بكثير من insert لكل صف مع جدولة مزامنة بعد كل صف.
      final result = await productRepo.importProductsBulk(
        [
          for (final row in valid)
            BulkImportProductRow(
              name: row.name,
              barcode: row.barcode,
              categoryName: row.categoryName,
              buyPrice: row.buyPrice,
              sellPrice: row.sellPrice,
              qty: row.qty,
              lowStockThreshold: row.lowStockThreshold,
              description: row.description,
              supplierName: row.supplierName,
              taxPercent: row.taxPercent,
              saleUnit: row.saleUnit,
              expiryDate: row.expiryDate,
            ),
        ],
        warehouseId: defaultWarehouse,
        onProgress: (imported, failed) {
          _imported = imported;
          _failed = failed;
          if (mounted) setState(() {});
        },
      );
      _imported = result.imported;
      _failed = result.failed;
    } catch (e, st) {
      hardFailure = true;
      importError = e;
      AppLogger.error('BulkImport', 'importProductsBulk failed', e, st);
    } finally {
      // يضمن توقف مؤشر التحميل دائمًا حتى لو فشل الاستيراد أو أُغلقت الشاشة.
      if (mounted) setState(() => _importing = false);
    }

    if (!mounted) return;
    final loc = AppLocalizations.of(context)!;
    if (hardFailure) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            importError == null
                ? loc.bulkImportFailed
                : '${loc.bulkImportFailed}: $importError',
          ),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 10),
        ),
      );
      return;
    }

    final msg = _failed == 0
        ? loc.bulkImportSuccess
        : loc.bulkImportPartial(_failed, _imported, _total);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: _failed == 0 ? Colors.green : Colors.orange,
      ),
    );

    try {
      await context.read<ProductProvider>().loadProducts();
    } catch (_) {
      // فشل تحديث القائمة لا يُفشل الاستيراد.
    }
  }

  // ── Build ────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(loc.bulkImportTitle),
      ),
      body: GlassBackground(
        backgroundImage: const AssetImage('assets/images/splash_bg.png'),
        child: _rows == null
            ? _buildPicker(loc, cs)
            : _buildPreview(loc, cs),
      ),
    );
  }

  Widget _buildPicker(AppLocalizations loc, ColorScheme cs) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.upload_file_rounded,
              size: 64,
              color: cs.primary,
            ),
            const SizedBox(height: 16),
            Text(
              loc.bulkImportSubtitle,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            _ActionCard(
              icon: Icons.description_outlined,
              title: loc.bulkImportTemplate,
              subtitle: loc.bulkImportTemplateDesc,
              onTap: _downloadTemplate,
            ),
            const SizedBox(height: 16),
            _ActionCard(
              icon: Icons.file_upload_outlined,
              title: loc.bulkImportPickFile,
              subtitle: loc.bulkImportPickFileDesc,
              onTap: _pickFile,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPreview(AppLocalizations loc, ColorScheme cs) {
    final valid = _rows!.where((r) => r.isValid).toList();
    final errors = _rows!.where((r) => !r.isValid).toList();

    return Column(
      children: [
        // Header info
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            children: [
              Icon(Icons.info_outline, color: cs.primary, size: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loc.bulkImportRowsFound(_rows!.length),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    if (errors.isNotEmpty)
                      Text(
                        loc.bulkImportErrorsFound(errors.length),
                        style: TextStyle(color: cs.error, fontSize: 13),
                      ),
                  ],
                ),
              ),
              if (_fileName != null)
                Text(
                  _fileName!,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 12,
                  ),
                ),
            ],
          ),
        ),

        // Error list
        if (errors.isNotEmpty)
          Container(
            constraints: const BoxConstraints(maxHeight: 120),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: errors.take(10).length,
              itemBuilder: (_, i) {
                final r = errors[i];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(
                    loc.bulkImportRowError(r.errors.join(', '), r.rowNumber),
                    style: TextStyle(color: cs.error, fontSize: 12),
                  ),
                );
              },
            ),
          ),

        // Preview label
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text(
            loc.bulkImportPreview,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),

        // Preview rows
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: valid.take(20).length,
            itemBuilder: (_, i) {
              final r = valid[i];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  title: Text(
                    r.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  subtitle: Text(
                    '${r.buyPrice.toStringAsFixed(0)} → ${r.sellPrice.toStringAsFixed(0)} Fdj  •  Qty: ${r.qty.toStringAsFixed(0)}${r.barcode != null ? '  •  ${r.barcode}' : ''}',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  trailing: Icon(Icons.check_circle_outline, color: cs.primary, size: 20),
                ),
              );
            },
          ),
        ),

        // Action buttons
        Container(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: _importing ? null : () => setState(() => _rows = null),
                  child: Text(loc.bulkImportBackToImport),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: FilledButton.icon(
                  onPressed: _importing || valid.isEmpty ? null : _importAll,
                  icon: _importing
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                      : const Icon(Icons.download_done),
                  label: Text(
                    _importing
                        ? '${loc.bulkImportImporting} $_imported / $_total'
                        : loc.bulkImportImportAll,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ActionCard extends StatelessWidget {
  const _ActionCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: cs.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: cs.primary),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_right, color: cs.onSurfaceVariant),
            ],
          ),
        ),
      ),
    );
  }
}
