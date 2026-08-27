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

  @override
  String get deviceKickedOutTitle => 'تم فصل هذا الجهاز من الحساب';

  @override
  String get deviceKickedOutBody =>
      'أُنهيت جلستك على هذا الجهاز. عند فتح التطبيق لاحقًا ستظهر لك شاشة تسجيل الدخول المعتادة.';

  @override
  String get goToLoginAction => 'الانتقال لتسجيل الدخول';

  @override
  String get exitAction => 'خروج';

  @override
  String get closeWindowHint => 'يمكنك إغلاق النافذة أو استخدام الزر أعلاه.';

  @override
  String get appWillCloseHint => 'يغلق التطبيق';

  @override
  String get deviceRevokedTitle => 'تم إزالة هذا الجهاز من الحساب';

  @override
  String get deviceRevokedBody =>
      'لا يمكنك تسجيل الدخول من هذا الجهاز حتى يوافق أحد الأجهزة المفعّلة على نفس الحساب من الإعدادات ← الحساب والاشتراك ← «السماح بالعودة».';

  @override
  String get backToLoginAction => 'العودة لتسجيل الدخول';

  @override
  String otpEnterFullCode(Object digits) {
    return 'أدخل الرمز كاملاً ($digits أرقام كما في البريد)';
  }

  @override
  String get otpResentSuccess => 'تم إعادة إرسال رمز التحقق';

  @override
  String get back => 'رجوع';

  @override
  String get emailVerificationTitle => 'التحقق من البريد';

  @override
  String otpSentToEmailShort(Object digits) {
    return 'أرسلنا رمزاً من $digits أرقام إلى بريدك الإلكتروني';
  }

  @override
  String get enterVerificationCode => 'أدخل رمز التحقق';

  @override
  String otpSentToEmailDetailed(Object digits, Object email) {
    return 'أُرسل رمز مكوّن من $digits أرقام إلى\n$email';
  }

  @override
  String get verifyAndCreateAccount => 'تحقق وأنشئ الحساب';

  @override
  String resendInSeconds(Object seconds) {
    return 'إعادة الإرسال خلال $seconds ثانية';
  }

  @override
  String get resendCode => 'إعادة إرسال الرمز';

  @override
  String get editData => 'تعديل البيانات';

  @override
  String get emailRequired => 'البريد الإلكتروني مطلوب';

  @override
  String get emailInvalidFormat => 'صيغة البريد غير صحيحة';

  @override
  String get enterYourEmail => 'أدخل بريدك الإلكتروني';

  @override
  String get forgotPasswordSendCodeHint =>
      'سنرسل لك رمز تحقق لإعادة تعيين رمز الدخول';

  @override
  String get sendVerificationCode => 'إرسال رمز التحقق';

  @override
  String otpSentToEmailColon(Object digits, Object email) {
    return 'أُرسل رمز مكوّن من $digits أرقام إلى:\n$email';
  }

  @override
  String get continueAction => 'متابعة';

  @override
  String get editEmail => 'تعديل البريد';

  @override
  String get passwordUpdateSuccess => 'تم تحديث رمز الدخول بنجاح';

  @override
  String get setNewPasswordTitle => 'تعيين رمز دخول جديد';

  @override
  String get newPasswordLabel => 'رمز الدخول الجديد';

  @override
  String get enterNewPasswordHint => 'أدخل رمز الدخول الجديد';

  @override
  String get enterPasswordValidation => 'أدخل رمز الدخول';

  @override
  String get minLength8Chars => 'يجب أن يكون 8 أحرف على الأقل';

  @override
  String get confirmPasswordLabel => 'تأكيد كلمة السر';

  @override
  String get confirmPasswordHint => 'أعد كتابة رمز الدخول';

  @override
  String get passwordMismatch => 'رمز الدخول غير متطابق';

  @override
  String get passwordRequirementsTitle => 'شروط رمز الدخول (اختياري)';

  @override
  String get reqMinLength => '8 أحرف على الأقل';

  @override
  String get reqUppercase => 'حرف كبير (A-Z)';

  @override
  String get reqLowercase => 'حرف صغير (a-z)';

  @override
  String get reqDigit => 'رقم (0-9)';

  @override
  String get reqSpecialChar => 'رمز خاص (!@#...)';

  @override
  String get onboardingChangeLaterHint =>
      'يمكنك تغيير هذه الخيارات لاحقاً من الإعدادات ← ميزات المتجر.';

  @override
  String get businessFeaturesWizardTitle => 'ميزات المتجر';

  @override
  String get quickAppSetupTitle => 'إعداد سريع للتطبيق';

  @override
  String stepXofY(Object current, Object total) {
    return 'الخطوة $current من $total';
  }

  @override
  String get previousAction => 'السابق';

  @override
  String get nextAction => 'التالي';

  @override
  String get practicalExamplesLabel => 'أمثلة عملية';

  @override
  String get onboardingStep1Question => 'هل تستخدم العملاء في نشاطك؟';

  @override
  String get onboardingStep1Paragraph1 =>
      'عند التفعيل تظهر لك وحدة العملاء الكاملة: بطاقة لكل عميل، سجل مشتريات، ومتابعة سريعة من الفاتورة.';

  @override
  String get onboardingStep1Paragraph2 =>
      'يمكنك ربط كل عملية بيع بعميل معيّن، ما يسهّل التقارير لاحقاً ويوحّد تجربة المتجر أمام الزبائن الذين يتكررون.';

  @override
  String get onboardingStep1Paragraph3 =>
      'إذا عملت بيعاً نقدياً سريعاً دون اسم، يبقى ذلك متاحاً؛ التفعيل لا يفرض اختيار عميل في كل مرة.';

  @override
  String get onboardingStep1Example1 =>
      'مثال: زبون دائم يشتري يومياً، تحفظ اسمه وترى آخر فواتيره بسرعة.';

  @override
  String get onboardingStep1Example2 =>
      'مثال: عند وجود دين أو نقاط ولاء، تظهر مرتبطة بنفس العميل بدل البحث اليدوي.';

  @override
  String get onboardingStep1SwitchLabel => 'تفعيل وحدة العملاء';

  @override
  String get onboardingStep2Question => 'هل تريد برنامج نقاط الولاء؟';

  @override
  String get onboardingStep2Paragraph1 =>
      'الولاء يمنح الزبائن نقاطاً عند الشراء، ويمكنهم استبدالها وفق القواعد التي تضبطها من الإعدادات.';

  @override
  String get onboardingStep2Paragraph2 =>
      'البرنامج مرتبط بملفات العملاء؛ كلما كانت بيانات العملاء أوضح، كانت المتابعة أسهل.';

  @override
  String get onboardingStep2Paragraph3 =>
      'يمكنك تشغيل الميزة الآن وتعديل نسب الجمع والاستبدال لاحقاً دون إعادة هذا المعالج.';

  @override
  String get onboardingStep2Example1 =>
      'مثال: كل 10,000 د.ع تمنح 10 نقاط حسب القاعدة التي تختارها.';

  @override
  String get onboardingStep2Example2 =>
      'مثال: عميل جمع نقاطاً كافية فيستبدلها بخصم في فاتورة لاحقة.';

  @override
  String get onboardingStep2SwitchLabel => 'تفعيل نقاط الولاء';

  @override
  String get onboardingStep2Footnote =>
      'يتطلّب تفعيل وحدة العملاء في الخطوة السابقة؛ إن لم تكن مفعّلة، لن يعمل الولاء حتى تعيد تفعيل العملاء.';

  @override
  String get onboardingStep3Question => 'هل تستخدم الضريبة عند البيع؟';

  @override
  String get onboardingStep3Paragraph1 =>
      'عند التفعيل يظهر في فاتورة البيع حقل واضح للضريبة بحيث تحسب مع الإجمالي بطريقة متسقة.';

  @override
  String get onboardingStep3Paragraph2 =>
      'مناسب للمتاجر التي تطبّق نسبة ضريبة معروفة على السلع أو الخدمات.';

  @override
  String get onboardingStep3Paragraph3 =>
      'يمكنك ضبط السلوك التفصيلي من إعدادات نقطة البيع بعد إنهاء الإعداد السريع.';

  @override
  String get onboardingStep3Example1 =>
      'مثال: فاتورة قيمتها 100,000 د.ع وتضيف عليها نسبة ضريبة محددة.';

  @override
  String get onboardingStep3Example2 =>
      'مثال: الموظف يرى الضريبة والإجمالي النهائي داخل نفس فاتورة البيع.';

  @override
  String get onboardingStep3SwitchLabel => 'إظهار الضريبة في فاتورة البيع';

  @override
  String get onboardingStep4Question => 'هل تسمح بالخصم على إجمالي الفاتورة؟';

  @override
  String get onboardingStep4Paragraph1 =>
      'الخصم الإجمالي مفيد للعروض الموسمية أو التفاوض على السعر أمام الزبون دون تعديل سعر كل صنف.';

  @override
  String get onboardingStep4Paragraph2 =>
      'يظهر الحقل في شاشة البيع بحيث يكمّل الفاتورة دون تعقيد إضافي للموظف.';

  @override
  String get onboardingStep4Paragraph3 =>
      'يمكنك إيقافه لاحقاً إذا قررت العمل بأسعار ثابتة فقط.';

  @override
  String get onboardingStep4Example1 =>
      'مثال: تمنح خصماً عاماً 5,000 د.ع على فاتورة كبيرة.';

  @override
  String get onboardingStep4Example2 =>
      'مثال: عرض خاص ليوم واحد دون تغيير أسعار المنتجات الأساسية.';

  @override
  String get onboardingStep4SwitchLabel => 'إظهار الخصم الإجمالي في الفاتورة';

  @override
  String get onboardingStep5Question => 'هل تبيع بالدّين (بيع آجل)؟';

  @override
  String get onboardingStep5Paragraph1 =>
      'التفعيل يفتح لوحة الديون ومتابعة المبالغ المستحقة على كل عميل مع تنبيهات وسقوف يمكن ضبطها.';

  @override
  String get onboardingStep5Paragraph2 =>
      'يناسب التجار الذين يثقون بزبائن معروفين ويحتاجون أرشيفاً واضحاً للآجلات.';

  @override
  String get onboardingStep5Paragraph3 =>
      'لا يمنع البيع النقدي؛ يضيف فقط خيار التسجيل كدين عند اختيار العميل والصلاحيات المناسبة.';

  @override
  String get onboardingStep5Example1 =>
      'مثال: زبون يأخذ بضاعة اليوم ويدفع نهاية الأسبوع.';

  @override
  String get onboardingStep5Example2 =>
      'مثال: تراجع كشف العميل فتجد المبلغ المدفوع والمتبقي بوضوح.';

  @override
  String get onboardingStep5SwitchLabel => 'تفعيل البيع الآجل والديون';

  @override
  String get onboardingStep6Question => 'هل تبيع بالتقسيط؟';

  @override
  String get onboardingStep6Paragraph1 =>
      'خطط الأقساط تتيح تقسيم ثمن الفاتورة على دفعات مجدولة مع متابعة ما تبقّى على العميل.';

  @override
  String get onboardingStep6Paragraph2 =>
      'مفيد للسلع ذات السعر المرتفع أو العقود طويلة الأمد.';

  @override
  String get onboardingStep6Paragraph3 =>
      'التفاصيل الدقيقة للجدولة تُدار من الوحدات المخصصة بعد إتمام هذا الإعداد.';

  @override
  String get onboardingStep6Example1 =>
      'مثال: جهاز قيمته 600,000 د.ع يُدفع على 6 دفعات شهرية.';

  @override
  String get onboardingStep6Example2 =>
      'مثال: ترى الدفعات القادمة والمتأخرة لكل عميل من مكان واحد.';

  @override
  String get onboardingStep6SwitchLabel => 'تفعيل البيع بالتقسيط';

  @override
  String get onboardingStep7Question => 'هل تبيع بالوزن (كيلو، غرام، إلخ)؟';

  @override
  String get onboardingStep7Paragraph1 =>
      'التفعيل يجهّز واجهة البيع والباركود بحيث تدعم أوزاناً وكميات عشرية حيث يلزم.';

  @override
  String get onboardingStep7Paragraph2 =>
      'مناسب للمواد الغذائية، الحديد، أو أي نشاط يعتمد الميزان.';

  @override
  String get onboardingStep7Paragraph3 =>
      'يمكن ضبط أنماط الباركود بالوزن من الإعدادات المتقدمة بعد متابعة هذا المعالج.';

  @override
  String get onboardingStep7Example1 =>
      'مثال: بيع 1.250 كغم من منتج بدلاً من قطعة واحدة.';

  @override
  String get onboardingStep7Example2 =>
      'مثال: قراءة باركود ميزان يحتوي وزن المنتج وسعره تلقائياً.';

  @override
  String get onboardingStep7SwitchLabel => 'تفعيل البيع بالوزن';

  @override
  String get onboardingStep8Question => 'هل تبيع ملابس (ألوان ومقاسات)؟';

  @override
  String get onboardingStep8Paragraph1 =>
      'التفعيل يجهّز شاشات المنتجات والبيع لدعم تباين الأصناف (الألوان والقياسات المختلفة لنفس الموديل).';

  @override
  String get onboardingStep8Paragraph2 =>
      'يسهل تتبع مخزون كل لون أو مقاس على حدة وإظهار نافذة التحديد التفاعلية عند البيع.';

  @override
  String get onboardingStep8Example1 =>
      'مثال: قميص متوفر باللون الأزرق والأسود، وبقياسات S و M و L.';

  @override
  String get onboardingStep8Example2 =>
      'مثال: اختيار قطعة الملابس يفتح نافذة منبثقة سريعة لاختيار المقاس واللون المتاحين بالمخزون.';

  @override
  String get onboardingStep8SwitchLabel => 'تفعيل وحدة الملابس والقياسات';

  @override
  String get onboardingStep9Question =>
      'هل تقدّم خدمات معينة (صيانة، ورشة، إلخ)؟';

  @override
  String get onboardingStep9Paragraph1 =>
      'التفعيل يظهر وحدة الخدمات والصيانة كاملة: تذاكر عمل، طلبات الصيانة، ودليل الخدمات والأسعار.';

  @override
  String get onboardingStep9Paragraph2 =>
      'مفيدة للمشاغل، مراكز الصيانة، وأي نشاط يعتمد تقديم خدمات للعملاء إلى جانب بيع المواد.';

  @override
  String get onboardingStep9Example1 =>
      'مثال: فتح تذكرة صيانة لجهاز كمبيوتر أو سيارة وتعيين حالة العمل.';

  @override
  String get onboardingStep9Example2 =>
      'مثال: إضافة خدمة تركيب أو صيانة سريعة لفاتورة البيع.';

  @override
  String get onboardingStep9SwitchLabel => 'تفعيل الخدمات وتذاكر الصيانة';

  @override
  String get invoicesLabel => 'الفواتير';

  @override
  String get invoicesListLabel => 'قائمة الفواتير';

  @override
  String get newSaleLabel => 'بيع جديد';

  @override
  String get parkedSalesLabel => 'معلّقة مؤقتاً';

  @override
  String get posSettingsLabel => 'إعدادات نقطة البيع';

  @override
  String get customersLabel => 'العملاء';

  @override
  String get customersManageLabel => 'إدارة العملاء';

  @override
  String get addNewCustomerLabel => 'إضافة عميل جديد';

  @override
  String get addCustomerBreadcrumb => 'إضافة عميل';

  @override
  String get contactListLabel => 'قائمة الاتصال';

  @override
  String get customerLoyaltySettingsLabel => 'إعدادات العميل (الولاء)';

  @override
  String get customerLoyaltyLabel => 'ولاء العملاء';

  @override
  String get loyaltyPointsSettingsLabel => 'إعدادات النقاط والاستبدال';

  @override
  String get loyaltyLedgerLabel => 'سجل حركات النقاط';

  @override
  String get installmentsLabel => 'الأقساط';

  @override
  String get installmentPlansLabel => 'خطط التقسيط';

  @override
  String get installmentSettingsLabel => 'إعدادات تقسيط';

  @override
  String get debtsLabel => 'الديون';

  @override
  String get debtsPanelLabel => 'لوحة الديون (آجل)';

  @override
  String get debtSettingsLabel => 'إعدادات الدين';

  @override
  String get inventoryLabel => 'المخزون';

  @override
  String get productListLabel => 'قائمة المنتجات';

  @override
  String get addNewProductLabel => 'إضافة منتج جديد';

  @override
  String get updateExistingProductLabel => 'تحديث منتج موجود';

  @override
  String get printBarcodeLabelsLabel => 'طباعة ملصقات باركود';

  @override
  String get inventoryMovementsLabel => 'حركات المخزون';

  @override
  String get warehousesLabel => 'المستودعات';

  @override
  String get stocktakingLabel => 'الجرد الدوري';

  @override
  String get purchaseOrdersLabel => 'أوامر الشراء';

  @override
  String get stockAnalyticsLabel => 'تحليلات المخزون';

  @override
  String get inventorySettingsLabel => 'إعدادات المخزون';

  @override
  String get servicesAndMaintenanceLabel => 'الخدمات والصيانة';

  @override
  String get servicesAndMaintenancePanelLabel => 'لوحة الخدمات والصيانة';

  @override
  String get addTechnicalServiceLabel => 'إضافة خدمة فنية';

  @override
  String get maintenanceRequestsLabel => 'طلبات الصيانة وتذاكر العمل';

  @override
  String get cashRegisterLabel => 'الصندوق';

  @override
  String get expensesLabel => 'المصروفات';

  @override
  String get reportsLabel => 'التقارير';

  @override
  String get usersLabel => 'المستخدمين';

  @override
  String get manageUsersLabel => 'إدارة المستخدمين';

  @override
  String get staffShiftsWeekLabel => 'ورديات الموظفين (أسبوع)';

  @override
  String get staffIdentitiesLabel => 'هويات الموظفين';

  @override
  String get printingLabel => 'الطباعة';

  @override
  String get homeLabel => 'الرئيسية';

  @override
  String get defaultUserFallback => 'المستخدم';

  @override
  String get logoutLabel => 'تسجيل الخروج';

  @override
  String get logoutConfirmMessage => 'هل أنت متأكد أنك تريد تسجيل الخروج؟';

  @override
  String get confirmAction => 'تأكيد';

  @override
  String searchFailedSnackbar(Object error) {
    return 'تعذر إكمال البحث: $error';
  }

  @override
  String get addProductLabel => 'إضافة منتج';

  @override
  String shiftTooltipWithName(Object name) {
    return 'وردية: $name — إغلاق';
  }

  @override
  String get closeShiftTooltip => 'إغلاق الوردية';

  @override
  String get syncFailedTooltip => 'تزامن — فشل آخر محاولة';

  @override
  String get cloudSyncTooltip => 'تزامن سحابي';

  @override
  String get syncStartingSnackbar => 'بدء التزامن…';

  @override
  String get notificationsTooltip => 'التنبيهات';

  @override
  String get settingsLabel => 'الإعدادات';

  @override
  String get copyLabel => 'نسخ';

  @override
  String get copiedSnackbar => 'تم النسخ';

  @override
  String get userInfoTitle => 'بيانات المستخدم';

  @override
  String get displayNameFieldLabel => 'الاسم المعروض:';

  @override
  String get usernameFieldLabel => 'اسم الدخول:';

  @override
  String get roleFieldLabel => 'الصلاحية:';

  @override
  String get emailFieldLabel => 'البريد الإلكتروني:';

  @override
  String get closeAction => 'إغلاق';

  @override
  String get barcodeScanTooltip =>
      'قراءة باركود (كاميرا على الجهاز المحمول، أو نافذة القارئ على الحاسوب)';

  @override
  String get hideKeyboardTooltip => 'إخفاء لوحة المفاتيح';

  @override
  String get keyboardDragPinHint =>
      'لوحة مفاتيح عربي / English — اسحب من المقبض أو ثبّتها بالدبوس';

  @override
  String get clearSearchTooltip => 'مسح البحث';

  @override
  String get searchToolsTooltip => 'أدوات البحث';

  @override
  String get showKeyboardTooltip => 'إظهار لوحة المفاتيح (عربي / English)';

  @override
  String get quickSearchHint => 'بحث سريع: وحدات، منتجات، عملاء…';

  @override
  String get fullSearchHint => 'بحث: وحدات، منتجات، عملاء، موظفون، باركود…';

  @override
  String get collapseMenuTooltip => 'طي القائمة';

  @override
  String get expandMenuTooltip => 'توسيع القائمة';

  @override
  String get restrictedModeTooltip => 'غير متاح في الوضع المقيّد';

  @override
  String get paymentTypeCash => 'نقدي';

  @override
  String get paymentTypeCredit => 'دين';

  @override
  String get paymentTypeInstallment => 'تقسيط';

  @override
  String get paymentTypeDelivery => 'توصيل';

  @override
  String get paymentTypeDebtCollection => 'تحصيل دين';

  @override
  String get paymentTypeInstallmentCollection => 'تسديد قسط';

  @override
  String get paymentTypeSupplierPayment => 'دفع مورد';

  @override
  String noInvoiceWithNumber(Object id) {
    return 'لا توجد فاتورة برقم $id';
  }

  @override
  String get invoiceAlreadyReturned => 'هذه الفاتورة مسجّلة كمرتجع مسبقاً';

  @override
  String get invoiceNotOpenableAsReturn =>
      'هذا السند لا يُفتَح كمرتجع بيع — عكس الدفعة من شاشة المورد أو إدارة الأقساط حسب النوع.';

  @override
  String salesInvoiceNumber(Object id) {
    return 'فاتورة بيع #$id';
  }

  @override
  String get emptyPlaceholder => '(فارغ)';

  @override
  String returnInvoiceDialogBody(
    Object customer,
    Object paymentType,
    Object total,
  ) {
    return 'العميل: $customer\nالدفع: $paymentType\nالإجمالي: $total\n\nفتح شاشة المرتجع؟ يمكنك تقليل الكمية أو حذف الأسطر لإرجاع جزئي فقط.';
  }

  @override
  String get returnLabel => 'مرتجع';

  @override
  String returnNumber(Object id) {
    return 'مرتجع #$id';
  }

  @override
  String get scanQrBarcodeTitle => 'مسح QR / Barcode';

  @override
  String get pointsLedgerShortLabel => 'سجل النقاط';

  @override
  String get staffShiftsLabel => 'ورديات الموظفين';

  @override
  String get shiftStaffFallback => 'موظف الوردية';

  @override
  String get itemsLabel => 'الأصناف';

  @override
  String noResultsFor(Object query) {
    return 'لا توجد نتائج لـ «$query»';
  }

  @override
  String get modulesLabel => 'الوحدات';

  @override
  String get openModuleLabel => 'فتح الوحدة';

  @override
  String get productsLabel => 'المنتجات';

  @override
  String sellPriceIqd(Object price) {
    return 'بيع $price د.ع';
  }

  @override
  String get viewCustomersLabel => 'عرض العملاء';

  @override
  String get staffLabel => 'الموظفون';

  @override
  String get viewStaffLabel => 'عرض الموظفين';

  @override
  String get technicalServiceLabel => 'خدمة فنية';

  @override
  String get notStockTracked => 'غير متتبّع للمخزون';

  @override
  String get availableUnknown => 'المتوفر: —';

  @override
  String get availableZero => 'المتوفر: 0';

  @override
  String availableQty(Object qty) {
    return 'المتوفر: $qty';
  }

  @override
  String negativeStockWarning(Object qty, Object soldOver) {
    return 'رصيد سالب $qty — بيع زائد قدره $soldOver عن آخر رصيد';
  }

  @override
  String get chooseFromListBelow => 'اختر من القائمة أدناه';

  @override
  String get viewAllLabel => 'عرض الكل';

  @override
  String get untitledLabel => 'بدون عنوان';

  @override
  String get deleteParkedSaleTitle => 'حذف الفاتورة المعلّقة؟';

  @override
  String deleteParkedSaleBody(Object label) {
    return 'سيتم حذف «$label» نهائياً من الجهاز.';
  }

  @override
  String get deleteAction => 'حذف';

  @override
  String get deletedSnackbar => 'تم الحذف';

  @override
  String get parkedSalesScreenTitle => 'فواتير معلّقة مؤقتاً';

  @override
  String get noParkedSalesTitle => 'لا توجد فواتير معلّقة';

  @override
  String get noParkedSalesHint =>
      'من شاشة البيع اضغط «تعليق الفاتورة» لحفظ العمل الحالي وخدمة عميل آخر.';

  @override
  String parkedSaleSummaryLine(Object count, Object total) {
    return '$count صنف · ≈ $total د.ع';
  }

  @override
  String lastUpdatedLabel(Object date) {
    return 'آخر تحديث: $date';
  }

  @override
  String get resumeSaleTooltip => 'متابعة البيع';

  @override
  String get allLabel => 'الكل';

  @override
  String get paidStatus => 'مدفوعة';

  @override
  String get unpaidStatus => 'غير مدفوعة';

  @override
  String get cannotShowInvoiceNoId => 'لا يمكن عرض فاتورة بدون رقم';

  @override
  String get invoiceNotFound => 'الفاتورة غير موجودة';

  @override
  String get flatViewOption => 'عرض مفرد (بدون تجميع بالوردية)';

  @override
  String get groupByShiftOption => 'تجميع حسب الوردية';

  @override
  String get advancedFilterLabel => 'تصفية متقدمة';

  @override
  String get shiftsCalendarLabel => 'تقويم الورديات';

  @override
  String get moreLabel => 'المزيد';

  @override
  String get parkedInvoicesShortLabel => 'فواتير معلّقة';

  @override
  String get saleLabel => 'البيع';

  @override
  String get totalLabel => 'الإجمالي';

  @override
  String get sortLabel => 'ترتيب';

  @override
  String get sortNewestFirst => 'الأحدث أولاً';

  @override
  String get sortOldestFirst => 'الأقدم أولاً';

  @override
  String get sortHighestAmount => 'الأعلى مبلغاً';

  @override
  String get sortLowestAmount => 'الأقل مبلغاً';

  @override
  String get searchInvoicesHint =>
      'بحث باسم العميل أو رقم الفاتورة أو هاتف العميل...';

  @override
  String shiftNumberLabel(Object id) {
    return 'وردية #$id';
  }

  @override
  String noShiftGroupLabel(Object count) {
    return 'بدون وردية — فواتير قديمة أو خارج جلسة وردية ($count)';
  }

  @override
  String shiftLoadFailedLabel(Object count, Object id) {
    return 'وردية #$id — تعذر تحميل تفاصيل الوردية ($count فاتورة)';
  }

  @override
  String get openStatus => 'مفتوحة';

  @override
  String shiftWithNameLabel(Object id, Object name) {
    return 'وردية #$id — $name';
  }

  @override
  String invoiceCountLabel(Object count) {
    return '$count فاتورة';
  }

  @override
  String totalIqd(Object amount) {
    return '$amount د.ع';
  }

  @override
  String itemsAndDiscountLine(Object count, Object discount) {
    return '$count صنف · خصم $discount د.ع';
  }

  @override
  String shiftColonLabel(Object name) {
    return 'وردية: $name';
  }

  @override
  String get createReturnInvoiceTooltip => 'إنشاء فاتورة ترجيع لهذه الفاتورة';

  @override
  String get returnActionLabel => 'ترجيع';

  @override
  String get noInvoicesTitle => 'لا توجد فواتير';

  @override
  String get addFirstInvoiceCta => 'أضف أول فاتورة الآن';

  @override
  String get sortOptionsTitle => 'خيارات الترتيب';

  @override
  String get applyAction => 'تطبيق';

  @override
  String get loginTabLabel => 'دخول';

  @override
  String get signupTabLabel => 'إنشاء حساب';

  @override
  String get usernameOrEmailLabel => 'اسم المستخدم أو البريد';

  @override
  String get enterUsernameOrEmail => 'أدخل اسم المستخدم أو البريد الإلكتروني';

  @override
  String get passwordLabel => 'كلمة السر';

  @override
  String get enterPassword => 'أدخل كلمة السر';

  @override
  String get storeNameLabel => 'اسم المتجر/الشركة';

  @override
  String get enterStoreName => 'أدخل اسم المتجر أو الشركة';

  @override
  String get nameLabel => 'الاسم';

  @override
  String get enterName => 'أدخل اسمك';

  @override
  String get enterEmail => 'أدخل بريدك الإلكتروني';

  @override
  String get phoneLabel => 'رقم الهاتف';

  @override
  String get enterPhone => 'أدخل رقم هاتفك';

  @override
  String get countryCodeLabel => 'رمز الدولة';

  @override
  String get selectCountryCode => 'اختر رمز الدولة';

  @override
  String get confirmPassword => 'أعد إدخال كلمة السر';

  @override
  String get showPassword => 'إظهار كلمة السر';

  @override
  String get hidePassword => 'إخفاء كلمة السر';

  @override
  String get clearField => 'مسح';

  @override
  String get rememberMe => 'تذكرني';

  @override
  String get forgotPassword => 'هل نسيت كلمة السر؟';

  @override
  String get alreadyHaveAccount => 'هل لديك حساب بالفعل؟';

  @override
  String get dontHaveAccount => 'ليس لديك حساب؟';

  @override
  String get loginButton => 'دخول';

  @override
  String get signupButton => 'إنشاء حساب';

  @override
  String get signupButton2 => 'إنشاء حساب جديد';

  @override
  String get termsAndConditions => 'الشروط والأحكام';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get agreeToTerms => 'أوافق على الشروط والأحكام';

  @override
  String get agreeToTermsRequired => 'يجب أن توافق على الشروط للمتابعة';

  @override
  String get passwordRecovery => 'استعادة كلمة السر';

  @override
  String get enterEmailForRecovery =>
      'أدخل بريدك الإلكتروني لاستعادة كلمة السر';

  @override
  String get captchaLabel => 'رمز التحقق';

  @override
  String enterCaptcha(Object firstNumber, Object secondNumber) {
    return 'أدخل النتيجة: $firstNumber + $secondNumber = ؟';
  }

  @override
  String get invalidCaptcha => 'رمز التحقق غير صحيح';

  @override
  String get invalidCredentials => 'اسم المستخدم أو كلمة السر غير صحيحة';

  @override
  String get accountCreated => 'تم إنشاء الحساب بنجاح';

  @override
  String get loginSuccessful => 'تم الدخول بنجاح';

  @override
  String get passwordResetSent =>
      'تم إرسال رمز استعادة كلمة السر إلى بريدك الإلكتروني';

  @override
  String get passwordResetSuccess => 'تم إعادة تعيين كلمة السر بنجاح';

  @override
  String get accountAlreadyExists => 'يوجد حساب بهذا البريد الإلكتروني بالفعل';

  @override
  String get weekDayMonday => 'الإثنين';

  @override
  String get weekDayTuesday => 'الثلاثاء';

  @override
  String get weekDayWednesday => 'الأربعاء';

  @override
  String get weekDayThursday => 'الخميس';

  @override
  String get weekDayFriday => 'الجمعة';

  @override
  String get weekDaySaturday => 'السبت';

  @override
  String get weekDaySunday => 'الأحد';

  @override
  String get iraq => 'العراق';

  @override
  String get saudiArabia => 'المملكة العربية السعودية';

  @override
  String get uae => 'الإمارات العربية المتحدة';

  @override
  String get kuwait => 'الكويت';

  @override
  String get syria => 'سوريا';

  @override
  String get jordan => 'الأردن';

  @override
  String get lebanon => 'لبنان';

  @override
  String get checkingLicense => 'جارٍ التحقق من الترخيص…';

  @override
  String get storeManagementSystem => 'نظام إدارة المتاجر';

  @override
  String get systemInitializing => 'جاري تهيئة النظام...';

  @override
  String get maintenance => 'صيانة';

  @override
  String get ok => 'حسناً';

  @override
  String get updateRequired => 'تحديث مطلوب';

  @override
  String get downloadUpdate => 'تحميل التحديث';

  @override
  String get updateAvailable => 'تحديث متوفر';

  @override
  String get later => 'لاحقاً';

  @override
  String get download => 'تحميل';

  @override
  String get openLink => 'فتح الرابط';

  @override
  String get done => 'تم';

  @override
  String get businessManagementSystem => 'نظام إدارة الأعمال';

  @override
  String get salesAndInvoices => 'المبيعات والفواتير';

  @override
  String get accountsAndReports => 'الحسابات والتقارير';

  @override
  String get inventoryAndWarehouses => 'المخزون والمستودعات';

  @override
  String get createNewAccountTitle => 'إنشاء حساب جديد';

  @override
  String get loginTitle => 'تسجيل الدخول';

  @override
  String get signupSubtitle =>
      'سيصلك رمز تحقق على بريدك الإلكتروني لتأكيد حسابك';

  @override
  String get loginSubtitle => 'أدخل البريد الإلكتروني وكلمة السر للدخول';

  @override
  String get haveAccountBackToLogin => 'لديك حساب؟ العودة إلى تسجيل الدخول';

  @override
  String get noAccountCreateNew => 'ليس لديك حساب؟ إنشاء حساب جديد';

  @override
  String get requiredField => 'هذا الحقل مطلوب';

  @override
  String get minLength3Chars => 'يجب أن يكون 3 أحرف على الأقل';

  @override
  String get nameRequired => 'الاسم مطلوب';

  @override
  String get nameRequiredMin3 => 'الاسم مطلوب (3 أحرف على الأقل)';

  @override
  String get emailRequiredShort => 'البريد مطلوب';

  @override
  String get iraqMobileInvalid =>
      'رقم عراقي: 11 رقماً يبدأ بـ 07 (مثال: 07701234567)';

  @override
  String get passwordRequired => 'كلمة السر مطلوبة';

  @override
  String get passwordDoesNotMeetRequirements =>
      'كلمة السر لا تحقق الشروط المطلوبة';

  @override
  String get passwordsDoNotMatch => 'كلمتا السر غير متطابقتين';

  @override
  String get enterPasswordAgain => 'الرجاء إعادة كتابة كلمة السر';

  @override
  String get iraqDialTooltip => '+964 العراق — سيتوفر اختيار دول أخرى لاحقاً';

  @override
  String get welcomeToNaBoo => 'مرحباً بك في نابو';

  @override
  String welcomeBackGreeting(Object name) {
    return 'مرحبًا بعودتك، $name';
  }

  @override
  String get todaysBusinessSummary => 'إليك ملخص أعمال اليوم';

  @override
  String get userFallback => 'مستخدم';

  @override
  String get failedToLoadChartData => 'تعذر تحميل بيانات الرسوم البيانية.';

  @override
  String get lastWeek => 'آخر أسبوع';

  @override
  String get lastMonth => 'آخر شهر';

  @override
  String get incomeLabel => 'إيراد:';

  @override
  String get expenseLabel => 'مصروف:';

  @override
  String get salesPerformance => 'أداء المبيعات';

  @override
  String get totalLabelColon => 'الإجمالي:';

  @override
  String get expensesVsIncome => 'المصروفات مقابل الإيرادات';

  @override
  String get incomeLegend => 'الإيرادات';

  @override
  String get expensesLegend => 'المصروفات';

  @override
  String get changePeriod => 'تغيير الفترة';

  @override
  String get pinnedProductsHint => 'منتجات مثبّتة — اضغط لبيع جديد';

  @override
  String get byPiece => 'بالقطعة';

  @override
  String get byWeight => 'بالوزن';

  @override
  String get addGroup => 'إضافة مجموعة';

  @override
  String get remainingColon => 'متبقي:';

  @override
  String get notTracked => 'غير متتبّع';

  @override
  String get technicalService => 'خدمة فنية';

  @override
  String get groupByCategory => 'مجموعة حسب التصنيف';

  @override
  String get groupByCategoryDesc => 'تصفية المنتجات المثبتة حسب تصنيف واحد';

  @override
  String get groupByBrand => 'مجموعة حسب الماركة';

  @override
  String get groupByBrandDesc => 'تصفية المنتجات المثبتة حسب ماركة واحدة';

  @override
  String get noCategoriesYet => 'لا توجد تصنيفات بعد';

  @override
  String get chooseCategory => 'اختر تصنيفاً';

  @override
  String get categoryFallback => 'تصنيف';

  @override
  String get noBrandsYet => 'لا توجد ماركات بعد';

  @override
  String get chooseBrand => 'اختر ماركة';

  @override
  String get brandFallback => 'ماركة';

  @override
  String get groupAlreadyExists => 'هذه المجموعة موجودة مسبقاً';

  @override
  String get noMatchingActivityYet => 'لا يوجد نشاط مطابق بعد';

  @override
  String get noActivityHint =>
      'سجّل مبيعات أو حركات صندوق أو أي عمل في التطبيق لتظهر هنا مرتّبة زمنياً.';

  @override
  String failedToLoadActivity(Object error) {
    return 'تعذر تحميل النشاط: $error';
  }

  @override
  String get recentActivityOverview => 'نظرة عامة على النشاطات الأخيرة';

  @override
  String get invoicesLabelShort => 'الفواتير';

  @override
  String get cashLabelShort => 'الصندوق';

  @override
  String get otherLabelShort => 'أخرى';

  @override
  String get openInvoicesList => 'قائمة الفواتير';

  @override
  String get openCashRegister => 'الصندوق';

  @override
  String get cashRegisterCard => 'الصندوق';

  @override
  String get cashRegisterHint => 'رصيد مجمّع في السجل';

  @override
  String get shiftLabel => 'وردية';

  @override
  String get newSaleCard => 'بيع جديد';

  @override
  String get newSaleSubtitle => 'فاتورة سريعة';

  @override
  String get newSaleHint => 'اختصار للصندوق والبيع';

  @override
  String get inventoryCard => 'المخزون';

  @override
  String inventorySubtitle(Object count) {
    return '$count صنفاً نشطاً';
  }

  @override
  String inventoryAlertLowStock(Object count) {
    return 'تنبيه: $count بمخزون منخفض';
  }

  @override
  String get inventoryNoAlerts => 'لا تنبيهات مخزون';

  @override
  String get completedOrdersCard => 'الطلبات المنجزة';

  @override
  String completedOrdersSubtitle(Object count) {
    return '$count طلب';
  }

  @override
  String get completedOrdersHint => 'مكسب الوردية السابقة';

  @override
  String get parkedCard => 'معلّقات';

  @override
  String parkedSubtitle(Object count) {
    return '$count فاتورة';
  }

  @override
  String get parkedHint => 'مؤقتاً في الانتظار';

  @override
  String get reportsCard => 'التقارير';

  @override
  String get reportsSubtitle => 'لوحة تنفيذية';

  @override
  String get reportsHint => 'مؤشرات الفترة';

  @override
  String get dragToReorderCards =>
      'اسحب العناصر لأعلى أو لأسفل. الترتيب يُحفظ على هذا الجهاز.';

  @override
  String get saveOrder => 'حفظ الترتيب';

  @override
  String get reorderCards => 'ترتيب البطاقات';

  @override
  String get refreshNumbers => 'تحديث الأرقام';

  @override
  String get glanceOverview => 'لمحة المربّع';

  @override
  String get dragHeightHint =>
      'اسحب لأعلى أو لأسفل لتغيير ارتفاع قائمة المنتجات';

  @override
  String get pinnedProductsHeightHandle =>
      'مقبض تغيير ارتفاع قائمة المنتجات المثبتة';

  @override
  String filterByCategoryColon(Object name) {
    return 'تصفية حسب التصنيف: $name';
  }

  @override
  String filterByBrandColon(Object name) {
    return 'تصفية حسب الماركة: $name';
  }

  @override
  String get accountLabel => 'الحساب';

  @override
  String get lightModeLabel => 'الوضع النهاري';

  @override
  String get darkModeLabel => 'الوضع الليلي';

  @override
  String get calculatorLabel => 'حاسبة';

  @override
  String get settingsLabelMenu => 'الإعدادات';

  @override
  String get showMacPanel => 'إظهار لوحة Mac';

  @override
  String get hideMacPanel => 'إخفاء لوحة Mac';

  @override
  String get customizeModules => 'تخصيص الوحدات';

  @override
  String get editDone => 'إنهاء التحرير';

  @override
  String get breadcrumbNavHint => 'مسار التنقل — اضغط خطوة سابقة للرجوع';

  @override
  String currentPageLabel(Object title) {
    return 'الصفحة الحالية: $title';
  }

  @override
  String get restrictedModeBanner => 'وضع مقيّد — اتصل بالإنترنت للتحقق';

  @override
  String get retryButton => 'إعادة المحاولة';
}
