import 'package:flutter/material.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../services/app_settings_repository.dart';
import '../../services/inventory_product_settings.dart';
import '../../services/product_repository.dart';
import 'price_lists_screen.dart';
import 'product_sku_numbering_dialog.dart';
import 'unit_templates_settings_screen.dart';
import 'warehouses_screen.dart';

/// إعدادات المنتجات — أربعة أقسام: تهيئة، تتبع، أذون مخزنية، قيم افتراضية (تخزين في [app_settings]).

class ProductSettingsScreen extends StatefulWidget {
  const ProductSettingsScreen({super.key});

  @override

  State<ProductSettingsScreen> createState() => _ProductSettingsScreenState();
}

class _ProductSettingsScreenState extends State<ProductSettingsScreen> {
  AppLocalizations get _loc => AppLocalizations.of(context)!;

  final _repo = ProductRepository();

  final _settings = AppSettingsRepository.instance;

  bool _loading = true;

  late InventoryProductSettingsData _d;

  final _nextSkuCtrl = TextEditingController();

  final _nextTransferCtrl = TextEditingController();

  final _suggestMarginCtrl = TextEditingController();

  final _minSellPctCtrl = TextEditingController();

  List<Map<String, dynamic>> _warehouses = [];

  List<Map<String, dynamic>> _priceLists = [];

  String _hintProductCode = 'N1-…';

  static const _taxChoices = <String>['معفى', '5', '10', '15', 'مخصص'];

  @override

  void initState() {
    super.initState();

    _load();
  }

  Future<void> _load() async {
    setState(() => _loading = true);

    try {
      _hintProductCode = _repo.defaultProductCodeDisplayHint();

      var d = await InventoryProductSettingsData.load(_settings);

      _warehouses = await _repo.listWarehouses();

      _priceLists = await _repo.listPriceListsForSettings();

      if (d.defaultWarehouseId != null &&

          !_warehouses.any(
            (w) => (w['id'] as num).toInt() == d.defaultWarehouseId,
          )) {
        d = d.copyWith(clearWarehouseId: true);

        await d.save(_settings);
      }

      if (d.defaultPriceListId != null &&

          !_priceLists.any(
            (w) => (w['id'] as num).toInt() == d.defaultPriceListId,
          )) {
        d = d.copyWith(clearPriceListId: true);

        await d.save(_settings);
      }

      _d = d;

      _nextSkuCtrl.text =

          _d.nextSkuText.isNotEmpty ? _d.nextSkuText : _hintProductCode;

      _nextTransferCtrl.text = _d.nextTransferNo;

      _suggestMarginCtrl.text = _fmtSettingNum(_d.suggestedMarginPercent);

      _minSellPctCtrl.text = _fmtSettingNum(_d.minSellPercentOfSell);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _persist() async {
    _d = _d.copyWith(
      nextSkuText: _nextSkuCtrl.text.trim(),
      nextTransferNo: _nextTransferCtrl.text.trim(),
    );

    await _d.save(_settings);
  }

  Future<void> _patch(InventoryProductSettingsData next) async {
    setState(() {
      _d = next.copyWith(
        nextSkuText: _nextSkuCtrl.text.trim(),
        nextTransferNo: _nextTransferCtrl.text.trim(),
      );
    });

    await _d.save(_settings);
  }

  /// أيقونة منع سريعة: إيقاف التعامل بالضريبة في شاشة إضافة المنتج (إخفاء الحقل).

  Widget _addProductTaxRow(ColorScheme cs) {
    final canUse = _d.addShowAdvancedPricing;

    final on = _d.addShowTaxField;

    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: IconButton(
        tooltip: _loc.psTaxToggleTooltip,
        icon: Icon(
          Icons.block_rounded,
          color: canUse && on

              ? cs.error

              : cs.onSurfaceVariant.withValues(alpha: 0.35),
        ),
        onPressed: canUse && on

            ? () => _patch(_d.copyWith(addShowTaxField: false))

            : null,
      ),
      title: Text(_loc.psShowTaxField),
      subtitle: Text(
        _loc.psTaxToggleDesc,
        style: TextStyle(fontSize: 12, height: 1.25),
      ),
      trailing: Switch(
        value: on,
        onChanged: canUse

            ? (v) => _patch(_d.copyWith(addShowTaxField: v))

            : null,
      ),
    );
  }

  /// أيقونة منع سريعة: إيقاف التعامل بالخصم في شاشة إضافة المنتج (إخفاء الحقول).

  Widget _addProductDiscountRow(ColorScheme cs) {
    final canUse = _d.addShowAdvancedPricing;

    final on = _d.addShowDiscountFields;

    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: IconButton(
        tooltip: _loc.psDiscountToggleTooltip,
        icon: Icon(
          Icons.money_off_rounded,
          color: canUse && on

              ? cs.error

              : cs.onSurfaceVariant.withValues(alpha: 0.35),
        ),
        onPressed: canUse && on

            ? () => _patch(_d.copyWith(addShowDiscountFields: false))

            : null,
      ),
      title: Text(_loc.psShowDiscountFields),
      subtitle: Text(
        _loc.psDiscountToggleDesc,
        style: TextStyle(fontSize: 12, height: 1.25),
      ),
      trailing: Switch(
        value: on,
        onChanged: canUse

            ? (v) => _patch(_d.copyWith(addShowDiscountFields: v))

            : null,
      ),
    );
  }

  static String _fmtSettingNum(double v) {
    if ((v - v.round()).abs() < 1e-9) return v.round().toString();

    return v.toString();
  }

  Future<void> _persistMarginSuggestFields() async {
    final m = double.tryParse(
          _suggestMarginCtrl.text.trim().replaceAll(',', '.')) ??

        _d.suggestedMarginPercent;

    final p = double.tryParse(
          _minSellPctCtrl.text.trim().replaceAll(',', '.')) ??

        _d.minSellPercentOfSell;

    final mc = m.clamp(0.0, 500.0);

    final pc = p.clamp(1.0, 100.0);

    await _patch(
      _d.copyWith(
        suggestedMarginPercent: mc,
        minSellPercentOfSell: pc,
      ),
    );

    if (!mounted) return;

    _suggestMarginCtrl.text = _fmtSettingNum(mc);

    _minSellPctCtrl.text = _fmtSettingNum(pc);
  }

  @override

  void dispose() {
    _nextSkuCtrl.dispose();

    _nextTransferCtrl.dispose();

    _suggestMarginCtrl.dispose();

    _minSellPctCtrl.dispose();

    super.dispose();
  }

  Future<void> _openNumberingDialog({required bool forTransfer}) async {
    if (!forTransfer) {
      final result = await showProductSkuNumberingDialog(
        context,
        data: _d,
        hintNextSku: _hintProductCode,
        initialNextNumber: _nextSkuCtrl.text,
      );

      if (result != null && mounted) {
        setState(() => _d = result);

        _nextSkuCtrl.text = result.nextSkuText;

        await _d.save(_settings);
      }

      return;
    }

    final prefixCtrl = TextEditingController(text: _d.transferPrefix);

    if (!mounted) return;

    await showDialog<void>(
      context: context,
      builder: (ctx) => Directionality(
        textDirection: Directionality.of(context),
        child: AlertDialog(
          title: Text(_loc.psTransferSettingsTitle),
          content: TextField(
            controller: prefixCtrl,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              labelText: _loc.psOptionalPrefix,
              border: OutlineInputBorder(),
              hintText: _loc.psExamplePrefix,
            ),
          ),
          actions: [

            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(_loc.psCancel),
            ),
            FilledButton(
              onPressed: () async {
                await _patch(
                  _d.copyWith(transferPrefix: prefixCtrl.text.trim()),
                );

                if (ctx.mounted) Navigator.pop(ctx);
              },
              child: Text(_loc.psSave),
            ),
          ],
        ),
      ),
    );
  }

  @override

  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    final bg = cs.brightness == Brightness.dark

        ? const Color(0xFF121212)

        : const Color(0xFFF0F4F8);

    return Directionality(
      textDirection: Directionality.of(context),
      child: Scaffold(
        backgroundColor: bg,
        appBar: AppBar(
          backgroundColor: const Color(0xFF1E3A5F),
          foregroundColor: Colors.white,
          title: Text(
            _loc.psTitle,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, size: 18),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: _loading

            ? const Center(child: CircularProgressIndicator())

            : DefaultTabController(
                length: 4,
                child: Column(
                  children: [

                    Material(
                      color: cs.surface,
                      child: TabBar(
                        isScrollable: true,
                        labelColor: cs.primary,
                        unselectedLabelColor: cs.onSurfaceVariant,
                        indicatorColor: cs.primary,
                        tabs: [
                          Tab(text: _loc.psTabSetup),
                          Tab(text: _loc.psTabTracking),
                          Tab(text: _loc.psTabVouchers),
                          Tab(text: _loc.psTabDefaults),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [

                          _tabInit(cs),
                          _tabTrack(cs),
                          _tabVouchers(cs),
                          _tabDefaults(cs),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _tabInit(ColorScheme cs) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          _header(
            _loc.psSetupTitle,
            _loc.psSetupDesc,
            cs,
          ),
          const SizedBox(height: 16),
          _sectionCard(
            cs,
            title: _loc.psNextSkuTitle,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Expanded(
                  child: TextField(
                    controller: _nextSkuCtrl,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right,
                    decoration: _outlineDec(_loc.psNextSkuDecoration),
                    onEditingComplete: _persist,
                  ),
                ),
                const SizedBox(width: 8),
                OutlinedButton.icon(
                  onPressed: () => _openNumberingDialog(forTransfer: false),
                  icon: const Icon(Icons.settings_outlined, size: 18),
                  label: Text(_loc.psNumberingSettings),
                ),
              ],
            ),
            footer:

                _loc.psNextSkuHint,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psAdvancedPricingTitle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(_d.advancedPricing ? _loc.psEnabled : _loc.psDisabled),
                  subtitle: Text(
                    _loc.psAdvancedPricingDesc,
                    style: TextStyle(fontSize: 12, height: 1.35),
                  ),
                  value: _d.advancedPricing,
                  onChanged: (v) => _patch(_d.copyWith(advancedPricing: v)),
                ),
                if (_d.advancedPricing) ...[

                  const Divider(height: 1),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [

                        TextField(
                          controller: _suggestMarginCtrl,
                          textAlign: TextAlign.right,
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          decoration: _outlineDec(_loc.psCostMarginDecoration)

                              .copyWith(hintText: _loc.psCostMarginHint),
                          onSubmitted: (_) => _persistMarginSuggestFields(),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          controller: _minSellPctCtrl,
                          textAlign: TextAlign.right,
                          keyboardType: const TextInputType.numberWithOptions(
                            decimal: true,
                          ),
                          decoration: _outlineDec(
                            _loc.psMinSellPriceDesc,
                          ).copyWith(hintText: _loc.psMinSellPriceHint),
                          onSubmitted: (_) => _persistMarginSuggestFields(),
                        ),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: FilledButton.tonal(
                            onPressed: _persistMarginSuggestFields,
                            child: Text(_loc.psSaveSuggestedPrices),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ],
            ),
            footer: _loc.psPricingExample,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psMultiUnitTitle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Row(
                  children: [

                    OutlinedButton.icon(
                      onPressed: () {
                        Navigator.of(context).push<void>(
                          MaterialPageRoute<void>(
                            builder: (_) => const UnitTemplatesSettingsScreen(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.open_in_new_rounded, size: 18),
                      label: Text(_loc.psManageUnits),
                    ),
                    const Spacer(),
                    Switch(
                      value: _d.multiUnitPerItem,
                      onChanged: (v) =>

                          _patch(_d.copyWith(multiUnitPerItem: v)),
                    ),
                    Text(_d.multiUnitPerItem ? _loc.psEnabled : _loc.psDisabled),
                  ],
                ),
              ],
            ),
            footer:

                _loc.psMultiUnitDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psDefaultStockDisplayTitle,
            child: Column(
              children: [

                _unitRadio('base', _loc.psUnitBase,
                    _loc.psUnitBaseDesc),
                _unitRadio('sale', _loc.psUnitSale,
                    _loc.psUnitSaleDesc),
                _unitRadio('purchase', _loc.psUnitPurchase,
                    _loc.psUnitPurchaseDesc),
              ],
            ),
            footer:

                _loc.psStockDisplayDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psBundlesTitle,
            child: SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(_d.bundlesEnabled ? _loc.psBundlesAllowed : _loc.psBundlesNotAllowed),
              value: _d.bundlesEnabled,
              onChanged: (v) => _patch(_d.copyWith(bundlesEnabled: v)),
            ),
            footer:

                _loc.psBundlesDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psAddProductPoliciesTitle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(_loc.psShowAdvancedPricing),
                  subtitle: Text(
                    _loc.psShowAdvancedPricingDesc,
                  ),
                  value: _d.addShowAdvancedPricing,
                  onChanged: (v) =>

                      _patch(_d.copyWith(addShowAdvancedPricing: v)),
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(_loc.psShowBarcodeField),
                  value: _d.addShowBarcodeField,
                  onChanged: (v) {
                    if (!v && _d.addRequireBarcode) {
                      _patch(
                        _d.copyWith(
                          addShowBarcodeField: false,
                          addRequireBarcode: false,
                        ),
                      );

                      return;
                    }

                    _patch(_d.copyWith(addShowBarcodeField: v));
                  },
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(_loc.psBarcodeRequired),
                  value: _d.addRequireBarcode,
                  onChanged: _d.addShowBarcodeField

                      ? (v) => _patch(_d.copyWith(addRequireBarcode: v))

                      : null,
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(_loc.psShowImageField),
                  value: _d.addShowImageField,
                  onChanged: (v) {
                    if (!v && _d.addRequireImage) {
                      _patch(
                        _d.copyWith(
                          addShowImageField: false,
                          addRequireImage: false,
                        ),
                      );

                      return;
                    }

                    _patch(_d.copyWith(addShowImageField: v));
                  },
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(_loc.psImageRequired),
                  value: _d.addRequireImage,
                  onChanged: _d.addShowImageField

                      ? (v) => _patch(_d.copyWith(addRequireImage: v))

                      : null,
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(_loc.psShowExtraFields),
                  subtitle: Text(
                    _loc.psShowExtraFieldsDesc,
                  ),
                  value: _d.addShowExtraFields,
                  onChanged: (v) => _patch(_d.copyWith(addShowExtraFields: v)),
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(_loc.psSupplierRequired),
                  value: _d.addRequireSupplier,
                  onChanged: (v) => _patch(_d.copyWith(addRequireSupplier: v)),
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(_loc.psWarehouseRequired),
                  value: _d.addRequireWarehouse,
                  onChanged: (v) => _patch(_d.copyWith(addRequireWarehouse: v)),
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(_loc.psDefaultTrackingEnabled),
                  subtitle: Text(
                    _loc.psDefaultTrackingDesc,
                  ),
                  value: _d.addDefaultTrackInventory,
                  onChanged: (v) =>

                      _patch(_d.copyWith(addDefaultTrackInventory: v)),
                ),
                _addProductTaxRow(cs),
                _addProductDiscountRow(cs),
              ],
            ),
            footer:

                _loc.psAddProductPoliciesDesc,
          ),
        ],
      ),
    );
  }

  Widget _unitRadio(String value, String title, String sub) {
    final sel = _d.defaultUnitView == value;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () => _patch(_d.copyWith(defaultUnitView: value)),
        borderRadius: BorderRadius.zero,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.zero,
            border: Border.all(
              color: sel ? const Color(0xFF2563EB) : Colors.grey.shade300,
              width: sel ? 2 : 1,
            ),
          ),
          child: RadioListTile<String>(
            contentPadding: EdgeInsets.zero,
            value: value,
            groupValue: _d.defaultUnitView,
            onChanged: (v) {
              if (v != null) _patch(_d.copyWith(defaultUnitView: v));
            },
            title: Text(title, textAlign: TextAlign.right),
            subtitle: Text(sub,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 12, color: Colors.grey.shade600, height: 1.3)),
          ),
        ),
      ),
    );
  }

  Widget _tabTrack(ColorScheme cs) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          _header(
            _loc.psTrackingTitle,
            _loc.psTrackingDesc,
            cs,
          ),
          const SizedBox(height: 16),
          _sectionCard(
            cs,
            title:

                _loc.psSerialBatchExpiryTitle,
            child: SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(_d.trackSerialBatchExpiry ? _loc.psEnabled : _loc.psDisabled),
              value: _d.trackSerialBatchExpiry,
              onChanged: (v) =>

                  _patch(_d.copyWith(trackSerialBatchExpiry: v)),
            ),
            footer:

                _loc.psSerialBatchExpiryDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psNegativeStockTitle,
            child: Column(
              children: [

                _negRadio(
                  'stop_all',
                  _loc.psNegativeStockStop,
                  _loc.psNegativeStockStopDesc,
                ),
                _negRadio(
                  'tracked_only',
                  _loc.psNegativeStockTrackableOnly,
                  _loc.psNegativeStockTrackableDesc,
                ),
              ],
            ),
            footer: _loc.psNegativeStockDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psShowTotalAvailableTitle,
            child: SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(_d.showTotalAndAvailable ? _loc.psEnabled : _loc.psDisabled),
              value: _d.showTotalAndAvailable,
              onChanged: (v) =>

                  _patch(_d.copyWith(showTotalAndAvailable: v)),
            ),
            footer:

                _loc.psShowTotalAvailableDesc,
          ),
        ],
      ),
    );
  }

  Widget _negRadio(String value, String title, String sub) {
    final sel = _d.negativeStockMode == value;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () => _patch(_d.copyWith(negativeStockMode: value)),
        borderRadius: BorderRadius.zero,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.zero,
            border: Border.all(
              color: sel ? const Color(0xFF2563EB) : Colors.grey.shade300,
              width: sel ? 2 : 1,
            ),
          ),
          child: RadioListTile<String>(
            contentPadding: EdgeInsets.zero,
            value: value,
            groupValue: _d.negativeStockMode,
            onChanged: (v) {
              if (v != null) _patch(_d.copyWith(negativeStockMode: v));
            },
            title: Text(title, textAlign: TextAlign.right),
            subtitle: Text(sub,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 12, color: Colors.grey.shade600, height: 1.3)),
          ),
        ),
      ),
    );
  }

  Widget _tabVouchers(ColorScheme cs) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          _header(
            _loc.psVouchersTitle,
            _loc.psVouchersDesc,
            cs,
          ),
          const SizedBox(height: 16),
          _sectionCard(
            cs,
            title: _loc.psInventoryRequestsTitle,
            child: SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(_d.inventoryRequestsEnabled ? _loc.psEnabled : _loc.psDisabled),
              value: _d.inventoryRequestsEnabled,
              onChanged: (v) =>

                  _patch(_d.copyWith(inventoryRequestsEnabled: v)),
            ),
            footer:

                _loc.psInventoryRequestsDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psTransferVoucherNextTitle,
            child: Row(
              children: [

                Expanded(
                  child: TextField(
                    controller: _nextTransferCtrl,
                    textAlign: TextAlign.right,
                    decoration: _outlineDec(_loc.psTransferVoucherNextDecoration),
                    onEditingComplete: _persist,
                  ),
                ),
                const SizedBox(width: 8),
                OutlinedButton.icon(
                  onPressed: () => _openNumberingDialog(forTransfer: true),
                  icon: const Icon(Icons.settings_outlined, size: 18),
                  label: Text(_loc.psNumberingSettings),
                ),
              ],
            ),
            footer: _loc.psTransferVoucherNextDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psSalesVoucherTitle,
            child: SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(_d.salesVoucherPerm ? _loc.psEnabled : _loc.psDisabled),
              value: _d.salesVoucherPerm,
              onChanged: (v) => _patch(_d.copyWith(salesVoucherPerm: v)),
            ),
            footer:

                _loc.psSalesVoucherDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psPurchaseVoucherTitle,
            child: SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(_d.purchaseVoucherPerm ? _loc.psEnabled : _loc.psDisabled),
              value: _d.purchaseVoucherPerm,
              onChanged: (v) =>

                  _patch(_d.copyWith(purchaseVoucherPerm: v)),
            ),
            footer:

                _loc.psPurchaseVoucherDesc,
          ),
        ],
      ),
    );
  }

  Widget _tabDefaults(ColorScheme cs) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          _header(
            _loc.psDefaultsTitle,
            _loc.psDefaultsDesc,
            cs,
          ),
          const SizedBox(height: 16),
          _sectionCard(
            cs,
            title: _loc.psDefaultSubAccountTitle,
            child: DropdownButtonFormField<String>(
              value: _d.subAccountLabel.isEmpty ? null : _d.subAccountLabel,
              decoration: const InputDecoration(border: OutlineInputBorder()),
              hint: Text(_loc.psPleaseChoose),
              items: [

                DropdownMenuItem(value: '', child: Text(_loc.psNone)),
                DropdownMenuItem(
                    value: 'مخزون_عام', child: Text(_loc.psGeneralInventory)),
                DropdownMenuItem(
                    value: 'مواد_خام', child: Text(_loc.psRawMaterials)),
                DropdownMenuItem(
                    value: 'تجاري', child: Text(_loc.psCommercial)),
              ],
              onChanged: (v) =>

                  _patch(_d.copyWith(subAccountLabel: v ?? '')),
            ),
            footer: _loc.psDefaultSubAccountDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psDefaultWarehouseTitle,
            child: Row(
              children: [

                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push<void>(
                      MaterialPageRoute<void>(
                        builder: (_) => const WarehousesScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.open_in_new_rounded, size: 18),
                  label: Text(_loc.psManageWarehouses),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<int?>(
                    value: _d.defaultWarehouseId,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    hint: Text(_loc.psChooseWarehouse),
                    items: [

                      DropdownMenuItem<int?>(
                        value: null,
                        child: Text(_loc.psNone),
                      ),
                      ..._warehouses.map(
                        (w) => DropdownMenuItem<int?>(
                          value: (w['id'] as num).toInt(),
                          child: Text(w['name'] as String),
                        ),
                      ),
                    ],
                    onChanged: (v) {
                      if (v == null) {
                        _patch(_d.copyWith(clearWarehouseId: true));
                      } else {
                        _patch(_d.copyWith(defaultWarehouseId: v));
                      }
                    },
                  ),
                ),
              ],
            ),
            footer: _loc.psDefaultWarehouseDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psDefaultPriceListTitle,
            child: Row(
              children: [

                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push<void>(
                      MaterialPageRoute<void>(
                        builder: (_) => PriceListsScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.open_in_new_rounded, size: 18),
                  label: Text(_loc.psManagePriceLists),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<int?>(
                    value: _d.defaultPriceListId,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    hint: Text(_loc.psPleaseChoose),
                    items: [

                      DropdownMenuItem<int?>(
                        value: null,
                        child: Text(_loc.psNone),
                      ),
                      ..._priceLists.map(
                        (w) => DropdownMenuItem<int?>(
                          value: (w['id'] as num).toInt(),
                          child: Text(w['name'] as String),
                        ),
                      ),
                    ],
                    onChanged: (v) {
                      if (v == null) {
                        _patch(_d.copyWith(clearPriceListId: true));
                      } else {
                        _patch(_d.copyWith(defaultPriceListId: v));
                      }
                    },
                  ),
                ),
              ],
            ),
            footer: _loc.psDefaultPriceListDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psDefaultTax1Title,
            child: Row(
              children: [

                OutlinedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          _loc.psTaxRatesDesc,
                        ),
                      ),
                    );
                  },
                  child: Text(_loc.psManageTaxes),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _d.defaultTax1,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    items: _taxChoices

                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))

                        .toList(),
                    onChanged: (v) {
                      if (v != null) _patch(_d.copyWith(defaultTax1: v));
                    },
                  ),
                ),
              ],
            ),
            footer: _loc.psDefaultTax1Desc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psDefaultTax2Title,
            child: Row(
              children: [

                OutlinedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          _loc.psDefaultTax2Desc,
                        ),
                      ),
                    );
                  },
                  child: Text(_loc.psManageTaxes),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: _d.defaultTax2,
                    decoration: const InputDecoration(border: OutlineInputBorder()),
                    items: _taxChoices

                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))

                        .toList(),
                    onChanged: (v) {
                      if (v != null) _patch(_d.copyWith(defaultTax2: v));
                    },
                  ),
                ),
              ],
            ),
            footer: '',
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psReturnCostMethodTitle,
            child: Column(
              children: [

                _simpleRadio(
                  'sell_price',
                  _loc.psReturnBySalePrice,
                  _loc.psReturnBySalePriceDesc,
                ),
                _simpleRadio(
                  'last_avg',
                  _loc.psReturnByAvgCost,
                  _loc.psReturnByAvgCostDesc,
                ),
              ],
            ),
            footer: _loc.psReturnCostDesc,
          ),
          const SizedBox(height: 12),
          _sectionCard(
            cs,
            title: _loc.psBusinessNatureTitle,
            child: Column(
              children: [

                _natureRadio(
                    'products', _loc.psNatureProducts, _loc.psNatureProductsDesc),
                _natureRadio(
                    'services', _loc.psNatureServices, _loc.psNatureServicesDesc),
                _natureRadio('both', _loc.psNatureBoth,
                    _loc.psNatureBothDesc),
              ],
            ),
            footer: _loc.psBusinessNatureDesc,
          ),
        ],
      ),
    );
  }

  Widget _simpleRadio(String value, String title, String sub) {
    final sel = _d.returnCostMethod == value;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () => _patch(_d.copyWith(returnCostMethod: value)),
        borderRadius: BorderRadius.zero,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.zero,
            border: Border.all(
              color: sel ? const Color(0xFF2563EB) : Colors.grey.shade300,
              width: sel ? 2 : 1,
            ),
          ),
          child: RadioListTile<String>(
            contentPadding: EdgeInsets.zero,
            value: value,
            groupValue: _d.returnCostMethod,
            onChanged: (v) {
              if (v != null) _patch(_d.copyWith(returnCostMethod: v));
            },
            title: Text(title, textAlign: TextAlign.right),
            subtitle: Text(sub,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 12, color: Colors.grey.shade600, height: 1.3)),
          ),
        ),
      ),
    );
  }

  Widget _natureRadio(String value, String title, String sub) {
    final sel = _d.businessNature == value;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: InkWell(
        onTap: () => _patch(_d.copyWith(businessNature: value)),
        borderRadius: BorderRadius.zero,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.zero,
            border: Border.all(
              color: sel ? const Color(0xFF2563EB) : Colors.grey.shade300,
              width: sel ? 2 : 1,
            ),
          ),
          child: RadioListTile<String>(
            contentPadding: EdgeInsets.zero,
            value: value,
            groupValue: _d.businessNature,
            onChanged: (v) {
              if (v != null) _patch(_d.copyWith(businessNature: v));
            },
            title: Text(title, textAlign: TextAlign.right),
            subtitle: Text(sub,
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontSize: 12, color: Colors.grey.shade600, height: 1.3)),
          ),
        ),
      ),
    );
  }

  Widget _header(String title, String sub, ColorScheme cs) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [

        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: cs.onSurface,
          ),
          textAlign: TextAlign.right,
        ),
        const SizedBox(height: 6),
        Text(
          sub,
          style: TextStyle(
            fontSize: 13,
            height: 1.45,
            color: cs.onSurfaceVariant,
          ),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }

  Widget _sectionCard(
    ColorScheme cs, {
    required String title,
    required Widget child,
    String footer = '',
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.zero,
        border: Border.all(color: cs.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 10),
          child,
          if (footer.isNotEmpty) ...[

            const SizedBox(height: 10),
            Text(
              footer,
              style: TextStyle(
                fontSize: 12,
                height: 1.4,
                color: cs.onSurfaceVariant,
              ),
              textAlign: TextAlign.right,
            ),
          ],
        ],
      ),
    );
  }

  InputDecoration _outlineDec(String label) {
    return InputDecoration(
      labelText: label,
      border: const OutlineInputBorder(),
      isDense: true,
    );
  }
}
