import '../l10n/app_l10n.dart';

/// تحذيرات تسقيف بين حقول الأسعار (لا تمنع الحفظ؛ تستخدم للرسائل الكهرت).
class PriceLogicWarnings {
  const PriceLogicWarnings({
    this.sellVsBuyWarning,
    this.sellVsMinSellWarning,
  });

  final String? sellVsBuyWarning;
  final String? sellVsMinSellWarning;
}

/// يُقيَّم بعد استخراج الدينار كعدد صحيح (`NumericFormat.parseNumber`).
PriceLogicWarnings validatePriceLogic({
  required int buyIqd,
  required int sellIqd,
  required int minSellIqdParsed,
}) {
  String? sellVsBuyWarning;
  if (buyIqd >= 0 && sellIqd < buyIqd) {
    sellVsBuyWarning = AppL10n.current.vpSellBelowBuy;
  }

  String? sellVsMinSellWarning;
  if (minSellIqdParsed > 0 && sellIqd < minSellIqdParsed) {
    sellVsMinSellWarning = AppL10n.current.vpSellBelowMin;
  }

  return PriceLogicWarnings(
    sellVsBuyWarning: sellVsBuyWarning,
    sellVsMinSellWarning: sellVsMinSellWarning,
  );
}
