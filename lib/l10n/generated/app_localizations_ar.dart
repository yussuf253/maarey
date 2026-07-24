// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Naboo';

  @override
  String get settings => 'الإعدادات';

  @override
  String get language => 'اللغة';

  @override
  String get save => 'حفظ';

  @override
  String get cancel => 'إلغاء';

  @override
  String get storeAccountGroup => 'المتجر والحساب';

  @override
  String get appearanceNotificationsGroup => 'المظهر والإشعارات';

  @override
  String get dataBackupGroup => 'البيانات والنسخ الاحتياطي';

  @override
  String get subscriptionSupportGroup => 'الاشتراك والدعم';

  @override
  String get storeInfo => 'بيانات المتجر';

  @override
  String get storeInfoSubtitle => 'الاسم، العنوان، الشعار، الفرع';

  @override
  String get invoiceSettings => 'إعدادات الفواتير';

  @override
  String get invoiceSettingsSubtitle => 'رقم البداية، التذييل، الضريبة، الخصم';

  @override
  String get businessFeatures => 'ميزادات المتجر';

  @override
  String get businessFeaturesSubtitle =>
      'العملاء، الولاء، الضريبة، الخصم، الديون، التقسيط، الوزن، الملابن، والخدمات';

  @override
  String get customizeDashboard => 'تخصيص الشاشة الرئيسية';

  @override
  String get customizeDashboardSubtitle =>
      'إظهار أو إخفاء أقسام لوحة التحكم وترتيبها بالسحب';

  @override
  String get appColorsIdentity => 'ألوان وهوية التطبيق';

  @override
  String get appColorsIdentitySubtitle =>
      'مخططات جاهزة، مخصص، وزوايا البطاقات — تُطبَّق على كل الشاشات';

  @override
  String get compactSnackNotifications => 'شكل تنبيهات الصفحات (كل التطبيق)';

  @override
  String get compactSnackNotificationsSubtitleOn =>
      'شرائط أضيق وعائمة في كل الشاشات — من إعدادات التطبيق العامة هنا، وليس من «إعدادات نقطة البيع»';

  @override
  String get compactSnackNotificationsSubtitleOff =>
      'وضع كلاسيكي: شريط تنبيه بعرض أسفل الشاشة في كل الصفحات';

  @override
  String get idleMode => 'وضع السكون';

  @override
  String idleModeSubtitle(Object minutes) {
    return 'بعد عدم النشاط: $minutes';
  }

  @override
  String get arabic => 'العربية';

  @override
  String get english => 'English';

  @override
  String get french => 'Français';

  @override
  String get floatingWindowMacos => 'النافذة العائمة (macOS)';

  @override
  String get floatingWindowSubtitleOn =>
      'يمكن فتح عدة نوافذ معاً؛ التصغير الأصفر يضع بلاطة أسفل الشاشة بأيقونة كل صفحة — عطّلها لفتحها داخل المحتوى';

  @override
  String get floatingWindowSubtitleOff =>
      'تُفتح هذه الشاشات داخل المحتوى. فعّل الخيار لاستخدام النوافذ العائمة والبلاطات';

  @override
  String get theme => 'المظهر';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get lightMode => 'الوضع الفاتح';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get notificationsSubtitle => 'تنبيهات المخزون، الفواتير، الأقساط';

  @override
  String get printingSettings => 'إعدادات الطباعة';

  @override
  String get printingSettingsSubtitle => 'حجم الورق، الطابعة الافتراضية';

  @override
  String get restoreData => 'استعادة البيانات';

  @override
  String get restoreDataSubtitle => 'من ملف أو سحابة';

  @override
  String get subscriptionPlan => 'خطة الاشتراك';

  @override
  String get subscriptionPlanSubtitle => 'الحساب، الأجهزة، والمزامنة التلقائية';

  @override
  String get trialVersion => 'نسخة تجريبية';

  @override
  String get helpSupport => 'المساعدة والدعم';

  @override
  String get helpSupportSubtitle => 'الأسئلة الشائعة والتواصل مع الدعم';

  @override
  String get aboutApp => 'عن التطبيق';

  @override
  String get aboutAppSubtitle => 'الإصدار 1.0.0 · NaBoo Store Manager';

  @override
  String get appName => 'نابو لإدارة المتاجر';

  @override
  String get appDescription =>
      'تطبيق متكامل لإدارة المبيعات والمخزون والحسابات.';

  @override
  String get accountData => 'بيانات الحساب';

  @override
  String userLabel(Object name) {
    return 'المستخدم: $name';
  }

  @override
  String emailLabel(Object email) {
    return 'البريد: $email';
  }

  @override
  String currentPlanLabel(Object plan) {
    return 'الخطة الحالية: $plan';
  }

  @override
  String deviceLimitLabel(Object limit) {
    return 'حد الأجهزة: $limit';
  }

  @override
  String get unlimited => 'غير محدود';

  @override
  String devicesLabel(Object count) {
    return 'الأجهزة المسجّلة: $count';
  }

  @override
  String get freeTrial => 'التجربة المجانية';

  @override
  String daysRemaining(Object count) {
    return 'الأيام المتبقية: $count من 15';
  }

  @override
  String trialEndsAt(Object date) {
    return 'تنتهي في: $date';
  }

  @override
  String get subscription => 'الاشتراك';

  @override
  String subscriptionExpiresAt(Object date) {
    return 'ينتهي الاشتراك في: $date';
  }

  @override
  String subscriptionDaysRemaining(Object days) {
    return 'متبقٍ تقريباً: $days يوماً';
  }

  @override
  String get noExpirationDate =>
      'اشتراك مفعّل بلا تاريخ انتهاء محدد في السحابة.';

  @override
  String get linkedDevices => 'الأجهزة المرتبطة بالحساب';

  @override
  String get refreshTooltip => 'تحديث';

  @override
  String get noDevicesRegistered => 'لا توجد أجهزة مسجّلة بعد.';

  @override
  String devicePlatform(Object date, Object platform) {
    return '$platform • آخر نشاط: $date';
  }

  @override
  String get currentDevice => 'هذا الجهاز';

  @override
  String get allowReturn => 'سماح بالعودة';

  @override
  String get disconnectDevice => 'فصل الجهاز';

  @override
  String get autoSync => 'المزامنة التلقائية';

  @override
  String get autoSyncDescription =>
      'تُرفع من كل جهاز نسخة كاملة من قاعدة البيانات؛ الأحدث في السحابة هي التي تُستورد على الجهاز الآخر بعد «مزامنة الآن» أو خلال نحو دقيقة. ليست لحظية لكل إدخال. يجب تنفيذ ملف SQL للمزامنة في Supabase، والإنترنت مفعّل.';

  @override
  String get syncNow => 'مزامنة الآن';

  @override
  String lastSync(Object date) {
    return 'آخر مزامنة: $date';
  }

  @override
  String get syncSuccess => 'تمت المزامنة بنجاح';

  @override
  String get viewSubscriptionPlans => 'عرض خطط الاشتراك';

  @override
  String get storeName => 'اسم المتجر';

  @override
  String get address => 'العنوان';

  @override
  String get phone => 'رقم الهاتف';

  @override
  String get taxNumber => 'الرقم الضريبي';

  @override
  String get invoiceFooterText => 'نص التذييل';

  @override
  String get invoiceStartNumber => 'رقم بداية الفواتير';

  @override
  String get showTax => 'إظهار الضريبة';

  @override
  String get showDiscount => 'إظهار الخصم';

  @override
  String get showLogo => 'إظهار الشعار';

  @override
  String get showFooter => 'إظهار التذييل';

  @override
  String get taxRate => 'نسبة الضريبة';

  @override
  String taxRatePercent(Object rate) {
    return '$rate%';
  }

  @override
  String get notificationsBuildFromDb =>
      'تُبنى التنبيهات من قاعدة البيانات عند فتح لوحة الإشعارات من الشاشة الرئيسية.';

  @override
  String get lowStockAlert => 'تنبيه نقص المخزون';

  @override
  String get lowStockAlertSubtitle =>
      'منتجات وصلت للحد الأدنى أو نفدت (مع تتبع مخزون)';

  @override
  String get negativeStockSaleAlert => 'إشعار بيع أدى لرصيد سالب';

  @override
  String get negativeStockSaleAlertSubtitle =>
      'بعد حفظ فاتورة البيع: رقم الفاتورة، البائع، العميل، والأصناف والكميات قبل/بعد الرصيد';

  @override
  String get financedSaleAlert => 'إشعار بيع بالدين أو التقسيط';

  @override
  String get financedSaleAlertSubtitle =>
      'عند حفظ فاتورة «آجل» أو «تقسيط» من شاشة البيع: رقم الفاتورة، البائع، العميل، المبالغ، الأسطر، وخطة التقسيط إن وُجدت';

  @override
  String get expiryAlert => 'تنبيه صلاحية المنتجات';

  @override
  String get expiryAlertSubtitle =>
      'منتهية، أو تدخل ضمن «نافذة التنبيه» قبل التاريخ (حسب كل منتج أو الافتراضي أدناه)';

  @override
  String get defaultExpiryDaysLabel =>
      'الأيام الافتراضية قبل تاريخ الانتهاء لإظهار تنبيه «قرب الصلاحية» (يُستعمل عند إضافة منتج إن لم تُضبط للصنف، و1–365).';

  @override
  String get defaultExpiryDaysHint => 'مثال: 14';

  @override
  String get defaultExpiryDaysInputLabel => 'أيام التنبيه الافتراضية';

  @override
  String get saveDefaultDays => 'حفظ الرقم الافتراضي';

  @override
  String get installmentAlert => 'أقساط التقسيط';

  @override
  String get installmentAlertSubtitle => 'متأخرة أو مستحقة خلال 14 يوماً';

  @override
  String get customerDebtAlert => 'ديون العملاء (آجل)';

  @override
  String get customerDebtAlertSubtitle =>
      'رصيد مدين في بطاقة العميل، وفق إعدادات الدين: عمر الفاتورة، سقف المجموع لكل عميل، وسقف الفاتورة الواحدة';

  @override
  String get returnsAlert => 'تسجيل المرتجعات';

  @override
  String get returnsAlertSubtitle => 'آخر مرتجعات مسجّلة (21 يوماً)';

  @override
  String get dailyReportAlert => 'ملخص مبيعات اليوم';

  @override
  String get dailyReportAlertSubtitle =>
      'إجمالي فواتير البيع لهذا اليوم (بدون مرتجعات)';

  @override
  String get shiftLifecycleAlert => 'فتح وإغلاق الوردية';

  @override
  String get shiftLifecycleAlertSubtitle =>
      'إشعار بموظف الوردية والمبالغ (رصيد النظام، الجرد، المضاف، المسحوب، المتبقي)';

  @override
  String get allowDeviceReturnTitle => 'السماح بالعودة';

  @override
  String allowDeviceReturnContent(Object deviceName) {
    return 'هل تسمح لجهاز «$deviceName» بتسجيل الدخول مرة أخرى؟';
  }

  @override
  String get disconnectDeviceTitle => 'فصل الجهاز';

  @override
  String disconnectDeviceContent(Object deviceName) {
    return 'الجهاز: $deviceName\nسيتم إنهاء الجلسة على ذلك الجهاز فورًا (إن كان متصلاً)، ولن يستطيع تسجيل الدخول حتى تضغط «السماح بالعودة» من هنا.';
  }

  @override
  String get disconnectNow => 'فصل الآن';

  @override
  String get deviceDisconnected => 'تم فصل الجهاز بنجاح';

  @override
  String get deviceAllowed => 'تم السماح للجهاز بالعودة';

  @override
  String get notConnected => 'غير متصّل';

  @override
  String get checking => '…';

  @override
  String get noLicense => 'بدون ترخيص';

  @override
  String get revokedDevice => 'مفصول — لا يمكنه الدخول حتى الموافقة';

  @override
  String get activeLicense => 'مفعّل';

  @override
  String get inactiveLicense => 'غير نشط';

  @override
  String get testTools => 'فتح أدوات الاختبار…';

  @override
  String get basraStore => 'متجر البصرة';

  @override
  String get basraIraq => 'البصرة، العراق';
}
