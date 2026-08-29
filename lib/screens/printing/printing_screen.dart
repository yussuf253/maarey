import 'package:flutter/material.dart';

import '../../l10n/generated/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../models/invoice.dart';
import '../../models/print_settings_data.dart';
import '../../providers/print_settings_provider.dart';
import '../../theme/design_tokens.dart';
import '../../utils/sale_receipt_pdf.dart';
import '../inventory/barcode_settings_screen.dart';

/// مركز الطباعة — إعدادات مرتبطة بقاعدة البيانات [print_settings] وإيصال البيع.
class PrintingScreen extends StatefulWidget {
  const PrintingScreen({super.key});

  @override
  State<PrintingScreen> createState() => _PrintingScreenState();
}

class _PrintingScreenState extends State<PrintingScreen> {
  late PrintPaperFormat _paper;
  late bool _showBarcode;
  late bool _showQr;
  late bool _showBuyerAddressQr;
  late TextEditingController _storeTitleCtrl;
  late TextEditingController _footerCtrl;
  bool _dirty = false;

  @override
  void initState() {
    super.initState();
    final p = context.read<PrintSettingsProvider>().data;
    _paper = p.paperFormat;
    _showBarcode = p.receiptShowBarcode;
    _showQr = p.receiptShowQr;
    _showBuyerAddressQr = p.receiptShowBuyerAddressQr;
    _storeTitleCtrl = TextEditingController(text: p.storeTitleLine);
    _footerCtrl = TextEditingController(text: p.footerExtra);
  }

  @override
  void dispose() {
    _storeTitleCtrl.dispose();
    _footerCtrl.dispose();
    super.dispose();
  }

  PrintSettingsData _collect() {
    return PrintSettingsData(
      paperFormat: _paper,
      receiptShowBarcode: _showBarcode,
      receiptShowQr: _showQr,
      receiptShowBuyerAddressQr: _showBuyerAddressQr,
      storeTitleLine: _storeTitleCtrl.text.trim(),
      footerExtra: _footerCtrl.text.trim(),
    );
  }

  Future<void> _save() async {
    final nav = ScaffoldMessenger.of(context);
    try {
      await context.read<PrintSettingsProvider>().save(_collect());
      if (!mounted) return;
      setState(() => _dirty = false);
      nav.showSnackBar(
        const SnackBar(
          content: Text('تم حفظ إعدادات الطباعة'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    } catch (e) {
      if (mounted) {
        nav.showSnackBar(SnackBar(content: Text('تعذر الحفظ: $e')));
      }
    }
  }

  Future<void> _previewSample() async {
    final settings = _collect();
    final sample = Invoice(
      customerName: AppLocalizations.of(context)!.testCustomerName,
      date: DateTime.now(),
      type: InvoiceType.cash,
      items: [
        InvoiceItem(
          productName: AppLocalizations.of(context)!.testProductName,
          quantity: 2,
          price: 15000,
          total: 30000,
          productId: null,
        ),
      ],
      discount: 0,
      tax: 0,
      advancePayment: 0,
      total: 30000,
      createdByUserName: AppLocalizations.of(context)!.testEmployee,
      discountPercent: 0,
      deliveryAddress: settings.receiptShowBuyerAddressQr
          ? AppLocalizations.of(context)!.testAddress
          : null,
    );
    await SaleReceiptPdf.presentReceipt(
      context,
      invoice: sample,
      subtotalBeforeDiscount: 30000,
      printSettings: settings,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.printingAndDocsTitle),
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
          elevation: 0,
          actions: [
            TextButton.icon(
              onPressed: _dirty ? _save : null,
              icon: Icon(Icons.save_rounded, color: cs.onPrimary, size: 20),
              label: Text(AppLocalizations.of(context)!.saveButton, style: TextStyle(color: cs.onPrimary)),
            ),
          ],
        ),
        body: Consumer<PrintSettingsProvider>(
          builder: (context, prov, _) {
            if (!prov.isReady) {
              return const Center(child: CircularProgressIndicator());
            }
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _HeroCard(),
                SizedBox(height: 14),
                _SectionTitle(icon: Icons.description_outlined, title: AppLocalizations.of(context)!.salesReceiptSection),
                SizedBox(height: 8),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: AppShape.none,
                    side: BorderSide(color: cs.outline),
                  ),
                  color: cs.surface,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.defaultPaperSize,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: cs.onSurface,
                          ),
                        ),
                        SizedBox(height: 8),
                        DropdownButtonFormField<PrintPaperFormat>(
                          value: _paper,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: AppShape.none),
                            isDense: true,
                          ),
                          items: [
                            DropdownMenuItem(
                              value: PrintPaperFormat.thermal58,
                              child: Text(AppLocalizations.of(context)!.thermal58mm),
                            ),
                            DropdownMenuItem(
                              value: PrintPaperFormat.thermal80,
                              child: Text(AppLocalizations.of(context)!.thermal80mm),
                            ),
                            DropdownMenuItem(
                              value: PrintPaperFormat.a4,
                              child: Text('A4'),
                            ),
                          ],
                          onChanged: (v) {
                            if (v == null) return;
                            setState(() {
                              _paper = v;
                              _dirty = true;
                            });
                          },
                        ),
                        SizedBox(height: 14),
                        SwitchListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(AppLocalizations.of(context)!.showTransactionBarcodeTitle),
                          subtitle: Text(
                            AppLocalizations.of(context)!.transactionBarcodeDesc,
                            style: TextStyle(fontSize: 12),
                          ),
                          value: _showBarcode,
                          activeThumbColor: cs.primary,
                          onChanged: (v) =>
                              setState(() {
                                _showBarcode = v;
                                _dirty = true;
                              }),
                        ),
                        SwitchListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(AppLocalizations.of(context)!.showQrCodeTitle),
                          subtitle: Text(
                            AppLocalizations.of(context)!.qrCodeDesc,
                            style: TextStyle(fontSize: 12),
                          ),
                          value: _showQr,
                          activeThumbColor: cs.primary,
                          onChanged: (v) =>
                              setState(() {
                                _showQr = v;
                                _dirty = true;
                              }),
                        ),
                        SwitchListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(AppLocalizations.of(context)!.qrBuyerAddressTitle),
                          subtitle: Text(
                            AppLocalizations.of(context)!.qrBuyerAddressDesc,
                            style: TextStyle(fontSize: 12),
                          ),
                          value: _showBuyerAddressQr,
                          activeThumbColor: cs.primary,
                          onChanged: (v) =>
                              setState(() {
                                _showBuyerAddressQr = v;
                                _dirty = true;
                              }),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          controller: _storeTitleCtrl,
                          onChanged: (_) => setState(() => _dirty = true),
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.headerLineLabel,
                            border: OutlineInputBorder(borderRadius: AppShape.none),
                          ),
                        ),
                        SizedBox(height: 12),
                        TextField(
                          controller: _footerCtrl,
                          maxLines: 3,
                          onChanged: (_) => setState(() => _dirty = true),
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.footerLineLabel,
                            alignLabelWithHint: true,
                            border: OutlineInputBorder(borderRadius: AppShape.none),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                _SectionTitle(icon: Icons.link_rounded, title: AppLocalizations.of(context)!.barcodeLabelsSection),
                SizedBox(height: 8),
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: AppShape.none,
                    side: BorderSide(color: cs.outline),
                  ),
                  color: cs.surface,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.qr_code_2_rounded,
                            color: cs.secondary),
                        title: Text(AppLocalizations.of(context)!.barcodeLabelsSection),
                        subtitle: Text(
                            AppLocalizations.of(context)!.barcodeSettingsDesc,
                          style: TextStyle(fontSize: 12),
                        ),
                        trailing: const Icon(Icons.chevron_left, size: 20),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => const BarcodeSettingsScreen(),
                          ),
                        ),
                      ),
                      const Divider(height: 1),
                      ListTile(
                        leading: Icon(Icons.store_rounded,
                            color: cs.primary),
                        title: Text(AppLocalizations.of(context)!.storeDataTitle),
                        subtitle: Text(
                            AppLocalizations.of(context)!.storeDataDesc,
                          style: TextStyle(fontSize: 12),
                        ),
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                AppLocalizations.of(context)!.storeDataHint,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                FilledButton.icon(
                  onPressed: _previewSample,
                  icon: const Icon(Icons.preview_outlined),
                  label: Text(AppLocalizations.of(context)!.previewReceiptButton),
                  style: FilledButton.styleFrom(
                    backgroundColor: cs.secondary,
                    foregroundColor: cs.onSecondary,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
                SizedBox(height: 12),
                OutlinedButton.icon(
                  onPressed: _save,
                  icon: const Icon(Icons.save_outlined),
                  label: Text(AppLocalizations.of(context)!.saveSettingsButton),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: cs.primary,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'البيانات تُخزَّن في جدول print_settings وتُطبَّق تلقائياً عند طباعة إيصال البيع بعد كل عملية.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: cs.onSurfaceVariant,
                    height: 1.4,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _HeroCard extends StatelessWidget {
  _HeroCard();

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final onHero = cs.onPrimary;
    final deep = Color.lerp(cs.primary, Colors.black, 0.22)!;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [cs.primary, deep],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: AppShape.none,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: onHero.withValues(alpha: 0.12),
              borderRadius: AppShape.none,
            ),
            child: Icon(Icons.print_rounded, color: onHero, size: 36),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.professionalPrintCenter,
                  style: TextStyle(
                    color: onHero,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  AppLocalizations.of(context)!.printCenterDesc,
                  style: TextStyle(
                    color: onHero.withValues(alpha: 0.88),
                    fontSize: 13,
                    height: 1.35,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  _SectionTitle({required this.icon, required this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Row(
      children: [
        Icon(icon, size: 20, color: cs.secondary),
        SizedBox(width: 8),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: cs.primary,
          ),
        ),
      ],
    );
  }
}
