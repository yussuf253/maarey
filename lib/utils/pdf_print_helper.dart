import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart' as printing;

import 'app_logger.dart';

/// مساعد الطباعة الموحّد لكل مستندات PDF (إيصال البيع، ملصقات الباركود، ...).
///
/// كان السلوك القديم في كل شاشة يطبع مباشرة على الطابعة الافتراضية
/// (directPrintPdf) دون اختيار الطابعة أو حتى سجلات الخطأ — فيبدو زر الطباعة
/// «ميتاً» ولا نعرف السبب. الآن:
/// 1. نُحاول جلب الطابعات المثبتة، وننتقي الافتراضية.
/// 2. إن لم نجد ولا طابعة (أو فشل العدّ) نفتح حوار الطباعة النظامي مباشرة.
/// 3. قبل أي إرسال مباشر نعرض منتقي طابعة النظام ليؤكد المستخدم الطابعة
///    والعدد — لا طباعة صامتة بعد اليوم.
/// 4. الخطأ الحقيقي يُسجَّل عبر AppLogger ويُعرض نصّه في الـ SnackBar.
class PdfPrintHelper {
  PdfPrintHelper._();

  /// يطبع [bytes] باسم [docName] مع منتقي طابعة قبل الإرسال المباشر.
  ///
  /// يعرض نص الخطأ الفعلي في الـ SnackBar (مقتطعاً) ويُسجّل الكامل.
  static Future<void> printPdf(
    BuildContext context, {
    required FutureOr<Uint8List> Function(PdfPageFormat) buildPdf,
    required PdfPageFormat pageFormat,
    required String docName,
  }) async {
    final scaffoldMsg = ScaffoldMessenger.of(context);
    try {
      final bytes = await buildPdf(pageFormat);

      List<printing.Printer> printers;
      bool printersKnown = true;
      try {
        printers = await printing.Printing.listPrinters();
      } catch (e, st) {
        // بعض المنصات (مثل Windows في printing 5.x) ترمي أثناء العدّ —
        // لا نُفشل الطباعة لذلك؛ ننتقل إلى حوار الطباعة النظامي.
        AppLogger.error('PdfPrint', 'listPrinters failed', e, st);
        printers = const <printing.Printer>[];
        printersKnown = false;
      }

      if (printersKnown && printers.isNotEmpty) {
        // منتقي طابعة النظام — لا إرسال صامت للطابعة الافتراضية بعد اليوم.
        final chosen = await printing.Printing.pickPrinter(
          context: context,
          title: docName,
        );
        // ألغى المستخدم — لا شيء يُطبع.
        if (chosen == null) return;
        await printing.Printing.directPrintPdf(
          printer: chosen,
          onLayout: (_) async => bytes,
          format: pageFormat,
          name: docName,
        );
        return;
      }

      // لا طابعات مثبتة (أو العدّ فشل) — حوار الطباعة النظامي يتكفّل بالتحديد.
      await printing.Printing.layoutPdf(
        onLayout: (_) async => bytes,
        format: pageFormat,
        name: docName,
      );
    } catch (e, st) {
      AppLogger.error('PdfPrint', 'printPdf($docName) failed', e, st);
      final short = e.toString();
      scaffoldMsg.showSnackBar(
        SnackBar(
          content: Text(
            short.length > 300 ? '${short.substring(0, 300)}…' : short,
          ),
          backgroundColor: Colors.redAccent,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }
}
