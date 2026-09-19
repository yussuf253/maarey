import 'package:flutter/foundation.dart';
import 'package:naboo/l10n/generated/app_localizations.dart';

import 'invoice.dart';
import '../utils/iraqi_currency_format.dart';

/// نوع سطر في خلاصة «آخر النشاط» على لوحة التحكم.
enum RecentActivityKind {
  /// فاتورة مسجّلة في [invoices].
  invoice,

  /// حركة من [cash_ledger].
  cashMovement,

  /// بيع مؤجّل في [parked_sales].
  parkedSale,

  /// سطر من [loyalty_ledger].
  loyalty,

  /// سند مخزون من [stock_vouchers].
  stockVoucher,

  /// عميل جديد في [customers].
  customerCreated,

  /// صنف جديد في [products].
  productCreated,

  /// فتح أو إغلاق وردية في [work_shifts].
  workShift,
}

/// سطر واحد في تغذية النشاط الأخير — يُبنى من [DatabaseHelper.getRecentActivityFeed].
@immutable
class RecentActivityEntry {
  const RecentActivityEntry({
    required this.kind,
    required this.at,
    required this.title,
    required this.subtitle,
    this.amountIqd,
    this.invoiceId,
    this.cashLedgerId,
    this.linkedInvoiceId,
    this.parkedSaleId,
    this.loyaltyLedgerId,
    this.stockVoucherId,
    this.customerId,
    this.productId,
    this.workShiftId,
  });

  final RecentActivityKind kind;
  final DateTime at;
  final String title;
  final String subtitle;

  /// للعرض (فاتورة إجمالي، صندوق المبلغ الموقّع).
  final double? amountIqd;

  /// للانتقال إلى تفاصيل الفاتورة.
  final int? invoiceId;

  final int? cashLedgerId;

  /// قيد صندوق مرتبط بفاتورة (اختياري).
  final int? linkedInvoiceId;

  final int? parkedSaleId;
  final int? loyaltyLedgerId;
  final int? stockVoucherId;

  /// عميل مرتبط (ولاء أو تسجيل عميل جديد).
  final int? customerId;
  final int? productId;
  final int? workShiftId;

  /// أنواع لا تُصنَّف ضمن «فواتير» أو «صندوق» في شريط التصفية.
  static bool kindIsOtherThanInvoiceOrCash(RecentActivityKind k) {
    return k != RecentActivityKind.invoice &&
        k != RecentActivityKind.cashMovement;
  }

  String get amountLabel => amountIqd == null
      ? ''
      : IraqiCurrencyFormat.formatIqd(amountIqd!);

  String timeLabel(AppLocalizations loc) {
    final now = DateTime.now();
    final d = DateTime(at.year, at.month, at.day);
    final t = DateTime(now.year, now.month, now.day);
    final diff = t.difference(d).inDays;
    if (diff == 0) {
      final h = at.hour.toString().padLeft(2, '0');
      final m = at.minute.toString().padLeft(2, '0');
      return loc.activityToday('$h:$m');
    }
    if (diff == 1) return loc.activityYesterday;
    return '${at.day.toString().padLeft(2, '0')}/${at.month.toString().padLeft(2, '0')}/${at.year}';
  }

  factory RecentActivityEntry.fromInvoiceRow(Map<String, dynamic> r, AppLocalizations loc) {
    final id = r['id'] as int;
    final type = invoiceTypeFromDb(r['type']);
    final isRet = (r['isReturned'] as int? ?? 0) != 0;
    final name = r['customerName']?.toString().trim();
    final total = (r['total'] as num?)?.toDouble() ?? 0;
    final rawDate = r['date']?.toString();
    final date = DateTime.tryParse(rawDate ?? '') ?? DateTime.now();
    final typeLabel = _invoiceTypeLabelForActivity(type, loc);
    final title = isRet ? loc.activityReturnLabel(id) : loc.activityInvoiceLabel(typeLabel, id);
    final sub = (name != null && name.isNotEmpty) ? name : loc.activityNoCustomerName;
    final by = r['createdByUserName']?.toString().trim();
    final sub2 = (by != null && by.isNotEmpty) ? '$sub · $by' : sub;
    return RecentActivityEntry(
      kind: RecentActivityKind.invoice,
      at: date,
      title: title,
      subtitle: sub2,
      amountIqd: total,
      invoiceId: id,
      cashLedgerId: null,
      linkedInvoiceId: null,
      parkedSaleId: null,
      loyaltyLedgerId: null,
      stockVoucherId: null,
      customerId: null,
      productId: null,
      workShiftId: null,
    );
  }

  factory RecentActivityEntry.fromCashRow(Map<String, dynamic> r, AppLocalizations loc) {
    final id = r['id'] as int;
    final amt = (r['amount'] as num).toDouble();
    final tt = r['transactionType']?.toString() ?? '';
    final desc = r['description']?.toString().trim() ?? '';
    final invId = r['invoiceId'] as int?;
    final raw = r['createdAt']?.toString();
    final date = DateTime.tryParse(raw ?? '') ?? DateTime.now();
    final typeLabel = ledgerTransactionTypeLabelForActivity(tt, loc);
    String sub;
    if (desc.isNotEmpty) {
      sub = desc;
    } else if (invId != null) {
      sub = loc.activityLinkedInvoice(invId);
    } else {
      sub = loc.activityCashLedger;
    }
    return RecentActivityEntry(
      kind: RecentActivityKind.cashMovement,
      at: date,
      title: typeLabel,
      subtitle: sub,
      amountIqd: amt,
      invoiceId: null,
      cashLedgerId: id,
      linkedInvoiceId: invId,
      parkedSaleId: null,
      loyaltyLedgerId: null,
      stockVoucherId: null,
      customerId: null,
      productId: null,
      workShiftId: null,
    );
  }

  factory RecentActivityEntry.fromParkedRow(Map<String, dynamic> r, AppLocalizations loc) {
    final id = r['id'] as int;
    final title = r['title']?.toString().trim();
    final raw = r['updatedAt']?.toString();
    final date = DateTime.tryParse(raw ?? '') ?? DateTime.now();
    final label = (title != null && title.isNotEmpty) ? title : loc.activityDeferredSale;
    return RecentActivityEntry(
      kind: RecentActivityKind.parkedSale,
      at: date,
      title: loc.activityDeferredLabel(id),
      subtitle: label,
      amountIqd: null,
      invoiceId: null,
      cashLedgerId: null,
      linkedInvoiceId: null,
      parkedSaleId: id,
      loyaltyLedgerId: null,
      stockVoucherId: null,
      customerId: null,
      productId: null,
      workShiftId: null,
    );
  }

  factory RecentActivityEntry.fromLoyaltyRow(Map<String, dynamic> r, AppLocalizations loc) {
    final id = r['id'] as int;
    final cid = r['customerId'] as int;
    final kind = r['kind']?.toString() ?? '';
    final pts = (r['points'] as num?)?.toInt() ?? 0;
    final name = r['customerName']?.toString().trim();
    final sub = (name != null && name.isNotEmpty) ? name : 'عميل #$cid';
    final raw = r['createdAt']?.toString();
    final date = DateTime.tryParse(raw ?? '') ?? DateTime.now();
    final typeLabel = loyaltyKindLabelForActivity(kind, loc);
    return RecentActivityEntry(
      kind: RecentActivityKind.loyalty,
      at: date,
      title: loc.activityPointsLabel('${pts >= 0 ? '+' : ''}$pts', typeLabel),
      subtitle: sub,
      amountIqd: null,
      invoiceId: null,
      cashLedgerId: null,
      linkedInvoiceId: r['invoiceId'] as int?,
      parkedSaleId: null,
      loyaltyLedgerId: id,
      stockVoucherId: null,
      customerId: cid,
      productId: null,
      workShiftId: null,
    );
  }

  factory RecentActivityEntry.fromStockVoucherRow(Map<String, dynamic> r, AppLocalizations loc) {
    final id = r['id'] as int;
    final no = r['voucherNo']?.toString() ?? '#$id';
    final vType = r['voucherType']?.toString() ?? '';
    final raw = r['createdAt']?.toString();
    final date = DateTime.tryParse(raw ?? '') ?? DateTime.now();
    final typeLabel = stockVoucherTypeLabelForActivity(vType, loc);
    final note = r['notes']?.toString().trim();
    return RecentActivityEntry(
      kind: RecentActivityKind.stockVoucher,
      at: date,
      title: loc.activityStockVoucherLabel(typeLabel, no),
      subtitle: (note != null && note.isNotEmpty) ? note : loc.activityStockFallback,
      amountIqd: null,
      invoiceId: null,
      cashLedgerId: null,
      linkedInvoiceId: null,
      parkedSaleId: null,
      loyaltyLedgerId: null,
      stockVoucherId: id,
      customerId: null,
      productId: null,
      workShiftId: null,
    );
  }

  factory RecentActivityEntry.fromCustomerCreatedRow(Map<String, dynamic> r, AppLocalizations loc) {
    final id = r['id'] as int;
    final name = r['name']?.toString().trim() ?? 'عميل #$id';
    final raw = r['createdAt']?.toString();
    final date = DateTime.tryParse(raw ?? '') ?? DateTime.now();
    return RecentActivityEntry(
      kind: RecentActivityKind.customerCreated,
      at: date,
      title: loc.activityCustomerCreated(id),
      subtitle: name,
      amountIqd: null,
      invoiceId: null,
      cashLedgerId: null,
      linkedInvoiceId: null,
      parkedSaleId: null,
      loyaltyLedgerId: null,
      stockVoucherId: null,
      customerId: id,
      productId: null,
      workShiftId: null,
    );
  }

  factory RecentActivityEntry.fromProductCreatedRow(Map<String, dynamic> r, AppLocalizations loc) {
    final id = r['id'] as int;
    final name = r['name']?.toString().trim() ?? 'صنف #$id';
    final raw = r['createdAt']?.toString();
    final date = DateTime.tryParse(raw ?? '') ?? DateTime.now();
    return RecentActivityEntry(
      kind: RecentActivityKind.productCreated,
      at: date,
      title: loc.activityItemCreated(id),
      subtitle: name,
      amountIqd: null,
      invoiceId: null,
      cashLedgerId: null,
      linkedInvoiceId: null,
      parkedSaleId: null,
      loyaltyLedgerId: null,
      stockVoucherId: null,
      customerId: null,
      productId: id,
      workShiftId: null,
    );
  }

  /// [isClose] يحدد إن كان الحدث إغلاق الوردية (وإلا فتح).
  factory RecentActivityEntry.fromWorkShiftRow(
    Map<String, dynamic> r, {
    required bool isClose,
    required AppLocalizations loc,
  }) {
    final id = r['id'] as int;
    final name = r['shiftStaffName']?.toString().trim() ?? '';
    final rawAt = isClose
        ? r['closedAt']?.toString()
        : r['openedAt']?.toString();
    final date = DateTime.tryParse(rawAt ?? '') ?? DateTime.now();
    final title = isClose ? loc.activityShiftClose : loc.activityShiftOpen;
    final sub = name.isNotEmpty ? name : loc.activityShiftLabel(id);
    return RecentActivityEntry(
      kind: RecentActivityKind.workShift,
      at: date,
      title: title,
      subtitle: sub,
      amountIqd: null,
      invoiceId: null,
      cashLedgerId: null,
      linkedInvoiceId: null,
      parkedSaleId: null,
      loyaltyLedgerId: null,
      stockVoucherId: null,
      customerId: null,
      productId: null,
      workShiftId: id,
    );
  }
}

String _invoiceTypeLabelForActivity(InvoiceType t, AppLocalizations loc) {
  switch (t) {
    case InvoiceType.cash:
      return loc.paymentTypeCash;
    case InvoiceType.credit:
      return loc.paymentTypeCredit;
    case InvoiceType.installment:
      return loc.paymentTypeInstallment;
    case InvoiceType.delivery:
      return loc.paymentTypeDelivery;
    case InvoiceType.debtCollection:
      return loc.paymentTypeDebtCollection;
    case InvoiceType.installmentCollection:
      return loc.paymentTypeInstallmentCollection;
    case InvoiceType.supplierPayment:
      return loc.paymentTypeSupplierPayment;
    case InvoiceType.waafi:
      return loc.paymentTypeWaafi;
    case InvoiceType.dahabPlus:
      return loc.paymentTypeDahabPlus;
    case InvoiceType.cacPay:
      return loc.paymentTypeCacPay;
    case InvoiceType.dmoney:
      return loc.paymentTypeDmoney;
  }
}

/// يطابق تسميات [cash_screen] لحركات [cash_ledger].
String ledgerTransactionTypeLabelForActivity(String transactionType, AppLocalizations loc) {
  switch (transactionType) {
    case 'sale_cash':
      return loc.activityCashSale;
    case 'sale_advance':
      return loc.activityAdvancePayment;
    case 'sale_other':
      return loc.activitySalePayment;
    case 'manual_in':
      return loc.activityManualDeposit;
    case 'manual_out':
      return loc.activityManualWithdraw;
    case 'installment_payment':
      return loc.activityInstallmentPay;
    case 'supplier_payment':
      return loc.activitySupplierPay;
    case 'supplier_payment_reversal':
      return loc.activitySupplierPayReversal;
    case 'sale_return':
      return loc.activitySaleReturnLabel;
    default:
      return transactionType.isEmpty ? loc.activityCashMovementFallback : transactionType;
  }
}

String loyaltyKindLabelForActivity(String kind, AppLocalizations loc) {
  switch (kind) {
    case 'earn':
      return loc.activityLoyaltyEarn;
    case 'redeem':
      return loc.activityLoyaltyRedeem;
    case 'adjust':
      return loc.activityLoyaltyAdjust;
    default:
      return kind.isEmpty ? loc.activityLoyaltyFallback : kind;
  }
}

String stockVoucherTypeLabelForActivity(String voucherType, AppLocalizations loc) {
  switch (voucherType) {
    case 'in':
      return loc.activityStockIn;
    case 'out':
      return loc.activityStockOut;
    case 'transfer':
      return loc.activityStockTransfer;
    default:
      return voucherType.isEmpty ? loc.activityStockFallback : voucherType;
  }
}
