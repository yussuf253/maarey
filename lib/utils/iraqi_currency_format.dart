import 'package:intl/intl.dart';
import 'package:flutter/services.dart';

/// تنسيق مبالغ الفرنك الجيبوتي بفواصل كل ثلاثة أرقام (مثل 5,000,000) بأرقام لاتينية.
abstract final class IraqiCurrencyFormat {
  IraqiCurrencyFormat._();

  static final NumberFormat _groupedInt = NumberFormat('#,##0', 'en_US');
  static final NumberFormat _grouped2 = NumberFormat('#,##0.00', 'en_US');

  /// عدد صحيح بفواصل الآلاف فقط (بدون لاحقة).
  static String formatInt(num value) {
    if (value.isNaN || value.isInfinite) return '—';
    return _groupedInt.format(value.round());
  }

  /// تحويل نص مُدخل من المستخدم (قد يحتوي فواصل/مسافات) إلى عدد صحيح.
  /// يعيد 0 عند الإدخال غير الصالح أو السالب.
  static int parseIqdInt(String raw) {
    final cleaned = raw.replaceAll(',', '').trim();
    final v = int.tryParse(cleaned);
    if (v == null || v < 0) return 0;
    return v;
  }

  /// صيغة جاهزة لحقول إدخال المال: أرقام + فواصل آلاف، بدون كسور.
  static TextInputFormatter moneyInputFormatter() =>
      _IqdGroupedIntTextInputFormatter();

  /// عدد بمنزلتين عشريتين مع فواصل الآلاف.
  static String formatDecimal2(num value) {
    if (value.isNaN || value.isInfinite) return '—';
    return _grouped2.format(value);
  }

  /// مبلغ بفواصل + «Fdj».
  static String formatIqd(num value) => '${formatInt(value)} Fdj';

  /// عرض مخزني/إجمالي: آلاف بالفاصلة؛ الملايين/المليارات بصيغة مختصرة (مثل 1.5M Fdj).
  ///
  /// [value] هي قيمة مالية خام (مثل حاصل جمع الأسعار)، تُقرّب لأقرب فرنك.
  static String formatCompactWarehouseValue(num value) {
    if (value.isNaN || value.isInfinite) return '—';
    final vr = value.round();
    final rounded = vr.abs();
    final sign = vr < 0 ? '-' : '';

    if (rounded >= 1000000000) {
      final d = rounded / 1000000000.0;
      return '$sign${_trimOneDecimalTrailing(d)}B Fdj';
    }
    if (rounded >= 1000000) {
      final d = rounded / 1000000.0;
      return '$sign${_trimOneDecimalTrailing(d)}M Fdj';
    }
    return '$sign${formatInt(vr)} Fdj';
  }

  static String _trimOneDecimalTrailing(double d) {
    final s = d.toStringAsFixed(1);
    if (s.endsWith('.0')) return s.substring(0, s.length - 2);
    return s;
  }
}

class _IqdGroupedIntTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final raw = newValue.text;
    if (raw.isEmpty) return newValue;

    final digitsOnly = raw.replaceAll(RegExp(r'[^0-9]'), '');
    if (digitsOnly.isEmpty) {
      return const TextEditingValue(text: '');
    }

    final n = int.tryParse(digitsOnly) ?? 0;
    final formatted = IraqiCurrencyFormat.formatInt(n);

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
