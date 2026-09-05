import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:barcode/barcode.dart' as bc;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart' as printing;

import '../l10n/generated/app_localizations.dart';
import '../models/installment.dart';
import '../models/invoice.dart';
import '../models/print_settings_data.dart';
import '../services/database_helper.dart';
import '../services/print_settings_repository.dart';
import 'theme.dart';
import 'customer_debt_deep_link.dart';
import 'invoice_deep_link.dart';

/// Tajawal: عربي + لاتيني (أسماء منتجات، بريد، أرقام) — يقلّل مربعات الاستبدال.
const _kTajawalRegular = 'assets/fonts/Tajawal-Regular.ttf';
const _kTajawalBold = 'assets/fonts/Tajawal-Bold.ttf';
const _kNotoNaskhRegular = 'assets/fonts/NotoNaskhArabic-Regular.ttf';
const _kNotoNaskhBold = 'assets/fonts/NotoNaskhArabic-Bold.ttf';

String _receiptSafe(String? raw) {
  if (raw == null) return '';
  var s = raw.replaceAll('\uFFFD', '').trim();
  s = s.replaceAll(RegExp(r'[\u200B-\u200D\uFEFF]'), '');
  return s;
}

String _itemNameForReceipt(InvoiceItem e) {
  final base = _receiptSafe(e.productName);
  final color = _receiptSafe(e.variantColorNameSnapshot);
  final size = _receiptSafe(e.variantSizeSnapshot);
  final isClothing = e.productVariantId != null;
  if (!isClothing) return base;

  final parts = <String>[
    if (color.isNotEmpty) color,
    if (size.isNotEmpty) size,
  ];
  if (parts.isEmpty) return base;
  if (base.isEmpty) return parts.join(' - ');
  return '$base (${parts.join(' - ')})';
}

String _opIdText(Invoice invoice) {
  final id = invoice.id;
  if (id == null) return '-';
  return id.toString();
}

String _customerLineValue(Invoice invoice) {
  final v = _receiptSafe(invoice.customerName);
  return v;
}

/// اتجاة كتابة الإيصال: عربي ⇒ RTL، بقية اللغات (إنجليزي/فرنسي…) ⇒ LTR.
/// Receipts are always rendered in Arabic for now.
bool _isArabicLocale(Locale? locale) {
  if (locale == null) return true; // backward-compatible default
  return locale.languageCode == 'ar';
}

ui.TextDirection _uiDirectionForLocale(Locale? locale) =>
    _isArabicLocale(locale) ? ui.TextDirection.rtl : ui.TextDirection.ltr;

pw.TextDirection _pwDirectionForLocale(Locale? locale) =>
    _isArabicLocale(locale) ? pw.TextDirection.rtl : pw.TextDirection.ltr;

/// موفّر لغة intl حسب اللغة: لاتيني ⇒ 'en'، فرنسي ⇒ 'fr'، عربي ⇒ 'ar' — وإلا 'en'.
String _intlLocaleTag(Locale? locale) {
  final code = locale?.languageCode.toLowerCase() ?? 'en';
  if (code == 'fr') return 'fr_FR';
  if (code == 'ar') return 'ar';
  return 'en_US';
}

bool _omitReceiptPaymentLine(Invoice invoice, PrintSettingsData s) {
  return invoice.type == InvoiceType.delivery && s.receiptShowBuyerAddressQr;
}

/// نص عربي مرتب يُمسَح من QR (وليس JSON) ليكون مفهوماً في أي قارئ.
String buildReceiptQrPlainText({
  required Invoice invoice,
  required double subtotalBeforeDiscount,
  int maxUtf8Bytes = 950,
  PrintSettingsData? printSettings,
}) {
  final df = DateFormat('yyyy/MM/dd HH:mm');
  final ps = printSettings;
  final omitPay = ps != null && _omitReceiptPaymentLine(invoice, ps);
  String compose(List<String> itemLines) {
    final customerVal = _customerLineValue(invoice);
    final staff = _receiptSafe(invoice.createdByUserName);
    final buf = StringBuffer()
      ..writeln(_l.rpSaleReceipt)
      ..writeln('----------------')
      ..writeln(_l.rpOperationNumber(_opIdText(invoice)))
      ..writeln(_l.rpDateTime(df.format(invoice.date)));
    if (customerVal.isEmpty) {
      buf.writeln(_l.rpCustomer + ':');
    } else {
      buf.writeln(_l.rpCustomerWithValue(customerVal));
    }
    if (omitPay) {
      buf.writeln(_l.rpDeliveryReceipt);
    } else {
      buf.writeln(_l.rpPaymentMethod(salePaymentLabel(invoice.type)));
    }
    if (staff.isNotEmpty) {
      buf.writeln(_l.rpEmployee(staff));
    }
    buf
      ..writeln('----------------')
      ..writeln(_l.rpItems);
    for (final line in itemLines) {
      buf.writeln(line);
    }
    buf
      ..writeln('----------------')
      ..writeln(_l.rpBeforeDiscount(subtotalBeforeDiscount.toStringAsFixed(0)))
      ..writeln(_l.rpDiscount(invoice.discount.toStringAsFixed(0)))
      ..writeln(_l.rpTax(invoice.tax.toStringAsFixed(0)));
    if (invoice.loyaltyDiscount > 0) {
      buf.writeln(
        _l.rpLoyaltyDiscount(invoice.loyaltyDiscount.toStringAsFixed(0)),
      );
    }
    buf
      ..writeln(_l.rpTotal(invoice.total.toStringAsFixed(0)))
      ..writeln(_l.rpBarcode('INV-\${invoice.id ?? 0}'));
    return buf.toString().trimRight();
  }

  final fullItemLines = invoice.items
      .map(
        (e) => _l.rpItemLine(
          _itemNameForReceipt(e),
          e.quantity.toString(),
          e.total.toStringAsFixed(0),
        ),
      )
      .toList();

  var text = compose(fullItemLines);
  if (utf8.encode(text).length <= maxUtf8Bytes) return text;

  for (var keep = fullItemLines.length - 1; keep >= 0; keep--) {
    final shortened = <String>[
      ...fullItemLines.take(keep),
      if (keep < fullItemLines.length)
        _l.rpMoreItems((fullItemLines.length - keep).toString()),
    ];
    text = compose(shortened);
    if (utf8.encode(text).length <= maxUtf8Bytes) return text;
  }

  final cv = _customerLineValue(invoice);
  final custQr = cv.isEmpty ? _l.rpCustomer + ':' : 'العميل: $cv';
  final payLine = omitPay
      ? _l.rpDeliveryShort
      : _l.rpPaymentShort(salePaymentLabel(invoice.type));
  return '''
${_l.rpSaleReceipt}
${_l.rpOperationNumber(_opIdText(invoice))}
${_l.rpDateTime(df.format(invoice.date))}
$custQr
${_l.rpTotal(invoice.total.toStringAsFixed(0))}
$payLine
${_l.rpBarcode('INV-${invoice.id ?? 0}')}'''
      .trim();
}

/// رابط Google Maps من عنوان أو وصف نصي (حمولة QR للهاتف).
String googleMapsSearchUrlFromAddress(String? rawAddress) {
  final t = _receiptSafe(rawAddress);
  if (t.isEmpty) return '';
  return 'https://www.google.com/maps/search/?api=1&query=${Uri.encodeQueryComponent(t)}';
}

String salePaymentLabel(InvoiceType t) {
  switch (t) {
    case InvoiceType.cash:
      return _l.rpCash;
    case InvoiceType.credit:
      return _l.rpCredit;
    case InvoiceType.installment:
      return _l.rpInstallment;
    case InvoiceType.delivery:
      return _l.rpDeliveryType;
    case InvoiceType.debtCollection:
      return _l.rpCreditCollection;
    case InvoiceType.installmentCollection:
      return _l.rpInstallmentPayment;
    case InvoiceType.supplierPayment:
      return _l.rpSupplierPayment;
    case InvoiceType.waafi:
      return _l.rpWaafi;
    case InvoiceType.dahabPlus:
      return _l.rpDahabPlus;
    case InvoiceType.cacPay:
      return _l.rpCacPay;
  }
}

List<pw.Widget> _receiptCreditSummaryWidgets(
  Invoice inv,
  pw.Font font,
  pw.Font fontBold,
) {
  if (inv.type != InvoiceType.credit) return [];
  final paid = inv.advancePayment;
  final rem = (inv.total - inv.advancePayment).clamp(0.0, 1e18);
  return [
    pw.SizedBox(height: 10),
    pw.Divider(thickness: 0.7, color: PdfColors.grey600),
    pw.SizedBox(height: 6),
    pw.Text(
      _l.rpCreditSummary,
      style: pw.TextStyle(font: fontBold, fontSize: 12),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
    pw.SizedBox(height: 4),
    pw.Text(
      _l.rpInvoiceTotal(inv.total.toStringAsFixed(0)),
      style: pw.TextStyle(font: font, fontSize: 11),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
    pw.Text(
      _l.rpAmountPaid(paid.toStringAsFixed(0)),
      style: pw.TextStyle(font: font, fontSize: 11),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
    pw.Text(
      _l.rpRemaining(rem.toStringAsFixed(0)),
      style: pw.TextStyle(font: fontBold, fontSize: 12),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
  ];
}

List<pw.Widget> _receiptInstallmentFinanceWidgets(
  Invoice inv,
  pw.Font font,
  pw.Font fontBold,
) {
  if (inv.type != InvoiceType.installment) return [];
  final rawFinanced = inv.total - inv.advancePayment;
  final financed = inv.installmentFinancedAmount > 1e-6
      ? inv.installmentFinancedAmount
      : (rawFinanced < 0 ? 0.0 : rawFinanced);
  final pct = inv.installmentInterestPct;
  final months = inv.installmentPlannedMonths;
  final interestAmt = inv.installmentInterestAmount;
  final totalWith = inv.installmentTotalWithInterest;
  final monthly = inv.installmentSuggestedMonthly;
  return [
    pw.SizedBox(height: 10),
    pw.Divider(thickness: 0.7, color: PdfColors.grey600),
    pw.SizedBox(height: 6),
    pw.Text(
      _l.rpInstallmentSummary,
      style: pw.TextStyle(font: fontBold, fontSize: 12),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
    pw.SizedBox(height: 4),
    pw.Text(
      _l.rpSalePriceTotal(inv.total.toStringAsFixed(0)),
      style: pw.TextStyle(font: font, fontSize: 11),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
    pw.Text(
      _l.rpAdvancePayment(inv.advancePayment.toStringAsFixed(0)),
      style: pw.TextStyle(font: font, fontSize: 11),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
    pw.Text(
      _l.rpFinancedAmount(financed.toStringAsFixed(0)),
      style: pw.TextStyle(font: font, fontSize: 11),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
    pw.Text(
      _l.rpInterestRate(
        (pct % 1 == 0 ? pct.toInt().toString() : pct.toStringAsFixed(2)),
      ),
      style: pw.TextStyle(font: font, fontSize: 11),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
    pw.Text(
      _l.rpInterestValue(interestAmt.toStringAsFixed(0)),
      style: pw.TextStyle(font: font, fontSize: 11),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
    pw.Text(
      _l.rpTotalWithInterest(
        totalWith > 1e-6
            ? totalWith.toStringAsFixed(0)
            : (financed + interestAmt).toStringAsFixed(0),
      ),
      style: pw.TextStyle(font: fontBold, fontSize: 11),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
    pw.Text(
      _l.rpPlannedMonths(months > 0 ? months.toString() : '—'),
      style: pw.TextStyle(font: font, fontSize: 11),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
    pw.Text(
      _l.rpSuggestedMonthly(monthly > 1e-6 ? monthly.toStringAsFixed(0) : '—'),
      style: pw.TextStyle(font: fontBold, fontSize: 12),
      textAlign: pw.TextAlign.right,
      textDirection: pw.TextDirection.rtl,
    ),
  ];
}

Future<({pw.Font regular, pw.Font bold})> _loadReceiptFonts() async {
  Future<({pw.Font regular, pw.Font bold})?> tryPair(
    String reg,
    String bld,
  ) async {
    try {
      final r = await rootBundle.load(reg);
      final b = await rootBundle.load(bld);
      return (regular: pw.Font.ttf(r), bold: pw.Font.ttf(b));
    } catch (_) {
      return null;
    }
  }

  final t = await tryPair(_kTajawalRegular, _kTajawalBold);
  if (t != null) return t;

  final n = await tryPair(_kNotoNaskhRegular, _kNotoNaskhBold);
  if (n != null) return n;

  try {
    final pair =
        await Future.wait([
          printing.PdfGoogleFonts.notoNaskhArabicRegular(),
          printing.PdfGoogleFonts.notoNaskhArabicBold(),
        ]).timeout(
          const Duration(seconds: 8),
          onTimeout: () => throw TimeoutException('pdf fonts'),
        );
    return (regular: pair[0], bold: pair[1]);
  } catch (_) {
    return (regular: pw.Font.helvetica(), bold: pw.Font.helveticaBold());
  }
}

/// حمولة QR الثانوي على إيصال البيع: يفتح التطبيق (فاتورة / ديون عميل / خرائط) حسب نوع البيع.
({String payload, String title, String subtitle})
saleReceiptSecondaryQrForInvoice({
  required Invoice invoice,
  required double subtotalBeforeDiscount,
  required PrintSettingsData printSettings,
}) {
  final id = invoice.id;
  final plain = buildReceiptQrPlainText(
    invoice: invoice,
    subtotalBeforeDiscount: subtotalBeforeDiscount,
    printSettings: printSettings,
  );

  switch (invoice.type) {
    case InvoiceType.cash:
      if (id != null && id > 0) {
        return (
          payload: InvoiceDeepLink.uriForInvoiceId(id),
          title: _l.rpInvoiceDetails,
          subtitle: _l.rpScanToOpen,
        );
      }
      return (
        payload: plain,
        title: _l.rpInvoiceDetails,
        subtitle: _l.rpReceiptTextSummary,
      );
    case InvoiceType.credit:
      final cid = invoice.customerId;
      if (cid != null && cid > 0) {
        return (
          payload: CustomerDebtDeepLink.uriForCustomerId(cid),
          title: _l.rpDebtorProfile,
          subtitle: _l.rpDebtDetails,
        );
      }
      if (id != null && id > 0) {
        return (
          payload: InvoiceDeepLink.uriForInvoiceId(id),
          title: _l.rpInvoiceDetails,
          subtitle: _l.rpScanToOpen,
        );
      }
      return (
        payload: plain,
        title: _l.rpInvoiceDetails,
        subtitle: _l.rpReceiptSummary,
      );
    case InvoiceType.installment:
      if (id != null && id > 0) {
        return (
          payload: InvoiceDeepLink.uriForInvoiceId(id),
          title: _l.rpInstallmentPlan,
          subtitle: _l.rpInstallmentSchedule,
        );
      }
      return (
        payload: plain,
        title: _l.rpInstallmentPlan,
        subtitle: _l.rpReceiptSummary,
      );
    case InvoiceType.delivery:
      final maps = googleMapsSearchUrlFromAddress(invoice.deliveryAddress);
      if (maps.isNotEmpty) {
        return (
          payload: maps,
          title: _l.rpDeliveryMap,
          subtitle: _l.rpOpenInGoogleMaps,
        );
      }
      if (id != null && id > 0) {
        return (
          payload: InvoiceDeepLink.uriForInvoiceId(id),
          title: _l.rpInvoiceDetails,
          subtitle: _l.rpScanToOpen,
        );
      }
      return (
        payload: plain,
        title: _l.rpDetails,
        subtitle: _l.rpReceiptSummary,
      );
    case InvoiceType.debtCollection:
    case InvoiceType.installmentCollection:
    case InvoiceType.supplierPayment:
    case InvoiceType.waafi:
    case InvoiceType.dahabPlus:
    case InvoiceType.cacPay:
      if (id != null && id > 0) {
        return (
          payload: InvoiceDeepLink.uriForInvoiceId(id),
          title: _l.rpVoucherDetails,
          subtitle: _l.rpScanToOpenVoucher,
        );
      }
      return (
        payload: plain,
        title: _l.rpVoucherDetails,
        subtitle: _l.rpReceiptSummary,
      );
  }
}

/// طباعة إيصال بيع: باركود رقمي + QR يحمل نصاً عربياً مرتباً.
/// Current locale used by helper functions during PDF generation.
Locale? _currentLocale;

/// Current AppLocalizations instance for translated PDF strings.
AppLocalizations? _loc;

/// Non-null accessor for _loc (throws if called before _loc is set).
AppLocalizations get _l => _loc!;

class SaleReceiptPdf {
  /// صفّ استرجاع (Code128 على `INV-{id}`) + QR — يسار QR، يمين الباركود.
  /// [barcodeInvoiceId] ≤ 0 يخفي عمود الباركود حتى لو [showBarcode] = true.
  static List<pw.Widget> _receiptCodesFooterRow({
    required pw.Font font,
    required pw.Font fontBold,
    required String secondaryPayload,
    required String secondaryTitle,
    required String secondarySubtitle,
    required bool showBarcode,
    required bool showSecondaryQr,
    required int barcodeInvoiceId,
    double pageWidth = 595,
  }) {
    final barcodeOk = showBarcode && barcodeInvoiceId > 0;
    if (!barcodeOk && !showSecondaryQr) return [];

    final barcodeW = math.min(168.0, pageWidth * 0.8);
    final barcodeH = barcodeW * 42.0 / 168.0;
    final qrSize = math.min(110.0, pageWidth * 0.6);

    pw.Widget barcodeColumn() => pw.Column(
      children: [
        pw.Text(
          _l.rpReturnItems,
          style: pw.TextStyle(font: fontBold, fontSize: 9),
          textAlign: pw.TextAlign.center,
          textDirection: _pwDirectionForLocale(_currentLocale),
        ),
        pw.SizedBox(height: 4),
        pw.Center(
          child: pw.BarcodeWidget(
            barcode: bc.Barcode.code128(),
            data: 'INV-$barcodeInvoiceId',
            width: barcodeW,
            height: barcodeH,
            drawText: false,
          ),
        ),
        pw.SizedBox(height: 4),
        pw.Center(
          child: pw.Text(
            'INV-$barcodeInvoiceId',
            style: pw.TextStyle(font: font, fontSize: 10),
            textDirection: _pwDirectionForLocale(_currentLocale),
          ),
        ),
      ],
    );

    pw.Widget qrColumn() => pw.Column(
      children: [
        pw.Text(
          secondaryTitle,
          style: pw.TextStyle(font: fontBold, fontSize: 9),
          textAlign: pw.TextAlign.center,
          textDirection: _pwDirectionForLocale(_currentLocale),
        ),
        pw.SizedBox(height: 4),
        pw.Center(
          child: pw.BarcodeWidget(
            barcode: bc.Barcode.qrCode(),
            data: secondaryPayload,
            width: qrSize,
            height: qrSize,
            drawText: false,
          ),
        ),
        pw.SizedBox(height: 2),
        pw.Text(
          secondarySubtitle,
          style: pw.TextStyle(font: font, fontSize: 8),
          textAlign: pw.TextAlign.center,
          textDirection: _pwDirectionForLocale(_currentLocale),
        ),
      ],
    );

    if (barcodeOk && showSecondaryQr) {
      return [
        pw.SizedBox(height: 16),
        pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Expanded(child: qrColumn()),
            pw.SizedBox(width: 12),
            pw.Expanded(child: barcodeColumn()),
          ],
        ),
      ];
    }
    if (barcodeOk) {
      return [pw.SizedBox(height: 16), pw.Center(child: barcodeColumn())];
    }
    return [pw.SizedBox(height: 16), pw.Center(child: qrColumn())];
  }

  static List<pw.Widget> _receiptSaleCodesFooter({
    required Invoice invoice,
    required pw.Font font,
    required pw.Font fontBold,
    required String secondaryPayload,
    required String secondaryTitle,
    required String secondarySubtitle,
    required bool showBarcode,
    required bool showSecondaryQr,
    double pageWidth = 595,
  }) {
    return _receiptCodesFooterRow(
      font: font,
      fontBold: fontBold,
      secondaryPayload: secondaryPayload,
      secondaryTitle: secondaryTitle,
      secondarySubtitle: secondarySubtitle,
      showBarcode: showBarcode,
      showSecondaryQr: showSecondaryQr,
      barcodeInvoiceId: invoice.id ?? 0,
      pageWidth: pageWidth,
    );
  }

  /// يبني ملف PDF كبايتات (للمعاينة داخل التطبيق أو المشاركة).
  static Future<Uint8List> buildPdfBytes({
    required Invoice invoice,
    required double subtotalBeforeDiscount,
    PdfPageFormat pageFormat = PdfPageFormat.a4,
    PrintSettingsData? settings,
    Locale? locale,
    AppLocalizations? loc,
  }) async {
    _currentLocale = locale;
    _loc = loc;
    final s = settings ?? PrintSettingsData.defaults();
    final fonts = await _loadReceiptFonts();
    final font = fonts.regular;
    final fontBold = fonts.bold;

    final omitPayPdf = _omitReceiptPaymentLine(invoice, s);
    final secondaryQr = saleReceiptSecondaryQrForInvoice(
      invoice: invoice,
      subtotalBeforeDiscount: subtotalBeforeDiscount,
      printSettings: s,
    );
    final mapsForDelivery = googleMapsSearchUrlFromAddress(
      invoice.deliveryAddress,
    );
    final isDeliveryMapsQr =
        invoice.type == InvoiceType.delivery && mapsForDelivery.isNotEmpty;
    final showSecondaryQr =
        secondaryQr.payload.isNotEmpty &&
        (s.receiptShowQr || (isDeliveryMapsQr && s.receiptShowBuyerAddressQr));

    InstallmentPlan? saleInstallmentPlan;
    if (invoice.type == InvoiceType.installment && invoice.id != null) {
      try {
        saleInstallmentPlan = await DatabaseHelper()
            .getInstallmentPlanByInvoiceId(invoice.id!);
      } catch (_) {}
    }

    final pdf = pw.Document();
    final df = DateFormat('dd/MM/yyyy HH:mm', 'en_US');

    pdf.addPage(
      pw.Page(
        pageFormat: pageFormat,
        theme: pw.ThemeData.withFont(base: font, bold: fontBold),
        build: (context) {
          final buyerAddressQrWidgets = <pw.Widget>[];
          if (s.receiptShowBuyerAddressQr &&
              invoice.type != InvoiceType.delivery) {
            final locUrl = googleMapsSearchUrlFromAddress(
              invoice.deliveryAddress,
            );
            if (locUrl.isNotEmpty) {
              final addrLine = _receiptSafe(invoice.deliveryAddress);
              final addrQrSize = math.min(108.0, pageFormat.width * 0.6);
              buyerAddressQrWidgets.addAll([
                pw.SizedBox(height: 14),
                pw.Center(
                  child: pw.Text(
                    _l.rpBuyerAddressQr,
                    style: pw.TextStyle(font: fontBold, fontSize: 10),
                    textAlign: pw.TextAlign.center,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ),
                pw.SizedBox(height: 6),
                pw.Center(
                  child: pw.BarcodeWidget(
                    barcode: bc.Barcode.qrCode(),
                    data: locUrl,
                    width: addrQrSize,
                    height: addrQrSize,
                    drawText: false,
                  ),
                ),
                pw.SizedBox(height: 4),
                pw.Center(
                  child: pw.Text(
                    _l.rpScanToOpenMap,
                    style: pw.TextStyle(font: font, fontSize: 9),
                    textAlign: pw.TextAlign.center,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ),
                if (addrLine.isNotEmpty) ...[
                  pw.SizedBox(height: 4),
                  pw.Text(
                    addrLine.length > 200
                        ? '${addrLine.substring(0, 200)}…'
                        : addrLine,
                    style: pw.TextStyle(font: font, fontSize: 8),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                    maxLines: 5,
                    overflow: pw.TextOverflow.clip,
                  ),
                ],
              ]);
            }
          }

          return pw.Padding(
            padding: const pw.EdgeInsets.all(28),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.stretch,
              children: [
                if (_isArabicLocale(_currentLocale) &&
                    s.invoiceShowStoreLogo &&
                    _receiptSafe(s.storeTitleLine).isNotEmpty) ...[
                  pw.Center(
                    child: pw.Text(
                      _receiptSafe(s.storeTitleLine),
                      style: pw.TextStyle(font: fontBold, fontSize: 14),
                      textDirection: _pwDirectionForLocale(_currentLocale),
                    ),
                  ),
                  pw.SizedBox(height: 6),
                ],
                pw.Center(
                  child: pw.Text(
                    _l.rpSaleReceipt,
                    style: pw.TextStyle(font: fontBold, fontSize: 18),
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ),
                pw.SizedBox(height: 10),
                pw.Text(
                  _l.rpDateTimeFull(df.format(invoice.date)),
                  style: pw.TextStyle(font: font, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                if (!omitPayPdf)
                  pw.Text(
                    _l.rpPaymentMethod(salePaymentLabel(invoice.type)),
                    style: pw.TextStyle(font: font, fontSize: 11),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  )
                else
                  pw.Text(
                    _l.rpDeliveryNote,
                    style: pw.TextStyle(font: font, fontSize: 11),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                if (_receiptSafe(invoice.deliveryAddress).isNotEmpty) ...[
                  pw.SizedBox(height: 4),
                  pw.Text(
                    _l.rpAddress(_receiptSafe(invoice.deliveryAddress)),
                    style: pw.TextStyle(font: font, fontSize: 10),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                    maxLines: 6,
                    overflow: pw.TextOverflow.clip,
                  ),
                ],
                pw.SizedBox(height: 10),
                pw.Table(
                  border: pw.TableBorder.all(
                    color: PdfColors.grey400,
                    width: 0.6,
                  ),
                  columnWidths: {
                    0: const pw.FlexColumnWidth(3.2),
                    1: const pw.FlexColumnWidth(1),
                    2: const pw.FlexColumnWidth(1.1),
                  },
                  children: [
                    pw.TableRow(
                      decoration: const pw.BoxDecoration(
                        color: PdfColors.grey300,
                      ),
                      children: [
                        _cell(_l.rpItem, fontBold, 10, true),
                        _cell(_l.rpQuantity, fontBold, 10, true),
                        _cell(_l.rpPrice, fontBold, 10, true),
                      ],
                    ),
                    ...invoice.items.map(
                      (e) => pw.TableRow(
                        children: [
                          _cell(
                            _itemNameForReceipt(e).isEmpty
                                ? '-'
                                : _itemNameForReceipt(e),
                            font,
                            9.5,
                            true,
                          ),
                          _cell('${e.quantity}', font, 9.5, false),
                          _cell(e.price.toStringAsFixed(0), font, 9.5, false),
                        ],
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 10),
                if (s.invoiceShowDiscount)
                  pw.Text(
                    _l.rpPercentDiscount(
                      invoice.discount.toStringAsFixed(0),
                      invoice.discountPercent.toStringAsFixed(2),
                    ),
                    style: pw.TextStyle(font: font, fontSize: 11),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                if (s.invoiceShowTax)
                  pw.Text(
                    _l.rpTax(invoice.tax.toStringAsFixed(0)),
                    style: pw.TextStyle(font: font, fontSize: 11),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                if (invoice.loyaltyDiscount > 0) ...[
                  pw.SizedBox(height: 2),
                  pw.Text(
                    _l.rpLoyaltyDiscount(
                      invoice.loyaltyDiscount.toStringAsFixed(0),
                    ),
                    style: pw.TextStyle(font: font, fontSize: 11),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ],
                pw.SizedBox(height: 4),
                pw.Text(
                  _l.rpFinalTotal(invoice.total.toStringAsFixed(0)),
                  style: pw.TextStyle(font: fontBold, fontSize: 13),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                ..._receiptInstallmentFinanceWidgets(invoice, font, fontBold),
                ...SaleReceiptPdf._receiptInstallmentScheduleTableWidgets(
                  invoice,
                  saleInstallmentPlan,
                  font,
                  fontBold,
                ),
                ..._receiptCreditSummaryWidgets(invoice, font, fontBold),
                if (_isArabicLocale(_currentLocale) &&
                    s.invoiceShowFooterExtra &&
                    _receiptSafe(s.footerExtra).isNotEmpty) ...[
                  pw.SizedBox(height: 10),
                  pw.Divider(thickness: 0.5, color: PdfColors.grey500),
                  pw.SizedBox(height: 6),
                  pw.Text(
                    _receiptSafe(s.footerExtra),
                    style: pw.TextStyle(font: font, fontSize: 9),
                    textAlign: pw.TextAlign.center,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ],
                ...SaleReceiptPdf._receiptSaleCodesFooter(
                  invoice: invoice,
                  font: font,
                  fontBold: fontBold,
                  secondaryPayload: secondaryQr.payload,
                  secondaryTitle: secondaryQr.title,
                  secondarySubtitle: secondaryQr.subtitle,
                  showBarcode: s.receiptShowBarcode,
                  showSecondaryQr: showSecondaryQr,
                  pageWidth: pageFormat.width,
                ),
                ...buyerAddressQrWidgets,
              ],
            ),
          );
        },
      ),
    );

    return pdf.save();
  }

  static pw.Widget _cell(String text, pw.Font font, double size, bool rtl) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: pw.Text(
        text,
        style: pw.TextStyle(font: font, fontSize: size),
        textAlign: rtl ? pw.TextAlign.right : pw.TextAlign.center,
        textDirection: rtl ? pw.TextDirection.rtl : pw.TextDirection.ltr,
        maxLines: 4,
        overflow: pw.TextOverflow.clip,
      ),
    );
  }

  static List<Installment> _orderedInstallmentsForPlan(InstallmentPlan plan) {
    final list = List<Installment>.from(plan.installments);
    list.sort((a, b) => a.dueDate.compareTo(b.dueDate));
    return list;
  }

  static String _installmentDayFmt(DateTime d) =>
      DateFormat('dd/MM/yyyy', 'en').format(d);

  static List<pw.Widget> _receiptInstallmentScheduleTableWidgets(
    Invoice inv,
    InstallmentPlan? plan,
    pw.Font font,
    pw.Font fontBold,
  ) {
    if (inv.type != InvoiceType.installment ||
        plan == null ||
        plan.installments.isEmpty) {
      return [];
    }
    final ord = _orderedInstallmentsForPlan(plan);
    final rows = <pw.Widget>[
      pw.SizedBox(height: 10),
      pw.Divider(thickness: 0.5, color: PdfColors.grey500),
      pw.SizedBox(height: 6),
      pw.Text(
        _l.rpInstallmentTable,
        style: pw.TextStyle(font: fontBold, fontSize: 12),
        textAlign: _isArabicLocale(_currentLocale)
            ? pw.TextAlign.right
            : pw.TextAlign.left,
        textDirection: _pwDirectionForLocale(_currentLocale),
      ),
      pw.SizedBox(height: 6),
      pw.Table(
        border: pw.TableBorder.all(color: PdfColors.grey400, width: 0.5),
        columnWidths: {
          0: const pw.FlexColumnWidth(0.55),
          1: const pw.FlexColumnWidth(1.15),
          2: const pw.FlexColumnWidth(0.95),
          3: const pw.FlexColumnWidth(0.75),
          4: const pw.FlexColumnWidth(1.1),
        },
        children: [
          pw.TableRow(
            decoration: const pw.BoxDecoration(color: PdfColors.grey300),
            children: [
              _cell('#', fontBold, 9, true),
              _cell(_l.rpDueDate, fontBold, 9, true),
              _cell(_l.rpAmount, fontBold, 9, true),
              _cell(_l.rpStatus, fontBold, 9, true),
              _cell(_l.rpPaidDate, fontBold, 9, true),
            ],
          ),
          ...ord.asMap().entries.map((e) {
            final n = e.key + 1;
            final i = e.value;
            final st = i.paid ? _l.rpPaid : _l.rpDue;
            final pd = i.paid && i.paidDate != null
                ? _installmentDayFmt(i.paidDate!)
                : '—';
            return pw.TableRow(
              children: [
                _cell('$n', font, 9, false),
                _cell(_installmentDayFmt(i.dueDate), font, 9, false),
                _cell(
                  _l.rpReceiptItemsAmount(i.amount.toStringAsFixed(0)),
                  font,
                  9,
                  false,
                ),
                _cell(st, font, 9, true),
                _cell(pd, font, 9, false),
              ],
            );
          }),
        ],
      ),
    ];
    final unpaidHints = <pw.Widget>[];
    for (var k = 0; k < ord.length; k++) {
      final i = ord[k];
      if (!i.paid) {
        unpaidHints.add(
          pw.Padding(
            padding: const pw.EdgeInsets.only(top: 3),
            child: pw.Text(
              _l.rpInstallmentDetail(
                (k + 1).toString(),
                i.amount.toStringAsFixed(0),
                _installmentDayFmt(i.dueDate),
              ),
              style: pw.TextStyle(font: font, fontSize: 10),
              textAlign: _isArabicLocale(_currentLocale)
                  ? pw.TextAlign.right
                  : pw.TextAlign.left,
              textDirection: _pwDirectionForLocale(_currentLocale),
            ),
          ),
        );
      }
    }
    if (unpaidHints.isNotEmpty) {
      rows.addAll([
        pw.SizedBox(height: 8),
        pw.Text(
          _l.rpRemainingInstallments,
          style: pw.TextStyle(font: fontBold, fontSize: 11),
          textAlign: _isArabicLocale(_currentLocale)
              ? pw.TextAlign.right
              : pw.TextAlign.left,
          textDirection: _pwDirectionForLocale(_currentLocale),
        ),
        ...unpaidHints,
      ]);
    }
    return rows;
  }

  /// إيصال بعد تسديد قسط: يعرض كل الأقساط المسددة (مع تمييز عملية اليوم) والمتبقية ومواعيدها.
  static Future<Uint8List> buildInstallmentPaymentReceiptBytes({
    required InstallmentPlan plan,
    required int justPaidInstallmentId,
    Invoice? invoice,
    int? receiptInvoiceId,
    PdfPageFormat pageFormat = PdfPageFormat.a4,
    PrintSettingsData? settings,
    Locale? locale,
    AppLocalizations? loc,
  }) async {
    _currentLocale = locale;
    _loc = loc;
    final s = settings ?? PrintSettingsData.defaults();
    final fonts = await _loadReceiptFonts();
    final font = fonts.regular;
    final fontBold = fonts.bold;
    final df = DateFormat('dd/MM/yyyy HH:mm', 'en_US');
    final now = DateTime.now();
    final ord = _orderedInstallmentsForPlan(plan);
    final paidChrono = ord.where((i) => i.paid).toList()
      ..sort((a, b) {
        final ad = a.paidDate ?? a.dueDate;
        final bd = b.paidDate ?? b.dueDate;
        return ad.compareTo(bd);
      });

    final invId = invoice?.id ?? plan.invoiceId;
    final qrPayload = invId > 0
        ? InvoiceDeepLink.uriForInvoiceId(invId)
        : _l.rpInstallmentPlanRef((plan.id ?? 0).toString());

    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: pageFormat,
        theme: pw.ThemeData.withFont(base: font, bold: fontBold),
        build: (context) {
          final paidLines = <pw.Widget>[];
          for (final p in paidChrono) {
            final idx = ord.indexOf(p) + 1;
            final isToday = p.id == justPaidInstallmentId;
            final paidWhen = p.paidDate != null
                ? _installmentDayFmt(p.paidDate!)
                : '—';
            paidLines.add(
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 4),
                child: pw.Text(
                  _l.rpInstallmentLine(
                    p.amount.toStringAsFixed(0),
                    _installmentDayFmt(p.dueDate),
                    idx.toString(),
                    paidWhen + (isToday ? ' ${_l.rpTodayIndicator}' : ''),
                  ),
                  style: pw.TextStyle(
                    font: isToday ? fontBold : font,
                    fontSize: isToday ? 10.5 : 10,
                  ),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
              ),
            );
          }

          final unpaidBlock = <pw.Widget>[];
          for (var k = 0; k < ord.length; k++) {
            final ins = ord[k];
            if (!ins.paid) {
              unpaidBlock.add(
                pw.Padding(
                  padding: const pw.EdgeInsets.only(top: 3),
                  child: pw.Text(
                    _l.rpInstallmentDetail(
                      (k + 1).toString(),
                      ins.amount.toStringAsFixed(0),
                      _installmentDayFmt(ins.dueDate),
                    ),
                    style: pw.TextStyle(font: font, fontSize: 10),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ),
              );
            }
          }

          return pw.Padding(
            padding: const pw.EdgeInsets.all(28),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.stretch,
              children: [
                if (_receiptSafe(s.storeTitleLine).isNotEmpty) ...[
                  pw.Center(
                    child: pw.Text(
                      _receiptSafe(s.storeTitleLine),
                      style: pw.TextStyle(font: fontBold, fontSize: 14),
                      textDirection: _pwDirectionForLocale(_currentLocale),
                    ),
                  ),
                  pw.SizedBox(height: 6),
                ],
                pw.Center(
                  child: pw.Text(
                    _l.rpInstallmentReceipt,
                    style: pw.TextStyle(font: fontBold, fontSize: 18),
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ),
                pw.SizedBox(height: 10),
                pw.Text(
                  _l.rpDateTimeFull(df.format(now)),
                  style: pw.TextStyle(font: font, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.Text(
                  _l.rpInstallmentPlanRef((plan.id ?? '—').toString()),
                  style: pw.TextStyle(font: font, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                if (invId > 0)
                  pw.Text(
                    _l.rpOriginalInvoice(invId.toString()),
                    style: pw.TextStyle(font: fontBold, fontSize: 11),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                if (receiptInvoiceId != null && receiptInvoiceId > 0)
                  pw.Text(
                    _l.rpReceiptVoucher(receiptInvoiceId.toString()),
                    style: pw.TextStyle(font: fontBold, fontSize: 11),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                pw.Text(
                  _l.rpCustomerWithValue(
                    _receiptSafe(
                      plan.customerName.isEmpty
                          ? _l.rpCustomer
                          : plan.customerName,
                    ),
                  ),
                  style: pw.TextStyle(font: font, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.SizedBox(height: 8),
                pw.Divider(color: PdfColors.grey600),
                pw.SizedBox(height: 6),
                pw.Text(
                  _l.rpPaidInstallments,
                  style: pw.TextStyle(font: fontBold, fontSize: 12),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                if (paidLines.isEmpty)
                  pw.Text(
                    _l.rpNoPaidInstallments,
                    style: pw.TextStyle(font: font, fontSize: 10),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  )
                else
                  ...paidLines,
                if (unpaidBlock.isNotEmpty) ...[
                  pw.SizedBox(height: 12),
                  pw.Divider(color: PdfColors.grey500),
                  pw.SizedBox(height: 6),
                  pw.Text(
                    _l.rpRemainingInstallments,
                    style: pw.TextStyle(font: fontBold, fontSize: 12),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                  ...unpaidBlock,
                ] else ...[
                  pw.SizedBox(height: 10),
                  pw.Text(
                    _l.rpAllInstallmentsPaid,
                    style: pw.TextStyle(
                      font: fontBold,
                      fontSize: 11,
                      color: PdfColors.green800,
                    ),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ],
                pw.SizedBox(height: 16),
                if (s.receiptShowQr) ...[
                  pw.Center(
                    child: pw.BarcodeWidget(
                      barcode: bc.Barcode.qrCode(),
                      data: qrPayload,
                      width: 110,
                      height: 110,
                      drawText: false,
                    ),
                  ),
                  pw.SizedBox(height: 6),
                  pw.Center(
                    child: pw.Text(
                      invId > 0 ? _l.rpScanToOpenInvoice : _l.rpPlanRef,
                      style: pw.TextStyle(font: font, fontSize: 9),
                      textAlign: pw.TextAlign.center,
                      textDirection: _pwDirectionForLocale(_currentLocale),
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
    return pdf.save();
  }

  static Future<void> presentInstallmentPaymentReceipt(
    BuildContext context, {
    Locale? locale,
    AppLocalizations? loc,
    required InstallmentPlan plan,
    required int justPaidInstallmentId,
    Invoice? invoice,
    int? receiptInvoiceId,
    PrintSettingsData? printSettings,
  }) async {
    if (!context.mounted) return;
    final settings =
        printSettings ?? await PrintSettingsRepository.instance.load();
    if (!context.mounted) return;
    await Navigator.of(context, rootNavigator: true).push<void>(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (ctx) {
          _currentLocale = locale;
          _loc = loc;
          return Directionality(
            textDirection: _uiDirectionForLocale(_currentLocale),
            child: Scaffold(
              appBar: AppBar(title: const Text('Installment payment receipt')),
              body: printing.PdfPreview(
                maxPageWidth: 720,
                initialPageFormat: settings.pdfPageFormat,
                canChangePageFormat: true,
                canChangeOrientation: false,
                allowPrinting: false,
                allowSharing: true,
                canDebug: false,
                actions: [
                  printing.PdfPreviewAction(
                    icon: const Icon(Icons.print_rounded),
                    onPressed: (c, b, f) => _safePrintAction(c, b, f),
                  ),
                ],
                pdfFileName:
                    'installment-receipt-${plan.id ?? justPaidInstallmentId}.pdf',
                onPrintError: (context, error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        _l.rpNoPrinter,
                        style: const TextStyle(fontFamily: 'NotoNaskhArabic'),
                      ),
                      backgroundColor: Colors.redAccent,
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                build: (() {
                  final cache = <String, Future<Uint8List>>{};
                  return (PdfPageFormat format) {
                    final key =
                        '${plan.id ?? justPaidInstallmentId}|$justPaidInstallmentId|${receiptInvoiceId ?? 0}|${format.width}x${format.height}|${format.marginLeft},${format.marginTop},${format.marginRight},${format.marginBottom}|${settings.hashCode}';
                    return cache.putIfAbsent(
                      key,
                      () => buildInstallmentPaymentReceiptBytes(
                        plan: plan,
                        justPaidInstallmentId: justPaidInstallmentId,
                        invoice: invoice,
                        receiptInvoiceId: receiptInvoiceId,
                        pageFormat: format,
                        settings: settings,
                        locale: locale,
                        loc: loc,
                      ),
                    );
                  };
                })(),
              ),
            ),
          );
        },
      ),
    );
  }

  /// إيصال بعد تسديد دفعة على ديون «آجل» (واجهة ديون العملاء).
  static Future<Uint8List> buildCustomerDebtPaymentReceiptBytes({
    required String customerDisplayName,
    int? customerId,
    required double amountApplied,
    required double debtBefore,
    required double debtAfter,
    required int paymentRowId,
    int? receiptInvoiceId,
    String? recordedByUserName,
    PdfPageFormat pageFormat = PdfPageFormat.a4,
    PrintSettingsData? settings,
    Locale? locale,
    AppLocalizations? loc,
  }) async {
    _currentLocale = locale;
    _loc = loc;
    final s = settings ?? PrintSettingsData.defaults();
    final fonts = await _loadReceiptFonts();
    final font = fonts.regular;
    final fontBold = fonts.bold;
    final df = DateFormat('dd/MM/yyyy HH:mm', 'en_US');
    final now = DateTime.now();

    final qrPayload = customerId != null && customerId > 0
        ? CustomerDebtDeepLink.uriForCustomerId(customerId)
        : (receiptInvoiceId != null && receiptInvoiceId > 0
              ? InvoiceDeepLink.uriForInvoiceId(receiptInvoiceId)
              : _l.rpDebtPaymentReceiptTitle(
                  _receiptSafe(customerDisplayName),
                ));

    final qrTitle = customerId != null && customerId > 0
        ? _l.rpDebtorProfile
        : _l.rpVoucherDetails;
    final qrSubtitle = customerId != null && customerId > 0
        ? _l.rpDebtDetailsAndPayments
        : (receiptInvoiceId != null && receiptInvoiceId > 0
              ? _l.rpScanToOpenDebtVoucher
              : _l.rpPaymentRef);

    final invForBarcode = receiptInvoiceId ?? 0;
    final showDebtQr = s.receiptShowQr && qrPayload.isNotEmpty;

    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: pageFormat,
        theme: pw.ThemeData.withFont(base: font, bold: fontBold),
        build: (context) {
          return pw.Padding(
            padding: const pw.EdgeInsets.all(28),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.stretch,
              children: [
                if (_receiptSafe(s.storeTitleLine).isNotEmpty) ...[
                  pw.Center(
                    child: pw.Text(
                      _receiptSafe(s.storeTitleLine),
                      style: pw.TextStyle(font: fontBold, fontSize: 14),
                      textDirection: _pwDirectionForLocale(_currentLocale),
                    ),
                  ),
                  pw.SizedBox(height: 6),
                ],
                pw.Center(
                  child: pw.Text(
                    _l.rpDebtPaymentReceipt,
                    style: pw.TextStyle(font: fontBold, fontSize: 18),
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ),
                pw.SizedBox(height: 10),
                pw.Text(
                  _l.rpDateTimeFull(df.format(now)),
                  style: pw.TextStyle(font: font, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.Text(
                  _l.rpCustomerWithValue(
                    _receiptSafe(
                      customerDisplayName.isEmpty
                          ? _l.rpCustomer
                          : customerDisplayName,
                    ),
                  ),
                  style: pw.TextStyle(font: fontBold, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                if (customerId != null && customerId > 0)
                  pw.Text(
                    _l.rpRegisteredInCustomers(customerId.toString()),
                    style: pw.TextStyle(font: font, fontSize: 10),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                if (_receiptSafe(recordedByUserName).isNotEmpty)
                  pw.Text(
                    _l.rpRecordedBy(_receiptSafe(recordedByUserName)),
                    style: pw.TextStyle(font: font, fontSize: 10),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                pw.SizedBox(height: 8),
                pw.Divider(color: PdfColors.grey600),
                pw.SizedBox(height: 6),
                pw.Text(
                  _l.rpAmountPaidInThis(amountApplied.toStringAsFixed(0)),
                  style: pw.TextStyle(font: fontBold, fontSize: 12),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.SizedBox(height: 6),
                pw.Text(
                  _l.rpDebtBefore(debtBefore.toStringAsFixed(0)),
                  style: pw.TextStyle(font: font, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.Text(
                  _l.rpDebtAfter(debtAfter.toStringAsFixed(0)),
                  style: pw.TextStyle(font: font, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.SizedBox(height: 8),
                pw.Text(
                  _l.rpAutoDistribute,
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 9,
                    color: PdfColors.grey700,
                  ),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.SizedBox(height: 10),
                pw.Text(
                  _l.rpPaymentRecord(paymentRowId.toString()),
                  style: pw.TextStyle(font: font, fontSize: 10),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                if (receiptInvoiceId != null && receiptInvoiceId > 0)
                  pw.Text(
                    _l.rpReceiptVoucher(receiptInvoiceId.toString()),
                    style: pw.TextStyle(font: fontBold, fontSize: 11),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                if (debtAfter < 1e-6) ...[
                  pw.SizedBox(height: 10),
                  pw.Text(
                    _l.rpAllDebtPaid,
                    style: pw.TextStyle(
                      font: fontBold,
                      fontSize: 11,
                      color: PdfColors.green800,
                    ),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ],
                if (_receiptSafe(s.footerExtra).isNotEmpty) ...[
                  pw.SizedBox(height: 10),
                  pw.Divider(thickness: 0.5, color: PdfColors.grey500),
                  pw.SizedBox(height: 6),
                  pw.Text(
                    _receiptSafe(s.footerExtra),
                    style: pw.TextStyle(font: font, fontSize: 9),
                    textAlign: pw.TextAlign.center,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ],
                ...SaleReceiptPdf._receiptCodesFooterRow(
                  font: font,
                  fontBold: fontBold,
                  secondaryPayload: qrPayload,
                  secondaryTitle: qrTitle,
                  secondarySubtitle: qrSubtitle,
                  showBarcode: s.receiptShowBarcode,
                  showSecondaryQr: showDebtQr,
                  barcodeInvoiceId: invForBarcode,
                  pageWidth: pageFormat.width,
                ),
              ],
            ),
          );
        },
      ),
    );
    return pdf.save();
  }

  static Future<void> presentCustomerDebtPaymentReceipt(
    BuildContext context, {
    Locale? locale,
    AppLocalizations? loc,
    required String customerDisplayName,
    int? customerId,
    required double amountApplied,
    required double debtBefore,
    required double debtAfter,
    required int paymentRowId,
    int? receiptInvoiceId,
    String? recordedByUserName,
    PrintSettingsData? printSettings,
  }) async {
    if (!context.mounted) return;
    final settings =
        printSettings ?? await PrintSettingsRepository.instance.load();
    if (!context.mounted) return;
    await Navigator.of(context, rootNavigator: true).push<void>(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (ctx) {
          final w = MediaQuery.sizeOf(ctx).width;
          final maxPage = math.min(w - 16, 920.0).clamp(200.0, w);
          _currentLocale = locale;
          _loc = loc;
          return Directionality(
            textDirection: _uiDirectionForLocale(_currentLocale),
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                  icon: const Icon(Icons.close_rounded),
                  tooltip: _l.rpClose,
                  onPressed: () => Navigator.of(ctx).pop(),
                ),
                title: const Text('Debt payment receipt'),
              ),
              body: ColoredBox(
                color: Theme.of(ctx).colorScheme.surface,
                child: printing.PdfPreview(
                  padding: const EdgeInsets.all(8),
                  maxPageWidth: maxPage,
                  initialPageFormat: settings.pdfPageFormat,
                  canChangePageFormat: true,
                  canChangeOrientation: false,
                  allowPrinting: false,
                  allowSharing: true,
                  canDebug: false,
                  actions: [
                    printing.PdfPreviewAction(
                      icon: const Icon(Icons.print_rounded),
                      onPressed: (c, b, f) => _safePrintAction(c, b, f),
                    ),
                  ],
                  pdfFileName:
                      'debt-receipt-$paymentRowId${receiptInvoiceId != null ? '-$receiptInvoiceId' : ''}.pdf',
                  onPrintError: (context, error) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          _l.rpNoPrinter,
                          style: const TextStyle(fontFamily: 'NotoNaskhArabic'),
                        ),
                        backgroundColor: Colors.redAccent,
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  build: (() {
                    final cache = <String, Future<Uint8List>>{};
                    return (PdfPageFormat format) {
                      final key =
                          '$paymentRowId|${receiptInvoiceId ?? 0}|${customerId ?? 0}|${format.width}x${format.height}|${format.marginLeft},${format.marginTop},${format.marginRight},${format.marginBottom}|${settings.hashCode}';
                      return cache.putIfAbsent(
                        key,
                        () => buildCustomerDebtPaymentReceiptBytes(
                          customerDisplayName: customerDisplayName,
                          customerId: customerId,
                          amountApplied: amountApplied,
                          debtBefore: debtBefore,
                          debtAfter: debtAfter,
                          paymentRowId: paymentRowId,
                          receiptInvoiceId: receiptInvoiceId,
                          recordedByUserName: recordedByUserName,
                          pageFormat: format,
                          settings: settings,
                          locale: locale,
                          loc: loc,
                        ),
                      );
                    };
                  })(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// معاينة الإيصال مع طباعة ومشاركة.
  ///
  /// [fullScreen] عند `true`: صفحة كاملة (كالمعتاد بعد البيع) — يُفضَّل مع [BuildContext]
  /// من [MaterialApp.navigatorKey] بعد إغلاق شاشة البيع.
  ///
  /// [onOpenDetailsFromPdf] — زر اختياري في الشريط (مثلاً من قائمة الفواتير).
  static Future<void> presentReceipt(
    BuildContext context, {
    required Invoice invoice,
    Locale? locale,
    AppLocalizations? loc,
    required double subtotalBeforeDiscount,
    PrintSettingsData? printSettings,
    void Function(BuildContext pdfContext)? onOpenDetailsFromPdf,
    bool fullScreen = false,
  }) async {
    if (!context.mounted) return;
    final settings =
        printSettings ?? await PrintSettingsRepository.instance.load();
    if (!context.mounted) return;

    if (fullScreen) {
      final openDetails = onOpenDetailsFromPdf;
      await Navigator.of(context, rootNavigator: true).push<void>(
        MaterialPageRoute<void>(
          fullscreenDialog: true,
          builder: (ctx) {
            final w = MediaQuery.sizeOf(ctx).width;
            final maxPage = math.min(w - 16, 920.0).clamp(200.0, w);
            _currentLocale = locale;
            _loc = loc;
            return Directionality(
              textDirection: _uiDirectionForLocale(_currentLocale),
              child: Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                    icon: const Icon(Icons.close_rounded),
                    tooltip: 'Close',
                    onPressed: () => Navigator.of(ctx).pop(),
                  ),
                  title: const Text('Sale receipt'),
                  actions: [
                    if (openDetails != null)
                      IconButton(
                        icon: const Icon(Icons.receipt_long_outlined),
                        tooltip: _l.rpFullInvoiceDetails,
                        onPressed: () => openDetails(ctx),
                      ),
                  ],
                ),
                body: ColoredBox(
                  color: Theme.of(ctx).colorScheme.surface,
                  child: printing.PdfPreview(
                    padding: const EdgeInsets.all(8),
                    maxPageWidth: maxPage,
                    initialPageFormat: settings.pdfPageFormat,
                    canChangePageFormat: true,
                    canChangeOrientation: false,
                    allowPrinting: false,
                    allowSharing: true,
                    canDebug: false,
                    actions: [
                      printing.PdfPreviewAction(
                        icon: const Icon(Icons.print_rounded),
                        onPressed: (c, b, f) => _safePrintAction(c, b, f),
                      ),
                    ],
                    pdfFileName: 'receipt-${invoice.id ?? "sale"}.pdf',
                    onPrintError: (context, error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'No printer found. Please check printer connection.',
                          ),
                          backgroundColor: Colors.redAccent,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    build: (() {
                      final cache = <String, Future<Uint8List>>{};
                      return (PdfPageFormat format) {
                        final key =
                            '${invoice.id ?? "sale"}|${format.width}x${format.height}|${format.marginLeft},${format.marginTop},${format.marginRight},${format.marginBottom}|${settings.hashCode}';
                        return cache.putIfAbsent(
                          key,
                          () => buildPdfBytes(
                            invoice: invoice,
                            subtotalBeforeDiscount: subtotalBeforeDiscount,
                            pageFormat: format,
                            settings: settings,
                            locale: locale,
                            loc: loc,
                          ),
                        );
                      };
                    })(),
                  ),
                ),
              ),
            );
          },
        ),
      );
      return;
    }

    await showDialog<void>(
      context: context,
      useRootNavigator: true,
      barrierDismissible: true,
      builder: (dialogContext) {
        final mq = MediaQuery.of(dialogContext);
        final sz = mq.size;
        final maxW = math.min(620.0, sz.width - 20).clamp(260.0, sz.width);
        final maxH = math
            .min(sz.height * 0.88, 720.0)
            .clamp(280.0, sz.height - 24);
        final openDetails = onOpenDetailsFromPdf;

        _currentLocale = locale;
        _loc = loc;
        return Directionality(
          textDirection: _uiDirectionForLocale(_currentLocale),
          child: Dialog(
            insetPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 18,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            clipBehavior: Clip.antiAlias,
            child: SizedBox(
              width: maxW,
              height: maxH,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Material(
                    color: AppTheme.primaryColor,
                    child: SizedBox(
                      height: 48,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.close_rounded,
                              color: Colors.white,
                            ),
                            tooltip: _l.rpClose,
                            onPressed: () => Navigator.of(dialogContext).pop(),
                          ),
                          Expanded(
                            child: Text(
                              _l.rpSaleReceiptTitle,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          if (openDetails != null)
                            IconButton(
                              icon: const Icon(
                                Icons.receipt_long_outlined,
                                color: Colors.white,
                              ),
                              tooltip: _l.rpFullInvoiceDetails,
                              onPressed: () => openDetails(dialogContext),
                            )
                          else
                            const SizedBox(width: 48),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ColoredBox(
                      color: Theme.of(dialogContext).colorScheme.surface,
                      child: printing.PdfPreview(
                        padding: const EdgeInsets.all(6),
                        maxPageWidth: maxW - 16,
                        initialPageFormat: settings.pdfPageFormat,
                        canChangePageFormat: true,
                        canChangeOrientation: false,
                        allowPrinting: false,
                        allowSharing: true,
                        canDebug: false,
                        actions: [
                          printing.PdfPreviewAction(
                            icon: const Icon(Icons.print_rounded),
                            onPressed: (c, b, f) => _safePrintAction(c, b, f),
                          ),
                        ],
                        pdfFileName: 'receipt-${invoice.id ?? "sale"}.pdf',
                        onPrintError: (context, error) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                _l.rpNoPrinter,
                                style: TextStyle(fontFamily: 'NotoNaskhArabic'),
                              ),
                              backgroundColor: Colors.redAccent,
                              behavior: SnackBarBehavior.floating,
                            ),
                          );
                        },
                        build: (format) => buildPdfBytes(
                          locale: locale,
                          loc: loc,
                          invoice: invoice,
                          subtotalBeforeDiscount: subtotalBeforeDiscount,
                          pageFormat: format,
                          settings: settings,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static Future<Uint8List> buildSupplierPaymentReceiptBytes({
    required String supplierDisplayName,
    required double amountPaid,
    required double payableBefore,
    required double payableAfter,
    required int payoutRowId,
    required int receiptInvoiceId,
    required bool affectsCash,
    String? note,
    String? recordedByUserName,
    PdfPageFormat pageFormat = PdfPageFormat.a4,
    PrintSettingsData? settings,
    Locale? locale,
    AppLocalizations? loc,
  }) async {
    _currentLocale = locale;
    _loc = loc;
    final s = settings ?? PrintSettingsData.defaults();
    final fonts = await _loadReceiptFonts();
    final font = fonts.regular;
    final fontBold = fonts.bold;
    final df = DateFormat('dd/MM/yyyy HH:mm', 'en_US');
    final now = DateTime.now();

    final qrPayload = InvoiceDeepLink.uriForInvoiceId(receiptInvoiceId);

    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: pageFormat,
        theme: pw.ThemeData.withFont(base: font, bold: fontBold),
        build: (context) {
          return pw.Padding(
            padding: const pw.EdgeInsets.all(28),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.stretch,
              children: [
                if (_receiptSafe(s.storeTitleLine).isNotEmpty) ...[
                  pw.Center(
                    child: pw.Text(
                      _receiptSafe(s.storeTitleLine),
                      style: pw.TextStyle(font: fontBold, fontSize: 14),
                      textDirection: _pwDirectionForLocale(_currentLocale),
                    ),
                  ),
                  pw.SizedBox(height: 6),
                ],
                pw.Center(
                  child: pw.Text(
                    _l.rpSupplierPaymentReceipt,
                    style: pw.TextStyle(font: fontBold, fontSize: 18),
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ),
                pw.SizedBox(height: 10),
                pw.Text(
                  _l.rpDateTimeFull(df.format(now)),
                  style: pw.TextStyle(font: font, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.Text(
                  _l.rpCustomerWithValue(
                    _receiptSafe(
                      supplierDisplayName.isEmpty
                          ? _l.rpCustomer
                          : supplierDisplayName,
                    ),
                  ),
                  style: pw.TextStyle(font: fontBold, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                if (_receiptSafe(recordedByUserName).isNotEmpty)
                  pw.Text(
                    _l.rpRecordedBy(_receiptSafe(recordedByUserName)),
                    style: pw.TextStyle(font: font, fontSize: 10),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                pw.SizedBox(height: 8),
                pw.Divider(color: PdfColors.grey600),
                pw.SizedBox(height: 6),
                pw.Text(
                  _l.rpPaidAmount(amountPaid.toStringAsFixed(0)),
                  style: pw.TextStyle(font: fontBold, fontSize: 12),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.SizedBox(height: 6),
                pw.Text(
                  _l.rpPayableBefore(payableBefore.toStringAsFixed(0)),
                  style: pw.TextStyle(font: font, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.Text(
                  _l.rpPayableAfter(payableAfter.toStringAsFixed(0)),
                  style: pw.TextStyle(font: font, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.SizedBox(height: 6),
                pw.Text(
                  affectsCash
                      ? _l.rpDeductedFromCash
                      : _l.rpNotDeductedFromCash,
                  style: pw.TextStyle(
                    font: font,
                    fontSize: 10,
                    color: PdfColors.grey800,
                  ),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                if (_receiptSafe(note).isNotEmpty) ...[
                  pw.SizedBox(height: 6),
                  pw.Text(
                    _l.rpNote(_receiptSafe(note)),
                    style: pw.TextStyle(font: font, fontSize: 10),
                    textAlign: _isArabicLocale(_currentLocale)
                        ? pw.TextAlign.right
                        : pw.TextAlign.left,
                    textDirection: _pwDirectionForLocale(_currentLocale),
                  ),
                ],
                pw.SizedBox(height: 10),
                pw.Text(
                  _l.rpVoucherRecord(payoutRowId.toString()),
                  style: pw.TextStyle(font: font, fontSize: 10),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.Text(
                  _l.rpInvoiceVoucher(receiptInvoiceId.toString()),
                  style: pw.TextStyle(font: fontBold, fontSize: 11),
                  textAlign: _isArabicLocale(_currentLocale)
                      ? pw.TextAlign.right
                      : pw.TextAlign.left,
                  textDirection: _pwDirectionForLocale(_currentLocale),
                ),
                pw.SizedBox(height: 16),
                if (s.receiptShowQr) ...[
                  pw.Center(
                    child: pw.BarcodeWidget(
                      barcode: bc.Barcode.qrCode(),
                      data: qrPayload,
                      width: 110,
                      height: 110,
                      drawText: false,
                    ),
                  ),
                  pw.SizedBox(height: 6),
                  pw.Center(
                    child: pw.Text(
                      _l.rpScanToOpenVoucher,
                      style: pw.TextStyle(font: font, fontSize: 9),
                      textAlign: pw.TextAlign.center,
                      textDirection: _pwDirectionForLocale(_currentLocale),
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
    return pdf.save();
  }

  static Future<void> presentSupplierPaymentReceipt(
    BuildContext context, {
    Locale? locale,
    AppLocalizations? loc,
    required String supplierDisplayName,
    required double amountPaid,
    required double payableBefore,
    required double payableAfter,
    required int payoutRowId,
    required int receiptInvoiceId,
    required bool affectsCash,
    String? note,
    String? recordedByUserName,
    PrintSettingsData? printSettings,
  }) async {
    if (!context.mounted) return;
    final settings =
        printSettings ?? await PrintSettingsRepository.instance.load();
    if (!context.mounted) return;
    await Navigator.of(context, rootNavigator: true).push<void>(
      MaterialPageRoute<void>(
        fullscreenDialog: true,
        builder: (ctx) {
          _currentLocale = locale;
          _loc = loc;
          return Directionality(
            textDirection: _uiDirectionForLocale(_currentLocale),
            child: Scaffold(
              appBar: AppBar(title: const Text('Supplier payment receipt')),
              body: printing.PdfPreview(
                maxPageWidth: 720,
                initialPageFormat: settings.pdfPageFormat,
                canChangePageFormat: true,
                canChangeOrientation: false,
                allowPrinting: false,
                allowSharing: true,
                canDebug: false,
                actions: [
                  printing.PdfPreviewAction(
                    icon: const Icon(Icons.print_rounded),
                    onPressed: (c, b, f) => _safePrintAction(c, b, f),
                  ),
                ],
                pdfFileName:
                    'supplier-payment-$payoutRowId-$receiptInvoiceId.pdf',
                onPrintError: (context, error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        _l.rpNoPrinter,
                        style: const TextStyle(fontFamily: 'NotoNaskhArabic'),
                      ),
                      backgroundColor: Colors.redAccent,
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
                build: (() {
                  final cache = <String, Future<Uint8List>>{};
                  return (PdfPageFormat format) {
                    final key =
                        '$payoutRowId|$receiptInvoiceId|${format.width}x${format.height}|${format.marginLeft},${format.marginTop},${format.marginRight},${format.marginBottom}|${settings.hashCode}';
                    return cache.putIfAbsent(
                      key,
                      () => buildSupplierPaymentReceiptBytes(
                        locale: locale,
                        loc: loc,
                        supplierDisplayName: supplierDisplayName,
                        amountPaid: amountPaid,
                        payableBefore: payableBefore,
                        payableAfter: payableAfter,
                        payoutRowId: payoutRowId,
                        receiptInvoiceId: receiptInvoiceId,
                        affectsCash: affectsCash,
                        note: note,
                        recordedByUserName: recordedByUserName,
                        pageFormat: format,
                        settings: settings,
                      ),
                    );
                  };
                })(),
              ),
            ),
          );
        },
      ),
    );
  }

  static Future<void> _safePrintAction(
    BuildContext context,
    FutureOr<Uint8List> Function(PdfPageFormat) buildPdf,
    PdfPageFormat pageFormat,
  ) async {
    final scaffoldMsg = ScaffoldMessenger.of(context);
    try {
      final bytes = await buildPdf(pageFormat);

      // Try direct printing: enumerate system printers, pick the default
      // (or first available), then send the PDF straight to it.
      final printers = await printing.Printing.listPrinters();
      if (printers.isNotEmpty) {
        final printer = printers.firstWhere(
          (p) => p.isDefault,
          orElse: () => printers.first,
        );
        await printing.Printing.directPrintPdf(
          printer: printer,
          onLayout: (_) async => bytes,
          format: pageFormat,
          name: 'receipt',
        );
        return;
      }

      // No printers found — fall back to the platform print dialog
      // (Android shows its native print sheet; desktop opens the PDF
      // in a browser where the user can print from there).
      await printing.Printing.layoutPdf(
        onLayout: (_) async => bytes,
        format: pageFormat,
        name: 'receipt',
      );
    } catch (e) {
      scaffoldMsg.showSnackBar(
        SnackBar(
          content: Text(
            _l.rpPrintError,
            style: const TextStyle(fontFamily: 'NotoNaskhArabic'),
          ),
          backgroundColor: Colors.redAccent,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }
}
