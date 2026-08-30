/// تطبيع مبالغ الفرنك الجيبوتي للتخزين: 1 فرنك = 1000 وحدة داخليّة.
/// المشروع يخزّن عادةً `REAL` بالفرنك؛ هذا المساعد يمنع سلاسل `double` غير المستقرة
/// عند المدخلات الحساسة (إضافة منتج، إلخ) دون هجرة أعمدة كاملة.
class IqdMoney {
  IqdMoney._();

  static int toFils(double dinars) {
    if (!dinars.isFinite || dinars < 0) return 0;
    return (dinars * 1000.0).round();
  }

  static double fromFils(int fils) => fils / 1000.0;

  /// جولة round-trip عبر الوحدات الداخليّة (مناسب للتخزين في SQLite REAL).
  static double normalizeDinar(double dinars) {
    return fromFils(toFils(dinars));
  }
}
