import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import '../../l10n/generated/app_localizations.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import '../../models/supplier_ap_models.dart';
import '../../providers/auth_provider.dart';
import '../../providers/invoice_provider.dart';
import '../../services/database_helper.dart';
import '../../services/tenant_context_service.dart';
import '../../utils/screen_layout.dart';
import '../../utils/sale_receipt_pdf.dart';
import '../../theme/design_tokens.dart';

final _numFmt = NumberFormat('#,##0', 'ar');
final _dateFmt = DateFormat('dd/MM/yyyy', 'ar');

/// تفاصيل مورد: وصولاتهم (مستندات خارجية) + دفعاتنا.
enum SupplierDetailInitialAction { none, addBill, payout, supplierReturn }

class SupplierDetailScreen extends StatefulWidget {
  const SupplierDetailScreen({
    super.key,
    required this.supplierId,
    this.initialAction = SupplierDetailInitialAction.none,
  });

  final int supplierId;
  final SupplierDetailInitialAction initialAction;

  @override
  State<SupplierDetailScreen> createState() => _SupplierDetailScreenState();
}

class _SupplierDetailScreenState extends State<SupplierDetailScreen> {
  AppLocalizations get _loc => AppLocalizations.of(context)!;
  final DatabaseHelper _db = DatabaseHelper();
  final ImagePicker _picker = ImagePicker();

  Supplier? _supplier;
  List<SupplierBill> _bills = [];
  List<SupplierPayout> _payouts = [];
  bool _loading = true;
  bool _didRunInitialAction = false;

  double get _openPayable {
    final b = _bills.fold<double>(0, (s, e) => s + e.amount);
    final p = _payouts.fold<double>(0, (s, e) => s + e.amount);
    return b - p;
  }

  @override
  void initState() {
    super.initState();
    _load();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _runInitialActionIfNeeded();
    });
  }

  Future<void> _runInitialActionIfNeeded() async {
    if (_didRunInitialAction || !mounted) return;
    _didRunInitialAction = true;
    switch (widget.initialAction) {
      case SupplierDetailInitialAction.none:
        return;
      case SupplierDetailInitialAction.addBill:
        await _showAddBillDialog();
        return;
      case SupplierDetailInitialAction.payout:
        await _showPayoutDialog();
        return;
      case SupplierDetailInitialAction.supplierReturn:
        await _showSupplierReturnDialog();
        return;
    }
  }

  Future<void> _load() async {
    setState(() => _loading = true);
    final sup = await _db.getSupplierById(widget.supplierId);
    final bills = await _db.getSupplierBills(widget.supplierId);
    final pays = await _db.getSupplierPayouts(widget.supplierId);
    if (!mounted) return;
    setState(() {
      _supplier = sup;
      _bills = bills;
      _payouts = pays;
      _loading = false;
    });
  }

  String _userName(BuildContext context) {
    final u = context.read<AuthProvider>().username.trim();
    return u.isEmpty ? '—' : u;
  }

  Future<void> _openActionsSheet() async {
    await showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.receipt_long_rounded),
              title: Text(_loc.sdRecordSupplierReceipt),
              subtitle: Text(_loc.sdRecordSupplierReceiptSubtitle),
              onTap: () {
                Navigator.pop(ctx);
                _showAddBillDialog();
              },
            ),
            ListTile(
              leading: const Icon(Icons.payments_rounded),
              title: Text(_loc.sdSupplierPayment),
              subtitle: Text(_loc.sdSupplierPaymentSubtitle),
              onTap: () {
                Navigator.pop(ctx);
                _showPayoutDialog();
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment_return_outlined),
              title: Text(_loc.sdSupplierReturn),
              subtitle: Text(_loc.sdSupplierReturnSubtitle),
              onTap: () {
                Navigator.pop(ctx);
                _showSupplierReturnDialog();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showAddBillDialog() async {
    final refCtrl = TextEditingController();
    final amountCtrl = TextEditingController();
    final noteCtrl = TextEditingController();
    DateTime? theirDate = DateTime.now();
    XFile? pickedFile;

    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setLocal) => Directionality(
          textDirection: Directionality.of(context),
          child: AlertDialog(
            shape: const RoundedRectangleBorder(borderRadius: AppShape.none),
            title: Text(_loc.sdSupplierReceiptTitle),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: refCtrl,
                    decoration: InputDecoration(
                      labelText: _loc.sdTheirReceiptNo,
                      border: const OutlineInputBorder(borderRadius: AppShape.none),
                    ),
                  ),
                  const SizedBox(height: 8),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      theirDate != null
                          ? _loc.sdTheirReceiptDateWith(_dateFmt.format(theirDate!))
                          : _loc.sdTheirReceiptDate,
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.calendar_today_rounded),
                      onPressed: () async {
                        final d = await showDatePicker(
                          context: ctx,
                          initialDate: theirDate ?? DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        if (d != null) setLocal(() => theirDate = d);
                      },
                    ),
                  ),
                  TextField(
                    controller: amountCtrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: '${_loc.sdAmountFdj} *',
                      border: const OutlineInputBorder(borderRadius: AppShape.none),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: noteCtrl,
                    maxLines: 2,
                    decoration: InputDecoration(
                      labelText: _loc.sdInternalNote,
                      border: const OutlineInputBorder(borderRadius: AppShape.none),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      OutlinedButton.icon(
                        onPressed: () async {
                          final x = await _picker.pickImage(
                            source: ImageSource.camera,
                            imageQuality: 82,
                          );
                          if (x != null) setLocal(() => pickedFile = x);
                        },
                        icon: const Icon(Icons.photo_camera_rounded),
                        label: Text(_loc.sdPhoto),
                      ),
                      const SizedBox(width: 8),
                      OutlinedButton.icon(
                        onPressed: () async {
                          final x = await _picker.pickImage(
                            source: ImageSource.gallery,
                            imageQuality: 82,
                          );
                          if (x != null) setLocal(() => pickedFile = x);
                        },
                        icon: const Icon(Icons.photo_library_outlined),
                        label: Text(_loc.sdGallery),
                      ),
                    ],
                  ),
                  if (pickedFile != null)
                    Text(
                      _loc.sdPhotoSelected(pickedFile!.name),
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(ctx).hintColor,
                      ),
                    ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: Text(_loc.sdCancel),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(ctx, true),
                child: Text(_loc.sdSave),
              ),
            ],
          ),
        ),
      ),
    );

    final ref = refCtrl.text.trim();
    final amt = double.tryParse(amountCtrl.text.replaceAll(',', '')) ?? 0;
    final note = noteCtrl.text.trim();
    refCtrl.dispose();
    amountCtrl.dispose();
    noteCtrl.dispose();

    if (ok != true || !mounted) return;
    if (amt <= 0) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(_loc.sdEnterValidAmount)));
      return;
    }

    try {
      final id = await _db.insertSupplierBill(
        supplierId: widget.supplierId,
        theirReference: ref.isEmpty ? null : ref,
        theirBillDate: theirDate,
        amount: amt,
        note: note.isEmpty ? null : note,
        imagePath: null,
        createdByUserName: _userName(context),
      );
      final xf = pickedFile;
      if (xf != null) {
        final dir = await getApplicationDocumentsDirectory();
        final folder = Directory(p.join(dir.path, 'supplier_bill_images'));
        if (!await folder.exists()) {
          await folder.create(recursive: true);
        }
        final dest = p.join(folder.path, 'bill_$id.jpg');
        final bytes = await xf.readAsBytes();
        await File(dest).writeAsBytes(bytes, flush: true);
        await _db.updateSupplierBillImagePath(id, dest);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(_loc.sdSaveFailed(e.toString()))));
      }
      return;
    }
    if (mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(_loc.sdReceiptRecorded)));
      await _load();
    }
  }

  Future<void> _showPayoutDialog() async {
    final amountCtrl = TextEditingController();
    final noteCtrl = TextEditingController();
    var affectsCash = true;

    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setLocal) => Directionality(
          textDirection: Directionality.of(context),
          child: AlertDialog(
            shape: const RoundedRectangleBorder(borderRadius: AppShape.none),
            title: Text(_loc.sdSupplierPayment),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: amountCtrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: _loc.sdAmountFdj,
                      border: const OutlineInputBorder(borderRadius: AppShape.none),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: noteCtrl,
                    maxLines: 2,
                    decoration: InputDecoration(
                      labelText: _loc.sdNote,
                      border: const OutlineInputBorder(borderRadius: AppShape.none),
                    ),
                  ),
                  SwitchListTile(
                    title: Text(_loc.sdRecordDiscountFromCash),
                    subtitle: Text(
                      _loc.sdDisableCashHint,
                    ),
                    value: affectsCash,
                    onChanged: (v) => setLocal(() => affectsCash = v),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: Text(_loc.sdCancel),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(ctx, true),
                child: Text(_loc.sdConfirm),
              ),
            ],
          ),
        ),
      ),
    );

    final amt = double.tryParse(amountCtrl.text.replaceAll(',', '')) ?? 0;
    final notePay = noteCtrl.text.trim();
    amountCtrl.dispose();
    noteCtrl.dispose();

    if (ok != true || !mounted) return;
    if (amt <= 0) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(_loc.sdEnterValidAmount)));
      return;
    }

    final payableBefore = _openPayable;
    final res = await _db.recordSupplierPayout(
      supplierId: widget.supplierId,
      amount: amt,
      note: notePay.isEmpty ? null : notePay,
      affectsCash: affectsCash,
      recordedByUserName: _userName(context),
    );
    if (!mounted) return;
    if (res == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(_loc.sdRecordFailed)));
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          affectsCash
              ? _loc.sdPaymentRecordedCash
              : _loc.sdPaymentRecordedNoCash,
        ),
      ),
    );
    unawaited(context.read<InvoiceProvider>().refresh());
    await _load();
    if (!mounted) return;
    await SaleReceiptPdf.presentSupplierPaymentReceipt(
      context,
        locale: Localizations.localeOf(context),
        loc: AppLocalizations.of(context)!,
      supplierDisplayName: _supplier?.name ?? '',
      amountPaid: amt,
      payableBefore: payableBefore,
      payableAfter: payableBefore - amt,
      payoutRowId: res.payoutId,
      receiptInvoiceId: res.receiptInvoiceId,
      affectsCash: affectsCash,
      note: notePay.isEmpty ? null : notePay,
      recordedByUserName: _userName(context),
    );
  }

  Future<void> _showSupplierReturnDialog() async {
    final amountCtrl = TextEditingController();
    final noteCtrl = TextEditingController();

    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setLocal) => Directionality(
          textDirection: Directionality.of(context),
          child: AlertDialog(
            shape: const RoundedRectangleBorder(borderRadius: AppShape.none),
            title: Text(_loc.sdReturnTitle),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    controller: amountCtrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: _loc.sdAmountFdj,
                      border: const OutlineInputBorder(borderRadius: AppShape.none),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: noteCtrl,
                    maxLines: 2,
                    decoration: InputDecoration(
                      labelText: _loc.sdNote,
                      border: const OutlineInputBorder(borderRadius: AppShape.none),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _loc.sdReturnCashHint,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: Text(_loc.sdCancel),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(ctx, true),
                child: Text(_loc.sdRegister),
              ),
            ],
          ),
        ),
      ),
    );

    final amt = double.tryParse(amountCtrl.text.replaceAll(',', '')) ?? 0;
    final note = noteCtrl.text.trim();
    amountCtrl.dispose();
    noteCtrl.dispose();

    if (ok != true || !mounted) return;
    if (amt <= 0) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(_loc.sdEnterValidAmount)));
      return;
    }

    final payableBefore = _openPayable;
    final res = await _db.recordSupplierPayout(
      supplierId: widget.supplierId,
      amount: amt,
      note: note.isEmpty ? _loc.sdReturnDefaultNote : note,
      affectsCash: false,
      recordedByUserName: _userName(context),
    );
    if (!mounted) return;
    if (res == null) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(_loc.sdReturnFailed)));
      return;
    }
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(_loc.sdReturnRecorded)));
    await _load();
    if (!mounted) return;
    await SaleReceiptPdf.presentSupplierPaymentReceipt(
      context,
        locale: Localizations.localeOf(context),
        loc: AppLocalizations.of(context)!,
      supplierDisplayName: _supplier?.name ?? '',
      amountPaid: amt,
      payableBefore: payableBefore,
      payableAfter: payableBefore - amt,
      payoutRowId: res.payoutId,
      receiptInvoiceId: res.receiptInvoiceId,
      affectsCash: false,
      note: note.isEmpty ? _loc.sdReturnDefaultNote : note,
      recordedByUserName: _userName(context),
    );
  }

  Future<void> _confirmReversePayout(SupplierPayout p) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => Directionality(
        textDirection: Directionality.of(context),
        child: AlertDialog(
          shape: const RoundedRectangleBorder(borderRadius: AppShape.none),
          title: Text(_loc.sdReversePayment),
          content: Text(
            p.affectsCash
                ? _loc.sdReverseCashDesc(_numFmt.format(p.amount))
                : _loc.sdReverseNoCashDesc,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(_loc.sdCancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: Text(_loc.sdConfirmReverse),
            ),
          ],
        ),
      ),
    );
    if (ok != true || !mounted) return;
    final done = await _db.deleteSupplierPayoutReversingCash(
      payoutId: p.id,
      supplierId: widget.supplierId,
    );
    if (!mounted) return;
    if (!done) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(_loc.sdReverseFailed)));
      return;
    }
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(_loc.sdReversed)));
    unawaited(context.read<InvoiceProvider>().refresh());
    await _load();
  }

  Future<void> _createStubVoucherAndLink(SupplierBill bill) async {
    final whs = await _db.listWarehousesActive(
      tenantId: TenantContextService.instance.activeTenantId,
    );
    if (!mounted) return;
    if (whs.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_loc.sdNoActiveWarehouse),
        ),
      );
      return;
    }
    var wid = whs.first['id'] as int;
    if (whs.length > 1) {
      var sel = wid;
      final chosen = await showDialog<int>(
        context: context,
        builder: (ctx) => Directionality(
          textDirection: Directionality.of(context),
          child: StatefulBuilder(
            builder: (ctx, setS) => AlertDialog(
              shape: const RoundedRectangleBorder(borderRadius: AppShape.none),
              title: Text(_loc.sdTargetWarehouse),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final w in whs)
                      ListTile(
                        selected: w['id'] == sel,
                        title: Text('${w['name']}'),
                        onTap: () => setS(() => sel = w['id'] as int),
                      ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(ctx),
                  child: Text(_loc.sdCancel),
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(ctx, sel),
                  child: Text(_loc.sdContinue),
                ),
              ],
            ),
          ),
        ),
      );
      if (chosen == null || !mounted) return;
      wid = chosen;
    }
    final sup = await _db.getSupplierById(widget.supplierId);
    try {
      final vid = await _db.insertInboundStockVoucherHeader(
        tenantId: TenantContextService.instance.activeTenantId,
        warehouseToId: wid,
        supplierName: sup?.name,
        referenceNo: _loc.sdLinkedVoucherShort(bill.id.toString()),
        sourceType: 'supplier',
        sourceName: sup?.name,
        sourceRefId: bill.id,
      );
      final ok = await _db.linkSupplierBillToStockVoucher(
        supplierBillId: bill.id,
        supplierId: widget.supplierId,
        stockVoucherId: vid,
      );
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            ok ? _loc.sdLinkedVoucherCreated : _loc.sdVoucherCreatedLinkFailed,
          ),
        ),
      );
      await _load();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(_loc.sdCreationFailed(e.toString()))));
      }
    }
  }

  Future<void> _confirmUnlinkStockBill(SupplierBill bill) async {
    if (bill.linkedStockVoucherId == null) return;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => Directionality(
        textDirection: Directionality.of(context),
        child: AlertDialog(
          shape: const RoundedRectangleBorder(borderRadius: AppShape.none),
          title: Text(_loc.sdUnlinkVoucher),
          content: Text(
            _loc.sdUnlinkVoucherDesc,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(_loc.sdCancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: Text(_loc.sdConfirm),
            ),
          ],
        ),
      ),
    );
    if (ok != true || !mounted) return;
    await _db.unlinkSupplierBillFromStockVoucher(
      supplierBillId: bill.id,
      supplierId: widget.supplierId,
    );
    if (mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(_loc.sdUnlinked)));
      await _load();
    }
  }

  Future<void> _openLinkStockVoucherDialog(SupplierBill bill) async {
    final refCtrl = TextEditingController();
    try {
      final recent = await _db.getRecentInboundStockVouchers(limit: 25);
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        builder: (ctx) => Directionality(
          textDirection: Directionality.of(context),
          child: AlertDialog(
            shape: const RoundedRectangleBorder(borderRadius: AppShape.none),
            title: Text(_loc.sdLinkToSupplierReceipt),
            content: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    OutlinedButton.icon(
                      icon: const Icon(Icons.add_circle_outline_rounded),
                      label: Text(_loc.sdEmptyVoucherAutoLink),
                      onPressed: () {
                        Navigator.pop(ctx);
                        _createStubVoucherAndLink(bill);
                      },
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _loc.sdLinkInstruction,
                      style: TextStyle(
                        fontSize: 12,
                        color: Theme.of(ctx).hintColor,
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 10),
                    if (recent.isEmpty)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          _loc.sdNoVouchersYet,
                          style: TextStyle(
                            fontSize: 12,
                            color: Theme.of(ctx).colorScheme.outline,
                          ),
                        ),
                      )
                    else ...[
                      Text(
                        _loc.sdLatestVouchers,
                        style: Theme.of(ctx).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 4),
                      ...recent.map(
                        (r) => ListTile(
                          contentPadding: EdgeInsets.zero,
                          dense: true,
                          title: Text(
                            '${r['voucherNo']}',
                            style: const TextStyle(fontWeight: FontWeight.w700),
                          ),
                          subtitle: Text(
                            '${r['voucherDate'] ?? ''}  ${(r['warehouseName'] ?? '').toString().trim().isEmpty ? '' : '· ${r['warehouseName']}'}',
                            style: TextStyle(
                              fontSize: 11,
                              color: Theme.of(ctx).hintColor,
                            ),
                          ),
                          trailing: const Icon(Icons.chevron_left_rounded),
                          onTap: () async {
                            final vid = r['id'] as int;
                            final ok = await _db.linkSupplierBillToStockVoucher(
                              supplierBillId: bill.id,
                              supplierId: widget.supplierId,
                              stockVoucherId: vid,
                            );
                            if (!ctx.mounted) return;
                            Navigator.pop(ctx);
                            if (!mounted) return;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(ok ? _loc.sdLinked : _loc.sdLinkFailed),
                              ),
                            );
                            await _load();
                          },
                        ),
                      ),
                      const Divider(height: 20),
                    ],
                    TextField(
                      controller: refCtrl,
                      decoration: InputDecoration(
                        labelText: _loc.sdVoucherNoOrId,
                        border: const OutlineInputBorder(borderRadius: AppShape.none),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx),
                child: Text(_loc.sdClose),
              ),
              FilledButton(
                onPressed: () async {
                  final row = await _db.findInboundStockVoucherByRef(
                    refCtrl.text,
                  );
                  if (!ctx.mounted) return;
                  if (row == null) {
                    ScaffoldMessenger.of(ctx).showSnackBar(
                      SnackBar(
                        content: Text(_loc.sdVoucherNotFound),
                      ),
                    );
                    return;
                  }
                  final vid = row['id'] as int;
                  final ok = await _db.linkSupplierBillToStockVoucher(
                    supplierBillId: bill.id,
                    supplierId: widget.supplierId,
                    stockVoucherId: vid,
                  );
                  if (!ctx.mounted) return;
                  Navigator.pop(ctx);
                  if (!mounted) return;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(ok ? _loc.sdLinked : _loc.sdLinkFailed)),
                  );
                  await _load();
                },
                child: Text(_loc.sdSearchAndLink),
              ),
            ],
          ),
        ),
      );
    } finally {
      refCtrl.dispose();
    }
  }

  Future<void> _editSupplierName() async {
    final s = _supplier;
    if (s == null) return;
    final nameCtrl = TextEditingController(text: s.name);
    final phoneCtrl = TextEditingController(text: s.phone ?? '');
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => Directionality(
        textDirection: Directionality.of(context),
        child: AlertDialog(
          shape: const RoundedRectangleBorder(borderRadius: AppShape.none),
          title: Text(_loc.sdEditSupplier),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameCtrl,
                decoration: InputDecoration(
                  labelText: _loc.sdName,
                  border: const OutlineInputBorder(borderRadius: AppShape.none),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: phoneCtrl,
                decoration: InputDecoration(
                  labelText: _loc.sdPhone,
                  border: const OutlineInputBorder(borderRadius: AppShape.none),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(_loc.sdCancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: Text(_loc.sdSave),
            ),
          ],
        ),
      ),
    );
    final name = nameCtrl.text.trim();
    final phone = phoneCtrl.text.trim();
    nameCtrl.dispose();
    phoneCtrl.dispose();
    if (ok != true || !mounted || name.isEmpty) return;
    await _db.updateSupplier(
      id: s.id,
      name: name,
      phone: phone.isEmpty ? null : phone,
      notes: s.notes,
    );
    await _load();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;
    final card = isDark ? AppColors.cardDark : cs.surface;

    return Directionality(
      textDirection: Directionality.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text(_supplier?.name ?? _loc.sdSupplierDefault),
          actions: [
            if (_supplier != null)
              IconButton(
                tooltip: _loc.sdEditTooltip,
                onPressed: _editSupplierName,
                icon: const Icon(Icons.edit_outlined),
              ),
            IconButton(
              onPressed: _loading ? null : _load,
              icon: const Icon(Icons.refresh_rounded),
            ),
          ],
        ),
        body: _loading
            ? const Center(child: CircularProgressIndicator())
            : _supplier == null
            ? Center(child: Text(_loc.sdSupplierNotFound))
            : ListView(
                padding: EdgeInsetsDirectional.only(
                  start: ScreenLayout.of(context).pageHorizontalGap,
                  end: ScreenLayout.of(context).pageHorizontalGap,
                  top: 12,
                  bottom: 100,
                ),
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: card,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: cs.outlineVariant),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _openPayable > 1e-6
                              ? _loc.sdBalanceOwedToYou
                              : _openPayable < -1e-6
                              ? _loc.sdOverpayment
                              : _loc.sdBalanceWithSupplier,
                          style: TextStyle(
                            color: cs.onSurfaceVariant,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          _openPayable < -1e-6
                              ? '${_numFmt.format(-_openPayable)} Fdj'
                              : '${_numFmt.format(_openPayable)} Fdj',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: _openPayable > 1e-6
                                ? const Color(0xFFEA580C)
                                : const Color(0xFF16A34A),
                          ),
                        ),
                        if (_openPayable < -1e-6) ...[
                          const SizedBox(height: 8),
                          Text(
                            _loc.sdNoBillForPayout,
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.4,
                              color: cs.onSurfaceVariant,
                            ),
                          ),
                        ],
                        if ((_supplier!.phone ?? '').isNotEmpty) ...[
                          const SizedBox(height: 8),
                          Text(_loc.sdPhoneLabel(_supplier!.phone ?? '')),
                        ],
                      ],
                    ),
                  ),
                  if (_bills.isEmpty &&
                      _payouts.isNotEmpty &&
                      _openPayable < -1e-6) ...[
                    const SizedBox(height: 12),
                    Material(
                      color: cs.primaryContainer.withValues(alpha: 0.35),
                      borderRadius: BorderRadius.circular(10),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.info_outline_rounded,
                              color: cs.primary,
                              size: 22,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                _loc.sdPaymentWithoutReceipt,
                                style: TextStyle(
                                  fontSize: 13,
                                  height: 1.4,
                                  color: cs.onSurface,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: 20),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      OutlinedButton.icon(
                        onPressed: _showSupplierReturnDialog,
                        icon: const Icon(Icons.assignment_return_outlined),
                        label: Text(_loc.sdSupplierReturnLabel),
                      ),
                      OutlinedButton.icon(
                        onPressed: _showPayoutDialog,
                        icon: const Icon(Icons.payments_rounded),
                        label: Text(_loc.sdSupplierPaymentLabel),
                      ),
                      OutlinedButton.icon(
                        onPressed: _showAddBillDialog,
                        icon: const Icon(Icons.receipt_long_rounded),
                        label: Text(_loc.sdSupplierReceiptLabel),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    _loc.sdSupplierReceipts,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _loc.sdLinkReceiptInstruction,
                    style: TextStyle(
                      fontSize: 11,
                      color: cs.onSurfaceVariant,
                      height: 1.35,
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (_bills.isEmpty)
                    Text(
                      _loc.sdNoReceiptsYet,
                      style: TextStyle(color: cs.onSurfaceVariant),
                    )
                  else
                    for (final b in _bills)
                      _BillTile(
                        bill: b,
                        cardColor: card,
                        isDark: isDark,
                        onLinkStock: () => _openLinkStockVoucherDialog(b),
                        onUnlinkStock: () => _confirmUnlinkStockBill(b),
                      ),
                  const SizedBox(height: 20),
                  Text(
                    _loc.sdOurPayments,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (_payouts.isEmpty)
                    Text(
                      _loc.sdNoPaymentsYet,
                      style: TextStyle(color: cs.onSurfaceVariant),
                    )
                  else
                    for (final p in _payouts)
                      _PayoutTile(
                        payout: p,
                        cardColor: card,
                        isDark: isDark,
                        onReverse: () => _confirmReversePayout(p),
                      ),
                ],
              ),
        floatingActionButton: _supplier == null
            ? null
            : FloatingActionButton.extended(
                onPressed: _openActionsSheet,
                icon: const Icon(Icons.add_rounded),
                label: Text(_loc.sdRecordLabel),
              ),
      ),
    );
  }
}

class _BillTile extends StatelessWidget {
  const _BillTile({
    required this.bill,
    required this.cardColor,
    required this.isDark,
    required this.onLinkStock,
    required this.onUnlinkStock,
  });

  final SupplierBill bill;
  final Color cardColor;
  final bool isDark;
  final VoidCallback onLinkStock;
  final VoidCallback onUnlinkStock;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final border = isDark ? AppColors.borderDark : AppColors.borderLight;
    final img = bill.imagePath;
    final linked = bill.linkedStockVoucherId != null;
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: cardColor,
        border: Border(
          right: BorderSide(color: cs.primary, width: 3),
          top: BorderSide(color: border),
          left: BorderSide(color: border),
          bottom: BorderSide(color: border),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  bill.theirReference?.isNotEmpty == true
                      ? AppLocalizations.of(context)!.sdBillRef(bill.theirReference ?? '')
                      : AppLocalizations.of(context)!.sdBillNoRef,
                  style: const TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
              Text(
                '${_numFmt.format(bill.amount)} Fdj',
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              if (linked)
                IconButton(
                  tooltip: AppLocalizations.of(context)!.sdUnlinkVoucherTooltip,
                  icon: const Icon(Icons.link_off_rounded),
                  onPressed: onUnlinkStock,
                )
              else
                IconButton(
                  tooltip: AppLocalizations.of(context)!.sdLinkVoucherTooltip,
                  icon: const Icon(Icons.inventory_2_outlined),
                  onPressed: onLinkStock,
                ),
            ],
          ),
          if (linked) ...[
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.link_rounded, size: 16, color: cs.tertiary),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    AppLocalizations.of(context)!.sdLinkedVoucher(bill.linkedVoucherNo ?? '#${bill.linkedStockVoucherId}'),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: cs.tertiary,
                    ),
                  ),
                ),
              ],
            ),
          ],
          if (bill.theirBillDate != null)
            Text(
              AppLocalizations.of(context)!.sdTheirDate(_dateFmt.format(bill.theirBillDate!)),
              style: TextStyle(fontSize: 12, color: cs.onSurfaceVariant),
            ),
          Text(
            AppLocalizations.of(context)!.sdRecordedDate(_dateFmt.format(bill.createdAt)),
            style: TextStyle(fontSize: 11, color: cs.onSurfaceVariant),
          ),
          if ((bill.note ?? '').isNotEmpty)
            Text(bill.note!, style: const TextStyle(fontSize: 12)),
          if (img != null && img.isNotEmpty && File(img).existsSync()) ...[
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.file(
                File(img),
                height: 140,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _PayoutTile extends StatelessWidget {
  const _PayoutTile({
    required this.payout,
    required this.cardColor,
    required this.isDark,
    required this.onReverse,
  });

  final SupplierPayout payout;
  final Color cardColor;
  final bool isDark;
  final VoidCallback onReverse;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final border = isDark ? AppColors.borderDark : AppColors.borderLight;
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: cardColor,
        border: Border(
          right: const BorderSide(color: Color(0xFF16A34A), width: 3),
          top: BorderSide(color: border),
          left: BorderSide(color: border),
          bottom: BorderSide(color: border),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  AppLocalizations.of(context)!.sdPaymentRef(payout.id.toString()),
                  style: const TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
              Text(
                '${_numFmt.format(payout.amount)} Fdj',
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              IconButton(
                tooltip: AppLocalizations.of(context)!.sdReverseTooltip,
                icon: const Icon(Icons.undo_rounded),
                onPressed: onReverse,
              ),
            ],
          ),
          Text(
            _dateFmt.format(payout.createdAt),
            style: TextStyle(fontSize: 12, color: cs.onSurfaceVariant),
          ),
          Text(
            payout.affectsCash ? AppLocalizations.of(context)!.sdRecordedInCash : AppLocalizations.of(context)!.sdNotInCash,
            style: TextStyle(
              fontSize: 11,
              color: payout.affectsCash ? cs.primary : cs.outline,
            ),
          ),
          if ((payout.note ?? '').isNotEmpty)
            Text(payout.note!, style: const TextStyle(fontSize: 12)),
          if (payout.receiptInvoiceId != null && payout.receiptInvoiceId! > 0)
            Text(
              AppLocalizations.of(context)!.sdInvoiceVoucherRef(payout.receiptInvoiceId.toString()),
              style: TextStyle(fontSize: 11, color: cs.primary),
            ),
        ],
      ),
    );
  }
}
