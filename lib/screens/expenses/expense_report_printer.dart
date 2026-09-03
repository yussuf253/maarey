import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:intl/intl.dart' hide TextDirection;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../models/expense.dart';
import '../../services/database_helper.dart';
import '../../l10n/generated/app_localizations.dart';

/// نافذة اختيار فترة فاتورة التقرير.
class _ReportRangeQuickOption {
  const _ReportRangeQuickOption({
    required this.label,
    required this.compute,
  });
  final String label;
  final DateTimeRange Function() compute;
}

class _ReportRangePickerDialog extends StatefulWidget {
  const _ReportRangePickerDialog({required this.initial});
  final DateTimeRange initial;

  @override
  State<_ReportRangePickerDialog> createState() => _ReportRangePickerDialogState();
}

class _ReportRangePickerDialogState extends State<_ReportRangePickerDialog> {
  late DateTimeRange _range = widget.initial;

  DateTime get _today => DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  List<_ReportRangeQuickOption> _options(BuildContext context) { final loc = AppLocalizations.of(context)!; return [
        _ReportRangeQuickOption(
          label: loc.expDaily,
          compute: () {
            final d = _today;
            return DateTimeRange(start: d, end: d);
          },
        ),
        _ReportRangeQuickOption(
          label: loc.expWeekly,
          compute: () {
            final end = _today;
            final start = end.subtract(const Duration(days: 6));
            return DateTimeRange(start: start, end: end);
          },
        ),
        _ReportRangeQuickOption(
          label: loc.expMonthly,
          compute: () {
            final now = DateTime.now();
            return DateTimeRange(
              start: DateTime(now.year, now.month, 1),
              end: _today,
            );
          },
        ),
        _ReportRangeQuickOption(
          label: loc.expYearly,
          compute: () {
            final now = DateTime.now();
            return DateTimeRange(
              start: DateTime(now.year, 1, 1),
              end: _today,
            );
          },
        ),
      ];
  }

  Future<void> _pickCustom() async {
    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2018),
      lastDate: _today,
      initialDateRange: _range,
      builder: (ctx, child) => Directionality(
        textDirection: Directionality.of(context),
        child: child!,
      ),
    );
    if (picked != null) setState(() => _range = picked);
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;
    final dateFmt = DateFormat('yyyy/MM/dd', 'en');
    final label = '${dateFmt.format(_range.start)}  ->  ${dateFmt.format(_range.end)}';

    return Directionality(
      textDirection: Directionality.of(context),
      child: AlertDialog(
        title: Text(loc.expPrintReport),
        content: SizedBox(
          width: 460,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                loc.expChoosePeriod,
                style: TextStyle(color: cs.onSurfaceVariant),
              ),
              const SizedBox(height: 10),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final opt in _options(context))
                    OutlinedButton.icon(
                      onPressed: () => setState(() => _range = opt.compute()),
                      icon: const Icon(Icons.event_rounded, size: 16),
                      label: Text(opt.label),
                    ),
                  OutlinedButton.icon(
                    onPressed: _pickCustom,
                    icon: const Icon(Icons.edit_calendar_rounded, size: 16),
                    label: Text(loc.expCustom),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  color: cs.primaryContainer.withValues(alpha: 0.35),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: cs.outlineVariant.withValues(alpha: 0.6),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.date_range_rounded, color: cs.primary),
                    const SizedBox(width: 8),
                    Text(
                      loc.expSelectedPeriod,
                      style: const TextStyle(fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    Text(
                      label,
                      textDirection: TextDirection.ltr,
                      style: const TextStyle(fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(loc.expCancel),
          ),
          FilledButton.icon(
            onPressed: () => Navigator.of(context).pop(_range),
            icon: const Icon(Icons.print_rounded, size: 16),
            label: Text(loc.expPrint),
          ),
        ],
      ),
    );
  }
}

Future<DateTimeRange?> showExpenseReportRangePicker(
  BuildContext context,
  DateTimeRange initial,
) {
  return showDialog<DateTimeRange>(
    context: context,
    builder: (_) => _ReportRangePickerDialog(initial: initial),
  );
}

/// Localized strings record for PDF generation.
class _PdfLabels {
  final String reportTitle, periodLabel, createdLabel, pageLabel, categoryLabel, totalLabel, percentageLabel, operationsLabel, paidLabel, pendingLabel, dateLabel, amountLabel, descriptionLabel, staffLabel, expenseReasonLabel, noNoteHint;
  const _PdfLabels({required this.reportTitle, required this.periodLabel, required this.createdLabel, required this.pageLabel, required this.categoryLabel, required this.totalLabel, required this.percentageLabel, required this.operationsLabel, required this.paidLabel, required this.pendingLabel, required this.dateLabel, required this.amountLabel, required this.descriptionLabel, required this.staffLabel, required this.expenseReasonLabel, required this.noNoteHint});
}

/// Expense report PDF generator with RTL Arabic support.
class ExpenseReportPrinter {
  ExpenseReportPrinter._();

  static final _moneyFmt = NumberFormat('#,##0', 'en');
  static final _dateFmt = DateFormat('yyyy/MM/dd', 'en');

  static Future<pw.Font> _loadAsset(String path) async {
    final data = await rootBundle.load(path);
    return pw.Font.ttf(data);
  }

  static Future<void> show({
    required BuildContext context,
    required DateTime from,
    required DateTime to,
  }) async {
    final loc = AppLocalizations.of(context)!;
    final db = DatabaseHelper();

    // نعيد استخدام نفس استعلامات قاعدة البيانات الحالية للمصروفات.
    final rows = await db.getExpenses(
      from: from,
      to: to,
      status: 'all',
      limit: 10000,
    );
    final items = rows.map(ExpenseEntry.fromJoinedRow).toList();
    final total = items.fold<double>(0, (a, b) => a + b.amount);
    final paid = items
        .where((e) => e.status == ExpenseStatus.paid)
        .fold<double>(0, (a, b) => a + b.amount);
    final pending = total - paid;

    final byCategory = <String, List<ExpenseEntry>>{};
    for (final e in items) {
      byCategory.putIfAbsent(e.categoryName, () => <ExpenseEntry>[]).add(e);
    }
    final sortedCategoryKeys = byCategory.keys.toList()
      ..sort((a, b) {
        final ta = byCategory[a]!.fold<double>(0, (s, e) => s + e.amount);
        final tb = byCategory[b]!.fold<double>(0, (s, e) => s + e.amount);
        return tb.compareTo(ta);
      });

    final arFont = await _loadAsset('assets/fonts/NotoNaskhArabic-Regular.ttf');
    final arBold = await _loadAsset('assets/fonts/NotoNaskhArabic-Bold.ttf');
    final latinFont = await _loadAsset('assets/fonts/Tajawal-Regular.ttf');
    final latinBold = await _loadAsset('assets/fonts/Tajawal-Bold.ttf');

    final labels = _PdfLabels(
      reportTitle: loc.expReportTitle,
      periodLabel: loc.expPeriodLabel,
      createdLabel: loc.expCreatedLabel,
      pageLabel: loc.expPageLabel('{current}', '{total}'),
      categoryLabel: loc.expCategory,
      totalLabel: loc.expTotal,
      percentageLabel: loc.expPercentage,
      operationsLabel: loc.expOperationsCount,
      paidLabel: loc.expPaid,
      pendingLabel: loc.expPending,
      dateLabel: loc.expDate,
      amountLabel: loc.expAmount,
      descriptionLabel: loc.expDescription,
      staffLabel: loc.expStaff,
      expenseReasonLabel: loc.expExpenseReason,
      noNoteHint: loc.expNoNoteHint,
    );
    final doc = pw.Document();
    doc.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(24),
        textDirection: pw.TextDirection.rtl,
        theme: pw.ThemeData.withFont(
          base: arFont,
          bold: arBold,
          fontFallback: [latinFont, latinBold],
        ),
        header: (ctx) => _pdfHeader(from, to, labels),
        footer: (ctx) => _pdfFooter(ctx, labels),
        build: (ctx) => [
          _pdfSummary(total: total, paid: paid, pending: pending, count: items.length, labels: labels),
          pw.SizedBox(height: 10),
          _pdfCategoryBreakdownTable(
            categoriesOrder: sortedCategoryKeys,
            byCategory: byCategory,
            total: total,
            labels: labels,
          ),
          pw.SizedBox(height: 14),
          ..._pdfCategoriesDetails(
            categoriesOrder: sortedCategoryKeys,
            byCategory: byCategory,
            labels: labels,
          ),
        ],
      ),
    );

    await Printing.layoutPdf(onLayout: (_) async => doc.save());
  }

  static pw.Widget _pdfHeader(DateTime from, DateTime to, _PdfLabels labels) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.stretch,
      children: [
        pw.Center(
          child: pw.Text(
            labels.reportTitle,
            style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold),
          ),
        ),
        pw.SizedBox(height: 2),
        pw.Center(
          child: pw.Text(
            '${labels.periodLabel}: ${_dateFmt.format(from)}  ->  ${_dateFmt.format(to)}',
            style: const pw.TextStyle(fontSize: 10, color: PdfColors.grey700),
          ),
        ),
        pw.SizedBox(height: 6),
        pw.Divider(thickness: 0.6, color: PdfColors.grey500),
      ],
    );
  }

  static pw.Widget _pdfFooter(pw.Context ctx, _PdfLabels labels) {
    return pw.Padding(
      padding: const pw.EdgeInsets.only(top: 6),
      child: pw.Row(
        children: [
          pw.Text(
            '${labels.createdLabel}: ${_dateFmt.format(DateTime.now())}',
            style: const pw.TextStyle(fontSize: 9, color: PdfColors.grey600),
          ),
          pw.Spacer(),
          pw.Text(
            '${labels.pageLabel.replaceAll('{current}', '${ctx.pageNumber}').replaceAll('{total}', '${ctx.pagesCount}')}',
            style: const pw.TextStyle(fontSize: 9, color: PdfColors.grey600),
          ),
        ],
      ),
    );
  }

  static pw.Widget _pdfSummary({
    required double total,
    required double paid,
    required double pending,
    required int count,
    required _PdfLabels labels,
  }) {
    pw.Widget box(String label, String value, {PdfColor? color}) {
      return pw.Expanded(
        child: pw.Container(
          padding: const pw.EdgeInsets.all(10),
          margin: const pw.EdgeInsets.symmetric(horizontal: 3),
          decoration: pw.BoxDecoration(
            color: PdfColors.grey100,
            borderRadius: pw.BorderRadius.circular(6),
          ),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Text(label,
                  style: const pw.TextStyle(fontSize: 9, color: PdfColors.grey700)),
              pw.SizedBox(height: 3),
              pw.Text(
                value,
                textDirection: pw.TextDirection.ltr,
                style: pw.TextStyle(
                  fontSize: 12,
                  fontWeight: pw.FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return pw.Row(
      children: [
        box(labels.totalLabel, '${_moneyFmt.format(total)} Fdj', color: PdfColors.indigo900),
        box(labels.paidLabel, '${_moneyFmt.format(paid)} Fdj', color: PdfColors.green800),
        box(labels.pendingLabel, '${_moneyFmt.format(pending)} Fdj', color: PdfColors.amber900),
        box(labels.operationsLabel, '$count'),
      ],
    );
  }

  static pw.Widget _pdfCategoryBreakdownTable({
    required List<String> categoriesOrder,
    required Map<String, List<ExpenseEntry>> byCategory,
    required double total,
    required _PdfLabels labels,
  }) {
    return pw.Table(
      border: pw.TableBorder.all(color: PdfColors.grey300, width: 0.4),
      columnWidths: {
        0: const pw.FlexColumnWidth(3),
        1: const pw.FlexColumnWidth(2),
        2: const pw.FlexColumnWidth(2),
        3: const pw.FlexColumnWidth(2),
      },
      children: [
        pw.TableRow(
          decoration: const pw.BoxDecoration(color: PdfColors.grey200),
          children: [
            _pdfCell(labels.categoryLabel, isHeader: true),
            _pdfCell(labels.totalLabel, isHeader: true, ltr: true),
            _pdfCell(labels.percentageLabel, isHeader: true, ltr: true),
            _pdfCell(labels.operationsLabel, isHeader: true, ltr: true),
          ],
        ),
        for (final key in categoriesOrder)
          pw.TableRow(children: [
            _pdfCell(key),
            _pdfCell(
              '${_moneyFmt.format(byCategory[key]!.fold<double>(0, (s, e) => s + e.amount))} Fdj',
              ltr: true,
            ),
            _pdfCell(
              total <= 0
                  ? '0%'
                  : '${(byCategory[key]!.fold<double>(0, (s, e) => s + e.amount) / total * 100).toStringAsFixed(1)}%',
              ltr: true,
            ),
            _pdfCell('${byCategory[key]!.length}', ltr: true),
          ]),
      ],
    );
  }

  static List<pw.Widget> _pdfCategoriesDetails({
    required List<String> categoriesOrder,
    required Map<String, List<ExpenseEntry>> byCategory,
    required _PdfLabels labels,
  }) {
    final widgets = <pw.Widget>[];
    for (final key in categoriesOrder) {
      final list = byCategory[key]!;
      widgets.add(
        pw.Padding(
          padding: const pw.EdgeInsets.only(top: 10, bottom: 4),
          child: pw.Text(
            key,
            style: pw.TextStyle(fontSize: 12, fontWeight: pw.FontWeight.bold),
          ),
        ),
      );

      if (key == 'رواتب') {
        widgets.add(_pdfSalariesTable(list, labels));
      } else if (key == 'مصاريف متنوعة') {
        widgets.add(_pdfMiscTableWithNotes(list, labels));
      } else {
        widgets.add(_pdfStandardCategoryTable(list, labels));
      }
    }
    return widgets;
  }

  static pw.Widget _pdfStandardCategoryTable(List<ExpenseEntry> list, _PdfLabels labels) {
    return pw.Table(
      border: pw.TableBorder.all(color: PdfColors.grey300, width: 0.4),
      columnWidths: {
        0: const pw.FlexColumnWidth(2),
        1: const pw.FlexColumnWidth(2),
        2: const pw.FlexColumnWidth(3),
      },
      children: [
        pw.TableRow(
          decoration: const pw.BoxDecoration(color: PdfColors.grey100),
          children: [
            _pdfCell(labels.dateLabel, isHeader: true, ltr: true),
            _pdfCell(labels.amountLabel, isHeader: true, ltr: true),
            _pdfCell(labels.descriptionLabel, isHeader: true),
          ],
        ),
        for (final e in list)
          pw.TableRow(children: [
            _pdfCell(_dateFmt.format(e.occurredAt), ltr: true),
            _pdfCell('${_moneyFmt.format(e.amount)} Fdj', ltr: true),
            _pdfCell(e.description.isEmpty ? '-' : e.description),
          ]),
      ],
    );
  }

  static pw.Widget _pdfSalariesTable(List<ExpenseEntry> list, _PdfLabels labels) {
    return pw.Table(
      border: pw.TableBorder.all(color: PdfColors.grey300, width: 0.4),
      columnWidths: {
        0: const pw.FlexColumnWidth(2.5),
        1: const pw.FlexColumnWidth(2),
        2: const pw.FlexColumnWidth(2),
        3: const pw.FlexColumnWidth(2.5),
      },
      children: [
        pw.TableRow(
          decoration: const pw.BoxDecoration(color: PdfColors.grey100),
          children: [
            _pdfCell(labels.staffLabel, isHeader: true),
            _pdfCell(labels.dateLabel, isHeader: true, ltr: true),
            _pdfCell(labels.amountLabel, isHeader: true, ltr: true),
            _pdfCell(labels.descriptionLabel, isHeader: true),
          ],
        ),
        for (final e in list)
          pw.TableRow(children: [
            _pdfCell(e.employeeName.isEmpty ? '-' : e.employeeName),
            _pdfCell(_dateFmt.format(e.occurredAt), ltr: true),
            _pdfCell('${_moneyFmt.format(e.amount)} Fdj', ltr: true),
            _pdfCell(e.description.isEmpty ? '-' : e.description),
          ]),
      ],
    );
  }

  static pw.Widget _pdfMiscTableWithNotes(List<ExpenseEntry> list, _PdfLabels labels) {
    return pw.Table(
      border: pw.TableBorder.all(color: PdfColors.grey300, width: 0.4),
      columnWidths: {
        0: const pw.FlexColumnWidth(2),
        1: const pw.FlexColumnWidth(2),
        2: const pw.FlexColumnWidth(6),
      },
      children: [
        pw.TableRow(
          decoration: const pw.BoxDecoration(color: PdfColors.grey100),
          children: [
            _pdfCell(labels.dateLabel, isHeader: true, ltr: true),
            _pdfCell(labels.amountLabel, isHeader: true, ltr: true),
            _pdfCell(labels.expenseReasonLabel, isHeader: true),
          ],
        ),
        for (final e in list)
          pw.TableRow(children: [
            _pdfCell(_dateFmt.format(e.occurredAt), ltr: true),
            _pdfCell('${_moneyFmt.format(e.amount)} Fdj', ltr: true),
            _pdfCell(
              e.description.isEmpty
                  ? labels.noNoteHint
                  : e.description,
            ),
          ]),
      ],
    );
  }

  static pw.Widget _pdfCell(
    String value, {
    bool isHeader = false,
    bool ltr = false,
  }) {
    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      child: pw.Text(
        value,
        textDirection: ltr ? pw.TextDirection.ltr : pw.TextDirection.rtl,
        style: pw.TextStyle(
          fontSize: isHeader ? 10 : 9.5,
          fontWeight: isHeader ? pw.FontWeight.bold : pw.FontWeight.normal,
        ),
      ),
    );
  }
}
