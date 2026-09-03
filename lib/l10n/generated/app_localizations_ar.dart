// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Maarey';

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
  String get aboutAppSubtitle => 'الإصدار 1.0.0 · Maarey Store Manager';

  @override
  String get appName => 'Mاري لإدارة المتاجر';

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
      'مثال: كل 10,000 Fdj تمنح 10 نقاط حسب القاعدة التي تختارها.';

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
      'مثال: فاتورة قيمتها 100,000 Fdj وتضيف عليها نسبة ضريبة محددة.';

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
      'مثال: تمنح خصماً عاماً 5,000 Fdj على فاتورة كبيرة.';

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
      'مثال: جهاز قيمته 600,000 Fdj يُدفع على 6 دفعات شهرية.';

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
  String get closeAction => 'إقفال';

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
    return 'بيع $price Fdj';
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
    return '$count صنف · ≈ $total Fdj';
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
  String get openStatus => 'مفتوح';

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
    return '$amount Fdj';
  }

  @override
  String itemsAndDiscountLine(Object count, Object discount) {
    return '$count صنف · خصم $discount Fdj';
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
  String get emailNotConfirmed =>
      'البريد الإلكتروني غير مؤكد. يرجى التحقق من صندوق الوارد.';

  @override
  String get tooManyRequests =>
      'محاولات كثيرة جداً. يرجى الانتظار بضع دقائق ثم المحاولة مجدداً.';

  @override
  String get networkError =>
      'خطأ في الاتصال. يرجى التحقق من الاتصال بالإنترنت والمحاولة مجدداً.';

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
  String get requiredField => 'مطلوب';

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
  String get welcomeToMaarey => 'مرحباً بك في Mاري';

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
  String get noBrandsYet =>
      'لا توجد علامات تجارية بعد.\nاضغط «ماركة جديدة» لإضافة أول ماركة.';

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

  @override
  String get timeTamperTitle => 'تعارض في إعدادات الوقت';

  @override
  String get licenseSuspendedTitle => 'الترخيص موقوف';

  @override
  String get deviceLimitExceededTitle => 'تجاوز حد الأجهزة';

  @override
  String get subscriptionExpiredTitle => 'انتهى الاشتراك';

  @override
  String get timeTamperMessage =>
      'تم اكتشاف تعارض في إعدادات الوقت. تواصل مع الدعم للمساعدة في إعادة التحقق.';

  @override
  String get accountSuspendedMessage => 'تم إيقاف حسابك. تواصل مع الدعم الفني.';

  @override
  String get subscriptionExpiredMessage => 'انتهى اشتراكك. جدّد للمتابعة.';

  @override
  String get enterLicenseKeyError => 'أدخل مفتاح الترخيص';

  @override
  String get yourCurrentPlan => 'خطتك الحالية';

  @override
  String get registeredDevices => 'الأجهزة المسجّلة';

  @override
  String get subscriptionExpires => 'انتهاء الاشتراك';

  @override
  String get trialExpires => 'انتهاء التجربة';

  @override
  String get upgradePlanToAddDevices => 'ترقية الخطة لإضافة أجهزة';

  @override
  String get renewSubscription => 'تجديد الاشتراك';

  @override
  String get comparePlans => 'مقارنة خطط الاشتراك';

  @override
  String get enterNewKey => 'إدخال مفتاح جديد';

  @override
  String get activateButton => 'تفعيل';

  @override
  String get reVerifyButton => 'إعادة التحقق';

  @override
  String get useAnotherKey => 'استخدام مفتاح آخر';

  @override
  String get allRightsReserved => 'Maarey v2.0 — جميع الحقوق محفوظة';

  @override
  String get noInternetConnection => 'لا يوجد اتصال بالإنترنت';

  @override
  String get offlineMessage =>
      'يعمل التطبيق بآخر بيانات ترخيص محفوظة.\nتأكد من الاتصال في أقرب فرصة.';

  @override
  String get enterWithoutConnection => 'الدخول بدون اتصال';

  @override
  String get activateLicenseTitle => 'تفعيل الترخيص';

  @override
  String get enterLicenseKeyToContinue => 'أدخل مفتاح الترخيص للمتابعة';

  @override
  String get contactTeamForLicense =>
      'للحصول على مفتاح ترخيص، تواصل مع فريق Maarey.';

  @override
  String get subscriptionPlansTitle => 'خطط الاشتراك';

  @override
  String get chooseRightPlan => 'اختر الخطة المناسبة لنشاطك';

  @override
  String get plansDescriptionJwt =>
      'البطاقات أدناه للمقارنة والأسعار فقط. بعد الدفع تستلم رمزاً موقّعاً (JWT) — الصقه في حقل التفعيل أسفل البطاقات مباشرة.';

  @override
  String get plansDescriptionLegacy =>
      'البطاقة الأولى: تجربة تلقائية 15 يوماً (جهازان). البطاقات التالية خطط مدفوعة — بعد الدفع تُدخل المفتاح في الحقل الموحّد أسفل الصفحة.';

  @override
  String get howToSubscribe => 'كيفية الاشتراك';

  @override
  String get subscribeStepsJwt =>
      '١. تواصل مع فريق Maarey عبر الطرق أدناه\n٢. أكمل الدفع للخطة التي تريدها\n٣. استلم رمز التفعيل الكامل (JWT) من الإدارة\n٤. الصق الرمز في الحقل الموحّد أسفل بطاقات الخطط — الخطة وحد الأجهزة يُستنتجان من الرمز';

  @override
  String get subscribeStepsLegacy =>
      '١. تواصل مع فريق Maarey عبر الطرق أدناه\n٢. أخبرنا بالخطة التي تريدها وأكمل الدفع\n٣. استلم مفتاح الترخيص من الإدارة\n٤. الصق المفتاح في الحقل الموحّد أسفل بطاقات الخطط ثم اضغط «تفعيل المفتاح»';

  @override
  String get whatsappOrPhone => 'واتساب / هاتف';

  @override
  String get emailContact => 'البريد الإلكتروني';

  @override
  String get continueButton => 'متابعة';

  @override
  String get pasteTokenFirst => 'الصق رمز الترخيص أولاً';

  @override
  String get activateTokenTitle => 'تفعيل رمز الترخيص';

  @override
  String get activateTokenDescription =>
      'الصق الرمز الكامل الذي أرسلته الإدارة. الخطة وحد الأجهزة يُستنتجان من داخل الرمز وليس من شكل البطاقة.';

  @override
  String get pasteTokenHint => 'الصق رمز التفعيل هنا';

  @override
  String get activateTokenButton => 'تفعيل الرمز';

  @override
  String get pasteKeyOrTokenFirst => 'الصق مفتاح الترخيص أو رمز التفعيل أولاً';

  @override
  String get activateKeyTitle => 'تفعيل المفتاح';

  @override
  String get activateKeyDescription =>
      'الصق مفتاح الترخيص الذي استلمته بعد الدفع، أو رمز JWT إن وُجد. الخطط أعلاه للعرض والمقارنة فقط.';

  @override
  String get pasteKeyHint => 'الصق مفتاح الترخيص أو رمز التفعيل';

  @override
  String get activateKeyButton => 'تفعيل المفتاح';

  @override
  String get freeLabel => 'مجاناً';

  @override
  String get trialDaysLabel => '15 يوماً';

  @override
  String get currencyLabel => 'Fdj';

  @override
  String get perMonthLabel => 'شهرياً';

  @override
  String get yourCurrentTrial => 'تجربتك الحالية';

  @override
  String get yourCurrentPlanCard => 'خطتك الحالية';

  @override
  String get trialAutoStartsMessage =>
      'التجربة تبدأ تلقائياً — لا مفتاح. عند الترقية استلم الرمز من الإدارة والصقه في الحقل الموحّد أسفل البطاقات.';

  @override
  String get jwtPlanDescription =>
      'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق رمز التفعيل (JWT) في الحقل الموحّد أسفل البطاقات مباشرة.';

  @override
  String get legacyPlanDescription =>
      'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق مفتاح الترخيص في الحقل الموحّد أسفل البطاقات.';

  @override
  String get mostPopular => 'الأكثر طلباً';

  @override
  String get numberCopied => 'تم نسخ الرقم';

  @override
  String get emailCopied => 'تم نسخ البريد';

  @override
  String get copyTooltip => 'نسخ';

  @override
  String get inventorySettingsTitle => 'إعدادات المخزون';

  @override
  String get subSettingsTitle => 'الإعدادات الفرعية';

  @override
  String get subSettingsSubtitle => 'إعدادات تفصيلية لكل جانب من جوانب المخزون';

  @override
  String get productAddSettingsTitle => 'إعدادات إضافة منتج';

  @override
  String get productAddSettingsDesc =>
      'الحقول الافتراضية، المخزن الافتراضي، حقول إلزامية';

  @override
  String get barcodeSettingsTitle => 'إعدادات الباركود';

  @override
  String get barcodeSettingsDesc =>
      'معيار الباركود، الحقول المدمجة في الباركود';

  @override
  String get categoriesTitle => 'التصنيفات';

  @override
  String get categoriesDesc => 'إضافة وتعديل وحذف فئات المنتجات';

  @override
  String get brandsTitle => 'العلامات التجارية';

  @override
  String get brandsDesc => 'إضافة وتعديل وحذف الماركات';

  @override
  String get unitTemplatesTitle => 'قوالب وحدات القياس';

  @override
  String get unitTemplatesDesc =>
      'إدارة قوالب الوحدات (الأساسية والتحويل) من الشاشة المخصّصة. افتح «قوالب الوحدات» من القائمة الرئيسية لإعدادات المخزون — تُستعمل كمرجع عند تعريف وحدات إضافية للمنتج.';

  @override
  String get stockMovementsTitle => 'حركات المخزون';

  @override
  String get newVoucher => 'سند جديد';

  @override
  String get deposits => 'إيداعات';

  @override
  String get withdrawals => 'مصروفات';

  @override
  String get transfers => 'تحويلات';

  @override
  String get searchByProductOrVoucher => 'بحث بالمنتج أو رقم السند...';

  @override
  String get noMovements => 'لا توجد حركات';

  @override
  String get noItems => 'بدون بنود';

  @override
  String failedToLoadMovements(Object error) {
    return 'تعذر تحميل الحركات: $error';
  }

  @override
  String get filterAll => 'الكل';

  @override
  String get filterDeposit => 'إيداع';

  @override
  String get filterWithdraw => 'صرف';

  @override
  String get filterTransfer => 'تحويل';

  @override
  String get sortNewest => 'الأحدث';

  @override
  String get sortOldest => 'الأقدم';

  @override
  String get productDetails => 'تفاصيل المنتج';

  @override
  String get unpinFromHome => 'إلغاء التثبيت من الرئيسية';

  @override
  String get pinToHome => 'تثبيت في الرئيسية';

  @override
  String get failedToLoadProduct => 'تعذّر تحميل بيانات المنتج';

  @override
  String get lowStock => 'مخزون منخفض';

  @override
  String get inStock => 'في المخزون';

  @override
  String get summary => 'ملخص';

  @override
  String get availableQtyLabel => 'الكمية المتاحة';

  @override
  String get salePrice => 'سعر البيع';

  @override
  String get minSalePrice => 'الحد الأدنى للبيع';

  @override
  String get purchasePrice => 'سعر الشراء';

  @override
  String get warehouseStock => 'مخزون المخازن';

  @override
  String get noWarehouseData => 'لا توجد بيانات مخازن';

  @override
  String get batchesLast20 => 'دفعات (Batches) — آخر 20';

  @override
  String get noRecordedBatches => 'لا توجد دفعات مسجلة';

  @override
  String get batch => 'دفعة';

  @override
  String get recentSalesMovements => 'آخر مبيعات/حركات';

  @override
  String get noRecentSales => 'لا توجد حركات بيع مؤخراً';

  @override
  String get warehouseFallback => 'مخزن';

  @override
  String get stockAnalytics => 'تحليلات المخزون';

  @override
  String get stockOverview => 'نظرة عامة على المخزون';

  @override
  String get inventoryValue => 'قيمة المخزون';

  @override
  String get totalProducts => 'إجمالي المنتجات';

  @override
  String get lowStockLabel => 'مخزون منخفض';

  @override
  String get outOfStockLabel => 'نفد المخزون';

  @override
  String nearExpiryWarning(Object count) {
    return '$count منتج قريب الانتهاء خلال 60 يوماً — راجع القائمة أدناه';
  }

  @override
  String get nearExpiry60days => 'قريبة الانتهاء (60 يوم)';

  @override
  String get topSellersLast30 => 'الأكثر مبيعاً — آخر 30 يوم';

  @override
  String get inventoryValueByCategory => 'قيمة المخزون حسب الفئة';

  @override
  String get product => 'المنتج';

  @override
  String get quantity => 'الكمية';

  @override
  String get minimumThreshold => 'الحد الأدنى';

  @override
  String get expiryDate => 'تاريخ الانتهاء';

  @override
  String get soldQuantity => 'الكمية المباعة';

  @override
  String get revenue => 'الإيرادات';

  @override
  String productCount(Object count) {
    return '$count منتج';
  }

  @override
  String get noCategory => 'بدون فئة';

  @override
  String get unitTemplates => 'قوالب الوحدات';

  @override
  String get search => 'بحث';

  @override
  String get all => 'الكل';

  @override
  String get cancelFilter => 'إلغاء الفلتر';

  @override
  String get newTemplate => 'قالب جديد';

  @override
  String get sortBy => 'الترتيب حسب';

  @override
  String get results => 'النتائج';

  @override
  String get noTemplatesYet =>
      'لا توجد قوالب بعد.\nاضغط «قالب جديد» لإضافة قالب وربط وحدات البيع بالمنتجات.';

  @override
  String get edit => 'تعديل';

  @override
  String get delete => 'حذف';

  @override
  String get activeStatus => 'نشط';

  @override
  String get inactiveStatus => 'غير نشط';

  @override
  String get deleteTemplate => 'حذف القالب';

  @override
  String deleteTemplateConfirm(Object name) {
    return 'حذف «$name»؟';
  }

  @override
  String get deleted => 'تم الحذف';

  @override
  String get newTemplateEditor => 'قالب جديد';

  @override
  String get editTemplateEditor => 'تعديل القالب';

  @override
  String get templateNotFound => 'القالب غير موجود.';

  @override
  String get baseUnitNameLabel => 'اسم الوحدة الأساسية';

  @override
  String get baseUnitHint => 'مثال: جرام';

  @override
  String get symbolLabel => 'رمز';

  @override
  String get symbolHint => 'مثال: جم';

  @override
  String get addUnit => 'أضف الوحدة';

  @override
  String get templateNameLabel => 'القالب';

  @override
  String get templateHint => 'مثال: الوزن';

  @override
  String get activeLabel => 'نشط';

  @override
  String get templateCreated => 'تم إنشاء القالب';

  @override
  String get templateSaved => 'تم حفظ التعديلات';

  @override
  String get largerUnitNameLabel => 'اسم الوحدة الأكبر';

  @override
  String get largerUnitHint => 'مثال: كيلوغرام';

  @override
  String get conversionFactorLabel => 'عامل التحويل إلى الأساس';

  @override
  String get conversionFactorHint => 'مثال: 1000';

  @override
  String get unitSymbolHint => 'مثال: كجم';

  @override
  String get baseUnitTooltip =>
      'أصغر وحدة للقياس في هذا القالب (مثال: كيلوغرام عند بيع بالوزن).';

  @override
  String get newBrand => 'ماركة جديدة';

  @override
  String get brandNameLabel => 'اسم الماركة';

  @override
  String get brandSaved => 'تم حفظ الماركة';

  @override
  String get deleteBrand => 'حذف الماركة';

  @override
  String deleteBrandConfirm(Object name) {
    return 'حذف «$name»؟';
  }

  @override
  String get searchAndFilter => 'بحث وتصفية';

  @override
  String showHide(String show) {
    String _temp0 = intl.Intl.selectLogic(show, {
      'true': 'إخفاء',
      'other': 'إظهار',
    });
    return '$_temp0';
  }

  @override
  String get barcodeConfiguration => 'تهيئة الباركود';

  @override
  String get barcodeConfigDesc =>
      'حدد تفضيلات وصيغ الباركود لمسح دقيق وضبط التسعير حسب الوزن.';

  @override
  String get barcodeType => 'نوع الباركود';

  @override
  String get code128Desc =>
      'باركود مرن يدعم ترميز الأرقام والحروف والرموز، ويُستخدم على نطاق واسع في التوصيل والمستودعات وتتبع المنتجات.';

  @override
  String get ean13Desc =>
      'معيار مكوّن من 13 رقمًا يُستخدم بشكل شائع في قطاع التجزئة، ويشمل رمز الدولة ورمز المصنّع ورمز المنتج بالإضافة إلى رقم تحقق.';

  @override
  String get selectBarcodeStandard =>
      'اختر معيار الباركود الذي سيعتمد عليه النظام في إنشاء وقراءة باركود المنتجات.';

  @override
  String get weightEmbedBarcode => 'باركود متضمن الوزن';

  @override
  String get enabledLabel => 'مفعّل';

  @override
  String get disabledLabel => 'معطّل';

  @override
  String get weightEmbedDesc =>
      'استخدم الباركود متضمن الوزن ليتمكّن النظام من قراءة وزن المنتج (والسعر إذن) مباشرة من الباركود.';

  @override
  String get embeddedPattern => 'صيغة الباركود المتضمن';

  @override
  String get patternFormatDesc =>
      'أدخل صيغة الباركود المدمج وفق النموذج، حيث تُمثل X أرقام المنتج، وW خانات الوزن.';

  @override
  String get patternExample =>
      'على سبيل المثال، إذا كان الوزن يُعرض بأربع خانات فسيظهر 250 جرامًا كـ 0250.';

  @override
  String get weightDivisor => 'تقسيم وحدة الوزن';

  @override
  String get weightDivisorHint => 'مثال: 1000';

  @override
  String get weightDivisorDesc =>
      'أدخل القيمة التي يستخدمها النظام لتحويل وحدة الوزن في الباركود إلى وحدة البيع.';

  @override
  String get currencyDivisor => 'قسمة العملة';

  @override
  String get currencyDivisorHint => 'مثال: 100';

  @override
  String get currencyDivisorDesc =>
      'أدخل القيمة التي يستخدمها النظام لتحويل السعر من الوحدة المضمنة في الباركود إلى سعر البيع.';

  @override
  String get barcodePatternError =>
      'صيغة الباركود المتضمن يجب أن تحتوي فقط على الحروف X و W و P و N.';

  @override
  String get weightDivisorError =>
      'أدخل قيمة صحيحة أكبر من صفر لتقسيم وحدة الوزن.';

  @override
  String get currencyDivisorError =>
      'أدخل قيمة صحيحة أكبر من صفر لقسمة العملة.';

  @override
  String get barcodeSettingsSaved => 'تم حفظ إعدادات الباركود.';

  @override
  String saveError(Object error) {
    return 'تعذر الحفظ: $error';
  }

  @override
  String get savingLabel => 'جاري الحفظ…';

  @override
  String get saveSettings => 'حفظ الإعدادات';

  @override
  String get productsFullSettings =>
      'إعدادات المنتجات الكاملة (تهيئة، تتبع، أذون، قيم افتراضية) متوفرة من البطاقة الرئيسية «إعدادات المنتجات» في شبكة إعدادات المخزون.';

  @override
  String get categoriesMoved =>
      'تم نقل إدارة التصنيفات إلى شاشة مخصّصة. افتح «التصنيفات» من القائمة الرئيسية لإعدادات المخزون.';

  @override
  String get brandsMoved =>
      'تم نقل إدارة العلامات التجارية إلى شاشة مخصّصة. افتح «العلامات التجارية» من القائمة الرئيسية.';

  @override
  String get barcodeMoved =>
      'تم نقل تهيئة الباركود إلى شاشة مخصّصة. افتح «إعدادات الباركود» من القائمة الرئيسية لهذه الإعدادات.';

  @override
  String get defaultWarehouses => 'المستودعات الافتراضية للموظفين';

  @override
  String get forceDefaultWarehouse => 'فرض مستودع افتراضي عند تسجيل الحركات';

  @override
  String get recommendDefaultWarehouse =>
      'يُنصح بربط كل موظف بمستودع افتراضي لتتبع الصلاحيات والحركات.';

  @override
  String get unitsSection => 'الوحدات';

  @override
  String get allowDifferentPurchaseUnits =>
      'السماح بوحدات شراء مختلفة عن البيع';

  @override
  String get showConversionsInPO => 'عرض التحويلات في فاتورة الشراء';

  @override
  String get printingSection => 'الطباعة';

  @override
  String get includeStoreLogo => 'تضمين شعار المتجر في المستندات';

  @override
  String get printBarcodeOnIssue => 'طباعة باركود على أذون الصرف';

  @override
  String get customFieldsSection => 'الحقول الإضافية';

  @override
  String get showCustomFieldLists => 'إظهار الحقول الإضافية في قوائم المنتجات';

  @override
  String get includeInExport => 'تضمينها في التقارير القابلة للتصدير';

  @override
  String get noAdditionalSettings => 'لا توجد إعدادات إضافية لهذه الفئة بعد.';

  @override
  String get autoNumberingTitle => 'الترقيم التلقائي لـ المنتجات';

  @override
  String get autoNumberingDesc => 'تحكم في إعدادات وتنسيق الترقيم التلقائي.';

  @override
  String get nextNumberLabel => 'الرقم التالي';

  @override
  String get nextNumberDesc => 'الرقم الذي سيقوم النظام بتعيينه للعنصر التالي.';

  @override
  String get numberingFormat => 'تنسيق الترقيم';

  @override
  String get numericFormat => 'الأرقام الرقمية (0، 1، 2، …)';

  @override
  String get alphaFormat => 'حروف أبجدية';

  @override
  String get alnumFormat => 'أرقام وحروف';

  @override
  String get formatDescription =>
      'اختر الصيغة المراد استخدامها في إنشاء الترقيم (أرقام، حروف، أو مزيج).';

  @override
  String get digitCountLabel => 'عدد الأرقام';

  @override
  String get digitCountDesc =>
      'حدد عدد الخانات للرقم التسلسلي. إذا كان الرقم أقل من هذا العدد، تُضاف أصفار من اليسار.';

  @override
  String get uniqueLabel => 'غير مكرر';

  @override
  String get uniqueDesc =>
      'تأكد من أن يكون كل رقم في التسلسل فريداً وغير مكرر.';

  @override
  String get prefixLabel => 'البادئة';

  @override
  String get prefixHint => 'مثال: PR أو INV';

  @override
  String get prefixDesc =>
      'الرموز أو الأحرف التي تظهر قبل رقم المستند. يمكن أن تكون ثابتة مثل INV أو تتبع نمط.';

  @override
  String get noAdditionalSettingsForCategory =>
      'لا توجد إعدادات إضافية لهذه الفئة بعد.';

  @override
  String get hideLabel => 'إخفاء';

  @override
  String get showLabel => 'إظهار';

  @override
  String get reset => 'إعادة تعيين';

  @override
  String get newCategory => 'تصنيف جديد';

  @override
  String get parentCategory => 'التصنيف الرئيسي';

  @override
  String get noParent => 'بدون (تصنيف رئيسي)';

  @override
  String get descriptionLabel => 'الوصف';

  @override
  String get categorySaved => 'تم حفظ التصنيف';

  @override
  String get deleteCategory => 'حذف التصنيف';

  @override
  String deleteCategoryConfirm(Object name) {
    return 'حذف «$name»؟';
  }

  @override
  String get addNewCategory => 'إضافة تصنيف جديد';

  @override
  String get rootsOnly => 'جذور فقط (بدون أب)';

  @override
  String underParent(Object name) {
    return 'تحت: $name';
  }

  @override
  String get noMatchingCategories =>
      'لا توجد تصنيفات مطابقة.\nأضف تصنيفاً جديداً أو غيّر الفلتر.';

  @override
  String get noResults => 'لا توجد نتائج';

  @override
  String get inventoryManagement => 'إدارة المخزون';

  @override
  String get alerts => 'التنبيهات';

  @override
  String get inventorySettings => 'إعدادات المخزون';

  @override
  String get mainSections => 'الأقسام الرئيسية';

  @override
  String get recentInventoryMovements => 'آخر الحركات المخزونية';

  @override
  String get quickActions => 'إجراءات سريعة';

  @override
  String get addProduct => 'إضافة منتج';

  @override
  String get inventoryVoucher => 'سند مخزوني';

  @override
  String get periodicStocktaking => 'جرد دوري';

  @override
  String get movements => 'الحركات';

  @override
  String get products => 'المنتجات';

  @override
  String get productsSub => 'عرض وإدارة جميع الأصناف';

  @override
  String get warehouses => 'المستودعات';

  @override
  String get warehousesSub => 'مراقبة الأرصدة والأماكن';

  @override
  String get inventoryVouchers => 'السندات المخزونية';

  @override
  String get inventoryVouchersSub => 'إيداع وصرف ونقل';

  @override
  String get priceLists => 'فوائم الأسعار';

  @override
  String get priceListsSub => 'تجزئة وجملة وخاصة';

  @override
  String get periodicStocktakingSub => 'تسوية الفروقات الفعلية';

  @override
  String get inventorySettingsSub => 'وحدات، تصنيفات، طباعة';

  @override
  String get deposit => 'إيداع';

  @override
  String get withdrawal => 'صرف';

  @override
  String get transfer => 'تحويل';

  @override
  String get lastMovements => 'آخر الحركات';

  @override
  String get viewAll => 'عرض الكل';

  @override
  String get savedInventoryPolicies => 'تم حفظ سياسات المخزون';

  @override
  String get inventoryPolicyCenter => 'مركز سياسات المخزون';

  @override
  String get saveTooltip => 'حفظ';

  @override
  String get customerActivityType => 'نوع نشاط العميل';

  @override
  String get activityProfile => 'ملف النشاط';

  @override
  String get activityTypeDesc =>
      'عند اختيار نوع النشاط تُضبط الخصائص الافتراضية تلقائياً — يمكنك تعديلها يدوياً.';

  @override
  String get enableUnits => 'تمكين الوحدات';

  @override
  String get productManagement => 'إدارة المنتجات';

  @override
  String get addProductToggle => 'إضافة منتج';

  @override
  String get inventoryVouchersToggle => 'السندات المخزنية';

  @override
  String get priceListsToggle => 'قوائم الأسعار';

  @override
  String get warehousesToggle => 'المستودعات';

  @override
  String get stocktakingToggle => 'الجرد';

  @override
  String get settingsToggle => 'إعدادات المخزون';

  @override
  String get productCardProperties => 'خصائص بطاقة المنتج';

  @override
  String get gradeField => 'حقل الرتبة / درجة الجودة';

  @override
  String get expiryTracking => 'تاريخ الانتهاء والإنتاج';

  @override
  String get batchTracking => 'تتبع الدفعات (Batch)';

  @override
  String get lowStockAlerts => 'تنبيهات نفاد المخزون';

  @override
  String get productImages => 'صور المنتج';

  @override
  String get productVariants => 'متغيرات المنتج (مقاس/لون)';

  @override
  String get purchasingAndSuppliers => 'المشتريات والموردون';

  @override
  String get purchaseOrders => 'أوامر الشراء (PO)';

  @override
  String get requireSourceOnInbound => 'إلزام تحديد مصدر في الوارد';

  @override
  String get analyticsAndReports => 'التحليلات والتقارير';

  @override
  String get items => 'صنف';

  @override
  String get iqd => 'Fdj';

  @override
  String get warehouseLabel => 'المستودع';

  @override
  String get periodicStocktakingTitle => 'الجرد الدوري';

  @override
  String openSessions(Object count) {
    return 'جلسات مفتوحة ($count)';
  }

  @override
  String closedSessions(Object count) {
    return 'مكتملة ($count)';
  }

  @override
  String get startNewStocktake => 'بدء جرد جديد';

  @override
  String get closeStocktaking => 'إقفال الجرد';

  @override
  String closeStocktakeConfirm(Object title) {
    return 'هل تريد إقفال جلسة «$title»؟';
  }

  @override
  String get autoPostDifferences => 'ترحيل الفروقات تلقائيا';

  @override
  String get autoPostDesc => 'ينشئ سند تسوية مخزني واحد للجلسة';

  @override
  String get sessionClosedSuccess => 'تم إقفال الجلسة بنجاح';

  @override
  String get noSessionsYet => 'لا توجد جلسات';

  @override
  String get closedStatus => 'مكتمل';

  @override
  String itemsCount(Object counted, Object total) {
    return '$counted / $total صنف';
  }

  @override
  String startedAt(Object date) {
    return 'بدأ: $date';
  }

  @override
  String closedAt(Object date) {
    return 'أُقفل: $date';
  }

  @override
  String get closeStocktakingAction => 'إقفال الجرد';

  @override
  String get reportAction => 'التقرير';

  @override
  String get startNewStocktakeSession => 'بدء جلسة جرد جديدة';

  @override
  String get sessionTitleLabel => 'عنوان الجلسة *';

  @override
  String get sessionTitleHint => 'مثال: جرد شهر يوليو 2025';

  @override
  String get selectWarehouseError => 'اختر مستودعاً';

  @override
  String get startStocktakingBtn => 'بدء الجرد';

  @override
  String get searchHint => 'اسم، باركود، رمز، أو رقم المنتج';

  @override
  String systemQty(Object qty) {
    return 'النظام: $qty';
  }

  @override
  String diffQty(Object diff) {
    return 'فرق: $diff';
  }

  @override
  String get enterValueHint => 'أدخل';

  @override
  String reportTitle(Object title) {
    return 'تقرير: $title';
  }

  @override
  String get totalItemsLabel => 'إجمالي الأصناف';

  @override
  String get countedLabel => 'تم عده';

  @override
  String get uncountedLabel => 'غير معدود';

  @override
  String get sessionSummary => 'ملخص الجلسة:';

  @override
  String get statusRow => 'الحالة';

  @override
  String actualQty(Object qty) {
    return 'الفعلي: $qty';
  }

  @override
  String get purchaseOrdersTitle => 'أوامر الشراء';

  @override
  String get newPurchaseOrder => 'أمر شراء جديد';

  @override
  String get sentLabel => 'مرسلة';

  @override
  String get partialLabel => 'جزئي';

  @override
  String get completedLabel => 'مكتمل';

  @override
  String totalOrderValue(Object value) {
    return 'القيمة الكلية: $value';
  }

  @override
  String get clearTooltip => 'مسح';

  @override
  String get cancelOrder => 'إلغاء أمر الشراء';

  @override
  String get cancelOrderConfirm => 'هل تريد إلغاء هذا الأمر؟';

  @override
  String get backAction => 'رجوع';

  @override
  String get cancelAction => 'إلغاء';

  @override
  String get allFilter => 'الكل';

  @override
  String get draftStatus => 'مسودة';

  @override
  String get sentStatus => 'مرسلة';

  @override
  String get partialStatus => 'جزئي';

  @override
  String get receivedStatus => 'مكتمل';

  @override
  String get cancelledStatus => 'ملغي';

  @override
  String get noSupplier => 'مورد غير محدد';

  @override
  String receivedValue(Object received, Object total) {
    return 'مستلم $received من $total';
  }

  @override
  String itemCount(Object count) {
    return '$count صنف';
  }

  @override
  String get viewAction => 'عرض';

  @override
  String get editAction => 'تعديل';

  @override
  String get copyAction => 'نسخ';

  @override
  String get noResultsMatch => 'لا توجد نتائج تطابق البحث';

  @override
  String get noPurchaseOrdersYet => 'لا توجد أوامر شراء بعد';

  @override
  String get createFirstOrder => '+ إنشاء أول أمر شراء';

  @override
  String get orPressCtrlN => 'أو اضغط Ctrl+N';

  @override
  String get failedToFetchLowItems =>
      'تعذر جلب الأصناف المنخفضة. تأكد من تحديث قاعدة البيانات.';

  @override
  String get noNewItemsAllAdded =>
      'لا توجد أصناف جديدة: كل المنتجات المنخفضة مضافة مسبقاً في القائمة.';

  @override
  String get noLowStockProducts =>
      'لا توجد منتجات منخفضة المخزون (رصيد عند أو تحت حد التنبيه، مع تفعيل تتبع المخزون).';

  @override
  String addedLowItems(Object added) {
    return 'تمت إضافة $added صنفاً من المخزون المنخفض/النافض. عُدّل الكميات ثم احفظ.';
  }

  @override
  String skippedDuplicates(Object skipped) {
    return ' (تُجاهل $skipped مكرراً)';
  }

  @override
  String showingOnlyFirst(Object count) {
    return ' — عُرض أول $count صنفاً فقط.';
  }

  @override
  String get addAtLeastOne => 'أضف صنفاً واحداً على الأقل';

  @override
  String get checkNameAndQty => 'تأكد من اسم المنتج والكمية في كل صنف';

  @override
  String errorOccurred(Object error) {
    return 'حدث خطأ: $error';
  }

  @override
  String get editPurchaseOrder => 'تعديل أمر شراء';

  @override
  String get newPurchaseOrderTitle => 'أمر شراء جديد';

  @override
  String get orderInfo => 'معلومات الأمر';

  @override
  String get supplierLabel => 'المورد';

  @override
  String get selectSupplierHint => 'اختر مورداً (اختياري)';

  @override
  String get noSupplierText => '— بدون مورد —';

  @override
  String get orderDateLabel => 'تاريخ الأمر';

  @override
  String get expectedDeliveryLabel => 'تاريخ الاستلام المتوقع';

  @override
  String get selectOptionalHint => 'اختر (اختياري)';

  @override
  String get statusLabel => 'الحالة';

  @override
  String get draftText => 'مسودة';

  @override
  String get sentText => 'مرسل للمورد';

  @override
  String get partialText => 'مستلم جزئياً';

  @override
  String get receivedText => 'مستلم بالكامل';

  @override
  String get cancelledText => 'ملغى';

  @override
  String get notesLabel => 'ملاحظات';

  @override
  String get notesHint => 'شروط، تفاصيل، ملاحظات…';

  @override
  String get orderItems => 'أصناف الأمر';

  @override
  String get fillLowStock => 'ملء من المخزون النافض';

  @override
  String get addItem => 'إضافة صنف';

  @override
  String get emptyListHint =>
      'اضغط «ملء من المخزون النافض» أو «إضافة صنف» لبدء القائمة';

  @override
  String get itemCol => 'الصنف';

  @override
  String get qtyCol => 'الكمية';

  @override
  String get unitPriceCol => 'سعر الوحدة';

  @override
  String get totalCol => 'الإجمالي';

  @override
  String get grandTotal => 'الإجمالي';

  @override
  String get itemNameHint => 'اسم الصنف';

  @override
  String get noProductForBarcode => 'لا يوجد منتج بهذا الباركود';

  @override
  String get productAlreadyExists => 'المنتج موجود بالفعل';

  @override
  String get removeFromList => 'إزالة من القائمة';

  @override
  String get removeConfirm => 'كمية الطباعة أكبر من 5؛ هل تريد الإزالة؟';

  @override
  String get removeAction => 'إزالة';

  @override
  String get quantitiesUpdated => 'تم تحديث الكميات';

  @override
  String zeroQtySkipped(Object count) {
    return 'تم تخطي المنتجات ذات الكمية صفر ($count)';
  }

  @override
  String get resetAll => 'إعادة التعيين';

  @override
  String get resetConfirm =>
      'سيتم إعادة تعيين جميع الكميات إلى 1، هل تريد المتابعة؟';

  @override
  String get printPreview => 'معاينة الطباعة';

  @override
  String totalLabels(Object count) {
    return 'إجمالي الملصقات: $count';
  }

  @override
  String get printViaSystem =>
      'الطباعة عبر الطابعة الافتراضية للنظام أو من شاشة المعاينة.';

  @override
  String get productBarcodes => 'ملصقات باركود المنتجات';

  @override
  String get printedTitle => 'تمت الطباعة';

  @override
  String get printedContent => 'تم تنفيذ المعاينة أو الطباعة من نافذة النظام.';

  @override
  String get clearList => 'مسح القائمة';

  @override
  String get printAgain => 'طباعة مرة أخرى';

  @override
  String get printListCleared => 'تم مسح قائمة الطباعة';

  @override
  String get itemFallback => 'صنف';

  @override
  String get kgUnit => 'كجم';

  @override
  String get justNow => 'الآن';

  @override
  String minutesAgo(Object minutes) {
    return 'منذ $minutes دقيقة';
  }

  @override
  String hoursAgo(Object hours) {
    return 'منذ $hours ساعة';
  }

  @override
  String get now => 'الآن';

  @override
  String get dayOrMoreAgo => 'منذ يوم أو أكثر';

  @override
  String get barcodeLabelsTitle => 'طباعة ملصقات باركود';

  @override
  String lastUpdate(Object time) {
    return 'آخر تحديث: $time — إعادة جلب الأسعار والمخزون';
  }

  @override
  String printLabelsBtn(Object count) {
    return 'طباعة $count ملصق';
  }

  @override
  String loadFailed(Object error) {
    return 'تعذّر التحميل: $error';
  }

  @override
  String get searchProductHint => 'بحث عن منتج';

  @override
  String get searchProductSub => 'حرفان أو أكثر (اسم / باركود / رمز صنف)';

  @override
  String get weightProductsNote =>
      'منتجات الوزن: يُطبع المعرف على الملصق؛ الوزن يُوزَّن عند البيع.';

  @override
  String get barcodeLabel => 'الباركود';

  @override
  String stockLabel(Object qty) {
    return 'مخزون: $qty';
  }

  @override
  String skuLabel(Object code) {
    return 'رمز صنف: $code';
  }

  @override
  String get sizeAndPreview =>
      'اختَر المقاس ومظهر المعاينة (تطبَّق على البطاقات والطباعة).';

  @override
  String get labelSizeHint => 'مقاس الملصق';

  @override
  String get showProductName => 'إظهار اسم المنتج';

  @override
  String get showPrice => 'إظهار السعر';

  @override
  String get smartQtyTooltip => 'يضبط كمية الطباعة تلقائياً حسب كمية المخزون';

  @override
  String get smartQtyLabel => 'الكمية الذكية';

  @override
  String get setAllOne => 'اجعل الكل (1)';

  @override
  String setAllOneCount(Object count) {
    return 'اجعل الكل (1) ($count)';
  }

  @override
  String productsCount(Object count) {
    return 'المنتجات: $count';
  }

  @override
  String totalLabelsCount(Object count) {
    return 'إجمالي الملصقات: $count';
  }

  @override
  String get searchToAddHint => 'ابحث عن منتج لإضافته للطباعة';

  @override
  String get addMultipleHint => 'يمكنك إضافة منتجات متعددة وطباعتها دفعة واحدة';

  @override
  String get removeTooltip => 'إزالة';

  @override
  String stockAndPrint(Object print, Object stock) {
    return 'مخزون: $stock | طباعة: $print';
  }

  @override
  String get printQtyExceedsStock => 'كمية الطباعة أكبر من المخزون';

  @override
  String get decreaseTooltip => 'نقص';

  @override
  String get increaseTooltip => 'زيادة';

  @override
  String previewLabel(Object name, Object price, Object size) {
    return 'معاينة: $name — $price — $size';
  }

  @override
  String priceFormat(Object price) {
    return '$price Fdj';
  }

  @override
  String get autoBarcodeNote => 'سيتم توليد باركود تلقائياً';

  @override
  String get unsavedChanges => 'تغييرات غير محفوظة';

  @override
  String get unsavedChangesConfirm => 'التغييرات لم تُحفظ، هل تريد المغادرة؟';

  @override
  String get stayAction => 'البقاء';

  @override
  String get leaveAction => 'مغادرة';

  @override
  String productSelected(Object name) {
    return 'تم اختيار: $name';
  }

  @override
  String failedToLoad(Object error) {
    return 'تعذّر التحميل: $error';
  }

  @override
  String failedToLoadMore(Object error) {
    return 'تعذّر تحميل المزيد: $error';
  }

  @override
  String get clearProductBarcode => 'مسح باركود المنتج';

  @override
  String get nameEmpty => 'اسم المنتج لا يمكن أن يكون فارغاً';

  @override
  String get nameTooLong => 'اسم المنتج طويل جداً';

  @override
  String get barcodeAlreadyUsed => 'الباركود مستخدم مسبقاً';

  @override
  String get minPriceExceedsSalePrice => 'أقل سعر بيع يجب ألا يتجاوز سعر البيع';

  @override
  String get productUpdatedSuccess => 'تم تحديث المنتج بنجاح';

  @override
  String get barcodeUsedByOther => 'الباركود مستخدم لمنتج/وحدة أخرى';

  @override
  String get saveFailed => 'تعذر حفظ التعديلات';

  @override
  String get lossSuffix => ' — خسارة';

  @override
  String get profitMarginLabel => 'هامش الربح: ';

  @override
  String get profitLabel => 'ربح: ';

  @override
  String get updateExistingProduct => 'تحديث منتج موجود';

  @override
  String get clearBarcodeCameraTooltip => 'مسح باركود (كاميرا)';

  @override
  String get searchLabel => 'بحث';

  @override
  String get typeTwoCharsHint => 'اكتب حرفين على الأقل للبحث الموحّد';

  @override
  String get noResultsFound => 'لا توجد نتائج';

  @override
  String get scannerSearchNote =>
      'في هذه الصفحة: قارئ الباركود (HID) يبحث عن المنتج هنا ولا يُوجَّه للبيع. مرّر للأسفل لتحميل المزيد.';

  @override
  String get noResultsForText => 'لا توجد نتائج لهذا النص بعد.';

  @override
  String get pieceUnit => 'قطعة';

  @override
  String get outOfStockWarning => 'المنتج نفذ من المخزون';

  @override
  String get lowStockWarning => 'الكمية وصلت لحد التنبيه';

  @override
  String get productNameLabel => 'اسم المنتج';

  @override
  String get barcodeAlreadyUsedByOther => 'الباركود مستخدم مسبقاً';

  @override
  String get viewProductWithBarcode => 'عرض المنتج الذي يملك هذا الباركود';

  @override
  String get purchasePriceLabel => 'سعر الشراء';

  @override
  String get salePriceLabel => 'سعر البيع';

  @override
  String get minSalePriceLabel => 'الحد الأدنى للبيع';

  @override
  String get quantityLabel => 'الكمية';

  @override
  String get alertThresholdLabel => 'حد التنبيه';

  @override
  String productIdLabel(Object id) {
    return 'رقم $id';
  }

  @override
  String categoryLabel(Object name) {
    return 'التصنيف: $name';
  }

  @override
  String get stockTrackingDisabled =>
      'تتبع المخزون معطّل لهذا الصنف — الكمية من قاعدة البيانات تبقى كما هي عند الحفظ.';

  @override
  String get saveLabel => 'حفظ';

  @override
  String get retailList => 'قائمة التجزئة';

  @override
  String get retailDesc => 'أسعار بيع التجزئة للعملاء العاديين';

  @override
  String get wholesaleList => 'قائمة الجملة';

  @override
  String get wholesaleDesc => 'أسعار الجملة للموزعين والتجار';

  @override
  String get vipList => 'قائمة العملاء المميزين';

  @override
  String get vipDesc => 'أسعار خاصة للعملاء الدائمين (VIP)';

  @override
  String get cannotDeleteDefault => 'لا يمكن حذف قائمة الأسعار الافتراضية';

  @override
  String get deletePriceList => 'حذف قائمة الأسعار';

  @override
  String deletePriceListConfirm(Object name) {
    return 'هل تريد حذف «$name»؟';
  }

  @override
  String get priceListsTitle => 'فوائم الأسعار';

  @override
  String get listsTab => 'القوائم';

  @override
  String get productsByListTab => 'منتجات بحسب القائمة';

  @override
  String get newListBtn => 'قائمة جديدة';

  @override
  String get defaultLabel => 'افتراضي';

  @override
  String get setAsDefault => 'تعيين كافتراضي';

  @override
  String get managePrices => 'إدارة الأسعار';

  @override
  String get productCol => 'المنتج';

  @override
  String get purchasePriceCol => 'سعر الشراء';

  @override
  String get retailPriceCol => 'سعر التجزئة';

  @override
  String get wholesalePriceCol => 'سعر الجملة';

  @override
  String get vipPriceCol => 'سعر VIP';

  @override
  String listPricesTitle(Object name) {
    return 'أسعار $name';
  }

  @override
  String get salePriceCol => 'سعر البيع';

  @override
  String get editList => 'تعديل القائمة';

  @override
  String get newListTitle => 'قائمة أسعار جديدة';

  @override
  String get listNameLabel => 'اسم القائمة *';

  @override
  String get listColorLabel => 'لون القائمة:';

  @override
  String get saveChanges => 'حفظ التعديلات';

  @override
  String get createList => 'إنشاء القائمة';

  @override
  String get colorsAndSizes => 'الألوان والمقاسات';

  @override
  String get closeBtn => 'إغلاق';

  @override
  String get doneBtn => 'تم';

  @override
  String get addAtLeastOneColor => 'أضف لوناً واحداً على الأقل.';

  @override
  String get colorNameRequired => 'اسم اللون مطلوب.';

  @override
  String get addAtLeastOneSize => 'أضف مقاساً واحداً على الأقل لكل لون.';

  @override
  String get sizeFieldRequired => 'حقل المقاس مطلوب.';

  @override
  String duplicateSize(Object color, Object size) {
    return 'المقاس \"\$size\" مكرر داخل اللون \"\$color\".';
  }

  @override
  String get qtyMustBeNonNegative =>
      'الكمية يجب أن تكون رقماً صحيحاً أكبر أو يساوي 0.';

  @override
  String get duplicateBarcode => 'يوجد باركود مكرر داخل المتغيرات.';

  @override
  String get conversionFactorError =>
      'عامل التحويل يجب أن يكون أكبر من 0 لكل وحدة جديدة.';

  @override
  String get variantBarcodeUsed => 'باركود المتغير مستخدم مسبقاً';

  @override
  String get conversionFactorGt0 => 'عامل التحويل يجب أن يكون أكبر من 0';

  @override
  String get chooseColorTitle => 'اختيار لون';

  @override
  String get chooseColorSubtitle => 'اختر لوناً يمثّل هذا الخيار (اختياري).';

  @override
  String get applyUniformQtyTitle => 'تطبيق كمية موحدة';

  @override
  String get enterQtyHint => 'أدخل كمية (0 أو أكثر)';

  @override
  String get qtyMustBePositive =>
      'الكمية يجب أن تكون رقماً صحيحاً أكبر أو يساوي 0.';

  @override
  String get sizeLabel => 'المقاس';

  @override
  String get chooseSizeTooltip => 'اختيار مقاس';

  @override
  String get qtyLabel => 'الكمية';

  @override
  String get barcodeOptional => 'الباركود (اختياري)';

  @override
  String get deleteTooltip => 'حذف';

  @override
  String get colorNameLabel => 'اسم اللون';

  @override
  String get colorPickerTooltip => 'اختيار لون (HEX)';

  @override
  String get deleteColorTooltip => 'حذف اللون';

  @override
  String get sizesAndQuantities => 'المقاسات والكميات';

  @override
  String get noSizesYet => 'لا توجد مقاسات بعد. أضف مقاساً واحداً على الأقل.';

  @override
  String get addSizeBtn => 'إضافة مقاس';

  @override
  String colorTotal(Object count) {
    return 'إجمالي اللون: $count';
  }

  @override
  String get addNewColor => 'إضافة لون جديد';

  @override
  String get applyUniformQtyAllSizes => 'تطبيق كمية موحدة على كل المقاسات';

  @override
  String get noColorsYet => 'لا توجد ألوان بعد. أضف لوناً للبدء.';

  @override
  String get editProductTitle => 'تعديل المنتج';

  @override
  String get saveBtn => 'حفظ';

  @override
  String get productNameHint => 'مثال: سكر 1 كغم';

  @override
  String get barcodeOptionalLabel => 'الباركود (اختياري)';

  @override
  String get trackStock => 'تتبع المخزون';

  @override
  String get trackStockDesc => 'يحسب الكمية والتنبيه منخفض';

  @override
  String get noTrackDesc => 'الكمية تُصبح 0 ولا تظهر تنبيهات مخزون';

  @override
  String get pricingTitle => 'التسعير';

  @override
  String get enterSalePrice => 'أدخل سعر بيع';

  @override
  String get baseStockType => 'نوع المخزون الأساسي';

  @override
  String get stockTypePiece => 'عدد (قطعة كأساس)';

  @override
  String get stockTypeWeight => 'وزن (كيلوغرام كأساس)';

  @override
  String get stockTypeClothing => 'ملابس (ألوان ومقاسات)';

  @override
  String get colorsAndSizesTitle => 'الألوان والمقاسات';

  @override
  String get editColorsSizesBtn => 'تعديل الألوان والمقاسات';

  @override
  String get salesUnitsBarcode => 'وحدات البيع والباركود';

  @override
  String get unitsDesc =>
      'الوحدة الافتراضية تُدار تلقائياً مع المنتج؛ يمكنك تعديل الوحدات الإضافية أو إضافة وحدة جديدة.';

  @override
  String get defaultUnitTitle => 'الوحدة الافتراضية';

  @override
  String defaultUnitDesc(Object factor, Object name) {
    return '$name — عامل $factor';
  }

  @override
  String unitNumber(Object id) {
    return 'وحدة #$id';
  }

  @override
  String get unitNameLabel => 'اسم الوحدة';

  @override
  String get unitBarcodeOptional => 'باركود (اختياري)';

  @override
  String get unitSalePriceOptional => 'سعر بيع الوحدة (اختياري)';

  @override
  String get unitMinPriceOptional => 'أدنى سعر (اختياري)';

  @override
  String get addNewUnitBtn => 'إضافة وحدة جديدة';

  @override
  String get newUnitTitle => 'وحدة جديدة';

  @override
  String get cancelTooltip => 'إلغاء';

  @override
  String get stockTitle => 'المخزون';

  @override
  String stockManagedByVariants(Object count) {
    return 'المخزون يُدار عبر الألوان والمقاسات. الإجمالي الحالي: $count';
  }

  @override
  String get lowStockThreshold => 'حد التنبيه منخفض';

  @override
  String get saveChangesBtn => 'حفظ التعديلات';

  @override
  String invoiceNumber(Object number) {
    return 'فاتورة #$number';
  }

  @override
  String get closeTooltip => 'إغلاق';

  @override
  String get customerLabel => 'العميل';

  @override
  String get dateLabel => 'التاريخ';

  @override
  String get invoiceTypeLabel => 'نوع الفاتورة';

  @override
  String get recordedByLabel => 'سجّلها';

  @override
  String get customerIdLabel => 'معرّف العميل';

  @override
  String get returnStatusLabel => 'مرتجع';

  @override
  String get originalInvoiceLabel => 'فاتورة الأصل';

  @override
  String get deliveryAddressLabel => 'عنوان التوصيل';

  @override
  String get discountPercentLabel => 'نسبة الخصم %';

  @override
  String get noItemsLabel => 'لا توجد بنود';

  @override
  String quantityTimesPrice(Object price, Object qty) {
    return '$qty × $price Fdj';
  }

  @override
  String get itemsSubtotalLabel => 'مجموع البنود';

  @override
  String get invoiceDiscountLabel => 'خصم الفاتورة';

  @override
  String get loyaltyDiscountLabel => 'خصم الولاء';

  @override
  String get redeemedPointsLabel => 'نقاط مُستبدَلة';

  @override
  String get earnedPointsLabel => 'نقاط مُكتسبة';

  @override
  String get taxLabel => 'الضريبة';

  @override
  String get advanceFirstPaymentLabel => 'المقدم / الدفعة الأولى';

  @override
  String get interestInfoSavedAtSale => 'معلومات الفائدة (محفوظة عند البيع)';

  @override
  String get interestRatePercent => 'نسبة الفائدة %';

  @override
  String get monthsCountLabel => 'عدد الأشهر';

  @override
  String get financedAmountLabel => 'المبلغ المموّل';

  @override
  String get interestValueLabel => 'قيمة الفائدة';

  @override
  String get totalWithInterestLabel => 'الإجمالي مع الفائدة';

  @override
  String suggestedMonthlyInstallment(Object months) {
    return 'القسط الشهري المقترح ($months شهراً)';
  }

  @override
  String get selectInvoicePrompt => 'اختر فاتورة لعرض تفاصيلها';

  @override
  String get invoiceNotFoundMsg => 'الفاتورة غير موجودة';

  @override
  String get iqdCurrency => 'Fdj';

  @override
  String get customerNameLabel => 'اسم العميل';

  @override
  String get saleTitle => 'البيع';

  @override
  String get parkInvoiceTooltip => 'تعليق الفاتورة';

  @override
  String get insufficientStockForUnit => 'لا يتوفر مخزون كافٍ لهذه الوحدة.';

  @override
  String qtyAdjustedToStock(Object qty) {
    return 'تم ضبط الكمية إلى $qty بسبب حد المخزون المتاح.';
  }

  @override
  String serviceAlreadyAdded(Object name) {
    return 'الخدمة مضافة بالفعل: $name';
  }

  @override
  String quantityIncreased(Object name) {
    return 'تمت زيادة الكمية: $name';
  }

  @override
  String get serviceQtyFixed => 'كمية الخدمة ثابتة ولا يمكن تعديلها.';

  @override
  String get okAction => 'موافق';

  @override
  String get addAtLeastOneToSell => 'أضف صنفاً واحداً على الأقل لإتمام البيع';

  @override
  String get addAtLeastOneToPark =>
      'أضف صنفاً واحداً على الأقل لتعليق الفاتورة';

  @override
  String get fillRequiredFields =>
      'أكمل الحقول المطلوبة: للدين أو التقسيط أدخل اسم العميل، وللتوصيل أدخل اسم العميل وعنوان التوصيل.';

  @override
  String get paymentTypeNotAllowed =>
      'طريقة الدفع الحالية غير مسموحة — راجع الفواتير إعدادات نقطة البيع أو اختر نقدي.';

  @override
  String discountExceedsMax(Object limit) {
    return 'نسبة الخصم أعلى من المسموح. الحد الأقصى $limit%';
  }

  @override
  String get creditInstallmentNeedCustomer =>
      'للمبيع بالدين أو التقسيط: اختر عميلاً مسجّلاً من القائمة المقترحة أسفل حقل الاسم (أو أضفه من العملاء أولاً).';

  @override
  String get loyaltyRedeemNeedCustomer =>
      'لاستبدال النقاط اختر العميل من القائمة أو أدخل اسماً يطابق سجلاً واحداً في العملاء.';

  @override
  String installmentMinAdvanceError(Object amount, Object percent) {
    return 'بيع التقسيط: المقدّم يجب ألا يقل عن $percent% من إجمالي الفاتورة ($amount).';
  }

  @override
  String invoiceDebtCapExceeded(Object limit, Object remaining) {
    return 'حد الدين للفاتورة: المتبقي ($remaining) يتجاوز السقف ($limit).';
  }

  @override
  String customerDebtCapExceeded(Object adding, Object existing, Object limit) {
    return 'حد الدين للعميل: مجموع المتبقي الحالي ≈ $existing، والفاتورة تضيف $adding (يتجاوز $limit).';
  }

  @override
  String failedToSaveInvoice(Object error) {
    return 'تعذر حفظ الفاتورة: $error';
  }

  @override
  String invoiceImbalanceError(Object error) {
    return 'عدم توازن الفاتورة: $error';
  }

  @override
  String invoiceBalanceError(Object error) {
    return 'تعذر الحفظ — $error. راجع الأصناف والإجمالي قبل إعادة المحاولة.';
  }

  @override
  String get serviceOrderUpdateFailed =>
      'تنبيه: حُفظت الفاتورة ولكن تعذر تلقائياً تحديث حالة تذكرة الصيانة. يرجى مراجعتها يدوياً.';

  @override
  String installmentPlanCreationFailed(Object error) {
    return 'تم حفظ الفاتورة لكن تعذّر إنشاء خطة التقسيط: $error';
  }

  @override
  String get invoiceSavedWithPlan =>
      'تم حفظ الفاتورة وإنشاء خطة التقسيط — يمكنك ضبط الجدول';

  @override
  String get installmentFullyPaid =>
      'تم حفظ فاتورة التقسيط وربطها بخطة (لا أقساط متبقية لأن المبلغ محصّل بالكامل).';

  @override
  String get invoiceSavedSuccess => 'تم تسجيل الفاتورة وتحديث المخزون والصندوق';

  @override
  String get failedToLoadParkedInvoice => 'تعذر العثور على الفاتورة المعلّقة';

  @override
  String failedToApplyParkedInvoice(Object error) {
    return 'فشل تطبيق الفاتورة المعلّقة: $error';
  }

  @override
  String get clearCartTitle => 'إفراغ السلة؟';

  @override
  String get clearCartBody => 'سيتم إزالة جميع الأصناف من الفاتورة الحالية.';

  @override
  String get clearCartAction => 'إفراغ';

  @override
  String get returnDialogAction => 'مرتجع';

  @override
  String get productNotFoundTitle => 'المنتج غير موجود';

  @override
  String get productNotFoundBody =>
      'هذا الباركود غير موجود في المنتجات. هل تريد فتح شاشة إضافة منتج جديد؟';

  @override
  String get addProductAction => 'إضافة منتج';

  @override
  String productAddedSnack(Object name) {
    return 'تمت إضافة المنتج: $name';
  }

  @override
  String get searchCustomerHint => 'ابحث من أول حرف…';

  @override
  String get addNewCustomerTooltip => 'إضافة عميل جديد دون مغادرة البيع';

  @override
  String get discountOnTotalSaleLabel => 'نسبة الخصم على إجمالي البيع %';

  @override
  String discountPercentHelper(Object limit) {
    return 'الحد الأقصى المسموح: $limit٪ — يُحسب من أدنى سعر لكل صنف';
  }

  @override
  String get taxSectionLabel => 'الضريبة';

  @override
  String get taxDescription =>
      'أدخل مبلغ الضريبة بالدينار إن وُجد؛ يُضاف إلى المجموع بعد خصم الفاتورة.';

  @override
  String get taxAmountLabel => 'مبلغ الضريبة (Fdj)';

  @override
  String get discountSectionLabel => 'خصم الفاتورة';

  @override
  String get advanceDownPaymentLabel => 'المقدّم / الدفعة الأولى (Fdj)';

  @override
  String get advancePaymentHelper =>
      'يُخصم من الإجمالي قبل حساب الفائدة والقسط';

  @override
  String get installmentInterestLabel => 'فائدة على المبلغ المراد تقسيطه';

  @override
  String get interestRateHelper => 'نسبة من المبلغ بعد المقدّم';

  @override
  String get numberOfMonthsLabel => 'عدد الأشهر';

  @override
  String get receivedAmountLabel => 'المبلغ الواصل (Fdj)';

  @override
  String get advanceDescription =>
      'يُحسب على الإجمالي بعد المقدّم. للمراجعة مع العميل — لا يُضاف للفاتورة إلا إذا رفعت الأسعار يدوياً.';

  @override
  String get priceSummaryCaptionNoDiscount =>
      'نتيجة الأرقام والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.';

  @override
  String get priceSummaryCaptionWithDiscount =>
      'نتيجة الأرقام بعد الخصم والضريبة، والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.';

  @override
  String get financedAmountBasis => 'المبلغ بعد المقدّم (أساس التقسيط)';

  @override
  String get parkedInvoiceDialogHint =>
      'يُحفظ محلياً على هذا الجهاز. يمكنك استئناف البيع لاحقاً من الفواتير معلّقة مؤقتاً.';

  @override
  String get parkedInvoiceNameLabel => 'اسم للتعريف (يظهر في القائمة)';

  @override
  String get saveParkingAction => 'حفظ التعليق';

  @override
  String get quantityDialogTitle => 'الكمية';

  @override
  String get maxAction => 'الأقصى';

  @override
  String get changeColorAction => 'تغيير اللون';

  @override
  String get filterListHint => 'تصفية القائمة…';

  @override
  String get sizesLabel => 'المقاسات';

  @override
  String get selectColorFirstHint => 'اختر لوناً أولاً لإظهار المقاسات.';

  @override
  String priceMinLine(Object min, Object price) {
    return 'سعر $price · أدنى $min';
  }

  @override
  String itemTotalLine(Object total) {
    return 'الإجمالي: $total';
  }

  @override
  String get parkedInvoiceUpdated => 'تم تحديث الفاتورة المعلّقة';

  @override
  String get parkedInvoiceCreated =>
      'تم تعليق الفاتورة — يمكنك استئنافها من قائمة الفواتير';

  @override
  String get barcodeScanTitle => 'باركود صنف أو فاتورة للمرتجع';

  @override
  String get productFallback => 'منتج';

  @override
  String get colorLabel => 'لون';

  @override
  String get colorSizeFallback => 'لون/مقاس';

  @override
  String get sizeFallback => 'مقاس';

  @override
  String get unitFallback => 'وحدة';

  @override
  String get pieceUnitFallback => 'قطعة';

  @override
  String availableQtyChipLabel(Object qty) {
    return 'المتاح: $qty';
  }

  @override
  String get cashDiscountNote => 'خُصم من الصندوق.';

  @override
  String get installmentDiscountNote => 'خُصم من إجمالي التقسيط.';

  @override
  String get returnScreenTitle => 'مرتجع';

  @override
  String returnInvoiceTitle(Object id) {
    return 'مرتجع — فاتورة #$id';
  }

  @override
  String get vouchersNotReturnable =>
      'سندات القبض أو دفع المورد لا تُعالج من شاشة المرتجع.';

  @override
  String get noInvoiceNumber => 'لا يوجد رقم فاتورة';

  @override
  String get invoiceNotFoundReturn => 'الفاتورة غير موجودة';

  @override
  String get alreadyReturnedReturn => 'هذه الفاتورة مسجّلة كمرتجع مسبقاً';

  @override
  String get cashPaymentType => 'نقدي';

  @override
  String get creditPaymentTypeLabel => 'دين (آجل)';

  @override
  String get installmentPaymentTypeLabel => 'تقسيط';

  @override
  String get deliveryPaymentType => 'توصيل';

  @override
  String get debtCollectionType => 'سند تحصيل دين';

  @override
  String get installmentCollectionType => 'سند تسديد قسط';

  @override
  String get supplierPaymentTypeLabel => 'سند دفع مورد';

  @override
  String get cashReturnHint => 'يُسجَّل خروجاً من الصندوق بنفس المبلغ.';

  @override
  String get installmentReturnHint =>
      'يُحدَّث إجمالي خطة التقسيط المرتبطة بهذه الفاتورة؛ ويُسجَّل خروج نقدي إن وُجد مقدم يُسترد.';

  @override
  String get creditReturnHintLabel =>
      'يُسجَّل المرتجع كفاتورة مرتبطة بالأصل؛ راجع قائمة الفواتير لحالة الدين.';

  @override
  String get notApplicableForType => 'لا يُستعمل لهذا النوع.';

  @override
  String get selectAtLeastOneReturnQty => 'اختر كمية إرجاع واحدة على الأقل';

  @override
  String returnSaveFailed(Object error) {
    return 'تعذر الحفظ: $error';
  }

  @override
  String get returnUseBarcodeOnly =>
      'للمرتجع استخدم باركود الفاتورة فقط (مثل INV-12)';

  @override
  String get sameInvoiceDisplayed => 'هذه هي نفس الفاتورة المعروضة';

  @override
  String noInvoiceWithIdReturn(Object id) {
    return 'لا توجد فاتورة برقم $id';
  }

  @override
  String get alreadyReturnedInvoiceReturn => 'فاتورة مرتجعة مسبقاً';

  @override
  String navigateToInvoiceTitle(Object id) {
    return 'الانتقال إلى فاتورة #$id؟';
  }

  @override
  String get navigateToInvoiceBody =>
      'سيتم استبدال المنتجات المعروضة بفاتورة أخرى.';

  @override
  String allItemsReturnedBanner(Object id) {
    return 'تم إرجاع جميع بنود الفاتورة #$id بالكامل في فواتير مرتجع سابقة. لا يوجد ما يمكن إرجاعه إضافياً.';
  }

  @override
  String get noItemsInInvoice => 'لا توجد أصناف في هذه الفاتورة';

  @override
  String get noItemsInInvoiceHint =>
      'تأكّد من رقم الفاتورة، أو استعمل حقل تبديل الباركود لاختيار فاتورة أخرى.';

  @override
  String get itemsSelectReturnQty => 'الأصناف — اختر كمية الإرجاع';

  @override
  String get fullReturnAction => 'إرجاع كامل';

  @override
  String get switchInvoiceHint => 'تبديل الفاتورة (INV-رقم)';

  @override
  String get scanReceiptBarcodeHint => 'امسح باركود إيصال آخر ثم Enter';

  @override
  String originalInvoiceHashLabel(Object id) {
    return 'الفاتورة الأصلية #$id';
  }

  @override
  String dateLabelReturn(Object date) {
    return 'التاريخ: $date';
  }

  @override
  String customerLabelReturn(Object name) {
    return 'العميل: $name';
  }

  @override
  String originalSellerLabel(Object name) {
    return 'بائع أصلي: $name';
  }

  @override
  String currentRecorderLabel(Object name) {
    return 'المُسجِّل الآن: $name';
  }

  @override
  String get fullyReturnedBadge => 'مُرجَع بالكامل';

  @override
  String get partiallyReturnedBadge => 'مُرجَع جزئياً';

  @override
  String soldQtyTimesPrice(Object price, Object qty) {
    return 'المباع: $qty × $price';
  }

  @override
  String previouslyReturnedRemaining(Object remaining, Object returned) {
    return 'مُرجَع سابقاً: $returned • المتبقي: $remaining';
  }

  @override
  String get returnQuantityLabel => 'كمية الإرجاع';

  @override
  String get returnSummaryTitle => 'ملخص المرتجع';

  @override
  String get linesSubtotalLabel => 'مجموع الأسطر';

  @override
  String get invoiceDiscountShareLabel => 'خصم نسبة الفاتورة';

  @override
  String get taxShareLabel => 'حصة الضريبة';

  @override
  String get refundAmountLabel => 'المبلغ المسترد للعميل';

  @override
  String get confirmReturnAction => 'تأكيد المرتجع';

  @override
  String returnedInOtherInvoice(Object name, Object qty) {
    return 'تم إرجاع \"$name\" في فاتورة أخرى منذ فتح هذه الشاشة. المتبقي: $qty. أعِد تحميل الشاشة وحاول مجدداً.';
  }

  @override
  String returnRecordedSuccess(Object hint, Object id, Object originalId) {
    return 'تم تسجيل المرتجع #$id ← مرتبط بالفاتورة الأصلية #$originalId. $hint';
  }

  @override
  String get deleteReturnTitle => 'حذف المرتجع؟';

  @override
  String get deleteReturnConfirm => 'هل أنت متأكد من حذف هذا المرتجع؟';

  @override
  String get amountDueLabel => 'المبلغ المستحق (Fdj)';

  @override
  String get discountOnTotalSaleTitle => 'خصم الفاتورة';

  @override
  String get advanceFirstPaymentShortLabel => 'المقدم';

  @override
  String get parkingInvoiceTitle => 'تعليق الفاتورة';

  @override
  String get parkedInvoiceSnackbarHint =>
      'يُحفظ محلياً. يمكنك الاستئناف من الفواتير معلّقة.';

  @override
  String get pieceFallback => 'قطعة';

  @override
  String get unnamedProduct => 'منتج غير مسمى';

  @override
  String get newProductFallback => 'منتج جديد';

  @override
  String qtyAdjustedToAvailableStock(Object qty) {
    return 'تم ضبط الكمية إلى $qty بسبب حد المخزون المتاح.';
  }

  @override
  String stockNotAvailableDetails(Object max) {
    return 'الكمية غير متوفرة في المخزون. المتاح للبيع (أساس المخزون): $max فقط (بعد احتساب الكميات في الأسطر الأخرى).';
  }

  @override
  String get noStockAvailableForProduct =>
      'لا توجد كمية متوفرة في المخزون لهذا المنتج.';

  @override
  String stockUnavailableAvailableIs(Object max) {
    return 'الكمية غير متوفرة. المتاح للبيع (أساس المخزون): $max فقط.';
  }

  @override
  String newLineAddedSnack(Object name) {
    return 'تمت إضافة سطر جديد: $name';
  }

  @override
  String get installmentPlanTitle => 'مخطط التقسيط';

  @override
  String get installmentCalcNote =>
      'يُحسب على «الإجمالي بعد المقدّم». للمراجعة مع العميل — لا يُضاف للفاتورة إلا إذا رفعت الأسعار يدوياً.';

  @override
  String get advanceDownPaymentHelper =>
      'يُخصم من الإجمالي قبل حساب الفائدة والقسط';

  @override
  String get monthsSuffix => 'شهراً';

  @override
  String interestAmountLabel(Object pct) {
    return 'قيمة الفائدة ($pct٪)';
  }

  @override
  String get advanceEqualsTotalHint =>
      'المقدّم يساوي الإجمالي — لا يوجد مبلغ للتقسيط. خفّض المقدّم لرؤية الفائدة والقسط.';

  @override
  String parkInvoiceWithCount(Object count) {
    return 'تعليق الفاتورة — تعليق ($count)';
  }

  @override
  String get parkInvoiceOtherCustomer => 'تعليق الفاتورة — خدمة عميل آخر';

  @override
  String payButtonLabel(Object amount) {
    return 'الدفع — $amount';
  }

  @override
  String get swipeToResizeHint => 'اسحب لتغيير عرض القائمة الجانبية';

  @override
  String get checkoutStepHintWithPayment =>
      'أسطر الفاتورة والكميات والأسعار — ثم راجع تفاصيل السعر وطريقة الدفع.';

  @override
  String get checkoutStepHintNoPayment =>
      'أسطر الفاتورة والكميات والأسعار — ثم انتقل لخصم الفاتورة والضريبة.';

  @override
  String get productsTitle => 'المنتجات';

  @override
  String get barcodeFieldHint =>
      'إضافة صنف بالباركود، أو فتح مرتجع بمسح رقم الفاتورة (INV-)';

  @override
  String get scannerTabLabel => 'الماسح';

  @override
  String get noItemsYetWithScanner =>
      'لا توجد أصناف بعد.\nامسح الباركود أعلاه أو أضف من البحث في الشاشة الرئيسية.\nابحث عن منتج أو امسح الباركود للإضافة.';

  @override
  String get noItemsYetNoScanner =>
      'لا توجد أصناف بعد.\nأضف منتجات من البحث في الشاشة الرئيسية.\nابحث عن منتج أو امسح الباركود للإضافة.';

  @override
  String get saleSummaryTitle => 'ملخص البيع';

  @override
  String get discountTaxNote =>
      'الخصم والضريبة يُطبَّقان على إجمالي الفاتورة (وليس لكل صنف على حدة).';

  @override
  String maxDiscountAllowedHint(Object max) {
    return 'الحد الأقصى المسموح حالياً: $max٪ — يُحسب من أدنى سعر لكل صنف.';
  }

  @override
  String get taxHelperHint =>
      'أدخل مبلغ الضريبة بالدينار إن وُجد؛ يُضاف إلى المجموع بعد خصم الفاتورة.';

  @override
  String get priceDetailStepHintWithPayment =>
      'نتيجة الأرقام والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.';

  @override
  String get priceDetailStepHintNoPayment =>
      'نتيجة الأرقام بعد الخصم والضريبة، والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.';

  @override
  String get priceDetailsTitle => 'تفاصيل السعر';

  @override
  String get amountBreakdownTitle => 'تفصيل المبالغ';

  @override
  String get originalAmountLabel => 'المبلغ الأصلي (مجموع البنود)';

  @override
  String get invoiceDiscountAmountLabel => 'قيمة خصم الفاتورة';

  @override
  String get subtotalAfterDiscountLabel => 'المجموع بعد الخصم (قبل الضريبة)';

  @override
  String get iqdCurrencySymbol => 'Fdj';

  @override
  String get grandTotalLabel => 'الإجمالي النهائي';

  @override
  String get cashLabel => 'نقدي';

  @override
  String get creditLabel => 'دين';

  @override
  String get installmentLabel => 'تقسيط';

  @override
  String get deliveryLabel => 'توصيل';

  @override
  String selectPaymentMethodHint(Object options) {
    return 'اختر $options، ثم أكمل بيانات العميل والحقول المرتبطة بنوع الدفع.';
  }

  @override
  String get customerAndPaymentTitle => 'العميل وطريقة الدفع';

  @override
  String get paymentMethodLabel => 'طريقة الدفع';

  @override
  String get customerNameRequiredForDelivery => 'اسم العميل مطلوب للتوصيل';

  @override
  String get requiredForCreditInstallment => 'مطلوب للدين/التقسيط';

  @override
  String get addNewCustomerMessage => 'إضافة عميل جديد دون مغادرة البيع';

  @override
  String get deliveryAddressWithMapQR => 'عنوان التوصيل والموقع (QR خرائط)';

  @override
  String get buyerAddressWithMapQR => 'عنوان المشتري (QR للخرائط على الإيصال)';

  @override
  String get addressMapDescriptionOptional =>
      'اختياري — وصف أو عنوان يظهر في Google Maps عند مسح الرمز';

  @override
  String get addressMapRequired =>
      'مطلوب — يُطبَع QR للخرائط عند وجود نص؛ اكتب عنوان التوصيل بوضوح';

  @override
  String get qrOpensMapsOnScan => 'يُطبَع QR يفتح الخرائط عند المسح';

  @override
  String get deliveryAddressRequired => 'عنوان التوصيل مطلوب';

  @override
  String get loyaltyPointsRequiresCustomer =>
      'لاستخدام النقاط: اختر عميلاً مسجّلاً من القائمة المقترحة.';

  @override
  String customerLoyaltyBalance(Object balance) {
    return 'رصيد نقاط العميل: $balance';
  }

  @override
  String loyaltyPointsToRedeem(Object max) {
    return 'نقاط للاستبدال (حد أقصى $max)';
  }

  @override
  String get deliveryInstruction =>
      'للتوصيل: أدخل اسم العميل وعنوان التوصيل (كلاهما مطلوب). يظهر اقتراح للاسم من قاعدة العملاء أثناء الكتابة.';

  @override
  String get creditInstallmentCustomerTip =>
      'مهم: للدين والتقسيط اضغط على اسم العميل من القائمة المقترحة لربط البيع ببطاقته (لا يكفي كتابة الاسم يدوياً إن لم يُطابق سجلاً واحداً بالضبط).';

  @override
  String get hideDetailsLabel => 'إخفاء التفاصيل';

  @override
  String get priceDiscountDetailsLabel => 'تفاصيل السعر والخصم';

  @override
  String priceAndMinLabel(Object min, Object price) {
    return 'سعر $price · أدنى $min';
  }

  @override
  String lineTotalLabel(Object total) {
    return 'الإجمالي: $total';
  }

  @override
  String get unitSellPriceLabel => 'سعر البيع (للوحدة)';

  @override
  String get lineTotalBeforeDiscount => 'إجمالي السطر قبل خصم الفاتورة';

  @override
  String get lineDiscountShare => 'حصة خصم الفاتورة لهذا السطر';

  @override
  String get lineTotalAfterDiscount => 'الإجمالي بعد خصم الفاتورة (لهذا السطر)';

  @override
  String get percentageDiscountDistributionNote =>
      'يُوزَّع خصم النسبة على الأسطر بحسب مساهمة كل سطر في إجمالي البنود.';

  @override
  String get quantityKgLabel => 'الكمية (كيلوغرام)';

  @override
  String get quantityHintWeight => 'مثال: 0.25 أو 1.5 أو 3';

  @override
  String get quantityHintPiece => 'مثال: 2';

  @override
  String get quantityErrorWeight => 'أدخل كمية أكبر من 0 (يمكن كسور للوزن).';

  @override
  String get quantityErrorPiece => 'أدخل عدداً صحيحاً 1 فما فوق';

  @override
  String get itemFallbackShort => 'صنف';

  @override
  String get payloadEmptyOrNotText => 'الحمولة فارغة أو ليست نصاً';

  @override
  String get payloadNotValidJson => 'الحمولة ليست object JSON صالحاً';

  @override
  String get payloadNoVersionField => 'لا يوجد حقل إصدار (v) في الحمولة';

  @override
  String payloadUnsupportedVersion(Object ver) {
    return 'إصدار الحمولة $ver غير مدعوم (المتوقع 1)';
  }

  @override
  String decryptionError(Object error) {
    return 'خطأ في فك التشفير: $error';
  }

  @override
  String failedToOpenParkedInvoice(Object reason) {
    return 'تعذر فتح الفاتورة المعلّقة: $reason';
  }

  @override
  String get unknownReason => 'سبب غير معروف';

  @override
  String invoiceWithItemCount(Object count) {
    return 'فاتورة ($count صنف)';
  }

  @override
  String get invoiceParkedMessage =>
      'تم تعليق الفاتورة — يمكنك استئنافها من قائمة الفواتير';

  @override
  String get requiredFieldsMessage =>
      'أكمل الحقول المطلوبة: للدين أو التقسيط أدخل اسم العميل، وللتوصيل أدخل اسم العميل وعنوان التوصيل. راجع الحقول المظللة بالأحمر.';

  @override
  String get paymentMethodNotAllowed =>
      'طريقة الدفع الحالية غير مسموحة — راجع «الفواتير ← إعدادات نقطة البيع» أو اختر نقدي.';

  @override
  String discountExceedsMaximum(Object max) {
    return 'نسبة الخصم أعلى من المسموح. الحد الأقصى $max%';
  }

  @override
  String get creditInstallmentMustSelectCustomer =>
      'للمبيع بالدين أو التقسيط: اختر عميلاً مسجّلاً من القائمة المقترحة أسفل حقل الاسم (أو أضفه من «العملاء» أولاً) حتى تُربط الفاتورة ببطاقة العميل وتظهر لاحقاً في الديون والأقساط.';

  @override
  String get loyaltyRedeemMustSelectCustomer =>
      'لاستبدال النقاط اختر العميل من القائمة أو أدخل اسماً يطابق سجلاً واحداً في العملاء.';

  @override
  String invoiceDebtLimitExceeded(Object cap, Object rem) {
    return 'حد الدين للفاتورة: المتبقي ($rem) يتجاوز السقف $cap. عدّل الإجمالي أو المبلغ الواصل أو «الديون ← إعدادات الدين».';
  }

  @override
  String customerDebtLimitExceeded(Object cap, Object existing, Object rem) {
    return 'حد الدين للعميل: مجموع المتبقي الحالي ≈ $existing، والفاتورة تضيف $rem (يتجاوز $cap).';
  }

  @override
  String get debtLimitActionHint =>
      'اربط العميل من القائمة، أو خفّض المبلغ، أو راجع إعدادات الديون.';

  @override
  String invoiceSaveFailed(Object error) {
    return 'تعذر حفظ الفاتورة — $error. راجع الأصناف والإجمالي قبل إعادة المحاولة.';
  }

  @override
  String get maintenanceTicketUpdateFailed =>
      'تنبيه: حُفظت الفاتورة ولكن تعذر تلقائياً تحديث حالة تذكرة الصيانة. يرجى مراجعتها يدوياً.';

  @override
  String get installmentPlanCreated =>
      'تم حفظ الفاتورة وإنشاء خطة التقسيط — يمكنك ضبط الجدول أو الرجوع';

  @override
  String get installmentPlanSavedNoRemaining =>
      'تم حفظ فاتورة التقسيط وربطها بخطة (لا أقساط متبقية لأن المبلغ محصّل بالكامل).';

  @override
  String get barcodeOrInvoiceForReturn => 'باركود صنف أو فاتورة للمرتجع';

  @override
  String get alreadyReturned => 'هذه الفاتورة مرتجع مسبقاً';

  @override
  String invoiceNumberLabel(Object id) {
    return 'فاتورة #$id';
  }

  @override
  String openReturnScreenConfirm(Object total) {
    return 'فتح شاشة المرتجع (منتجات فقط)؟\nالإجمالي الأصلي: $total';
  }

  @override
  String get returnButton => 'مرتجع';

  @override
  String get selectColorAndSize => 'اختيار اللون والمقاس';

  @override
  String get cannotChangeQtyBeforeSelection =>
      'لا يمكن تغيير الكمية قبل الاختيار';

  @override
  String get loadingColorsAndSizes => 'جارٍ تحميل الألوان والمقاسات…';

  @override
  String get colorsTitle => 'الألوان';

  @override
  String availableLabel(Object rem) {
    return 'المتاح: $rem';
  }

  @override
  String get sizesTitle => 'المقاسات';

  @override
  String get currentlySelected => 'المحدد حالياً';

  @override
  String get colorOrSize => 'لون/مقاس';

  @override
  String get selectColorFirst => 'اختر لوناً أولاً لإظهار المقاسات.';

  @override
  String get parkInvoiceDialogTitle => 'تعليق الفاتورة';

  @override
  String get parkInvoiceDescription =>
      'يُحفظ محلياً على هذا الجهاز. يمكنك استئناف البيع لاحقاً من «الفواتير ← معلّقة مؤقتاً».';

  @override
  String get saveParkButton => 'حفظ التعليق';

  @override
  String get barcodeScannerTitle => 'ماسح الباركود';

  @override
  String get flashTooltip => 'فلاش';

  @override
  String get switchCameraTooltip => 'تبديل الكاميرا';

  @override
  String get scanToAddAuto => 'امسح — سيتم الإضافة تلقائيًا';

  @override
  String get passOriginalInvoiceOrId => 'مرّر originalInvoice أو invoiceId';

  @override
  String get deductedFromVault => 'خُصم من الصندوق.';

  @override
  String get deductedFromInstallmentTotal => 'خُصم من إجمالي التقسيط.';

  @override
  String get switchInvoiceLabel => 'تبديل الفاتورة (INV-رقم)';

  @override
  String get scanAnotherReceiptHint => 'امسح باركود إيصال آخر ثم Enter';

  @override
  String get barcodeNotFoundAddNew =>
      'هذا الباركود غير موجود في المنتجات. هل تريد فتح شاشة إضافة منتج جديد؟';

  @override
  String get receiptPrintFailed => 'فشل طباعة إيصال البيع';

  @override
  String get royalNavyScheme => 'كحلي ملكي — ذهبي — عاجي (الافتراضي)';

  @override
  String get midnightScheme => 'منتصف ليل — فضي — رمادي فاتح';

  @override
  String get oceanScheme => 'محيط — رملي ذهبي — كريمي';

  @override
  String get forestScheme => 'غابة — برونزي — نعناعي فاتح';

  @override
  String get wineScheme => 'نبيذي — ذهبي دافئ — أبيض وردي';

  @override
  String get charcoalScheme => 'فحمي — عنبر — أبيض مزرق';

  @override
  String get slateScheme => 'أردوازي — سماوي — أبيض بارد';

  @override
  String get copperScheme => 'نحاسي — نحاس محمر — رمل';

  @override
  String get customScheme => 'مخصص — استوديو ألوان تفاعلي';

  @override
  String get appAppearance => 'مظهر التطبيق';

  @override
  String get posSettings => 'إعدادات نقطة البيع';

  @override
  String get paymentMethodsSection => 'طرق الدفع';

  @override
  String get creditSaleTitle => 'البيع بالدين (آجل)';

  @override
  String get creditSaleSubtitle => 'إيقافه يخفي خيار «دين» في شاشة البيع.';

  @override
  String get installmentSaleTitle => 'البيع بالتقسيط';

  @override
  String get installmentSaleSubtitle => 'إيقافه يخفي خيار «تقسيط».';

  @override
  String get deliverySaleTitle => 'البيع مع التوصيل';

  @override
  String get deliverySaleSubtitle => 'إيقافه يخفي خيار «توصيل».';

  @override
  String get cashCustomerSection => 'العميل في البيع النقدي';

  @override
  String get showBuyerAddressCashTitle => 'إظهار حقل عنوان المشتري عند النقدي';

  @override
  String get showBuyerAddressCashDesc =>
      'يظهر فقط إذا فعّلت «QR لعنوان المشتري» في إعدادات الطباعة. عند الإيقاف يبقى الحقل للتوصيل كما هو.';

  @override
  String get stockInSaleSection => 'المخزون في البيع';

  @override
  String get preventOversellTitle => 'منع البيع عند تجاوز الرصيد المعروض';

  @override
  String get preventOversellDesc =>
      'عند التفعيل لا تزيد الكمية في الفاتورة فوق المتاح. عند الإيقاف يُسمح بالبيع حتى لو أصبح الرصيد سالباً، فيُلغى السالب عند الحفظ.';

  @override
  String get discountTaxSection => 'الخصم والضريبة';

  @override
  String get invoiceDiscountPercentTitle => 'حقل خصم الفاتورة (نسبة)';

  @override
  String get invoiceDiscountPercentSubtitle =>
      'عند الإيقاف يُثبَّت الخصم على 0 ويُخفى الحقل.';

  @override
  String get taxFieldTitle => 'حقل الضريبة';

  @override
  String get taxFieldSubtitle =>
      'عند الإيقاف يُثبَّت الضريبة على 0 ويُخفى الحقل.';

  @override
  String get brandColorsTitle => 'ألوان هوية الشعار بدل ثيم التطبيق';

  @override
  String get brandColorsDesc =>
      'عند الإيقاف يبقى ثيم التطبيق العام (فاتح/داكن) في كل الصفحات، مع نفس شكل الزوايا أدناه.';

  @override
  String get colorSchemesTitle => 'مخطط الألوان';

  @override
  String get colorSchemesDesc =>
      'كل مخطط ألوان احترافي جاهز؛ «مخصص» يفتح استوديو ألوان تفاعلياً (طيف، تشبع، سطوع، جاهز، HEX) لكل لون.';

  @override
  String get primaryColorLabel => 'اللون الرئيسي (شريط العنوان والأزرار)';

  @override
  String get accentColorLabel => 'لون التمييز (ذهبي/مميز)';

  @override
  String get lightSurfaceLabel => 'خلفية اللوحات الفاتحة';

  @override
  String get darkSurfaceLabel => 'خلفية الوضع الداكن للوحات';

  @override
  String get saleCardShapeTitle => 'شكل بطاقات البيع';

  @override
  String get saleCardShapeDesc =>
      'معاينة بسيطة بجانب كل خيار — كيف تبدو زوايا اللوحات وأسطر المنتجات.';

  @override
  String get sharpCornersTitle => 'زوايا حادة';

  @override
  String get roundedCornersTitle => 'زوايا مستديرة';

  @override
  String get fontAndSizeTitle => 'خط التطبيق وحجمه';

  @override
  String get fontAndSizeDesc =>
      'يُطبَّق على كل الشاشات والقوائم، ويُضرب مع حجم خط النظام (إن وُجد).';

  @override
  String get fontStyleTitle => 'شكل الخط';

  @override
  String get fontSizeTitle => 'حجم الخط';

  @override
  String get textColorTitle => 'لون النص';

  @override
  String get textColorDesc =>
      'اختياري — استوديو ألوان كامل لكل وضع (فاتح/داكن)؛ يُطبَّق على النصوص الرئيسية والقوائم.';

  @override
  String get textLightLabel => 'لون النص — الوضع الفاتح';

  @override
  String get textLightDesc =>
      'عند تشغيل الثيم الفاتح. اضغط للتعديل، أو «افتراضي» لإلغاء اللون المخصص.';

  @override
  String get textDarkLabel => 'لون النص — الوضع الداكن';

  @override
  String get textDarkDesc =>
      'عند تشغيل الثيم الداكن. اضغط للتعديل، أو «افتراضي» لإلغاء اللون المخصص.';

  @override
  String get resetTextColorLabel =>
      'إعادة ضبط لون النص للوضعين (الثيم الافتراضي)';

  @override
  String get royalNavyDefaultDesc =>
      'مرجع ألوان «الكحلي الملكي» الافتراضية — المخططات الأخرى أعلاه.';

  @override
  String get wideSaleLayoutTitle => 'تقسيم مساحة البيع (عرض عريض)';

  @override
  String get wideSaleLayoutSwitchTitle =>
      'تقسيم شاشة البيع إلى عمودين (عرض عريض)';

  @override
  String get wideSaleLayoutSwitchDesc =>
      'عند الإيقاف تعود «بيع جديد» إلى عمود واحد كالمعتاد حتى على الشاشة الواسعة. النسبة تُحفظ ولا تُفقد عند التعطيل.';

  @override
  String get wideSaleLayoutDesc =>
      'عندما يكون عرض النافذة ٧٠٠ نقطة فأكثر وليست شاشة هاتف، ومع تشغيل الخيار أعلاه، تُقسَّم شاشة «بيع جديد» إلى عمودين: منتجات واختيار والملخص والعميل.';

  @override
  String productsColumnRatioLabel(Object products, Object summary) {
    return 'عمود المنتجات: $products — الملخص والعميل: $summary';
  }

  @override
  String productsSummaryLabel(Object products, Object summary) {
    return 'منتجات $products · باقي الشاشة $summary';
  }

  @override
  String get wideSalePreviewLabel =>
      'معاينة مباشرة (مساحة صغيرة — كيف يتغيّر التقسيم عند تحريك المنزلق أو السحب في البيع):';

  @override
  String get wideSaleDragHint =>
      'في شاشة «بيع جديد» على عرض عريض: مرّر المؤشر على الشريط الرفيع بين العمودين ثم اسحب أفقياً — يوسّع عمود «المنتجات» أو عمود الملخص والعميل.';

  @override
  String get saleSpaceLayoutLabel => 'تقسيم مساحة البيع';

  @override
  String get phoneLayoutDesc =>
      'على هذا الحجم (هاتف) تُعرض شاشة «بيع جديد» دائماً في عمود واحد. تقسيم المنتجات والملخص إلى عمودين مع سحب المساحة يظهر فقط على الشاشات العريضة.';

  @override
  String get appearanceNote =>
      'تُطبَّق الألوان والزوايا فوراً على كامل التطبيق (عبر ثيم النظام). سياسات البيع تبقى من «إعدادات نقطة البيع» في القائمة الجانبية.';

  @override
  String get posNote =>
      'تُطبَّق سياسات البيع والتقسيم فوراً على شاشة «بيع جديد». المظهر (الألوان، الخط، الزوايا، لون النص) يُضبط من إعدادات «مظهر التطبيق».';

  @override
  String get resetAppearanceTitle => 'استرجاع المظهر الافتراضي؟';

  @override
  String get resetAppearanceDesc =>
      'سيتم إرجاع نوع الخط، حجم النص، ألوان النص المخصصة، مخطط الألوان، الزوايا، وهوية الشعار إلى القيم الأساسية. لا يتغير policies البيع.';

  @override
  String get cancelLabel => 'إلغاء';

  @override
  String get restoreLabel => 'استرجاع';

  @override
  String get appearanceRestoredSnack => 'تم استرجاع إعدادات المظهر الافتراضية';

  @override
  String get resetAppearanceLog =>
      'استرجاع المظهر الافتراضي (خط، ألوان، مخطط، زوايا)';

  @override
  String get summaryCustomerLabel => 'ملخص\nوعميل';

  @override
  String customColorLabel(Object hex) {
    return '$hex — مخصص';
  }

  @override
  String get themeDefaultLabel => 'افتراضي الثيم';

  @override
  String get colorStudioDesc =>
      'مربع التشبع/السطوع، شريط الطيف، ألوان جاهزة، أو HEX — ثم تأكيد.';

  @override
  String get appIdentityTitle => 'هوية التطبيق';

  @override
  String get appIdentityDesc =>
      'هنا تضبط ألوان الهوية وشكل الزوايا ليُطبَّق على كامل التطبيق. سياسات الدفع والمخزون والخصم تبقى في «إعدادات نقطة البيع» من القائمة الجانبية.';

  @override
  String get saleControlTitle => 'تحكّم مركزي بالبيع';

  @override
  String get saleControlDesc =>
      'فعّل أو عطّل طرق الدفع والحقول المالية دون تعديل الكود — مناسب للسياسات المتغيرة أو أجهزة نقطة بيع مخصصة. المظهر يُضبط منفصل.';

  @override
  String get printSettingsSaved => 'تم حفظ إعدادات الطباعة';

  @override
  String printSettingsSaveError(Object error) {
    return 'تعذر الحفظ: $error';
  }

  @override
  String get testCustomerName => 'عميل تجريبي';

  @override
  String get testProductName => 'صنف 1';

  @override
  String get testEmployee => 'موظف';

  @override
  String get testAddress => 'بغداد، شارع تجريبي';

  @override
  String get printingAndDocsTitle => 'الطباعة والمستندات';

  @override
  String get saveButton => 'حفظ';

  @override
  String get salesReceiptSection => 'إيصال البيع';

  @override
  String get defaultPaperSize => 'حجم الورق الافتراضي';

  @override
  String get thermal58mm => 'حراري 58 مم (ضيق)';

  @override
  String get thermal80mm => 'حراري 80 مم (قياسي)';

  @override
  String get thermal76x297mm => 'حراري 76×297 مم (إيصال)';

  @override
  String get showTransactionBarcodeTitle => 'إظهار باركود رقم العملية';

  @override
  String get transactionBarcodeDesc => 'CODE128 — يقرأه الماسح الضوئي بسرعة';

  @override
  String get showQrCodeTitle => 'إظهار رمز QR';

  @override
  String get qrCodeDesc => 'ملخص نصي للعميل — يُوصى به للضريبة والمراجعة';

  @override
  String get qrBuyerAddressTitle => 'QR لعنوان المشتري (خرائط)';

  @override
  String get qrBuyerAddressDesc =>
      'عند التفعيل يظهر حقل «عنوان المشتري» في البيع ويُطبَع QR يفتح الموقع على Google Maps';

  @override
  String get headerLineLabel => 'سطر فوق عنوان «إيصال بيع» (اسم المتجر)';

  @override
  String get footerLineLabel => 'تذييل إضافي (هاتف، شروط، شكر)';

  @override
  String get barcodeLabelsSection => 'إعدادات الباركود والملصقات';

  @override
  String get storeDataTitle => 'بيانات المتجر';

  @override
  String get storeDataDesc =>
      'من الإعدادات — لاحقاً يمكن ربط اسم المتجر تلقائياً بالإيصال';

  @override
  String get storeDataHint =>
      'استخدم حقل «اسم المتجر» أعلاه أو بطاقة بيانات المتجر من الإعدادات';

  @override
  String get previewReceiptButton => 'معاينة إيصال تجريبي';

  @override
  String get saveSettingsButton => 'حفظ الإعدادات في قاعدة البيانات';

  @override
  String get printSettingsDesc =>
      'البيانات تُخزَّن في جدول print_settings وتُطبَّق تلقائياً عند طباعة إيصال البيع بعد كل عملية.';

  @override
  String get professionalPrintCenter => 'مركز الطباعة الاحترافي';

  @override
  String get printCenterDesc =>
      'ضبط أحجام الحرارية وA4، محتوى الإيصال، والربط مع المخزون — كل ذلك محفوظ محلياً.';

  @override
  String get close => 'إغلاق';

  @override
  String get loading => 'جارٍ التحميل...';

  @override
  String get actions => 'إجراءات';

  @override
  String get confirm => 'تأكيد';

  @override
  String get yes => 'نعم';

  @override
  String get no => 'لا';

  @override
  String get next => 'التالي';

  @override
  String get total => 'الإجمالي';

  @override
  String get count => 'العدد';

  @override
  String get status => 'الحالة';

  @override
  String get date => 'التاريخ';

  @override
  String get amount => 'المبلغ';

  @override
  String get number => 'رقم';

  @override
  String get details => 'التفاصيل';

  @override
  String get name => 'الاسم';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get notes => 'ملاحظات';

  @override
  String get add => 'إضافة';

  @override
  String get remove => 'إزالة';

  @override
  String get show => 'إظهار';

  @override
  String get hide => 'إخفاء';

  @override
  String get filter => 'تصفية';

  @override
  String get sort => 'ترتيب';

  @override
  String get refresh => 'تحديث';

  @override
  String get export => 'تصدير';

  @override
  String get print => 'طباعة';

  @override
  String get copy => 'نسخ';

  @override
  String get active => 'نشط';

  @override
  String get inactive => 'غير نشط';

  @override
  String get pending => 'معلق';

  @override
  String get completed => 'مكتمل';

  @override
  String get cancelled => 'ملغي';

  @override
  String get paid => 'مدفوع';

  @override
  String get unpaid => 'غير مدفوع';

  @override
  String get cash => 'نقداً';

  @override
  String get credit => 'آجل';

  @override
  String get installment => 'تقسيط';

  @override
  String get delivery => 'توصيل';

  @override
  String get customersTitle => 'العملاء';

  @override
  String get customersManagement => 'إدارة العملاء الكاملة';

  @override
  String get addCustomer => 'إضافة عميل';

  @override
  String get addNewCustomer => 'إضافة عميل جديد';

  @override
  String get editCustomer => 'تعديل بيانات العميل';

  @override
  String get deleteCustomer => 'حذف عميل';

  @override
  String confirmDeleteCustomer(Object name) {
    return 'هل تريد حذف \"$name\"؟';
  }

  @override
  String get customerNameHint => 'أدخل اسم العميل';

  @override
  String get phoneHint => 'أدخل رقم الهاتف';

  @override
  String get emailHint => 'أدخل البريد الإلكتروني';

  @override
  String get addressLabel => 'العنوان';

  @override
  String get addressHint => 'أدخل العنوان';

  @override
  String get totalCustomers => 'إجمالي العملاء';

  @override
  String customerCount(Object count) {
    return 'العملاء: $count';
  }

  @override
  String get noCustomersYet => 'لا يوجد عملاء بعد';

  @override
  String get addFirstCustomer => 'إضافة أول عميل';

  @override
  String get loyaltyPoints => 'نقاط الولاء';

  @override
  String get customerSince => 'عميل منذ';

  @override
  String get lastActivity => 'آخر نشاط';

  @override
  String get totalPurchases => 'إجمالي المشتريات';

  @override
  String get contactAdded => 'تمت إضافة جهة الاتصال';

  @override
  String get contactDeleted => 'تم حذف جهة الاتصال';

  @override
  String get contactUpdated => 'تم تحديث جهة الاتصال';

  @override
  String get addContact => 'إضافة جهة اتصال';

  @override
  String get deleteContact => 'حذف جهة اتصال';

  @override
  String confirmDeleteContact(Object name) {
    return 'حذف \"$name\" من النظام؟';
  }

  @override
  String get contactType => 'نوع جهة الاتصال';

  @override
  String get primaryContact => 'جهة اتصال أساسية';

  @override
  String get secondaryContact => 'جهة اتصال ثانوية';

  @override
  String get financialDetails => 'التفاصيل المالية';

  @override
  String get fullDebtScreen => 'شاشة الديون الكاملة (تسديد وتفاصيل)';

  @override
  String get creditSales => 'مبيعات بالأجل (دين)';

  @override
  String get creditSalesDesc =>
      'كل فاتورة مرتبطة بإيصال البيع — اضغط لعرض التفاصيل';

  @override
  String get noCreditInvoices =>
      'لا توجد فواتير «آجل» مربوطة بهذا العميل. استخدم البيع بالدين مع اختيار العميل من';

  @override
  String get installments => 'التقسيط';

  @override
  String get installmentSales => 'مبيعات التقسيط';

  @override
  String get installmentSalesDesc =>
      'فواتير ذات خطط تقسيط — اضغط لعرض تفاصيل الخطة';

  @override
  String get noInstallmentInvoices =>
      'لا توجد فواتير تقسيط مربوطة بهذا العميل.';

  @override
  String get totalDebt => 'إجمالي الدين';

  @override
  String get totalPaid => 'إجمالي المدفوع';

  @override
  String get remainingBalance => 'الرصيد المتبقي';

  @override
  String get settleDebt => 'تسديد الدين';

  @override
  String get debtHistory => 'سجل الديون';

  @override
  String get paymentHistory => 'سجل المدفوعات';

  @override
  String get saleReceipt => 'إيصال البيع';

  @override
  String get viewDetails => 'عرض التفاصيل';

  @override
  String get amountDue => 'المبلغ المستحق';

  @override
  String get amountPaid => 'المبلغ المدفوع';

  @override
  String get dueDate => 'تاريخ الاستحقاق';

  @override
  String get paymentDate => 'تاريخ الدفع';

  @override
  String get paymentMethod => 'طريقة الدفع';

  @override
  String get remaining => 'المتبقي';

  @override
  String get settled => 'مسدّد';

  @override
  String get overdue => 'متأخر';

  @override
  String get dueSoon => 'قريب الاستحقاق';

  @override
  String get customerForm => 'نموذج العميل';

  @override
  String get saveCustomer => 'حفظ العميل';

  @override
  String get updateCustomer => 'تحديث العميل';

  @override
  String get customerSaved => 'تم حفظ العميل بنجاح';

  @override
  String get customerUpdated => 'تم تحديث العميل بنجاح';

  @override
  String get customerDeleted => 'تم حذف العميل بنجاح';

  @override
  String failedToSave(Object error) {
    return 'تعذر الحفظ: $error';
  }

  @override
  String get phoneRequired => 'رقم الهاتف مطلوب';

  @override
  String get emailInvalid => 'البريد الإلكتروني غير صالح';

  @override
  String get duplicatePhone => 'رقم الهاتف هذا موجود بالفعل';

  @override
  String get duplicateEmail => 'البريد الإلكتروني هذا موجود بالفعل';

  @override
  String get addAnotherPhone => 'إضافة رقم آخر';

  @override
  String get loyaltyPointsLabel => 'نقاط الولاء';

  @override
  String get customerType => 'نوع العميل';

  @override
  String get retail => 'تجزئة';

  @override
  String get wholesale => 'جملة';

  @override
  String get lastUpdateNow => 'آخر تحديث: الآن تقريباً — F5';

  @override
  String lastUpdateHours(Object hours) {
    return 'آخر تحديث: منذ $hours ساعة تقريباً — F5';
  }

  @override
  String lastUpdateMinutes(Object minutes) {
    return 'آخر تحديث: منذ $minutes دقيقة — F5';
  }

  @override
  String totalCustomersCount(Object displayed, Object total) {
    return 'إجمالي العملاء: $total · معروض: $displayed';
  }

  @override
  String get closePanelEsc => 'إغلاق اللوحة (Esc)';

  @override
  String get salesByCash => 'مبيعات نقدية';

  @override
  String get salesByCredit => 'مبيعات آجلة';

  @override
  String get totalSales => 'إجمالي المبيعات';

  @override
  String get currentBalance => 'الرصيد الحالي';

  @override
  String get reportsTitle => 'التقارير';

  @override
  String get reportsSections => 'أقسام التقارير';

  @override
  String get defaultPeriod => 'الفترة الافتراضية عند فتح التقارير';

  @override
  String get exportToExcel => 'تصدير (نسخ لـ Excel)';

  @override
  String get printReport => 'طباعة تقرير فترة';

  @override
  String get salesOverview => 'نظرة عامة على المبيعات';

  @override
  String get financialGauges => 'مؤشرات أداء رئيسية';

  @override
  String get gaugesConsistent => 'متسقة مع نسب المخطط الدائري والجدول';

  @override
  String get gaugesRelative => 'توزيع نسبي يوضح أين تذهب كل وحدة إيراد';

  @override
  String get reportSettings => 'إعدادات التقارير';

  @override
  String get reportPreferences => 'فترة افتراضية وتفضيلات';

  @override
  String get periodApplied =>
      'عند الحفظ تُحدَّث الفترة الحالية وتُخزَّن للمرّة القادمة';

  @override
  String get currentPeriod => 'الفترة المختارة:';

  @override
  String get yesterday => 'أمس';

  @override
  String get thisWeek => 'هذا الأسبوع';

  @override
  String get thisMonth => 'هذا الشهر';

  @override
  String get thisYear => 'هذا العام';

  @override
  String get lastQuarter => 'آخر ربع سنة';

  @override
  String get dailyTrend => 'اتجاه يومي';

  @override
  String get weekly => 'أسبوعي';

  @override
  String get monthly => 'شهري';

  @override
  String get quarterly => 'ربع سنوي';

  @override
  String get yearly => 'سنوي';

  @override
  String get custom => 'مخصص';

  @override
  String get noData => 'لا توجد بيانات';

  @override
  String get noDataPeriod => 'لا توجد بيانات في هذه الفترة';

  @override
  String get noDailyData => 'لا بيانات يومية في هذه الفترة';

  @override
  String get noTrendData => 'لا توجد بيانات اتجاه عبر الزمن لعرضها';

  @override
  String get noMetricsData => 'لا توجد بيانات لعرض المقاييس';

  @override
  String get tryDateRange => 'جرّب تغيير نطاق التاريخ أو الفلتر';

  @override
  String get filterNone => 'لا نتائج';

  @override
  String get clearSearch =>
      'امسح البحث (×) أو انتقل لتبويب «الكل» أو غيّر التبويب أعلاه';

  @override
  String get searchDescriptionCategory => 'بحث (وصف أو فئة)';

  @override
  String get searchCustomerProductPlan =>
      'بحث: عميل، منتج، رقم خطة، رقم فاتورة...';

  @override
  String get salesInvoices => 'الفواتير';

  @override
  String get salesOnly => 'مبيعات (غير مرتجع)';

  @override
  String get dailySales => 'مبيعات يومية ضمن الفترة';

  @override
  String get totalRevenue => 'إجمالي الإيراد';

  @override
  String get totalSalesCount => 'عدد الفواتير';

  @override
  String get totalReturns => 'إجمالي المرتجعات';

  @override
  String get totalExpenses => 'إجمالي المصروفات';

  @override
  String get netSales => 'صافي المبيعات';

  @override
  String get netAfterExpenses => 'صافي بعد المصروفات';

  @override
  String get netApprox => 'صافي تقريبي';

  @override
  String get netApproxDesc => 'صافي تقريبي (بيع − مرتجع)';

  @override
  String get netSalesPeriod => 'صافي مبيعات الفترة';

  @override
  String get salesVsExpenses => 'المبيعات مقابل المصروفات — اتجاه يومي';

  @override
  String get paymentTypeTrend => 'اتجاه أنواع الدفع عبر الزمن';

  @override
  String get categoryStacked => 'اتجاه الفئات المكدّس عبر الزمن';

  @override
  String get employeeSalesTrend => 'اتجاه مبيعات الموظفين عبر الزمن';

  @override
  String get salesByPaymentType => 'توزيع المبيعات حسب نوع الدفع';

  @override
  String get salesByCategory => 'توزيع المبيعات حسب الفئة';

  @override
  String get salesByCustomer => 'توزيع المبيعات على العملاء';

  @override
  String get salesByEmployee => 'توزيع المبيعات على الموظفين';

  @override
  String get topProducts => 'أكثر الأصناف مبيعاً';

  @override
  String get topProductsByRevenue => 'أكثر الأصناف مبيعاً (حسب إيراد البنود)';

  @override
  String get topCustomers => 'أكثر المشترين';

  @override
  String get topCustomersByPurchase => 'أكثر العملاء شراءً (حسب اسم الفاتورة)';

  @override
  String get topEmployees => 'الموظفون';

  @override
  String get topEmployeesBySales =>
      'ترتيب حسب إجمالي المبيعات المسجّلة على الفواتير';

  @override
  String get topCategories => 'أعلى الفئات إيراداً';

  @override
  String topCategory(Object name) {
    return 'أعلى فئة: $name';
  }

  @override
  String get moreItems => 'آخرون';

  @override
  String get reportAccuracyNote => 'ملاحظات الدقّة';

  @override
  String get marginAccuracyDesc =>
      'نسبة تغطية التكلفة — كلما ارتفعت زادت الدقة';

  @override
  String get fixedCostRatio => 'نسبة السطور ذات التكلفة المثبّتة من الإجمالي';

  @override
  String costFixedAtSale(Object amount) {
    return 'مثبّتة وقت البيع: $amount';
  }

  @override
  String noCostZeros(Object count) {
    return 'بدون تكلفة (تُعامَل 0): $count';
  }

  @override
  String get expenseAnalysis => 'تحليلات';

  @override
  String get expenseBreakdown => 'تحليلات المصروفات ضمن الفترة';

  @override
  String get topExpenses => 'أدنى 10 منتجات ربحاً (مراجعة تسعير)';

  @override
  String get lowMarginProducts => 'منتجات هامشها منخفض أو سالب';

  @override
  String get lowMarginDesc =>
      'منتجات هامشها منخفض أو سالب — قد تحتاج مراجعة السعر أو التكلفة';

  @override
  String get customerBalances => 'أرصدة العملاء';

  @override
  String get customerBalancesDesc => 'أرصدة مسجّلة في سجل العملاء';

  @override
  String get installmentPlans => 'خطط التقسيط';

  @override
  String get installmentPlansDesc => 'خطط أقساط (فواتير ضمن الفترة)';

  @override
  String get activePlans => 'خطط نشطة';

  @override
  String get noInstallmentPlans => 'لا توجد خطط تقسيط';

  @override
  String get noInstallmentSearch => 'لا توجد خطط ضمن البحث أو التصفية الحالية';

  @override
  String get salesFlowItems => 'فواتير ومبيعات (قيود مرتبطة بفاتورة)';

  @override
  String get salesInvoicesReturns => 'فواتير / مرتجعات';

  @override
  String filteredPeriod(Object from, Object to) {
    return 'الفترة: $from → $to';
  }

  @override
  String filteredPlansCount(Object filtered, Object total) {
    return 'القائمة: $filtered من $total خطة';
  }

  @override
  String get employeePerformance =>
      'جدول — أداء التسجيل حسب اسم الموظف على الفاتورة';

  @override
  String get employeePerformanceDesc =>
      'فواتير مسجّلة باسم الموظف (حقل الفاتورة)';

  @override
  String get loyaltySummary => 'ملخص نقاط وخصومات الولاء';

  @override
  String get loyaltyGranted =>
      'نقاط ممنوحة (مجموع النقاط المسجّلة على الفواتير)';

  @override
  String get loyaltyRedeemed =>
      'نقاط ممنوحة (مجموع النقاط المسجّلة على الفواتير)';

  @override
  String get loyaltyDiscounts => 'خصومات ولاء على الفواتير';

  @override
  String get bestSales => 'تحليل وهامش';

  @override
  String get bestSalesDesc => 'تحليلات تفاصيل البضاعة والهامش والصافي';

  @override
  String get backToHome => 'العودة للرئيسية';

  @override
  String get selectEmployee => 'اختر موظفاً';

  @override
  String get selectCustomer => 'اختر عميلاً مسجّلاً';

  @override
  String get selectCustomerFromList => 'اختيار عميل من القائمة';

  @override
  String get updateButton => 'تحديث';

  @override
  String get refreshButton => 'تحديث (F5)';

  @override
  String get refreshData => 'تحديث البيانات';

  @override
  String get noItemsRecorded => 'لا توجد أصناف مسجّلة في الفاتورة';

  @override
  String get salesOnlySection =>
      'هذا القسم يعرض المبيعات فقط: نقدي/دين/تقسيط/توصيل';

  @override
  String get thankYou => 'شكرًا لاستخدام Maarey';

  @override
  String get cashTitle => 'الصندوق';

  @override
  String get cashDrawer => 'الصندوق';

  @override
  String get openShift => 'فتح الوردية';

  @override
  String get closeShift => 'إغلاق الوردية';

  @override
  String get shiftDetails => 'تفاصيل الوردية';

  @override
  String get shiftIdentity => 'هوية الوردية والجلسة';

  @override
  String get openTime => 'وقت الفتح';

  @override
  String get closeTime => 'وقت الإغلاق';

  @override
  String get declaredOnOpen => 'النقد المُعلَن عند الفتح (الجرد)';

  @override
  String get declaredAfterWithdrawal => 'النقد المُعلَن في الصندوق بعد السحب';

  @override
  String get systemBalanceOpen => 'رصيد النظام عند فتح الوردية';

  @override
  String get systemBalanceClose => 'رصيد النظام عند الإغلاق';

  @override
  String get withdrawnOnClose => 'المسحوب عند الإغلاق';

  @override
  String get pendingDeclared => 'المُعلَن متبقيًّا في الصندوق';

  @override
  String get shiftMovements => 'الحركات';

  @override
  String totalMovements(Object count) {
    return 'إجمالي ما يظهر من حركات في الصندوق لهذه المجموعة: $count حركة';
  }

  @override
  String get inflow => 'وارد';

  @override
  String get outflow => 'صادر';

  @override
  String get inflowLabel => 'وارد (إدخال)';

  @override
  String get outflowLabel => 'صادر (إخراج)';

  @override
  String get inflowLineByLine => 'الوارد — سطر بسطر';

  @override
  String get outflowLineByLine => 'الصادر — سطر بسطر';

  @override
  String get manualEntry => 'قيد يدوي';

  @override
  String get manualDeposit => 'إيداع يدوي';

  @override
  String get manualWithdrawal => 'سحب يدوي';

  @override
  String get affectsCashbox => 'أثر على الصندوق';

  @override
  String get cashSales => 'بيع نقدي';

  @override
  String get creditSalesLabel => 'دين';

  @override
  String get noOutflowMovements => 'لا توجد حركات صادر في هذه المجموعة';

  @override
  String get noInflowMovements => 'لا توجد حركات وارد في هذه المجموعة';

  @override
  String get noLinkedMovements =>
      'لا توجد في هذه المجموعة حركات مرتبطة برقم فاتورة';

  @override
  String get otherMovements => 'حركات أخرى';

  @override
  String get movement => 'حركة';

  @override
  String get printReceipt => 'طباعة إيصال';

  @override
  String get depositEntry => 'إيداع';

  @override
  String get withdrawalEntry => 'سحب';

  @override
  String get cashSummary => 'ملخص الصندوق';

  @override
  String get summaryInflowOutflow => 'ملخص الوارد والصادر (هذه القائمة)';

  @override
  String get loyaltyRange => 'ولاء (ضمن الفترة)';

  @override
  String noShift(Object count) {
    return 'بدون وردية · $count حركة';
  }

  @override
  String get invoiceAttached => 'فاتورة مرفقة';

  @override
  String get linkedInvoice => 'الفاتورة المرتبطة';

  @override
  String get expensesTitle => 'المصروفات';

  @override
  String get addExpense => 'إضافة مصروف';

  @override
  String get editExpense => 'تعديل مصروف';

  @override
  String get deleteExpense => 'حذف المصروف؟';

  @override
  String get confirmDeleteExpense => 'هل تريد حذف هذا المصروف؟ لا يمكن التراجع';

  @override
  String get expenseCategory => 'الفئة *';

  @override
  String get expenseDescription => 'الوصف';

  @override
  String get expenseAmount => 'المبلغ (Fdj)';

  @override
  String get expenseDate => 'التاريخ';

  @override
  String get expenseStatus => 'الحالة';

  @override
  String get expensePaid => 'مدفوع';

  @override
  String get expenseUnpaid => 'غير مدفوع';

  @override
  String get expenseReceipt => 'إيصال مصروف';

  @override
  String get expenseReport => 'فاتورة تقرير المصروفات';

  @override
  String get printExpenseReport => 'طباعة تقرير مصروفات';

  @override
  String get expensesWithinPeriod => 'المصروفات ضمن الفترة';

  @override
  String get allCategories => 'كل الفئات';

  @override
  String get selectCategory => 'اختر فئة المصروف';

  @override
  String get selectOtherCategory => 'اختيار فئة أخرى';

  @override
  String get categoryOptions => 'خيارات القسم';

  @override
  String get showCategoryDescription => 'عرض وصف القسم';

  @override
  String get copyCategoryName => 'نسخ اسم القسم';

  @override
  String categoryCopied(Object name) {
    return 'تم نسخ اسم القسم: $name';
  }

  @override
  String get todayExpense => 'مصروف اليوم';

  @override
  String get monthlyRecurring => 'مصروف شهري متكرر';

  @override
  String get recurringDay => 'تكرار شهري';

  @override
  String get selectMonthDay => 'عدد الأيام (1–365)';

  @override
  String get duplicateRecurring => 'تكرار شهري';

  @override
  String get expenseSaved => 'تم تسجيل المصروف بنجاح';

  @override
  String get expenseUpdated => 'تم تحديث المصروف بنجاح';

  @override
  String expenseSaveError(Object error) {
    return 'تعذر الحفظ: $error';
  }

  @override
  String get attachmentOptional => 'إرفاق صورة الفاتورة (اختياري)';

  @override
  String get imageAttached => 'تم إرفاق صورة الفاتورة';

  @override
  String get imageError => 'تعذر اختيار الصورة';

  @override
  String get noExpensesPeriod => 'لا توجد مصروفات ضمن هذه الفترة';

  @override
  String get noCategoryData => 'لا توجد بيانات.';

  @override
  String get selectCategoryAmount => 'يرجى اختيار فئة وإدخال مبلغ صحيح.';

  @override
  String get installmentsTitle => 'الأقساط';

  @override
  String get addInstallmentPlan => 'إضافة خطة تقسيط';

  @override
  String get planDetails => 'تفاصيل خطة التقسيط';

  @override
  String get installmentSchedule => 'جدول الأقساط';

  @override
  String get installmentSettings => 'إعدادات تقسيط';

  @override
  String get paymentSchedule => 'الجدولة وتواريخ الاستحقاق';

  @override
  String get dueDates => 'الاستحقاق';

  @override
  String get monthlyPaymentLabel => 'القسط الشهري المقترح';

  @override
  String get interestRateLabel => 'نسبة الفائدة';

  @override
  String get downPaymentLabel => 'المقدّم';

  @override
  String get downPaymentRequired => 'إلزام مقدّم دفع لفاتورة التقسيط';

  @override
  String get advanceAmountLabel => 'المبلغ المموّل';

  @override
  String get minAdvancePercentLabel => 'أقل نسبة مقدّم من إجمالي الفاتورة (%)';

  @override
  String get minAdvancePercentDesc =>
      'مثال: 10 تعني ألا يقل المقدّم عن 10٪ من الإجمالي';

  @override
  String get useCalendarMonthsLabel => 'استخدام أشهر تقويمية لتواريخ الاستحقاق';

  @override
  String get useCalendarMonthsDesc =>
      'مفعّل: إضافة شهر تقويمي من تاريخ المرجع. معطّل: تقريب 30 يوماً لكل فترة.';

  @override
  String get referenceDateLabel => 'مرجع الجدولة (بداية العدّ)';

  @override
  String get fromInvoiceDateLabel => 'من تاريخ الفاتورة';

  @override
  String get fromSessionOpenLabel => 'من فتح الجلسة في النظام';

  @override
  String get linkCustomerLabel => 'ربط العميل';

  @override
  String get selectRegisteredCustomer => 'اختر عميلاً مسجّلاً';

  @override
  String customerBalanceLabel(Object amount) {
    return 'رصيد العميل المسجّل: $amount';
  }

  @override
  String planCreatedAtLabel(Object date) {
    return 'تم الإنشاء: $date';
  }

  @override
  String get totalInstallmentsLabel => 'عدد الأقساط';

  @override
  String get remainingInstallmentsLabel => 'عدد أقساط المتبقي';

  @override
  String get paidAmountLabel => 'المدفوع';

  @override
  String get remainingAmountLabel => 'المتبقي';

  @override
  String get nextInstallmentLabel => 'القسط التالي';

  @override
  String nextDueLabel(Object amount, Object date) {
    return 'القسط التالي: $amount — $date';
  }

  @override
  String firstDueLabel(Object date) {
    return 'أول استحقاق: $date';
  }

  @override
  String installmentPaidLabel(Object date) {
    return 'سُدد: $date';
  }

  @override
  String get installmentPendingLabel => 'المعلق';

  @override
  String get installmentOverdueLabel => 'متأخرة';

  @override
  String get installmentCompletedLabel => 'مكتملة';

  @override
  String get settleInstallmentLabel => 'تسديد قسط';

  @override
  String settleInstallmentDesc(Object amount) {
    return 'يجب تسديد قيمة القسط كاملة ($amount)';
  }

  @override
  String get cantRescheduleLabel =>
      'لا يمكن إعادة جدولة الأقساط بعد تسديد قسط من هذه الخطة';

  @override
  String get planAlreadyExistsLabel =>
      'الخطة مسجّلة بالفعل وتظهر تحت «خطط التقسيط»';

  @override
  String get planCreatedLabel => 'تم حفظ الجدول وربط العميل';

  @override
  String get scheduleSavedLabel => 'تم حفظ جدول الأقساط';

  @override
  String get planLoadErrorLabel => 'تعذر تحميل خطة التقسيط';

  @override
  String get paymentRecordErrorLabel => 'تعذر التسجيل (قد يكون القسط مدفوعاً)';

  @override
  String planIdLabel(Object id) {
    return 'خطة #$id';
  }

  @override
  String installmentNumberLabel(Object index) {
    return 'القسط #$index';
  }

  @override
  String planMonthsLabel(Object count) {
    return 'عدد الأشهر: $count';
  }

  @override
  String planSuggestedMonthlyLabel(Object amount) {
    return 'القسط الشهري المقترح: $amount';
  }

  @override
  String planFinancedAtSaleLabel(Object amount) {
    return 'المبلغ المموّل: $amount';
  }

  @override
  String planInterestAmountLabel(Object amount) {
    return 'قيمة الفائدة: $amount';
  }

  @override
  String planProgressLabel(Object paid, Object total) {
    return 'تقدّم السداد: $paid / $total';
  }

  @override
  String get noRemainingAfterAdvanceLabel =>
      'لا يوجد مبلغ متبقٍ للتقسيط بعد المقدم';

  @override
  String calendarScheduleLabel(Object step) {
    return 'جدولة: شهر تقويمي × $step لكل قسط من المرجع';
  }

  @override
  String roundScheduleLabel(Object step) {
    return 'جدولة: تقريب 30 يوماً × $step لكل قسط من المرجع';
  }

  @override
  String get dueDayLabel => 'يُستحق يوم';

  @override
  String get dueDayDesc => 'يحدده البائع من التقويم (اتفاق)';

  @override
  String get installmentSettingsSavedLabel => 'تم حفظ إعدادات التقسيط';

  @override
  String get requiredInstallmentsLabel => 'عدد الأقساط يجب أن يكون 1 على الأقل';

  @override
  String get validAmountLabel => 'قيمة غير صالحة';

  @override
  String get debtCollectionLabel => 'تحصيل دين';

  @override
  String get supplierPaymentLabel => 'دفع مورد';

  @override
  String get salaryLabel => 'رواتب';

  @override
  String get rentLabel => 'إيجار';

  @override
  String get waterLabel => 'ماء';

  @override
  String get electricityLabel => 'كهرباء';

  @override
  String get otherLabel => 'آخرون';

  @override
  String get updateAction => 'تحديث';

  @override
  String get saveAction => 'حفظ';

  @override
  String get printAction => 'طباعة';

  @override
  String get retryAction => 'إعادة المحاولة';

  @override
  String get reloadFromDb => 'إعادة التحميل من القاعدة';

  @override
  String get amountLabel => 'المبلغ';

  @override
  String get employeeLabel => 'الموظف';

  @override
  String get paidLabel => 'المدفوع';

  @override
  String get remainingLabel => 'المتبقي';

  @override
  String get salesTitle => 'المبيعات';

  @override
  String get installmentSettingsTitle => 'إعدادات تقسيط';

  @override
  String get createPlan => 'إنشاء خطة';

  @override
  String get accuracyNotes => 'ملاحظات الدقّة';

  @override
  String get addEntry => 'إضافة القيد';

  @override
  String get advanceAndTerms => 'المقدّم وشروط البيع';

  @override
  String get advanceFirstPayment => 'مقدم / دفعة أولى';

  @override
  String get advancePayment => 'المقدّم';

  @override
  String get advancePercentExample =>
      'مثال: 10 تعني ألا يقل المقدّم عن 10٪ من الإجمالي.';

  @override
  String get advancePercentRange => 'نسبة المقدّم يجب أن تكون بين 0 و 100';

  @override
  String get affectedCashBox => 'أثر على الصندوق';

  @override
  String get amountAddedAtOpen => 'المبلغ المُضاف عند الفتح';

  @override
  String get amountIQD => 'المبلغ (Fdj)';

  @override
  String get analysisAndMargin => 'تحليل وهامش';

  @override
  String get analytics => 'تحليلات';

  @override
  String get apply => 'تطبيق';

  @override
  String get approxNet => 'صافي تقريبي (بيع − مرتجع)';

  @override
  String get attachInvoiceImageOptional => 'إرفاق صورة الفاتورة (اختياري)';

  @override
  String get balance => 'الرصيد';

  @override
  String get beneficiary => 'المستفيد';

  @override
  String get bottom10ProfitProducts => 'أدنى 10 منتجات ربحاً (مراجعة تسعير)';

  @override
  String get calendarMonthsExplanation =>
      'مفعّل: إضافة شهر تقويمي من تاريخ المرجع. معطّل: تقريب 30 يوماً لكل فترة.';

  @override
  String get cannotRescheduleAfterPayment =>
      'لا يمكن إعادة جدولة الأقساط بعد تسديد قسط من هذه الخطة.';

  @override
  String get cashBox => 'الصندوق';

  @override
  String get cashSale => 'بيع';

  @override
  String get category => 'الفئة';

  @override
  String get categoryRequired => 'الفئة *';

  @override
  String get change => 'تغيير';

  @override
  String get changeOrRemoveAnytime => 'يمكنك تغييرها أو إزالتها في أي وقت.';

  @override
  String get choose => 'اختيار';

  @override
  String get chooseOtherCategory => 'اختيار فئة أخرى';

  @override
  String get clearSearchOrChangeTab =>
      'امسح البحث (×) أو انتقل لتبويب «الكل» أو غيّر التبويب أعلاه.';

  @override
  String get closeForm => 'إغلاق النموذج؟';

  @override
  String get closeFormConfirm => 'هل تريد إغلاق النموذج؟ البيانات لن تُحفظ';

  @override
  String get cogs => 'تكلفة البضاعة المباعة (COGS)';

  @override
  String get controlAdvanceRequirements =>
      'التحكم في إلزامية المقدّم وأقل نسبة مسموحة من إجمالي الفاتورة.';

  @override
  String get copySectionName => 'نسخ اسم القسم';

  @override
  String get cost => 'تكلفة';

  @override
  String get countByEntryType => 'تعداد حسب نوع القيد';

  @override
  String get customer => 'العميل';

  @override
  String get customerBalanceList => 'قائمة العملاء (رصيد دائن على المحل)';

  @override
  String get daily => 'يومي';

  @override
  String get dailySalesInRange => 'مبيعات يومية ضمن الفترة';

  @override
  String get dashboardTitle => 'لوحة تنفيذية';

  @override
  String get dateRange => 'نطاق الفترة';

  @override
  String get dayCount => 'عدد الأيام (1–365)';

  @override
  String get debtorCustomerCount => 'عدد العملاء المدينين';

  @override
  String get debts => 'الديون';

  @override
  String get declaredCashAfterWithdrawal =>
      'النقد المُعلَن في الصندوق بعد السحب';

  @override
  String get declaredCashAtOpen => 'النقد المُعلَن عند الفتح (الجرد)';

  @override
  String get defaultInstallmentCountRange =>
      'عدد الأقساط الافتراضي بين 1 و 120';

  @override
  String get defaultInstallmentInterestRate =>
      'نسبة الفائدة الافتراضية في بيع التقسيط (%)';

  @override
  String get defaultInterestRange =>
      'نسبة الفائدة الافتراضية في البيع بين 0 و 100';

  @override
  String get defaultPeriodAndPreferences => 'فترة افتراضية وتفضيلات';

  @override
  String get defaultRemainingInstallments =>
      'عدد أقساط المتبقي (افتراضي عند إنشاء الخطة)';

  @override
  String get defaultReportPeriod => 'الفترة الافتراضية عند فتح التقارير';

  @override
  String get deleteExpenseConfirm =>
      'هل تريد حذف هذا المصروف؟ لا يمكن التراجع.';

  @override
  String get descriptionOptional => 'الوصف (اختياري)';

  @override
  String get dueDay => 'يُستحق يوم';

  @override
  String get employeeBeneficiary => 'الموظف (المستفيد)';

  @override
  String get employeeRecorder => 'الموظف / المسجّل';

  @override
  String get employees => 'الموظفون';

  @override
  String get enterAmountGreaterThanZero => 'أدخل مبلغاً أكبر من صفر';

  @override
  String get enterInstallmentCount => 'أدخل عدد الأقساط';

  @override
  String get enterMovementDescription => 'أدخل وصفاً للحركة';

  @override
  String get entry => 'إدخال';

  @override
  String get everyMonth => 'من كل شهر';

  @override
  String get exit => 'إخراج';

  @override
  String get expenseCount => 'عدد المصروفات';

  @override
  String get expenseReason => 'سبب الصرف (يُطبع مع الإيصال)';

  @override
  String get expenseReportInvoice => 'فاتورة تقرير المصروفات';

  @override
  String get expenses => 'مصروفات';

  @override
  String get exportExcel => 'تصدير (نسخ Excel)';

  @override
  String get failedToLoadInstallmentPlan => 'تعذر تحميل خطة التقسيط.';

  @override
  String get firstDueReferenceDate => 'تاريخ مرجع أول قسط (عند فتح شاشة الخطة)';

  @override
  String get fullTransparency => 'شفافية كاملة — هذه هي القواعد المعتمدة';

  @override
  String get futureFeatures =>
      'مستقبلاً: تصدير PDF/Excel، جدولة تقارير، وصلاحيات عرض حسب الدور.';

  @override
  String get grossMargin => 'الهامش الإجمالي';

  @override
  String get history => 'السجل';

  @override
  String get howMarginCalculated => 'كيف يُحسب الهامش؟';

  @override
  String get imageSelectionFailed => 'تعذر اختيار الصورة.';

  @override
  String get inbound => 'وارد';

  @override
  String get inboundEntry => 'الوارد (إدخال)';

  @override
  String get inboundLineByLine => 'الوارد — سطر بسطر';

  @override
  String get inboundOutboundSummary => 'ملخص الوارد والصادر (هذه القائمة)';

  @override
  String get inboundTotal => 'الوارد';

  @override
  String get indicatorsAndPeriod => 'مؤشرات وفترة';

  @override
  String get installmentPeriodMethod =>
      'فترة الأقساط، طريقة احتساب الشهر، ومرجع أول تاريخ استحقاق.';

  @override
  String get installmentPeriodRange => 'الفترة بين الأقساط: بين 1 و 24 شهراً';

  @override
  String get installmentPlanDetails => 'تفاصيل خطة التقسيط';

  @override
  String get installmentPlansInPeriod => 'خطط أقساط (فواتير ضمن الفترة)';

  @override
  String get installmentScheduleSaved => 'تم حفظ جدول الأقساط';

  @override
  String get interestInfoAtSale => 'معلومات الفائدة (عند البيع)';

  @override
  String get invalidValue => 'قيمة غير صالحة';

  @override
  String get inventoryAndCashbox => 'الجرد والصندوق (سجل النظام)';

  @override
  String get inventoryWithdrawn => 'البضاعة المسحوبة من المخزون';

  @override
  String get invoiceCount => 'عدد الفواتير';

  @override
  String get invoiceImageAttached => 'تم إرفاق صورة الفاتورة';

  @override
  String get invoiceSummary => 'ملخص الفاتورة';

  @override
  String get invoicesAndSales => 'فواتير ومبيعات (قيود مرتبطة بفاتورة)';

  @override
  String get invoicesInMovements => 'الفواتير في هذه الحركات';

  @override
  String get invoicesReturns => 'فواتير / مرتجعات';

  @override
  String get isExpensePrepaid => 'هل المصروف مدفوع مسبقاً؟';

  @override
  String get item => 'الصنف';

  @override
  String get itemLabel => 'صنف';

  @override
  String get itemsSoldWithStock =>
      'الكميات المباعة من الفاتورة مع رصيد المخزون الحالي للمنتج المرتبط.';

  @override
  String get kpiPieDescription =>
      'بيتزا موحّدة للمؤشرات المالية الأساسية — مبيعات/مرتجعات/صافي';

  @override
  String get loadingInvoiceItems => 'جاري تحميل أصناف الفاتورة…';

  @override
  String get loyaltyInRange => 'ولاء (ضمن الفترة)';

  @override
  String get mainPerformanceIndicators => 'مؤشرات أداء رئيسية (Gauges)';

  @override
  String get manualDepositReceipt => 'وصل الإيداع اليدوي (مجموع قيود الإيداع)';

  @override
  String get manualDepositWithdrawalGroup =>
      'إيداع يدوي وسحب يدوي (هذه المجموعة)';

  @override
  String get manualDepositWithdrawalInShift =>
      'إيداع يدوي وسحب يدوي خلال الوردية';

  @override
  String get manualWithdrawalReceipt => 'وصل السحب اليدوي (مجموع قيود السحب)';

  @override
  String get margin => 'هامش';

  @override
  String get marginDataQuality => 'جودة بيانات الهامش (Coverage)';

  @override
  String get marginPercent => 'نسبة الهامش %';

  @override
  String get minOneInstallment => 'عدد الأقساط يجب أن يكون 1 على الأقل';

  @override
  String get minimumAdvancePercent => 'أقل نسبة مقدّم من إجمالي الفاتورة (%)';

  @override
  String get miscExpenses => 'مصاريف متنوعة';

  @override
  String get monthlyRecurringExpense => 'مصروف شهري متكرر';

  @override
  String get monthlyRepeat => 'تكرار شهري';

  @override
  String get more => 'المزيد';

  @override
  String get movementsWithoutShift => 'تفاصيل الحركات (بدون وردية)';

  @override
  String get netProfit => 'الصافي (هامش − مصروفات)';

  @override
  String get noComment => 'بدون تعليق - يُنصح بإضافة سبب الصرف.';

  @override
  String get noDailyDataInPeriod => 'لا بيانات يومية في هذه الفترة';

  @override
  String get noDataAvailable => 'لا توجد بيانات';

  @override
  String get noExpensesInPeriod => 'لا توجد مصروفات ضمن هذه الفترة';

  @override
  String get noInboundMovements => 'لا توجد حركات وارد في هذه المجموعة.';

  @override
  String get noInvoiceLinkedMovements =>
      'لا توجد في هذه المجموعة حركات مرتبطة برقم فاتورة.';

  @override
  String get noItemsInPeriod => 'لا توجد بنود في هذه الفترة.';

  @override
  String get noLinkUseInvoiceName =>
      'بدون ربط — الاعتماد على الاسم من الفاتورة';

  @override
  String get noMovementsInGroup => 'لا توجد حركات في هذه المجموعة.';

  @override
  String get noOutboundMovements => 'لا توجد حركات صادر في هذه المجموعة.';

  @override
  String get noPlansInCurrentFilter =>
      'لا توجد خطط ضمن البحث أو التصفية الحالية';

  @override
  String get noSalesInPeriod => 'لا توجد مبيعات في هذه الفترة';

  @override
  String get okay => 'حسنًا';

  @override
  String get open => 'مفتوحة';

  @override
  String get openSection => 'فتح القسم';

  @override
  String get option => 'الخيار';

  @override
  String get optional => '(اختياري)';

  @override
  String get others => 'آخرون';

  @override
  String get outbound => 'صادر';

  @override
  String get outboundExit => 'الصادر (إخراج)';

  @override
  String get outboundLineByLine => 'الصادر — سطر بسطر';

  @override
  String get outboundTotal => 'الصادر';

  @override
  String get overdueInstallmentWarning => 'تنبيه: يوجد قسط متأخر';

  @override
  String get ownerOrProperty => 'اسم المالك أو العقار';

  @override
  String get paidCappedAtTotal =>
      'يُقصى «المدفوع» على إجمالي الخطة عند التعارض.';

  @override
  String get paidRemaining => 'المدفوع / المتبقي';

  @override
  String get payInstallment => 'تسديد قسط';

  @override
  String get paymentProgress => 'تقدّم السداد';

  @override
  String get paymentType => 'نوع الدفع';

  @override
  String get paymentTypeRatio => 'نسبة كل نوع دفع من المبيعات';

  @override
  String get paymentTypesAndReturns => 'أنواع الدفع والمرتجعات';

  @override
  String get paymentTypesTrendOverTime => 'اتجاه أنواع الدفع عبر الزمن';

  @override
  String get pendingLabel => 'المعلق';

  @override
  String get percentage => 'النسبة';

  @override
  String get periodBetweenDueDates => 'فترة بين كل استحقاق وآخر (بالأشهر)';

  @override
  String get periodExplanation => '1 = قسط شهري، 2 = كل شهرين، وهكذا.';

  @override
  String get periodNetSales => 'صافي مبيعات الفترة';

  @override
  String get periodPlans => 'خطط الفترة';

  @override
  String get periodRevenue => 'إيراد الفترة';

  @override
  String get plan => 'الخطة';

  @override
  String get planAutoCreatedAfterSave =>
      'بعد حفظ فاتورة تقسيط تُنشأ الخطة تلقائياً وتظهر هنا.';

  @override
  String get preferRegisteredCustomer =>
      'يُفضّل اختيار عميل مسجّل لتسهيل المتابعة والتقارير.';

  @override
  String get printPeriodReport => 'طباعة تقرير فترة';

  @override
  String get productsAndEstimatedMargin => 'منتجات وهامش تقديري';

  @override
  String get propertyOrEntity => 'اسم العقار / الجهة';

  @override
  String get recordingPerformance => 'أداء التسجيل';

  @override
  String get recurring => 'متكرر';

  @override
  String get registeredCustomer => 'عميل مسجّل';

  @override
  String get remainingInstallmentsCount => 'عدد أقساط المتبقي';

  @override
  String get reportSections => 'أقسام التقارير';

  @override
  String get requireAdvanceForInstallment => 'إلزام مقدّم دفع لفاتورة التقسيط';

  @override
  String get returnCount => 'عدد المرتجعات';

  @override
  String get returnItem => 'مرتجع';

  @override
  String get returns => 'المرتجعات';

  @override
  String get revenueComposition => 'تركيب الإيراد: تكلفة + هامش';

  @override
  String get revenueTrend => 'اتجاه الإيراد: تكلفة + هامش + مصروفات يومياً';

  @override
  String get salaries => 'رواتب';

  @override
  String get sale => 'بيع';

  @override
  String get saleScreenInstallmentCard => 'شاشة البيع وبطاقة التقسيط';

  @override
  String get sales => 'مبيعات';

  @override
  String get salesNotMixedWithReceipts => 'حتى لا تختلط المبيعات مع السندات';

  @override
  String get salesVsExpensesDailyTrend =>
      'المبيعات مقابل المصروفات — اتجاه يومي';

  @override
  String get saveAndApply => 'حفظ وتطبيق';

  @override
  String get saveScheduleChanges => 'حفظ التعديلات على الجدول';

  @override
  String get saving => 'جارٍ الحفظ...';

  @override
  String get scheduleReference => 'مرجع الجدولة (بداية العدّ)';

  @override
  String get schedulingAndDueDates => 'الجدولة وتواريخ الاستحقاق';

  @override
  String get searchByNameOrPhone => 'ابحث بالاسم أو اسم المستخدم أو الهاتف';

  @override
  String get searchByNameOrPhoneOrNumber => 'ابحث بالاسم أو الهاتف أو الرقم…';

  @override
  String get searchDescriptionOrCategory => 'بحث (وصف أو فئة)';

  @override
  String get searchPlaceholder => 'بحث: عميل، منتج، رقم خطة، رقم فاتورة…';

  @override
  String get sectionOptions => 'خيارات القسم';

  @override
  String get selectCategoryAndAmount => 'يرجى اختيار فئة وإدخال مبلغ صحيح.';

  @override
  String get selectEmployeeTitle => 'اختيار موظف';

  @override
  String get selectExpenseCategory => 'اختر فئة المصروف';

  @override
  String get selectPeriodForReport => 'اختر الفترة الزمنية للفاتورة:';

  @override
  String get selectedPeriod => 'الفترة المختارة:';

  @override
  String get sellerChosenFromCalendar => 'يحدده البائع من التقويم (اتفاق)';

  @override
  String get serviceInvoiceNumber => 'رقم فاتورة الخدمة';

  @override
  String get sessionOpenedBy => 'من فتح الجلسة في النظام';

  @override
  String get setupInstallmentSchedule => 'ضبط جدول الأقساط';

  @override
  String get showCalculatorCard =>
      'عرض بطاقة الحاسبة، والقيم الافتراضية للأقساط والفائدة.';

  @override
  String get showInstallmentCardInSale =>
      'إظهار بطاقة «مخطط التقسيط» في شاشة البيع';

  @override
  String get stay => 'البقاء';

  @override
  String get systemBalanceAtClose => 'رصيد النظام عند الإغلاق';

  @override
  String get systemBalanceAtOpen => 'رصيد النظام عند فتح الوردية';

  @override
  String get tableCopiedToClipboard =>
      'تم نسخ الجدول إلى الحافظة (لصق في Excel).';

  @override
  String get tapForFullDetails => 'اضغط للتفاصيل الكاملة والجدول';

  @override
  String get taxType => 'نوع الضريبة';

  @override
  String get taxTypeExample => 'مثال: ضريبة الدخل، ضريبة القيمة المضافة';

  @override
  String get taxes => 'ضرائب';

  @override
  String get thankYouForUsing => 'شكرًا لاستخدام Maarey';

  @override
  String get today => 'اليوم';

  @override
  String get todayExpenses => 'مصروف اليوم';

  @override
  String get top10ProfitProducts => 'أعلى 10 منتجات ربحاً';

  @override
  String get topBuyers => 'أكثر المشترين';

  @override
  String get topCustomersBySpending => 'أعلى العملاء إنفاقاً';

  @override
  String get topItemsByRevenue => 'أكثر الأصناف مبيعاً (حسب إيراد البنود)';

  @override
  String get totalExpensesInPeriod => 'إجمالي المصروفات ضمن الفترة';

  @override
  String get totalPlanValue => 'إجمالي قيمة الخطط';

  @override
  String get totalRecordedDebts => 'إجمالي الديون المسجّلة';

  @override
  String get transactionCount => 'عدد العمليات';

  @override
  String get tryChangingDateRange => 'جرّب تغيير نطاق التاريخ أو الفلتر';

  @override
  String get unlinked => 'غير مرتبط';

  @override
  String get usefulForUtilityBills => 'مفيد لفواتير الماء/الكهرباء/الضرائب.';

  @override
  String get viewSectionDescription => 'عرض وصف القسم';

  @override
  String get warning => 'تنبيه';

  @override
  String get withdrawnAtClose => 'المسحوب عند الإغلاق';

  @override
  String get withoutName => 'بدون اسم';

  @override
  String get yesDeduction => 'نعم (خصم)';

  @override
  String get deleteExpenseLabel => 'حذف المصروف؟';

  @override
  String get planNotFound => 'الخطة غير موجودة';

  @override
  String get weekLabel => 'هذا الأسبوع';

  @override
  String get monthLabel => 'هذا الشهر';

  @override
  String get yearLabel => 'هذا العام';

  @override
  String get allCategoriesLabel => 'كل الفئات';

  @override
  String get noSearchResults => 'لا توجد نتائج.';

  @override
  String get clearSearchLabel => 'مسح البحث';

  @override
  String get selectInvoiceCategory => 'اختر فئة المصروف';

  @override
  String get cashBoxLabel => 'الصندوق';

  @override
  String get manualEntryLabel => 'قيد يدوي';

  @override
  String get depositLabel => 'إيداع';

  @override
  String get withdrawalLabel => 'سحب';

  @override
  String get currentBalanceLabel => 'الرصيد الحالي';

  @override
  String get unpaidLabel => 'غير مدفوع';

  @override
  String get recurringLabel => 'متكرر';

  @override
  String get installmentPaymentLabel => 'تسديد قسط';

  @override
  String get customerLabel2 => 'العميل';

  @override
  String get percentageLabel => 'النسبة';

  @override
  String get revenueLabel => 'الإيراد';

  @override
  String get salesLabel => 'المبيعات';

  @override
  String get othersLabel => 'آخرون';

  @override
  String get withoutNameLabel => 'بدون اسم';

  @override
  String get paidLabel2 => 'مدفوع';

  @override
  String get pendingLabel2 => 'معلق';

  @override
  String get openLabel => 'مفتوحة';

  @override
  String get costLabel => 'التكلفة';

  @override
  String get marginLabel => 'الهامش';

  @override
  String get itemLabel2 => 'الصنف';

  @override
  String get productLabel => 'المنتج';

  @override
  String get planLabel => 'الخطة';

  @override
  String get returnCountLabel => 'عدد المرتجعات';

  @override
  String get optionLabel => 'الخيار';

  @override
  String get inboundLabel => 'الوارد';

  @override
  String get outboundLabel => 'الصادر';

  @override
  String get cashboxLabel => 'الصندوق';

  @override
  String get dailyLabel => 'يومي';

  @override
  String get weeklyLabel => 'أسبوعي';

  @override
  String get monthlyLabel => 'شهري';

  @override
  String get yearlyLabel => 'سنوي';

  @override
  String get customLabel => 'مخصص';

  @override
  String get pageLabel => 'صفحة';

  @override
  String get createdLabel => 'تم الإنشاء:';

  @override
  String get totalAmountLabel => 'الإجمالي';

  @override
  String get overdueLabel => 'متأخرة';

  @override
  String get invoiceLabel => 'الفاتورة';

  @override
  String get scheduleLabel => 'الجدول';

  @override
  String get cancelLabel2 => 'إلغاء';

  @override
  String get confirmLabel => 'تأكيد';

  @override
  String get addLabel => 'إضافة';

  @override
  String get editLabel => 'تعديل';

  @override
  String get deleteLabel => 'حذف';

  @override
  String get filterLabel => 'تصفية';

  @override
  String get exportLabel => 'تصدير';

  @override
  String get printLabel => 'طباعة';

  @override
  String get yesLabel => 'نعم';

  @override
  String get noLabel => 'لا';

  @override
  String get priceLabel => 'السعر';

  @override
  String get noPriceLabel => 'بدون سعر';

  @override
  String get okLabel => 'حسنًا';

  @override
  String get backLabel => 'رجوع';

  @override
  String get nextLabel => 'التالي';

  @override
  String get doneLabel => 'تم';

  @override
  String get closeLabel => 'إغلاق';

  @override
  String get openLabel2 => 'فتح';

  @override
  String get loadingLabel => 'جارٍ التحميل...';

  @override
  String get errorLabel => 'خطأ';

  @override
  String get warningLabel => 'تنبيه';

  @override
  String get successLabel => 'نجاح';

  @override
  String get infoLabel => 'معلومات';

  @override
  String whFailedToLoad(Object error) {
    return 'تعذر تحميل المستودعات: $error';
  }

  @override
  String get whEditsSavedSuccess => 'تم حفظ التعديلات بنجاح';

  @override
  String get whCreatedSuccess => 'تم إنشاء المستودع بنجاح';

  @override
  String whCodeLabel(Object code) {
    return 'الكود: $code';
  }

  @override
  String get whDeleteTitle => 'حذف المستودع';

  @override
  String whDeleteConfirm(Object name) {
    return 'هل أنت متأكد من حذف المستودع «$name»؟';
  }

  @override
  String get whDeleteAction => 'حذف';

  @override
  String whDeleteFailed(Object error) {
    return 'تعذر حذف المستودع (قد يكون مرتبطا بحركات): $error';
  }

  @override
  String get whDeactivateTitle => 'تعطيل المستودع';

  @override
  String get whDeactivateContent =>
      'لن يُستخدم هذا المستودع في عمليات البيع والشراء حتى يُفعَّل من جديد.';

  @override
  String get whActivate => 'تفعيل';

  @override
  String get whDeactivateAction => 'تعطيل';

  @override
  String whStatusUpdateFailed(Object error) {
    return 'تعذر تحديث الحالة: $error';
  }

  @override
  String get whScreenTitle => 'المستودعات';

  @override
  String get whNewWarehouse => 'مستودع جديد';

  @override
  String get whTotalValue => 'القيمة الإجمالية';

  @override
  String get whTotalItems => 'إجمالي الأصناف';

  @override
  String get whSearchHint => 'بحث بالاسم أو الكود...';

  @override
  String get whClearSearch => 'مسح';

  @override
  String get whNoWarehousesYet => 'لا توجد مستودعات بعد';

  @override
  String get whCreateFirst => 'إنشاء أول مستودع';

  @override
  String get whDefaultChip => 'افتراضي';

  @override
  String get whActiveChip => 'نشط';

  @override
  String get whInactiveChip => 'معطّل';

  @override
  String get whItemsCount => 'عدد الأصناف';

  @override
  String get whEditAction => 'تعديل';

  @override
  String get whViewStock => 'عرض المخزون';

  @override
  String get whNameDuplicateError => 'يوجد مستودع بهذا الاسم مسبقاً';

  @override
  String get whCodeDuplicateError => 'الكود مستخدم مسبقاً';

  @override
  String get whSetDefaultTitle => 'تعيين افتراضي';

  @override
  String get whSetDefaultContent =>
      'سيتم إزالة الافتراضي من المستودع الحالي وتحديد هذا المستودع كافتراضي.';

  @override
  String get whConfirmAction => 'تأكيد';

  @override
  String get whCloseFormTitle => 'إغلاق النموذج';

  @override
  String get whCloseFormContent => 'هل تريد إغلاق النموذج؟ البيانات لن تُحفظ';

  @override
  String get whCloseAction => 'إغلاق';

  @override
  String get whSelectBranchError => 'اختر فرعاً';

  @override
  String get whAutoDefaultFirst =>
      'تم تعيينه افتراضياً تلقائياً لأنه المستودع الأول';

  @override
  String whSaveFailed(Object error) {
    return 'تعذر حفظ المستودع: $error';
  }

  @override
  String get whRequiredField => 'مطلوب';

  @override
  String get whScanWarehouseCode => 'مسح كود المستودع';

  @override
  String get whEditWarehouse => 'تعديل المستودع';

  @override
  String get whWarehouseNameLabel => 'اسم المستودع';

  @override
  String get whWarehouseNameHint =>
      'مثال: مستودع الرئيسي، مستودع الفرع الشمالي';

  @override
  String get whWarehouseCodeLabel => 'كود المستودع';

  @override
  String get whWarehouseCodeHint => 'مثال: WH-001';

  @override
  String get whLocationLabel => 'الموقع';

  @override
  String get whLocationHint => 'العنوان أو وصف الموقع';

  @override
  String get whBranchLabel => 'الفرع';

  @override
  String get whActiveWarehouse => 'مستودع نشط';

  @override
  String get whInactiveWarning =>
      'المستودع المعطّل لن يظهر في عمليات البيع والشراء';

  @override
  String get whSaving => 'جاري الحفظ...';

  @override
  String get whCreating => 'جارٍ الإنشاء...';

  @override
  String get whSaveEdits => 'حفظ التعديلات';

  @override
  String get whCreateWarehouse => 'إنشاء المستودع';

  @override
  String get whChooseBranch => 'اختر الفرع';

  @override
  String get whBranchSearchHint => 'بحث بالاسم أو رمز الفرع...';

  @override
  String whStockTitle(Object name) {
    return 'مخزون $name';
  }

  @override
  String get whNoStockInWarehouse => 'لا توجد كميات في هذا المستودع';

  @override
  String get whStockOut => 'نفد';

  @override
  String get whStockLow => 'منخفض';

  @override
  String get whStockInStock => 'في المخزون';

  @override
  String get ipAllCategories => 'جميع التصنيفات';

  @override
  String get ipAllBrands => 'جميع الماركات';

  @override
  String get ipAllStatus => 'الكل';

  @override
  String get ipProductManagement => 'إدارة المنتجات';

  @override
  String get ipSettingsTooltip => 'الإعدادات';

  @override
  String get ipMoreTooltip => 'المزيد';

  @override
  String get ipPrintBarcodes => 'طباعة ملصقات باركود';

  @override
  String get ipProductSavedSnackbar => 'تم حفظ المنتج وتحديث القائمة';

  @override
  String get ipNewProductBtn => '+ منتج جديد';

  @override
  String get ipStatusActive => 'نشط';

  @override
  String get ipStatusLowStock => 'مخزون منخفض';

  @override
  String get ipStatusOutOfStock => 'نفذ من المخزون';

  @override
  String get ipStatusInactive => 'معطّل';

  @override
  String get ipSearchAndMatch => 'بحث ومطابقة';

  @override
  String get ipCategoryFilter => 'التصنيف';

  @override
  String get ipBrandFilter => 'الماركة';

  @override
  String get ipAdvancedSearch => 'بحث متقدم';

  @override
  String ipClearFilterCount(Object count) {
    return 'إلغاء الفلتر ($count)';
  }

  @override
  String get ipClearFilter => 'إلغاء الفلتر';

  @override
  String get ipSearchAction => 'بحث';

  @override
  String get ipKeywordSearch => 'البحث بكلمة مفتاحية';

  @override
  String get ipKeywordHint => 'ادخل الاسم أو الكود أو الباركود';

  @override
  String get ipBarcodeFilter => 'باركود';

  @override
  String get ipScanOrType => 'مسح أو الكتابة';

  @override
  String get ipProductCode => 'كود المنتج';

  @override
  String get ipSalePriceRange => 'نطاق سعر البيع (دينار)';

  @override
  String get ipPriceTo => 'إلى';

  @override
  String get ipPriceFrom => 'من';

  @override
  String get ipStatusFilter => 'الحالة';

  @override
  String get ipResultsName => 'الاسم';

  @override
  String get ipResultsPrice => 'السعر';

  @override
  String get ipResultsQty => 'الكمية';

  @override
  String get ipResultsAddedDate => 'تاريخ الإضافة';

  @override
  String get ipSortLabel => 'الفرز';

  @override
  String get ipSortAsc => 'تصاعدي';

  @override
  String get ipSortDesc => 'تنازلي';

  @override
  String get ipNoProductsYet => 'لا توجد منتجات بعد';

  @override
  String get ipNoProductsMatch => 'لا توجد منتجات تطابق بحثك';

  @override
  String get ipAddFirstHint => 'ابدأ بإضافة أول صنف إلى المخزون.';

  @override
  String get ipTryChangeSearch => 'جرّب تغيير كلمات البحث أو إلغاء الفلتر.';

  @override
  String get ipAddFirstBtn => '+ إضافة أول منتج';

  @override
  String get ipUnpinFromHome => 'إلغاء التثبيت من الرئيسية';

  @override
  String get ipPinToHome => 'تثبيت في الرئيسية';

  @override
  String get ipPrintBarcode => 'طباعة باركود';

  @override
  String get ipDeactivate => 'تعطيل';

  @override
  String get ipActivate => 'تفعيل';

  @override
  String get ipDeleteProduct => 'حذف';

  @override
  String get ipNotTracked => 'غير متتبّع';

  @override
  String get ipDeleteProductTitle => 'حذف المنتج';

  @override
  String get ipDeleteProductContent =>
      'سيتم إخفاء المنتج من القوائم (حذف منطقي) بدون كسر الفواتير المرتبطة.';

  @override
  String get ipProductType => 'منتج';

  @override
  String get ipTechnicalService => 'خدمة فنية';

  @override
  String ipAvailableQty(Object qty) {
    return 'الكمية المتاحة: $qty';
  }

  @override
  String get ipOutOfStock => 'نفذ';

  @override
  String get ipProductOptions => 'خيارات المنتج';

  @override
  String ipShowingResults(Object extra, Object matched, Object shown) {
    return 'عرض $shown من أصل $matched منتج$extra';
  }

  @override
  String ipExtraCatalogInfo(Object total) {
    return ' · إجمالي النشط: $total';
  }

  @override
  String get addProductTitle => 'إضافة منتج جديد';

  @override
  String get apUnsavedChanges => 'تغييرات غير محفوظة';

  @override
  String get apUnsavedConfirm =>
      'لم تقم بحفظ المنتج. هل تريد الحفظ قبل المغادرة؟';

  @override
  String get apLeaveWithoutSaving => 'مغادرة بدون حفظ';

  @override
  String get apSaveProduct => 'حفظ المنتج';

  @override
  String get apColorSizeTitle => 'الألوان والمقاسات';

  @override
  String get apDone => 'تم';

  @override
  String get apLoadFormFailed => 'فشل تحميل بيانات نموذج المنتج';

  @override
  String apLoadFormFailedDetail(Object error) {
    return 'تعذر تحميل بيانات النموذج. سيعمل الحقل بالوضع اليدوي.\\n$error';
  }

  @override
  String apImagePickFailed(Object error) {
    return 'تعذر اختيار الصورة: $error';
  }

  @override
  String get apPercentDiscountMax =>
      'خصم النسبة المئوية لا يمكن أن يتعدّى 100٪.';

  @override
  String get apBarcodeRequired => 'حقل الباركود إلزامي حسب الإعدادات.';

  @override
  String get apSupplierRequired => 'حقل المورد إلزامي حسب الإعدادات.';

  @override
  String get apWarehouseRequired => 'اختيار المخزن إلزامي حسب الإعدادات.';

  @override
  String get apImageRequired => 'صورة المنتج إلزامية حسب الإعدادات.';

  @override
  String get apMfgDateFormatError =>
      'صيغة تاريخ الإنتاج غير صحيحة. استخدم يوم/شهر/سنة (مثال 15/01/2026).';

  @override
  String get apExpDateFormatError =>
      'صيغة تاريخ الانتهاء غير صحيحة. استخدم يوم/شهر/سنة (مثال 15/01/2026).';

  @override
  String get apExpDateAfterMfg =>
      'تاريخ الانتهاء يجب أن يكون بعد أو يساوي تاريخ الإنتاج.';

  @override
  String get apConversionFactorGt0 =>
      'عامل التحويل يجب أن يكون أكبر من 0 لكل وحدة إضافية.';

  @override
  String get apAddAtLeastOneColor => 'أضف لوناً واحداً على الأقل.';

  @override
  String get apColorNameRequired => 'اسم اللون مطلوب.';

  @override
  String get apAddAtLeastOneSize => 'أضف مقاساً واحداً على الأقل لكل لون.';

  @override
  String get apSizeRequired => 'حقل المقاس مطلوب.';

  @override
  String apDuplicateSize(Object color, Object size) {
    return 'المقاس \"$size\" مكرر داخل اللون \"$color\".';
  }

  @override
  String get apQtyMustBeNonNeg =>
      'الكمية يجب أن تكون رقماً صحيحاً أكبر أو يساوي 0.';

  @override
  String get apDuplicateBarcodeVariants => 'يوجد باركود مكرر داخل المتغيرات.';

  @override
  String get apBarcodeUsedByOther => 'هذا الباركود مستخدم لمنتج آخر.';

  @override
  String get apVariantBarcodeTaken => 'باركود المتغير مستخدم مسبقاً.';

  @override
  String get apDuplicateSizeInColor => 'المقاس مكرر داخل نفس اللون.';

  @override
  String get apQtyMustBeGe0 => 'الكمية يجب أن تكون أكبر أو تساوي 0.';

  @override
  String get apBarcodeAlreadyUsed => 'الباركود مستخدم مسبقاً.';

  @override
  String apSaveFailed(Object error) {
    return 'تعذر حفظ المنتج: $error';
  }

  @override
  String get apProductSaved => 'تم حفظ المنتج. يمكنك إدخال منتج جديد.';

  @override
  String get apChooseColorTitle => 'اختيار لون';

  @override
  String get apChooseColorSubtitle => 'اختر لوناً يمثّل هذا الخيار (اختياري).';

  @override
  String get apApplyUniformQty => 'تطبيق كمية موحدة';

  @override
  String get apEnterQtyHint => 'أدخل كمية (0 أو أكثر)';

  @override
  String get apSizeLabel => 'المقاس';

  @override
  String get apChooseSizeTooltip => 'اختيار مقاس';

  @override
  String get apQtyLabel => 'الكمية';

  @override
  String get apBarcodeOptional => 'الباركود (اختياري)';

  @override
  String get apDeleteAction => 'حذف';

  @override
  String get apColorNameLabel => 'اسم اللون';

  @override
  String get apColorPickerTooltip => 'اختيار لون (HEX)';

  @override
  String get apDeleteColorTooltip => 'حذف اللون';

  @override
  String get apSizesAndQuantities => 'المقاسات والكميات';

  @override
  String get apNoSizesYet => 'لا توجد مقاسات بعد. أضف مقاساً واحداً على الأقل.';

  @override
  String get apAddSizeBtn => 'إضافة مقاس';

  @override
  String apColorTotal(Object count) {
    return 'إجمالي اللون: $count';
  }

  @override
  String get apAddNewColor => 'إضافة لون جديد';

  @override
  String get apApplyQtyAllSizes => 'تطبيق كمية موحدة على كل المقاسات';

  @override
  String get apNoColorsYet => 'لا توجد ألوان بعد. أضف لوناً للبدء.';

  @override
  String apProductCodeHint(Object code) {
    return 'رمز المنتج: $code';
  }

  @override
  String get apCancelTooltip => 'إلغاء';

  @override
  String get apSavingLabel => 'جاري الحفظ…';

  @override
  String get apSaveAndAddNew => 'حفظ وإضافة جديد';

  @override
  String get apProductData => 'بيانات المنتج';

  @override
  String get apProductNameLabel => 'اسم المنتج';

  @override
  String get apNameRequired => 'الاسم مطلوب';

  @override
  String get apDescriptionLabel => 'الوصف';

  @override
  String get apProductImage => 'صورة المنتج';

  @override
  String get apCategoryLabel => 'التصنيف';

  @override
  String get apCategoryHint => 'اكتب أو اختر من القائمة';

  @override
  String get apBrandLabel => 'الماركة';

  @override
  String get apBrandHint => 'اكتب أو اختر من القائمة';

  @override
  String get apGradeLabel => 'الرتبة / درجة الجودة';

  @override
  String get apGradeHint => 'اختر الدرجة (اختياري)';

  @override
  String get apNoCategory => '— بدون تصنيف —';

  @override
  String get apGradeA => 'درجة A — ممتاز';

  @override
  String get apGradeB => 'درجة B — جيد جداً';

  @override
  String get apGradeC => 'درجة C — جيد';

  @override
  String get apGradeFirst => 'درجة أولى';

  @override
  String get apGradeSecond => 'درجة ثانية';

  @override
  String get apGradeThird => 'درجة ثالثة';

  @override
  String get apCommercial => 'صنف تجاري';

  @override
  String get apEconomical => 'صنف اقتصادي';

  @override
  String get apWarehouseLabel => 'المخزن';

  @override
  String get apNoWarehousesInDb => 'لا توجد مستودعات في قاعدة البيانات';

  @override
  String get apChooseWarehouse => 'اختر المخزن';

  @override
  String get apNoWarehouseLink => '— بدون ربط بمخزن —';

  @override
  String get apStockBaseType => 'نوع المخزون الأساسي';

  @override
  String get apStockTypePiece => 'عدد (قطعة كأساس)';

  @override
  String get apStockTypeWeight => 'وزن (كيلوغرام كأساس)';

  @override
  String get apStockTypeClothing => 'ملابس (ألوان ومقاسات)';

  @override
  String get apEditColorsSizes => 'تعديل الألوان والمقاسات';

  @override
  String get apSupplierInfo => 'معلومات المورد';

  @override
  String get apSupplierLabel => 'المورد';

  @override
  String get apSupplierHint => 'اكتب أو اختر من السجل';

  @override
  String get apSupplierCodeOptional => 'كود المورد (اختياري)';

  @override
  String get apExtraUnitsOptional => 'وحدات بيع إضافية (اختياري)';

  @override
  String get apExtraUnitsDesc =>
      'مثال: كرتون، طبقة، كيلوغرام… لكل وحدة باركود اختياري وعامل تحويل إلى أساس المخزون.';

  @override
  String get apAddUnit => 'إضافة وحدة';

  @override
  String get apNoExtraUnits => 'لا توجد وحدات إضافية بعد.';

  @override
  String apUnitNumber(Object number) {
    return 'وحدة #$number';
  }

  @override
  String get apUnitNameLabel => 'اسم الوحدة';

  @override
  String get apSymbolLabel => 'رمز';

  @override
  String get apConversionFactor => 'عامل التحويل إلى الأساس';

  @override
  String get apBarcodeOptionalLabel => 'باركود (اختياري)';

  @override
  String get apBarcodeEan13 => 'الباركود (EAN-13)';

  @override
  String get apBarcodeCode128 => 'الباركود (Code 128)';

  @override
  String get apBarcodeValue => 'قيمة الباركود';

  @override
  String get apCaptureFromCamera => 'التاطق من الكاميرا';

  @override
  String get apReadFromScanner => 'قراءة من جهاز قارئ الباركود';

  @override
  String get apScanProductBarcode => 'قراءة باركود المنتج';

  @override
  String get apGenerateNewBarcode => 'توليد باركود رقمي جديد';

  @override
  String get apWeightPriceNote =>
      'يُحسب لكل كيلوغرام واحد (أساس المخزون بالوزن).';

  @override
  String get apPricingSection => 'التسعير';

  @override
  String get apPurchasePriceLabel => 'سعر الشراء';

  @override
  String get apSuggestedFromCost => 'اقتراح من سعر الشراء';

  @override
  String get apSellPriceLabel => 'سعر البيع';

  @override
  String get apSellBelowBuyWarning =>
      'تحذير: سعر البيع أقل من سعر الشراء (يمكن الإكمال).';

  @override
  String get apTaxSection => 'الضريبة';

  @override
  String get apTaxExempt => 'معفى';

  @override
  String get apCustomTax => 'مخصص';

  @override
  String get apTaxExemptFull => 'معفى من الضريبة';

  @override
  String get apTax5 => 'ضريبة 5٪';

  @override
  String get apTax10 => 'ضريبة 10٪';

  @override
  String get apTax15 => 'ضريبة 15٪';

  @override
  String get apCustomRate => 'نسبة مخصصة';

  @override
  String get apTaxPercentLabel => 'نسبة الضريبة %';

  @override
  String apSellIncludingTax(Object amount) {
    return 'البيع شاملاً الضريبة (تقريبي): $amount';
  }

  @override
  String get apDiscountType => 'نوع الخصم';

  @override
  String get apPercentDiscount => 'نسبة مئوية (٪)';

  @override
  String get apFixedAmountDiscount => 'عمولة / مبلغ (Fdj)';

  @override
  String get apDiscountValue => 'قيمة الخصم';

  @override
  String apExampleNumber(Object number) {
    return 'مثال: $number';
  }

  @override
  String get apMinSellPrice => 'أقل سعر بيع';

  @override
  String get apOptionalLabel => 'اختياري';

  @override
  String get apProfitMargin => 'هامش الربح (سعر البيع مقابل الشراء)';

  @override
  String get apInventorySection => 'إدارة المخزون';

  @override
  String get apTrackInventory => 'تتبع المخزون';

  @override
  String get apTrackInventoryOff => 'عند الإيقاف لا تُسجَّل كميات لهذا المنتج';

  @override
  String get apWeightSales => 'بالكيلوغرام — يدعم الكسور (0.25، 0.5، 1.5…)';

  @override
  String get apWeightThreshold =>
      'بالكيلوغرام (مثال: 1 = تنبيه عند أقل من 1 كغ)';

  @override
  String get apStockQty => 'الكمية في المخزون';

  @override
  String get apAlertThreshold => 'تنبيه عند أقل من';

  @override
  String apVariantsStockInfo(Object total) {
    return 'المخزون يُدار عبر الألوان والمقاسات. الإجمالي الحالي: $total';
  }

  @override
  String get apNetWeightLabel => 'الوزن الصافي (غرام) — اختياري';

  @override
  String get apNetWeightHint => 'يُملأ تلقائياً من باركود GS1 أو الوزن المدمج';

  @override
  String get apMfgDateLabel => 'تاريخ الإنتاج — اختياري';

  @override
  String get apPickFromCalendar => 'اختر من التقويم';

  @override
  String get apDateFormat => 'يوم/شهر/سنة';

  @override
  String get apExpDateLabel => 'تاريخ الانتهاء — اختياري';

  @override
  String get apExpiryAlertDays => 'تنبيه قبل انتهاء الصلاحية (عدد الأيام)';

  @override
  String get apExpiryAlertHint =>
      'عند تسجيل تاريخ انتهاء: 1–365 (فارغ = الافتراضي من الإعدادات)';

  @override
  String get apExpiryAlertNote =>
      'يُستخدم مع «تاريخ الانتهاء» فقط؛ يظهر التنبيه في لوحة الإشعارات خلال هذه المدة قبل التاريخ.';

  @override
  String get apInternalNotes => 'ملاحظات داخلية';

  @override
  String get apInternalNotesHint => 'لا تظهر للعميل — للفريق فقط';

  @override
  String get apTags => 'وسوم';

  @override
  String get apTagsHint => 'مفصولة بفواصل أو مسافات — للبحث والتصفية';

  @override
  String get apChooseFromList => 'اختر من القائمة';

  @override
  String get apImageSelected => 'تم اختيار صورة (معاينة على الويب غير متاحة)';

  @override
  String get apTapToAddImage => 'اضغط لإضافة صورة من المعرض';

  @override
  String get apManualEditActive =>
      'التعديل اليدوي نشط — لن يُحدَّث سعر البيع تلقائياً عند تغيير التكلفة.';

  @override
  String get apRelinkToCost => ' إعادة الربط بتكلفة الشراء';

  @override
  String peVariantSummary(Object colors, Object sizes, Object total) {
    return 'ألوان: $colors • مقاسات: $sizes • إجمالي: $total';
  }

  @override
  String peDuplicateSizeInColor(Object colorName, Object size) {
    return 'المقاس \"$size\" مكرر داخل اللون \"$colorName\".';
  }

  @override
  String peGrandTotal(Object total) {
    return 'الإجمالي: $total';
  }

  @override
  String peUnitFactor(Object factor, Object unitName) {
    return '$unitName — عامل $factor';
  }

  @override
  String peColorSizeInventoryHint(Object total) {
    return 'المخزون يُدار عبر الألوان والمقاسات. الإجمالي الحالي: $total';
  }

  @override
  String get aiBaseForInstallments => 'المبلغ بعد المقدّم (أساس التقسيط)';

  @override
  String get aiProductsTab => 'المنتجات';

  @override
  String get aiNoItemsWithBarcode =>
      'لا توجد أصناف بعد.\nامسح الباركود أعلاه أو أضف من البحث في الشاشة الرئيسية.\nابحث عن منتج أو امسح الباركود للإضافة.';

  @override
  String get aiNoItemsWithoutBarcode =>
      'لا توجد أصناف بعد.\nأضف منتجات من البحث في الشاشة الرئيسية.\nابحث عن منتج أو امسح الباركود للإضافة.';

  @override
  String aiMaxDiscountHint(Object percent) {
    return 'الحد الأقصى المسموح حالياً: $percent٪ — يُحسب من أدنى سعر لكل صنف.';
  }

  @override
  String get aiNumbersResultHint =>
      'نتيجة الأرقام والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.';

  @override
  String get aiNumbersResultWithDiscountHint =>
      'نتيجة الأرقام بعد الخصم والضريبة، والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.';

  @override
  String get aiPriceDetails => 'تفاصيل السعر';

  @override
  String get aiAmountBreakdown => 'تفصيل المبالغ';

  @override
  String aiLoyaltyDiscountLabel(Object amount) {
    return 'خصم الولاء: -$amount Fdj';
  }

  @override
  String aiSelectPaymentMethod(Object methods) {
    return 'اختر $methods، ثم أكمل بيانات العميل والحقول المرتبطة بنوع الدفع.';
  }

  @override
  String get aiRequiredForDebtInstallment => 'مطلوب للدين/التقسيط';

  @override
  String get aiQRMapHint => 'يُطبَع QR يفتح الخرائط عند المسح';

  @override
  String get aiDeliveryHint =>
      'للتوصيل: أدخل اسم العميل وعنوان التوصيل (كلاهما مطلوب). يظهر اقتراح للاسم من قاعدة العملاء أثناء الكتابة.';

  @override
  String get aiDebtInstallmentHint =>
      'مهم: للدين والتقسيط اضغط على اسم العميل من القائمة المقترحة لربط البيع ببطاقته (لا يكفي كتابة الاسم يدوياً إن لم يُطابق سجلاً واحداً بالضبط).';

  @override
  String get aiHideDetails => 'إخفاء التفاصيل';

  @override
  String get aiPriceDetailsAndDiscount => 'تفاصيل السعر والخصم';

  @override
  String aiItemPriceSummary(Object min, Object price) {
    return 'سعر $price · أدنى $min';
  }

  @override
  String aiItemGrossTotal(Object total) {
    return 'الإجمالي: $total';
  }

  @override
  String get aiSellPricePerUnit => 'سعر البيع (للوحدة)';

  @override
  String get aiInvoiceLineBeforeDiscount => 'إجمالي السطر قبل خصم الفاتورة';

  @override
  String get aiInvoiceLineDiscountShare => 'حصة خصم الفاتورة لهذا السطر';

  @override
  String get aiInvoiceLineAfterDiscount =>
      'الإجمالي بعد خصم الفاتورة (لهذا السطر)';

  @override
  String get aiPercentDiscountDistribution =>
      'يُوزَّع خصم النسبة على الأسطر بحسب مساهمة كل سطر في إجمالي البنود.';

  @override
  String get aiCancel => 'إلغاء';

  @override
  String get aiEnterValidQuantity => 'أدخل عدداً صحيحاً 1 فما فوق';

  @override
  String aiInstallmentMinDownPaymentError(Object amount, Object percent) {
    return 'بيع التقسيط: المقدّم يجب ألا يقل عن $percent% من إجمالي الفاتورة (يُقارب $amount). عدّل حقل المقدّم أو راجع «الأقساط → إعدادات تقسيط».';
  }

  @override
  String aiDebtCapExceededInvoice(Object cap, Object remaining) {
    return 'حد الدين للفاتورة: المتبقي ($remaining) يتجاوز السقف $cap. عدّل الإجمالي أو المبلغ الواصل أو «الديون → إعدادات الدين».';
  }

  @override
  String aiDebtCapExceededCustomer(
    Object cap,
    Object existing,
    Object invoice,
  ) {
    return 'حد الدين للعميل: مجموع المتبقي الحالي ≈ $existing، والفاتورة تضيف $invoice (يتجاوز $cap). اربط العميل من القائمة، أو خفّض المبلغ، أو راجع إعدادات الديون.';
  }

  @override
  String aiInvoiceSaveFailed(Object error) {
    return 'تعذر حفظ الفاتورة — $error. راجع الأصناف والإجمالي قبل إعادة المحاولة.';
  }

  @override
  String aiServiceOrderCloseFailed(Object orderId) {
    return 'فشل إغلاق تذكرة الصيانة المرتبطة $orderId';
  }

  @override
  String get aiServiceOrderUpdateWarning =>
      'تنبيه: حُفظت الفاتورة ولكن تعذر تلقائياً تحديث حالة تذكرة الصيانة. يرجى مراجعتها يدوياً.';

  @override
  String aiReturnScreenTitle(Object id) {
    return 'فاتورة #$id';
  }

  @override
  String aiOpenReturnScreen(Object total) {
    return 'فتح شاشة المرتجع (منتجات فقط)؟\nالإجمالي الأصلي: $total';
  }

  @override
  String get aiLoadingColorsSizes => 'جارٍ تحميل الألوان والمقاسات…';

  @override
  String aiAvailableQuantity(Object qty) {
    return 'المتاح: $qty';
  }

  @override
  String get aiCurrentlySelected => 'المحدد حالياً';

  @override
  String get aiUnitPiece => 'قطعة';

  @override
  String get aiParkedSalesHint =>
      'يُحفظ محلياً على هذا الجهاز. يمكنك استئناف البيع لاحقاً من «الفواتير ← معلّقة مؤقتاً».';

  @override
  String get aiScanToAdd => 'امسح — سيتم الإضافة تلقائيًا';

  @override
  String get apTrackStock => 'يحسب الكمية والتنبيه منخفض';

  @override
  String get apNoTrackDesc => 'الكمية تُصبح 0 ولا تظهر تنبيهات مخزون';

  @override
  String get ipStatusDisabled => 'معطّل';

  @override
  String get addFirstProduct => '+ إضافة أول منتج';

  @override
  String apLoadTemplateFailed(Object error) {
    return 'تعذر تحميل بيانات النموذج. سيعمل الحقل بالوضع اليدوي.\n$error';
  }

  @override
  String apVariantSummaryLine(Object colors, Object sizes, Object total) {
    return 'ألوان: $colors • مقاسات: $sizes • إجمالي: $total';
  }

  @override
  String apMarginHint(Object min, Object percent) {
    return 'هامش $percent٠ على التكلفة؛ أقل سعر = $min';
  }

  @override
  String apMarginPctValue(Object value) {
    return '$value٠';
  }

  @override
  String get apTrackDisabledHint => 'عند الإيقاف لا تُسجَّل كميات لهذا المنتج';

  @override
  String apOptionalHintIQD(Object amount) {
    return 'اختياري — $amount';
  }

  @override
  String apMinSellPriceHintIQD(Object amount) {
    return 'أدنى سعر بيع — $amount';
  }

  @override
  String get csStatusIndebted => 'مديون';

  @override
  String get csStatusCreditor => 'دائن';

  @override
  String get csStatusDistinguished => 'مميز';

  @override
  String get csClearFilter => 'مسح التصفية';

  @override
  String get csIndebtedPlural => 'مديونون';

  @override
  String get csCreditorPlural => 'دائنون';

  @override
  String get csDistinguishedPlural => 'مميزون';

  @override
  String get csNoDues => 'لا ديون';

  @override
  String get csDebtPrefix => 'دين';

  @override
  String get csCreditPrefix => 'دائن';

  @override
  String get csDeleteCustomer => 'حذف عميل';

  @override
  String csDeleteCustomerConfirm(Object name) {
    return 'هل تريد حذف «$name»؟';
  }

  @override
  String csDeleteFailed(Object error) {
    return 'تعذر الحذف: $error';
  }

  @override
  String get csDeleteSelectedCustomers => 'حذف العملاء المحددين';

  @override
  String csDeleteSelectedConfirm(Object count) {
    return 'سيتم حذف $count عميل. هل أنت متأكد؟';
  }

  @override
  String get csAlertsTooltip => 'التنبيهات: متأخرات، فواتير آجل، مخزون وأقساط';

  @override
  String get csRefreshFromCloud => 'تحديث القائمة من السحابة والمزامنة — F5';

  @override
  String get csLastUpdatedNow => 'آخر تحديث: الآن تقريباً — F5';

  @override
  String csLastUpdatedMinutesAgo(Object minutes) {
    return 'آخر تحديث: منذ $minutes دقيقة — F5';
  }

  @override
  String csLastUpdatedHoursAgo(Object hours) {
    return 'آخر تحديث: منذ $hours ساعة تقريباً — F5';
  }

  @override
  String csTotalShowing(Object shown, Object total) {
    return 'إجمالي: $total · معروض: $shown';
  }

  @override
  String csTotalCustomersShowing(Object shown, Object total) {
    return 'إجمالي العملاء: $total | معروض: $shown';
  }

  @override
  String csSelectedCount(Object selected, Object total) {
    return 'محدد: $selected / $total';
  }

  @override
  String csSelectedCountPage(Object selected, Object total) {
    return 'محدد: $selected — المعروض في الصفحة: $total';
  }

  @override
  String get csDeleteSelectedTooltip => 'حذف المحدد';

  @override
  String get csDeleteSelectedLabel => 'حذف المحدد';

  @override
  String get csAddCustomer => 'إضافة عميل';

  @override
  String get csSearchFilter => 'بحث وتصفية';

  @override
  String get csSearchDescription =>
      'ابحث بالاسم أو الهاتف أو البريد. مبيعات الدين والتقسيط تُربط بالعميل من شاشة البيع.';

  @override
  String get csSearchInputHint => 'ابحث بالاسم أو رقم الهاتف أو البريد…';

  @override
  String get csSearchApplyHint =>
      'الإدخال يُطبَّق تلقائياً خلال جزء ثانٍ — Enter أو زر التطبيق لتحسين الوضوح. اختصار: Ctrl+F';

  @override
  String get csSortLabel => 'ترتيب العرض';

  @override
  String get csSortNameAZ => 'الاسم (أ-ي)';

  @override
  String get csSortNameZA => 'الاسم (ي-أ)';

  @override
  String get csSortMostPurchased => 'الأكثر شراءً';

  @override
  String get csSortLargestDebts => 'الديون الأكبر';

  @override
  String get csSortNewest => 'الأحدث تسجيلاً';

  @override
  String get csSearch => 'البحث';

  @override
  String get csClearTooltip => 'مسح';

  @override
  String get csApplySearchLabel => 'تطبيق البحث';

  @override
  String get csNoCustomersYet => 'لا يوجد عملاء بعد';

  @override
  String get csNoMatchingCustomers => 'لا يوجد عملاء يطابقون البحث أو التصفية';

  @override
  String get csColName => 'العميل';

  @override
  String get csColPhone => 'الهاتف';

  @override
  String get csColTotalPurchases => 'إجمالي المشتريات';

  @override
  String get csColDueBalance => 'الرصيد المستحق';

  @override
  String get csColStatus => 'الحالة';

  @override
  String csDebtsLabel(Object count) {
    return 'ديون ×$count';
  }

  @override
  String get csOpenDebtsTooltip => 'فتح ديون الآجل المرتبطة';

  @override
  String csInstallmentsLabel(Object count) {
    return 'تقسيط ×$count';
  }

  @override
  String get csOpenInstallmentsTooltip => 'فتح خطط التقسيط';

  @override
  String get csCallLabel => 'اتصال';

  @override
  String csCallTooltip(Object phone) {
    return 'اتصال بـ $phone';
  }

  @override
  String csCustomerInfo(Object date, Object id, Object loyalty) {
    return '$id · ولاء $loyalty · $date';
  }

  @override
  String get csMoreTooltip => 'المزيد';

  @override
  String get csEditData => 'تعديل البيانات';

  @override
  String get csCall => 'اتصال';

  @override
  String get csSortTooltip => 'البحث';

  @override
  String get cfLoadFailedAfterAdd => 'تعذر تحميل بيانات العميل بعد الإضافة';

  @override
  String get cfLoadFailed => 'تعذر تحميل بيانات العميل';

  @override
  String get cfTitleEdit => 'تعديل بيانات العميل';

  @override
  String get cfFillBasic =>
      'املأ البيانات الأساسية. يمكن ترك الحقول الاختيارية فارغة.';

  @override
  String get cfNameHint => 'الاسم الكامل كما يظهر في الفواتير';

  @override
  String get cfPhoneHint => 'رقم الهاتف (اختياري)';

  @override
  String get cfPhone2Hint => 'رقم هاتف إضافي';

  @override
  String get cfPhonePrimaryExample =>
      'مثال: 07701234567 — لا يُكرَّر لعميل آخر (يُميّز الأسماء المتشابهة)';

  @override
  String get cfPhone2Example => 'مثال: 07801234567';

  @override
  String get cfDeleteNumber => 'حذف الرقم';

  @override
  String get cfAddAnotherNumber => 'إضافة رقم آخر';

  @override
  String get cfAddressHint => 'العنوان (اختياري)';

  @override
  String get cfAddressExample => 'المدينة، المنطقة';

  @override
  String get cfEmailHint => 'البريد الإلكتروني (اختياري)';

  @override
  String get cfNotesHint => 'ملاحظات (اختياري)';

  @override
  String get cfNotesDescription => 'تفضيلات العميل، ملاحظات داخلية…';

  @override
  String cfSaveFailed(Object error) {
    return 'تعذر الحفظ: $error';
  }

  @override
  String cfRegisteredSince(Object date) {
    return 'مسجّل منذ $date';
  }

  @override
  String get ctDeleteContact => 'حذف جهة الاتصال';

  @override
  String get ctIndebted => 'مديون';

  @override
  String get ctCreditor => 'دائن';

  @override
  String get ctTitle => 'جهات اتصال العملاء';

  @override
  String get ctRefresh => 'تحديث';

  @override
  String get ctNewCustomer => 'عميل جديد';

  @override
  String get ctSort => 'ترتيب';

  @override
  String get ctSortNameAZ => 'الاسم (أ-ي)';

  @override
  String get ctSortBalanceSize => 'حجم الرصيد';

  @override
  String get ctSearchHint => 'بحث بالاسم أو الهاتف أو البريد';

  @override
  String get ctSearchExample => 'مثال: محمد، 077…، name@…';

  @override
  String get ctIdSearchLabel => 'رقم المعرف / الكود';

  @override
  String get ctIdSearchExample => 'مثال: 12 أو 000012';

  @override
  String get ctApplySearch => 'تطبيق البحث';

  @override
  String get ctClearFilter => 'مسح التصفية';

  @override
  String get ctDebtOverdueLabel => 'عليهم دين أو آجل';

  @override
  String get ctDebtOverdueDescription =>
      'فواتير بيع آجل غير مرتجعة، أو رصيد مدين على الحساب — للاتصال بخصوص الدين.';

  @override
  String get ctInstallmentsLabel => 'عليهم أقساط';

  @override
  String get ctInstallmentsDescription =>
      'لديهم خطة تقسيط مسجّلة — للاتصال بخصوص الأقساط.';

  @override
  String get ctNoContactsYet => 'لا توجد جهات اتصال بعد';

  @override
  String get ctNoResults => 'لا توجد نتائج مطابقة. غيّر البحث أو أضف عميلاً.';

  @override
  String get ctColBalance => 'الرصيد';

  @override
  String get ctColCustomer => 'العميل';

  @override
  String get ctColStatus => 'الحالة';

  @override
  String get ctColBalanceHeader => 'الرصيد';

  @override
  String get ctColEmail => 'البريد';

  @override
  String get ctColPhone => 'الهاتف';

  @override
  String get ctColCustomerHeader => 'العميل';

  @override
  String get ctEditData => 'تعديل البيانات';

  @override
  String ctDeleteConfirm(Object name) {
    return 'حذف «$name» من النظام؟';
  }

  @override
  String ctDeleteFailed(Object error) {
    return 'تعذر الحذف: $error';
  }

  @override
  String ctShowing(Object count) {
    return 'المعروض: $count';
  }

  @override
  String ctCreditSaleLabel(Object count) {
    return 'بيع آجل ×$count';
  }

  @override
  String ctInstallmentLabel(Object count) {
    return 'تقسيط ×$count';
  }

  @override
  String get lsSaveSuccess => 'تم حفظ إعدادات الولاء';

  @override
  String lsSaveFailed(Object error) {
    return 'تعذر الحفظ: $error';
  }

  @override
  String get lsTitle => 'إعدادات ولاء العملاء';

  @override
  String get lsSave => 'حفظ';

  @override
  String get lsWhyNotSpoilTitle => 'لماذا لا «يُفسد» الأرباح؟';

  @override
  String get lsWhyNotSpoilBody =>
      'النقاط منحة تسويقية: تُسجَّل كخصم ولاء منفصل عن هامش البضاعة. منح النقاط لا يغيّر تكلفة الشراء؛ الاستبدال يقلّل ما يدفعه العميل نقداً وفق قواعدك.';

  @override
  String get lsEnablePoints => 'تفعيل برنامج النقاط';

  @override
  String get lsEnablePointsSubtitle =>
      'عند الإيقاف تُحفظ الفواتير دون جمع أو استبدال';

  @override
  String get lsPointsPerThousand =>
      'نقاط لكل 1000 Fdj من صافي الفاتورة المؤهّل';

  @override
  String get lsRedemptionValue => 'قيمة الخصم بالدينار لكل نقطة عند الاستبدال';

  @override
  String get lsMinRedemption =>
      'أقل عدد نقاط لعملية استبدال واحدة (0 = بدون حد)';

  @override
  String get lsMaxRedemptionPercent => 'أقصى % من صافي الفاتورة يُغطّى بالنقاط';

  @override
  String get lsAwardWhenTitle => 'متى تُمنح النقاط؟';

  @override
  String get lsAwardCashSale => 'البيع النقدي';

  @override
  String get lsAwardDelivery => 'التوصيل';

  @override
  String get lsAwardInstallment => 'التقسيط';

  @override
  String get lsAwardCreditWithAdvance => 'البيع الآجل عند وجود مقدّم دفع';

  @override
  String llLoadFailed(Object error) {
    return 'تعذر التحميل: $error';
  }

  @override
  String get llGranted => 'منح';

  @override
  String get llRedeemed => 'استبدال';

  @override
  String get llTitle => 'سجل نقاط الولاء';

  @override
  String get llRefresh => 'تحديث';

  @override
  String get llNoData =>
      'لا توجد حركات بعد — فعّل الولاء من الإعدادات وسجّل مبيعات مرتبطة بعملاء.';

  @override
  String llCustomerId(Object id) {
    return 'عميل #$id';
  }

  @override
  String llBalance(Object balance) {
    return 'رصيد $balance';
  }

  @override
  String get svAddReceipt => 'إذن إضافة مخزن';

  @override
  String get svDispenseReceipt => 'إذن صرف مخزن';

  @override
  String get svTransferBetween => 'نقل بين مخازن';

  @override
  String get svStocktaking => 'جرد مخزن';

  @override
  String get svSource => 'مورد';

  @override
  String get svBranchShop => 'فرع/محل آخر';

  @override
  String get svMobileSupplier => 'مورد متنقل';

  @override
  String get svManual => 'يدوي';

  @override
  String get svMainSupplier => 'مورد رئيسي';

  @override
  String get svSupplier1 => 'مورد 1';

  @override
  String get svSupplier2 => 'مورد 2';

  @override
  String get svNoActiveWarehouse => 'لا يوجد مخزن نشط — أضف مخزناً أولاً';

  @override
  String get svStocktakingDisabled => 'حفظ «جرد مخزن» غير مفعّل بعد';

  @override
  String get svUnnamedItem => 'بند بلا اسم';

  @override
  String get svEnterMatchingItems =>
      'أدخل بنوداً بكميات وأسماء مطابقة لمنتجات مسجّلة';

  @override
  String get svWarning => 'تنبيه';

  @override
  String get svCancel => 'إلغاء';

  @override
  String get svContinue => 'متابعة';

  @override
  String get svPleaseFillSourceName => 'يرجى تعبئة اسم مصدر الإذن الوارد';

  @override
  String get svVoucherDocument => 'سند مخزوني';

  @override
  String get svSaving => 'جاري الحفظ…';

  @override
  String get svConfirm => 'تأكيد';

  @override
  String get svWarehouse => 'المخزن';

  @override
  String get svNoActiveWarehouseAdd =>
      'لا يوجد مخزن نشط. أضف مخزناً من «المخازن».';

  @override
  String get svReceivingWarehouse => 'المخزن المستقبل';

  @override
  String get svFromWarehouse => 'من مخزن';

  @override
  String get svWarehouses => 'المخازن';

  @override
  String get svToWarehouse => 'إلى مخزن';

  @override
  String get svChoose => 'اختر';

  @override
  String get svVoucherData => 'بيانات الإذن المخزني';

  @override
  String get svVoucherType => 'نوع الأذن';

  @override
  String get svDate => 'التاريخ';

  @override
  String get svSourceData => 'بيانات المصدر';

  @override
  String get svSourceType => 'نوع المصدر';

  @override
  String get svSourceRefOptional => 'مرجع المصدر (ID اختياري)';

  @override
  String get svSourceRefExample => 'مثال: 15';

  @override
  String get svSourceName => 'اسم المصدر';

  @override
  String get svSupplierName => 'اسم المورد';

  @override
  String get svSourceEntityName => 'اسم الجهة المصدر';

  @override
  String get svReferenceSettings => 'إعدادات المرجع';

  @override
  String get svReference => 'المرجع';

  @override
  String get svReferenceHint => 'رقم المرجع...';

  @override
  String get svOtherInfo => 'معلومات أخرى';

  @override
  String get svSupplier => 'المورد';

  @override
  String get svNotes => 'الملاحظات';

  @override
  String get svAutoSupplierReceipt => 'إنشاء وصل مورد تلقائي وربطه بالسند';

  @override
  String get svAutoSupplierReceiptDesc =>
      'يسجّل وصلاً في الذمم بنفس مبلغ السند ثم يربطه به.';

  @override
  String get svAutoReturnRecord => 'تسجيل مرتجع المورد تلقائيًا في الذمم';

  @override
  String get svAutoReturnRecordDesc =>
      'يسجّل دفعة مورد بدون صندوق لتخفيض الذمة عند صرف بضاعة كمردود.';

  @override
  String get svTotal => 'الإجمالي';

  @override
  String get svQuantity => 'الكمية';

  @override
  String get svUnitPrice => 'سعر الوحدة';

  @override
  String get svItems => 'البنود';

  @override
  String get svAddItem => 'إضافة بند';

  @override
  String get svDeleteItem => 'حذف البند';

  @override
  String get svItemQuantity => 'الكمية';

  @override
  String get svItemUnitPrice => 'سعر الوحدة';

  @override
  String get svChooseProduct => 'اختر منتجاً';

  @override
  String get svManualSelection => 'اختيار يدوي';

  @override
  String get svManualItemName => 'اسم البند اليدوي';

  @override
  String svFromReceipt(Object number) {
    return 'من إذن وارد #$number';
  }

  @override
  String svSupplierReturnNote(Object number) {
    return 'مرتجع مورد عبر سند صرف #$number';
  }

  @override
  String svProductsNotFound(Object names) {
    return 'لم تُعثر على منتجات بالأسماء: $names';
  }

  @override
  String svItemsSkipped(Object count, Object names) {
    return 'بنود تُجاهل لعدم مطابقة الاسم: $names\nالمتابعة تحفظ $count بنداً فقط.';
  }

  @override
  String svVoucherSaved(Object id, Object number) {
    return 'تم حفظ السند #$id ($number)';
  }

  @override
  String get usRoleAdmin => 'مدير';

  @override
  String get usRoleEmployee => 'موظف';

  @override
  String get usNoPermission =>
      'لا صلاحية — المدير فقط يضيف أو يعدّل المستخدمين';

  @override
  String get usCannotDisableSelf => 'لا يمكن تعطيل حسابك وأنت مسجّل الدخول';

  @override
  String get usDisableUserTitle => 'تعطيل المستخدم';

  @override
  String get usDisableUserDesc => 'سيتم إيقاف الحساب ولن يستطيع تسجيل الدخول.';

  @override
  String get usCancel => 'إلغاء';

  @override
  String get usDisable => 'تعطيل';

  @override
  String get usDisabled => 'تم التعطيل';

  @override
  String get usTitle => 'المستخدمون';

  @override
  String get usRefresh => 'تحديث';

  @override
  String get usNewUser => 'مستخدم جديد';

  @override
  String get usNoActiveUsers => 'لا يوجد مستخدمون نشطون';

  @override
  String get usNoActiveUsersHintAdmin =>
      'اضغط على زر الإضافة لإنشاء مستخدم جديد';

  @override
  String get usNoActiveUsersHintManager => 'سجّل دخول المدير لإضافة مستخدمين';

  @override
  String get usIdCard => 'بطاقة الهوية';

  @override
  String get usEdit => 'تعديل';

  @override
  String get usDisableButton => 'تعطيل';

  @override
  String get ufPhoneFormatHint => 'استخدم صيغة هاتف عراقي (مثال: 07XXXXXXXXX)';

  @override
  String get ufEmailRequired => 'البريد مطلوب (يُستخدم كاسم دخول)';

  @override
  String get ufEmailAlreadyRegistered => 'هذا البريد مسجّل مسبقاً';

  @override
  String get ufPasswordMinLength => 'كلمة المرور 6 أحرف على الأقل';

  @override
  String get ufPasswordMismatch => 'تأكيد كلمة المرور غير مطابق';

  @override
  String get ufEmailTaken => 'هذا البريد مسجّل لمستخدم آخر';

  @override
  String get ufInvalidPasswordOrMismatch =>
      'كلمة المرور غير صالحة أو التأكيد غير مطابق';

  @override
  String get ufTitleEdit => 'تعديل مستخدم';

  @override
  String get ufTitleNew => 'مستخدم جديد';

  @override
  String get ufAccountData => 'بيانات الحساب';

  @override
  String get ufAccountDataDesc =>
      'البريد يُستخدم كاسم دخول. الهاتف بصيغة عراقية شائعة (07…).';

  @override
  String get ufFullName => 'الاسم الكامل';

  @override
  String get ufRequired => 'مطلوب';

  @override
  String get ufRole => 'الدور الوظيفي';

  @override
  String get ufRoleHint => 'كاشير، مخزن، …';

  @override
  String get ufEmailLogin => 'البريد الإلكتروني (اسم الدخول)';

  @override
  String get ufPhoneIraq => 'رقم الهاتف (العراق)';

  @override
  String get ufPhoneIraqHint => 'أرقام عراقية شائعة تبدأ بـ 07';

  @override
  String get ufPhone2Optional => 'هاتف ثانٍ (اختياري)';

  @override
  String get ufPhone2Hint => 'إن وُجد';

  @override
  String get ufPermissionPassword => 'الصلاحية وكلمة المرور';

  @override
  String get ufAccountType => 'نوع الحساب';

  @override
  String get ufAccountEmployee => 'موظف (صلاحيات مفصّلة)';

  @override
  String get ufAccountAdmin => 'مدير (كل الصلاحيات)';

  @override
  String get ufAdminNote =>
      'حساب المدير يتجاوز القيود التفصيلية ويُطبَّق عليه السماح الكامل في النظام.';

  @override
  String get ufNewPasswordOptional => 'كلمة مرور جديدة (اختياري)';

  @override
  String get ufPassword => 'كلمة المرور';

  @override
  String get ufConfirmNewPassword => 'تأكيد كلمة المرور الجديدة';

  @override
  String get ufConfirmPassword => 'تأكيد كلمة المرور';

  @override
  String get ufDetailedPermissions => 'الصلاحيات التفصيلية';

  @override
  String get ufDetailedPermissionsDesc =>
      'فعّل ما يحق لهذا الموظف الوصول إليه. يُحفظ في قاعدة البيانات لكل مستخدم.';

  @override
  String get ufSaving => 'جاري الحفظ…';

  @override
  String get ufSave => 'حفظ';

  @override
  String get ufCancel => 'إلغاء';

  @override
  String ufSaveFailed(Object error) {
    return 'تعذر الحفظ: $error';
  }

  @override
  String get eiRegenerateShiftCode => 'تجديد رمز الوردية';

  @override
  String get eiRegenerateShiftCodeDesc =>
      'سيتم إنشاء رمز جديد. يجب طباعة/تحديث بطاقة الهوية وإعادة توزيعها.';

  @override
  String get eiCancel => 'إلغاء';

  @override
  String get eiConfirm => 'تأكيد';

  @override
  String get eiShiftCodeRenewed => 'تم تجديد رمز الوردية.';

  @override
  String get eiTitle => 'هويات الموظفين';

  @override
  String get eiNoActiveUsers => 'لا يوجد مستخدمون نشطون في قاعدة البيانات.';

  @override
  String get swTimeZero => '0 د';

  @override
  String swTimeHoursMinutes(Object hours, Object minutes) {
    return '$hours س $minutes د';
  }

  @override
  String swTimeHoursOnly(Object hours) {
    return '$hours س';
  }

  @override
  String swTimeMinutesOnly(Object minutes) {
    return '$minutes د';
  }

  @override
  String get swHintCompact =>
      'عرض يومي مرتب؛ افتح اليوم لرؤية تفاصيل الورديات.';

  @override
  String get swHintFull =>
      'سبع خانات (السبت → الجمعة): المحور 00:00–24:00 بأرقام لاتينية؛ كل شريط فترة وردية (الاسم والوقت داخل الشريط).';

  @override
  String get swNoShifts => 'لا توجد ورديات';

  @override
  String get swShiftSingular => 'وردية';

  @override
  String get swShiftPlural => 'ورديات';

  @override
  String get swTitle => 'ورديات الموظفين — أسبوع';

  @override
  String get swWeekTotalTime => 'إجمالي الوقت خلال الأسبوع';

  @override
  String get swNextWeek => 'الأسبوع التالي';

  @override
  String get swThisWeek => 'هذا الأسبوع';

  @override
  String get swPrevWeek => 'الأسبوع السابق';

  @override
  String get rpSaleReceipt => 'إيصال بيع';

  @override
  String rpOperationNumber(Object id) {
    return 'رقم العملية: $id';
  }

  @override
  String rpDateTime(Object date) {
    return 'التاريخ: $date';
  }

  @override
  String get rpCustomer => 'العميل';

  @override
  String rpCustomerWithValue(Object name) {
    return 'العميل: $name';
  }

  @override
  String get rpDeliveryReceipt =>
      'إيصال توصيل — تفاصيل الموقع عبر الرمز أسفل الإيصال';

  @override
  String rpPaymentMethod(Object method) {
    return 'طريقة الدفع: $method';
  }

  @override
  String rpEmployee(Object name) {
    return 'الموظف: $name';
  }

  @override
  String get rpItems => 'الأصناف:';

  @override
  String rpBeforeDiscount(Object amount) {
    return 'قبل الخصم: $amount franc djiboutien';
  }

  @override
  String rpDiscount(Object amount) {
    return 'الخصم: $amount Fdj';
  }

  @override
  String rpTax(Object amount) {
    return 'الضريبة: $amount Fdj';
  }

  @override
  String rpLoyaltyDiscount(Object amount) {
    return 'خصم ولاء: $amount Fdj';
  }

  @override
  String rpTotal(Object amount) {
    return 'الإجمالي: $amount Fdj';
  }

  @override
  String rpBarcode(Object code) {
    return 'رمز الشريط: $code';
  }

  @override
  String rpItemLine(Object name, Object qty, Object total) {
    return '• $name  |  العدد: $qty  |  $total';
  }

  @override
  String rpMoreItems(Object count) {
    return '… و$count صنفاً آخر (التفاصيل في النظام)';
  }

  @override
  String get rpDeliveryShort => 'إيصال توصيل — رمز الموقع أسفل الإيصال';

  @override
  String rpPaymentShort(Object method) {
    return 'الدفع: $method';
  }

  @override
  String get rpCash => 'نقدي';

  @override
  String get rpCredit => 'دين';

  @override
  String get rpInstallment => 'تقسيط';

  @override
  String get rpDeliveryType => 'توصيل';

  @override
  String get rpCreditCollection => 'تحصيل دين';

  @override
  String get rpInstallmentPayment => 'تسديد قسط';

  @override
  String get rpSupplierPayment => 'دفع مورد';

  @override
  String get rpCreditSummary => 'ملخص البيع بالدين';

  @override
  String rpInvoiceTotal(Object amount) {
    return 'الإجمالي على الفاتورة: $amount Fdj';
  }

  @override
  String rpAmountPaid(Object amount) {
    return 'الواصل (المدفوع الآن): $amount Fdj';
  }

  @override
  String rpRemaining(Object amount) {
    return 'المتبقي على الحساب: $amount Fdj';
  }

  @override
  String get rpInstallmentSummary => 'ملخص التقسيط (سعر البيع والفائدة)';

  @override
  String rpSalePriceTotal(Object amount) {
    return 'إجمالي الفاتورة (سعر البيع): $amount Fdj';
  }

  @override
  String rpAdvancePayment(Object amount) {
    return 'المقدّم / الدفعة الأولى: $amount Fdj';
  }

  @override
  String rpFinancedAmount(Object amount) {
    return 'المبلغ بعد المقدّم (أساس الفائدة): $amount Fdj';
  }

  @override
  String rpInterestRate(Object rate) {
    return 'نسبة الفائدة: $rate٪';
  }

  @override
  String rpInterestValue(Object amount) {
    return 'قيمة الفائدة: $amount Fdj';
  }

  @override
  String rpTotalWithInterest(Object amount) {
    return 'الإجمالي مع الفائدة: $amount Fdj';
  }

  @override
  String rpPlannedMonths(Object count) {
    return 'عدد الأشهر المخططة: $count';
  }

  @override
  String rpSuggestedMonthly(Object amount) {
    return 'القسط الشهري المقترح: $amount Fdj';
  }

  @override
  String get rpInvoiceDetails => 'تفاصيل الفاتورة';

  @override
  String get rpScanToOpen => 'امسح لفتح التفاصيل في التطبيق';

  @override
  String get rpReceiptTextSummary => 'ملخص الإيصال كنص';

  @override
  String get rpDebtorProfile => 'ملف العميل المدين';

  @override
  String get rpDebtDetails => 'تفاصيل الدين';

  @override
  String get rpReceiptSummary => 'ملخص الإيصال';

  @override
  String get rpInstallmentPlan => 'خطة التقسيط';

  @override
  String get rpInstallmentSchedule => 'جدول الأقساط ومواعيد الاستحقاق';

  @override
  String get rpDeliveryMap => 'خريطة التوصيل';

  @override
  String get rpOpenInGoogleMaps => 'فتح في خرائط Google';

  @override
  String get rpDetails => 'تفاصيل';

  @override
  String get rpVoucherDetails => 'تفاصيل السند';

  @override
  String get rpScanToOpenVoucher => 'امسح لفتح تفاصيل السند في التطبيق';

  @override
  String get rpReturnItems => 'استرجاع المواد';

  @override
  String get rpBuyerAddressQr => 'QR عنوان المشتري';

  @override
  String get rpScanToOpenMap => 'امسح لفتح الموقع على الخرائط';

  @override
  String get rpOpNumber => 'رقم العملية';

  @override
  String rpDateTimeFull(Object date) {
    return 'التاريخ والوقت: $date';
  }

  @override
  String get rpDeliveryNote =>
      'إيصال توصيل — تفاصيل الموقع عبر الرمز في أسفل الصفحة.';

  @override
  String rpAddress(Object address) {
    return 'العنوان: $address';
  }

  @override
  String get rpItem => 'الصنف';

  @override
  String get rpQuantity => 'الكمية';

  @override
  String get rpPrice => 'السعر';

  @override
  String get rpSubtotal => 'المجموع';

  @override
  String rpSubtotalBeforeDiscount(Object amount) {
    return 'المجموع قبل الخصم: $amount Fdj';
  }

  @override
  String rpPercentDiscount(Object amount, Object percent) {
    return 'خصم $percent٪: $amount Fdj';
  }

  @override
  String rpFinalTotal(Object amount) {
    return 'الإجمالي النهائي: $amount Fdj';
  }

  @override
  String get rpInstallmentTable => 'جدول الأقساط (حسب تاريخ الاستحقاق)';

  @override
  String get rpDueDate => 'الاستحقاق';

  @override
  String get rpAmount => 'المبلغ';

  @override
  String get rpStatus => 'الحالة';

  @override
  String get rpPaidDate => 'تاريخ التسديد';

  @override
  String get rpPaid => 'مسدد';

  @override
  String get rpDue => 'مستحق';

  @override
  String get rpInstallmentReceipt => 'إيصال تسديد قسط';

  @override
  String rpInstallmentPlanRef(Object id) {
    return 'خطة التقسيط: #$id';
  }

  @override
  String rpOriginalInvoice(Object id) {
    return 'الفاتورة الأصلية: #$id';
  }

  @override
  String rpReceiptVoucher(Object id) {
    return 'سند القبض (قائمة الفواتير): #$id';
  }

  @override
  String get rpPaidInstallments => 'الأقساط المسددة (بالترتيب الزمني للتسديد)';

  @override
  String get rpNoPaidInstallments => '— لا توجد أقساط مسددة بعد —';

  @override
  String get rpRemainingInstallments => 'الأقساط المتبقية ومواعيد الاستحقاق';

  @override
  String get rpAllInstallmentsPaid => 'اكتمل سداد جميع الأقساط لهذه الخطة.';

  @override
  String get rpScanToOpenInvoice =>
      'امسح لفتح تفاصيل الفاتورة والأصناف في التطبيق';

  @override
  String get rpPlanRef => 'مرجع الخطة';

  @override
  String get rpDebtPaymentReceipt => 'إيصال تسديد دين آجل';

  @override
  String get rpDebtDetailsAndPayments => 'تفاصيل الدين والدفعات';

  @override
  String get rpScanToOpenDebtVoucher =>
      'امسح لفتح تفاصيل سند التحصيل في التطبيق';

  @override
  String get rpPaymentRef => 'مرجع العملية';

  @override
  String rpRegisteredInCustomers(Object id) {
    return 'مسجّل في العملاء: #$id';
  }

  @override
  String rpRecordedBy(Object name) {
    return 'سجّل العملية: $name';
  }

  @override
  String rpAmountPaidInThis(Object amount) {
    return 'المبلغ المُسدَّد في هذه العملية: $amount Fdj';
  }

  @override
  String rpDebtBefore(Object amount) {
    return 'إجمالي الدين قبل التسديد: $amount Fdj';
  }

  @override
  String rpDebtAfter(Object amount) {
    return 'المتبقي بعد التسديد: $amount Fdj';
  }

  @override
  String get rpAutoDistribute =>
      'تُوزَّع الدفعات تلقائياً على فواتير الآجل من الأقدم إلى الأحدث.';

  @override
  String rpPaymentRecord(Object id) {
    return 'سجل الدفعة: #$id';
  }

  @override
  String get rpAllDebtPaid => 'اكتمل سداد دين الآجل لهذا العميل.';

  @override
  String get rpSupplierPaymentReceipt => 'إيصال دفع مورد';

  @override
  String rpPaidAmount(Object amount) {
    return 'المبلغ المدفوع: $amount Fdj';
  }

  @override
  String rpPayableBefore(Object amount) {
    return 'الذمة قبل الدفعة: $amount Fdj';
  }

  @override
  String rpPayableAfter(Object amount) {
    return 'الذمة بعد الدفعة: $amount Fdj';
  }

  @override
  String get rpDeductedFromCash => 'تم خصم المبلغ من الصندوق.';

  @override
  String get rpNotDeductedFromCash =>
      'لم يُخصم من الصندوق (دفع خارج النظام أو بنكي).';

  @override
  String rpNote(Object text) {
    return 'ملاحظة: $text';
  }

  @override
  String rpVoucherRecord(Object id) {
    return 'سجل الدفعة: #$id';
  }

  @override
  String rpInvoiceVoucher(Object id) {
    return 'سند القائمة (فواتير): #$id';
  }

  @override
  String get rpClose => 'إغلاق';

  @override
  String get rpSaleReceiptTitle => 'إيصال البيع';

  @override
  String get rpFullInvoiceDetails => 'تفاصيل الفاتورة كاملة';

  @override
  String get rpNoPrinter =>
      'لم يتم العثور على طابعة متصلة بالجهاز. يرجى مراجعة توصيل الطابعة.';

  @override
  String get rpNoPrinterFound =>
      'لم يتم العثور على أي طابعة متصلة بالجهاز. يرجى توصيل طابعة للمتابعة.';

  @override
  String get rpPrintError =>
      'تعذر تشغيل الطباعة المباشرة. يرجى مراجعة إعدادات جهاز الطباعة لديك.';

  @override
  String rpInstallmentDetail(Object amount, Object date, Object number) {
    return 'القسط رقم $number ($amount Fdj) مستحق في $date';
  }

  @override
  String rpInstallmentLine(
    Object amount,
    Object date,
    Object number,
    Object paidStatus,
  ) {
    return 'القسط $number — $amount Fdj — استحق $date — سُدد $paidStatus';
  }

  @override
  String rpDebtPaymentReceiptTitle(Object name) {
    return 'تسديد دين آجل — $name';
  }

  @override
  String get rpSupplierDefaultName => 'مورد';

  @override
  String get rpCustomerDefaultName => 'عميل';

  @override
  String get rpRemainingInstallmentsReminder =>
      'الأقساط المتبقية (تذكير بالمواعيد)';

  @override
  String rpReceiptItemsAmount(Object amount) {
    return '$amount Fdj';
  }

  @override
  String rpInvoicePlanRef(Object id) {
    return 'خطة تقسيط #$id';
  }

  @override
  String rpMonthCount(Object count) {
    return 'عدد الأشهر: $count';
  }

  @override
  String get rpTodayIndicator => '  (عملية اليوم)';

  @override
  String get anHideAlert => 'إخفاء التنبيه';

  @override
  String get anHideConfirm => 'هذا تنبيه مهم. هل تريد تأكيد إخفائه من القائمة؟';

  @override
  String get anCancel => 'إلغاء';

  @override
  String get anConfirm => 'تأكيد';

  @override
  String get anNotifications => 'التنبيهات';

  @override
  String get anRefresh => 'تحديث';

  @override
  String get anMarkAllRead => 'تعليم الكل مقروءاً';

  @override
  String anRefreshError(Object error) {
    return 'تعذر التحديث: $error';
  }

  @override
  String get anEmpty => 'لا توجد تنبيهات حالياً';

  @override
  String get anHiddenNotifications => 'الإشعارات المخفية';

  @override
  String get anShow => 'إظهار';

  @override
  String get anHide => 'إخفاء';

  @override
  String get nnInvoices => 'الفواتير';

  @override
  String get nnProducts => 'المنتجات';

  @override
  String get nnInstallments => 'الأقساط';

  @override
  String get nnDebts => 'الديون';

  @override
  String get nnReports => 'التقارير';

  @override
  String get nnCash => 'الصندوق';

  @override
  String get npInstallmentDue => 'قسط مستحق';

  @override
  String get npInstallmentLate => 'قسط متأخر';

  @override
  String get npStock => 'مخزون';

  @override
  String get npNegativeSale => 'بيع سالب';

  @override
  String get npExpiryHint => 'همس الصلاحية';

  @override
  String get npDeferredSave => 'أجل الحفظ';

  @override
  String get npReturn => 'مرتجع';

  @override
  String get npSummary => 'ملخص';

  @override
  String get npCash => 'صندوق';

  @override
  String get npCustomerDebt => 'دين عميل';

  @override
  String get npDebtAge => 'عمر دين';

  @override
  String get npCustomerCap => 'سقف عميل';

  @override
  String get npInvoiceCap => 'سقف فاتورة';

  @override
  String get npFinancedSale => 'بيع مموّل';

  @override
  String get npSystem => 'النظام';

  @override
  String get npNow => 'الآن';

  @override
  String get npMinuteAgo => 'منذ دقيقة';

  @override
  String get npTwoMinutesAgo => 'منذ دقيقتين';

  @override
  String npMinutesAgo(Object count) {
    return 'منذ $count دقيقة';
  }

  @override
  String get npHourAgo => 'منذ ساعة تقريباً';

  @override
  String get npTwoHoursAgo => 'منذ ساعتين';

  @override
  String npHoursAgo(Object count) {
    return 'منذ $count ساعة';
  }

  @override
  String npYesterday(Object time) {
    return 'أمس $time';
  }

  @override
  String get npTwoDaysAgo => 'منذ يومين';

  @override
  String npDaysAgo(Object count) {
    return 'منذ $count أيام';
  }

  @override
  String npSaleInvoiceLine(Object date, Object id) {
    return 'فاتورة بيع #$id — $date';
  }

  @override
  String npSeller(Object name) {
    return 'البائع: $name';
  }

  @override
  String npCustomer(Object name) {
    return 'العميل: $name';
  }

  @override
  String get npItem => 'صنف';

  @override
  String npItemId(Object id) {
    return ' — مُعرّف #$id';
  }

  @override
  String npSoldInInvoice(Object after, Object before, Object qty) {
    return '  مُباع في الفاتورة: $qty — الرصيد قبل: $before → بعد: $after';
  }

  @override
  String get npNegativeSaleTitle => 'بيع أدى إلى رصيد سالب';

  @override
  String get npShift => 'وردية';

  @override
  String get npCreditSaleSaved => 'بيع بالتقسيط — فاتورة محفوظة';

  @override
  String get npCreditSaleRegistered => 'بيع بالتقسيط — تم التسجيل';

  @override
  String get npCreditSaleTitle => 'بيع بالدين (آجل) — تم التسجيل';

  @override
  String get npRegisteredAt => 'مكان التسجيل: شاشة «بيع جديد» (نقطة البيع)';

  @override
  String npInvoiceLine(Object date, Object id) {
    return 'فاتورة #$id — $date';
  }

  @override
  String npTotalLine(Object advance, Object remaining, Object total) {
    return 'الإجمالي: $total Fdj — الواصل: $advance Fdj — المتبقي: $remaining Fdj';
  }

  @override
  String get npInstallmentPlanError =>
      'تنبيه: تعذّر إنشاء خطة التقسيط تلقائياً — راجع «الأقساط» واربط الفاتورة بخطة.';

  @override
  String npInstallmentPlanRef(Object id) {
    return 'خطة التقسيط: #$id';
  }

  @override
  String npPlannedMonths(Object count) {
    return 'عدد الأشهر المخطط: $count';
  }

  @override
  String npMonthlyEstimate(Object amount) {
    return 'قسط شهري تقريبي: $amount Fdj';
  }

  @override
  String npFinancedFromSale(Object amount) {
    return 'الممول من البيع: $amount Fdj';
  }

  @override
  String npTotalWithInterest(Object amount) {
    return 'الإجمالي مع الفائدة (إن وُجدت): $amount Fdj';
  }

  @override
  String npItemLine(Object name, Object pid, Object qty, Object total) {
    return '• $name — #$pid — $qty — $total Fdj';
  }

  @override
  String get npMoreItemsInInvoice => '… وباقي الأسطر في الفاتورة.';

  @override
  String get npLateInstallmentTitle => 'قسط متأخر — تذكير';

  @override
  String npLateInstallmentBody(Object date, Object name, Object planRef) {
    return '$name$planRef — مستحق $date';
  }

  @override
  String get npCustomerLabel => 'عميل';

  @override
  String npPlanRef(Object id) {
    return ' — خطة #$id';
  }

  @override
  String get npUpcomingTitle => 'قسط قريب الاستحقاق — تذكير';

  @override
  String npUpcomingBody(Object date, Object name, Object planRef) {
    return '$name$planRef — $date';
  }

  @override
  String get npCustomerDebtTitle => 'دين على عميل';

  @override
  String npCustomerDebtBody(Object balance, Object extra, Object name) {
    return '$name$extra — المتبقي $balance Fdj (آجل غير المقسّط).';
  }

  @override
  String get npDebtAgeTitle => 'فاتورة آجل — تحذير عمر';

  @override
  String npDebtAgeBody(
    Object age,
    Object ageWord,
    Object customer,
    Object date,
    Object days,
    Object id,
  ) {
    return 'حسب إعدادات الدين ($days يوماً): فاتورة #$id — $customer — منذ $date ($age $ageWord).';
  }

  @override
  String get npDay => 'يوماً';

  @override
  String get npDays => 'أياماً';

  @override
  String get npCustomerCapTitle => 'تجاوز سقف الدين للعميل';

  @override
  String npCustomerCapBody(Object amount, Object cap, Object name) {
    return 'حسب إعدادات الدين: مجموع الآجل المفتوح لـ «$name» $amount Fdj (السقف $cap Fdj).';
  }

  @override
  String npCustomerCapBodyNoCard(Object amount, Object cap, Object name) {
    return 'حسب إعدادات الدين (بدون بطاقة عميل): «$name» — $amount Fdj (السقف $cap Fdj).';
  }

  @override
  String get npInvoiceCapTitle => 'تجاوز سقف فاتورة آجل';

  @override
  String npInvoiceCapBody(
    Object cap,
    Object customer,
    Object date,
    Object id,
    Object remaining,
  ) {
    return 'حسب إعدادات الدين: فاتورة #$id — $customer — المتبقي $remaining Fdj (السقف $cap Fdj) — تاريخ $date.';
  }

  @override
  String get npWithoutName => 'بدون اسم';

  @override
  String get npProductLabel => 'منتج';

  @override
  String get npNegativeStockTitle => 'رصيد سالب في المخزون';

  @override
  String npNegativeStockBody(
    Object name,
    Object over,
    Object qty,
    Object unitWord,
  ) {
    return '«$name» — الكمية الحالية $qty (أي بيع زائد نحو $over $unitWord).';
  }

  @override
  String get npOutOfStockTitle => 'منتج منفد';

  @override
  String npOutOfStockBody(Object name) {
    return '«$name» — المخزون صفر.';
  }

  @override
  String get npLowStockTitle => 'تنبيه مخزون منخفض';

  @override
  String npLowStockBody(Object name, Object qty, Object threshold) {
    return '«$name» — الكمية $qty (الحد $threshold).';
  }

  @override
  String get npUnit => 'وحدة';

  @override
  String get npUnits => 'وحدات';

  @override
  String get npExpiredTitle => 'انتهى أجل ما على العبوة';

  @override
  String npExpiredBody(Object date, Object name) {
    return '«$name» — تجاوز التاريخ المدوَّن ($date). راجع العرض أو الإتلاف حسب سياسة المتجر.';
  }

  @override
  String get npLastDay => 'اليوم آخرُ الأيام المسماة للحفظ';

  @override
  String npDaysRemaining(Object count) {
    return 'بقي $count على أجل الانتهاء';
  }

  @override
  String get npNearExpiryTitle => 'في أفق الصلاحية';

  @override
  String npNearExpiryBody(Object date, Object name, Object period) {
    return '«$name» — ينتهي أجل الحفظ عند $date ($period).';
  }

  @override
  String get npReturnTitle => 'تم تسجيل مرتجع';

  @override
  String npReturnBody(
    Object count,
    Object customer,
    Object id,
    Object orig,
    Object total,
  ) {
    return 'فاتورة مرتجعة #$id$orig — $customer — $count صنف — $total Fdj';
  }

  @override
  String npOrigRef(Object id) {
    return ' ← أصل #$id';
  }

  @override
  String get npDailySummaryTitle => 'ملخص مبيعات اليوم';

  @override
  String npDailySummaryBody(Object total) {
    return 'إجمالي فواتير البيع (بدون مرتجعات) لهذا اليوم: $total Fdj';
  }

  @override
  String get npLoggerNotifyFail => 'فشل تحديث قائمة الإشعارات';

  @override
  String get npRefreshHidden => 'الإشعارات المخفية';

  @override
  String get npShow => 'إظهار';

  @override
  String get npHide => 'إخفاء';

  @override
  String get spTitle => 'خطط الاشتراك';

  @override
  String get spSubtitle => 'اختر الخطة المناسبة لنشاطك';

  @override
  String get spJwtDescription =>
      'البطاقات أدناه للمقارنة والأسعار فقط. بعد الدفع تستلم رمزاً موقّعاً (JWT) — الصقه في حقل التفعيل أسفل البطاقات مباشرة.';

  @override
  String get spLegacyDescription =>
      'البطاقة الأولى: تجربة تلقائية 15 يوماً (جهازان). البطاقات التالية خطط مدفوعة — بعد الدفع تُدخل المفتاح في الحقل الموحّد أسفل الصفحة.';

  @override
  String get spHowToSubscribe => 'كيفية الاشتراك';

  @override
  String get spHowJwtStep1 => '١. تواصل مع فريق Maarey عبر الطرق أدناه';

  @override
  String get spHowJwtStep2 => '٢. أكمل الدفع للخطة التي تريدها';

  @override
  String get spHowJwtStep3 => '٣. استلم رمز التفعيل الكامل (JWT) من الإدارة';

  @override
  String get spHowJwtStep4 =>
      '٤. الصق الرمز في الحقل الموحّد أسفل بطاقات الخطط — الخطة وحد الأجهزة يُستنتجان من الرمز';

  @override
  String get spHowLegacyStep1 => '١. تواصل مع فريق Maarey عبر الطرق أدناه';

  @override
  String get spHowLegacyStep2 => '٢. أخبرنا بالخطة التي تريدها وأكمل الدفع';

  @override
  String get spHowLegacyStep3 => '٣. استلم مفتاح الترخيص من الإدارة';

  @override
  String get spHowLegacyStep4 =>
      '٤. الصق المفتاح في الحقل الموحّد أسفل بطاقات الخطط ثم اضغط «تفعيل المفتاح»';

  @override
  String get spContactWhatsApp => 'واتساب / هاتف';

  @override
  String get spContactEmail => 'البريد الإلكتروني';

  @override
  String get spContinue => 'متابعة';

  @override
  String get spErrorPasteTokenFirst => 'الصق رمز الترخيص أولاً';

  @override
  String get spActivateTokenTitle => 'تفعيل رمز الترخيص';

  @override
  String get spActivateTokenDesc =>
      'الصق الرمز الكامل الذي أرسلته الإدارة. الخطة وحد الأجهزة يُستنتجان من داخل الرمز وليس من شكل البطاقة.';

  @override
  String get spTokenHint => 'الصق رمز التفعيل هنا';

  @override
  String get spActivateTokenButton => 'تفعيل الرمز';

  @override
  String get spErrorPasteKeyFirst => 'الصق مفتاح الترخيص أو رمز التفعيل أولاً';

  @override
  String get spActivateKeyTitle => 'تفعيل المفتاح';

  @override
  String get spActivateKeyDesc =>
      'الصق مفتاح الترخيص الذي استلمته بعد الدفع، أو رمز JWT إن وُجد. الخطط أعلاه للعرض والمقارنة فقط.';

  @override
  String get spKeyHint => 'الصق مفتاح الترخيص أو رمز التفعيل';

  @override
  String get spActivateKeyButton => 'تفعيل المفتاح';

  @override
  String get spFree => 'مجاناً';

  @override
  String get sp15Days => '15 يوماً';

  @override
  String get spMonthly => 'شهرياً';

  @override
  String get spCurrentTrial => 'تجربتك الحالية';

  @override
  String get spCurrentPlan => 'خطتك الحالية';

  @override
  String get spTrialAutoDescription =>
      'التجربة تبدأ تلقائياً — لا مفتاح. عند الترقية استلم الرمز من الإدارة والصقه في الحقل الموحّد أسفل البطاقات.';

  @override
  String get spJwtCardDescription =>
      'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق رمز التفعيل (JWT) في الحقل الموحّد أسفل البطاقات مباشرة.';

  @override
  String get spLegacyCardDescription =>
      'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق مفتاح الترخيص في الحقل الموحّد أسفل البطاقات.';

  @override
  String get spMostPopular => 'الأكثر طلباً';

  @override
  String get spCopiedPhone => 'تم نسخ الرقم';

  @override
  String get spCopiedEmail => 'تم نسخ البريد';

  @override
  String get spCopy => 'نسخ';

  @override
  String get spTrialName => 'التجربة المجانية';

  @override
  String get spBasicName => 'الأساسية';

  @override
  String get spProName => 'الاحترافية';

  @override
  String get spUnlimitedName => 'غير المحدودة';

  @override
  String get spDevicesUnlimited => 'أجهزة غير محدودة';

  @override
  String spDevicesCount(Object count) {
    return '$count أجهزة';
  }

  @override
  String get spPlanPriceFree => 'مجاناً — 15 يوماً';

  @override
  String spPlanPriceMonthly(Object price) {
    return '$price Fdj / شهر';
  }

  @override
  String get spTrialFeature1 =>
      '15 يوماً من أول استخدام (أو من أول تسجيل للحساب السحابي)';

  @override
  String get spTrialFeature2 => 'جهازان على نفس الحساب';

  @override
  String get spTrialFeature3 =>
      'بعدها اختر خطة مدفوعة وفعّل المفتاح الذي ترسله الإدارة';

  @override
  String get spBasicFeature1 => 'جهازان على نفس الحساب';

  @override
  String get spBasicFeature2 => 'جميع ميزات المخزون والفواتير';

  @override
  String get spBasicFeature3 => 'التقارير والتحليلات';

  @override
  String get spBasicFeature4 => 'دعم فني';

  @override
  String get spProFeature1 => '3 أجهزة على نفس الحساب';

  @override
  String get spProFeature2 => 'جميع ميزات الخطة الأساسية';

  @override
  String get spProFeature3 => 'أوامر الشراء وإدارة الموردين';

  @override
  String get spProFeature4 => 'تقارير متقدمة';

  @override
  String get spProFeature5 => 'أولوية في الدعم الفني';

  @override
  String get spUnlimitedFeature1 => 'أجهزة غير محدودة على حساب واحد';

  @override
  String get spUnlimitedFeature2 => 'جميع ميزات الخطة الاحترافية';

  @override
  String get spUnlimitedFeature3 => 'متعدد الفروع';

  @override
  String get spUnlimitedFeature4 => 'أولوية قصوى في الدعم';

  @override
  String get devToolsOpen => 'فتح أدوات الاختبار…';

  @override
  String get bulkImportTitle => 'استيراد المنتجات من CSV';

  @override
  String get bulkImportSubtitle => 'قم باستيراد منتجاتك من ملف CSV بسرعة';

  @override
  String get bulkImportTemplate => 'تحميل نموذج CSV';

  @override
  String get bulkImportTemplateDesc =>
      'حمّل النموذج المملوء مسبقاً ثم أعد ملؤه ببيانات منتجاتك';

  @override
  String get bulkImportPickFile => 'اختيار ملف CSV';

  @override
  String get bulkImportPickFileDesc => 'اختر ملف CSV من جهازك';

  @override
  String get bulkImportPreview => 'معاينة البيانات';

  @override
  String get bulkImportStartImport => 'بدء الاستيراد';

  @override
  String get bulkImportImporting => 'جاري الاستيراد...';

  @override
  String get bulkImportSuccess => 'تم استيراد المنتجات بنجاح';

  @override
  String bulkImportPartial(Object failed, Object success, Object total) {
    return 'تم استيراد $success من $total — فشل $failed';
  }

  @override
  String get bulkImportFailed => 'فشل الاستيراد';

  @override
  String get bulkImportNoFile => 'لم يتم اختيار ملف';

  @override
  String get bulkImportInvalidFormat => 'صيغة الملف غير صحيحة';

  @override
  String get bulkImportColName => 'اسم المنتج';

  @override
  String get bulkImportColBarcode => 'الباركود';

  @override
  String get bulkImportColBuyPrice => 'سعر الشراء';

  @override
  String get bulkImportColSellPrice => 'سعر البيع';

  @override
  String get bulkImportColQty => 'الكمية';

  @override
  String get bulkImportColCategory => 'الفئة';

  @override
  String get bulkImportColLowStock => 'حد التنبيه';

  @override
  String get bulkImportColDescription => 'الوصف';

  @override
  String get bulkImportColSupplier => 'المورد';

  @override
  String get bulkImportColTaxPercent => 'نسبة الضريبة';

  @override
  String get bulkImportColSaleUnit => 'وحدة البيع';

  @override
  String bulkImportRowsFound(Object count) {
    return 'تم العثور على $count صفوف';
  }

  @override
  String bulkImportErrorsFound(Object count) {
    return 'يوجد $count أخطاء — صححها قبل الاستيراد';
  }

  @override
  String bulkImportRowError(Object error, Object row) {
    return 'صف $row: $error';
  }

  @override
  String get bulkImportRequiredField => 'حقل مطلوب';

  @override
  String get bulkImportInvalidNumber => 'رقم غير صحيح';

  @override
  String get bulkImportImportAll => 'استيراد الكل';

  @override
  String get bulkImportCancel => 'إلغاء';

  @override
  String get bulkImportColumnName => 'العمود';

  @override
  String get bulkImportColumnSample => 'مثال';

  @override
  String get bulkImportColumnStatus => 'الحالة';

  @override
  String get bulkImportRequired => 'مطلوب';

  @override
  String get bulkImportOptional => 'اختياري';

  @override
  String get bulkImportBackToImport => 'العودة للاستيراد';

  @override
  String get bulkImportAddMore => 'إضافة المزيد';

  @override
  String get bulkImportSampleName => 'شيبس ليز';

  @override
  String get bulkImportSampleBarcode => '6281100123456';

  @override
  String get bulkImportSampleBuy => '800';

  @override
  String get bulkImportSampleSell => '1000';

  @override
  String get bulkImportSampleQty => '50';

  @override
  String get bulkImportSampleCategory => 'وجبات خفيفة';

  @override
  String get bulkImportSampleLowStock => '10';

  @override
  String get bulkImportSampleDesc => 'شيبس بطاطس بالملح';

  @override
  String get bulkImportSampleSupplier => 'شركة الأمل';

  @override
  String get bulkImportSampleTax => '0';

  @override
  String get bulkImportSampleUnit => 'قطعة';

  @override
  String get ipBulkImport => 'استيراد منتجات بالجملة';

  @override
  String get syncNothingToSync => 'لا توجد تغييرات للمزامنة';

  @override
  String get syncCompletedPush => 'تم رفع البيانات إلى السحابة';

  @override
  String get syncCompletedPull => 'تم سحب البيانات من السحابة';

  @override
  String get syncNotLoggedIn => 'يجب تسجيل الدخول أولاً للمزامنة';

  @override
  String get olTitle => 'بحث عن منتج';

  @override
  String get olScanHint => 'امسح الباركود أو اكتب اسم المنتج';

  @override
  String get olSearching => 'جارٍ البحث…';

  @override
  String get olFoundInLocal => 'وجد في قاعدة البيانات المحلية';

  @override
  String get olNotFound => 'لم يُعثر على المنتج محلياً';

  @override
  String get olSearchingOnline => 'جارٍ البحث عبر الإنترنت…';

  @override
  String get olOnlineFound => 'وجد في الدليل الدولي';

  @override
  String get olOnlineNotFound => 'المنتج غير موجود في الدليل الدولي';

  @override
  String get olUseThisProduct => 'استخدم هذا المنتج';

  @override
  String get olNoResults => 'لا توجد نتائج';

  @override
  String get olProductImage => 'صورة المنتج';

  @override
  String get olBrand => 'العلامة التجارية';

  @override
  String get olCategory => 'الفئة';

  @override
  String get olQuantity => 'الكمية';

  @override
  String get olAddToProducts => 'إضافة إلى المنتجات';

  @override
  String get olAutoFilled => 'تم ملء الحقول تلقائياً من الدليل الدولي';

  @override
  String get signupAcceptTermsFirst => 'يجب الموافقة على الشروط والأحكام أولاً';

  @override
  String get signupAccountCreated =>
      'تم إنشاء الحساب بنجاح! يرجى تسجيل الدخول.';

  @override
  String get signupGoogleSoon => 'سيتم تفعيل ميزة Google Sign-In قريباً';

  @override
  String get signupBrandSubtitle => 'نظام إدارة الأعمال';

  @override
  String get signupGetStarted => 'ابدأ الآن';

  @override
  String get signupCreateAccount => 'إنشاء حساب جديد';

  @override
  String get signupFullNameLabel => 'الاسم التجاري / الاسم الكامل';

  @override
  String get signupFullNameHint => 'مثال: مؤسسة البصرة للتجارة';

  @override
  String get signupNameRequired => 'الاسم مطلوب';

  @override
  String get signupNameMinLength => 'يجب أن يكون 3 أحرف على الأقل';

  @override
  String get signupEmailLabel => 'البريد الإلكتروني';

  @override
  String get signupEmailRequired => 'البريد مطلوب';

  @override
  String get signupEmailInvalid => 'صيغة البريد غير صحيحة';

  @override
  String get signupPhoneLabel => 'رقم الجوال';

  @override
  String get signupPhoneHintIraq => '07701234567';

  @override
  String get signupPhoneHintOther => 'أدخل الرقم';

  @override
  String get signupPhoneRequired => 'رقم الجوال مطلوب';

  @override
  String get signupPhoneIraqInvalid => 'رقم عراقي: 11 رقماً يبدأ بـ 07';

  @override
  String get signupPhoneInvalid => 'رقم غير صحيح';

  @override
  String get signupPasswordLabel => 'كلمة المرور';

  @override
  String get signupPasswordHint => '8 أحرف على الأقل';

  @override
  String get signupPasswordRequired => 'كلمة المرور مطلوبة';

  @override
  String get signupPasswordMinLength => '8 أحرف على الأقل';

  @override
  String get signupConfirmPasswordLabel => 'تأكيد كلمة المرور';

  @override
  String get signupConfirmPasswordHint => 'أعد إدخال كلمة المرور';

  @override
  String get signupConfirmPasswordRequired => 'تأكيد كلمة المرور مطلوب';

  @override
  String get signupPasswordsMismatch => 'كلمتا المرور غير متطابقتين';

  @override
  String get signupCaptchaTitle => 'التحقق من الهوية — أجب على السؤال البسيط';

  @override
  String get signupCaptchaChange => 'تغيير';

  @override
  String get signupCaptchaHint => 'الجواب';

  @override
  String get signupCaptchaAnswerRequired => 'أدخل الجواب';

  @override
  String get signupCaptchaWrong => 'إجابة غير صحيحة';

  @override
  String get signupCreateButton => 'إنشاء الحساب';

  @override
  String get signupHasAccount => 'لديك حساب بالفعل؟';

  @override
  String get signupLoginLink => 'تسجيل الدخول';

  @override
  String get signupGoogleButton => 'التسجيل عبر Google';

  @override
  String get signupOrDivider => 'أو التسجيل بالبيانات';

  @override
  String get signupTermsPrefix => 'أوافق على ';

  @override
  String get signupTermsOfUse => 'شروط الاستخدام';

  @override
  String get signupAnd => '  و  ';

  @override
  String get signupPrivacyPolicy => 'سياسة الخصوصية';

  @override
  String get signupTermsSuffix => ' الخاصة بـ Maarey.';

  @override
  String get licEnterKey => 'أدخل مفتاح الترخيص';

  @override
  String get licStoreSystem => 'نظام إدارة المتاجر';

  @override
  String get licActivation => 'تفعيل الترخيص';

  @override
  String get licEnterKeyToContinue => 'أدخل مفتاح الترخيص للمتابعة';

  @override
  String get licKeyHint => 'MAAREY-XXXX-XXXX-XXXX أو JWT';

  @override
  String get licActivate => 'تفعيل';

  @override
  String get licContactSupport =>
      'للحصول على مفتاح ترخيص، تواصل مع فريق Maarey.';

  @override
  String get licAllRightsReserved => 'Maarey v2.0 — جميع الحقوق محفوظة';

  @override
  String get licTimeConflict => 'تعارض في إعدادات الوقت';

  @override
  String get licSuspended => 'الترخيص موقوف';

  @override
  String get licDeviceLimitExceeded => 'تجاوز حد الأجهزة';

  @override
  String get licExpired => 'انتهى الاشتراك';

  @override
  String get licTimeConflictMsg =>
      'تم اكتشاف تعارض في إعدادات الوقت. تواصل مع الدعم للمساعدة في إعادة التحقق.';

  @override
  String get licAccountSuspended => 'تم إيقاف حسابك. تواصل مع الدعم الفني.';

  @override
  String get licSubscriptionEnded => 'انتهى اشتراكك. جدّد للمتابعة.';

  @override
  String get licCurrentPlan => 'خطتك الحالية';

  @override
  String get licRegisteredDevices => 'الأجهزة المسجّلة';

  @override
  String get licSubscriptionExpiry => 'انتهاء الاشتراك';

  @override
  String get licTrialExpiry => 'انتهاء التجربة';

  @override
  String get licUpgradePlan => 'ترقية الخطة لإضافة أجهزة';

  @override
  String get licRenewSubscription => 'تجديد الاشتراك';

  @override
  String get licComparePlans => 'مقارنة خطط الاشتراك';

  @override
  String get licEnterNewKey => 'إدخال مفتاح جديد';

  @override
  String get licVerifyAgain => 'إعادة التحقق';

  @override
  String get licUseAnotherKey => 'استخدام مفتاح آخر';

  @override
  String get cashInvoicesSales => 'فواتير ومبيعات (قيود مرتبطة بفاتورة)';

  @override
  String get cashManualDeposit => 'إيداع يدوي';

  @override
  String get cashManualWithdrawal => 'سحب يدوي';

  @override
  String get cashOtherMovements => 'حركات أخرى';

  @override
  String get cashLinkedInvoice => 'فاتورة #';

  @override
  String get cashInflow => 'وارد';

  @override
  String get cashOutflow => 'صادر';

  @override
  String get cashNoLinkedEntries =>
      'لا توجد في هذه المجموعة حركات مرتبطة برقم فاتورة.';

  @override
  String get cashInvoiceIdsShown => 'أرقام الفواتير الظاهرة في القيود:';

  @override
  String get cashShiftDetails => 'تفاصيل الوردية #';

  @override
  String get cashShiftEmployee => 'موظف الوردية (البطاقة)';

  @override
  String get cashSummaryTitle => 'ملخص الصندوق';

  @override
  String get cashTotalIn => 'الوارد الكلي';

  @override
  String get cashTotalOut => 'الصادر الكلي';

  @override
  String get cashNetFlow => 'صافي التدفق';

  @override
  String get cashBalanceLabel => 'الرصيد';

  @override
  String get cashDetailsTitle => 'تفاصيل الصندوق';

  @override
  String get cashFilterAll => 'الكل';

  @override
  String get cashDateRange => 'نطاق التاريخ';

  @override
  String get cashFrom => 'من';

  @override
  String get cashTo => 'إلى';

  @override
  String get cashAmount => 'المبلغ';

  @override
  String get cashDescription => 'الوصف';

  @override
  String get cashType => 'النوع';

  @override
  String get cashDate => 'التاريخ';

  @override
  String get cashReceipt => 'إيصال';

  @override
  String get cashPayment => 'دفعة';

  @override
  String get cashDeposit => 'إيداع';

  @override
  String get cashWithdrawal => 'سحب';

  @override
  String get cashTransfer => 'تحويل';

  @override
  String get cashRefund => 'مرتجع';

  @override
  String get cashOpenShift => 'فتح وردية';

  @override
  String get cashCloseShift => 'إغلاق وردية';

  @override
  String get cashShiftHistory => 'سجل الورديات';

  @override
  String get cashTransactions => 'المعاملات';

  @override
  String get cashNoTransactions => 'لا توجد معاملات';

  @override
  String get cashPeriod => 'الفترة';

  @override
  String get cashInvoiceNum => 'رقم الفاتورة';

  @override
  String get cashEmployee => 'الموظف';

  @override
  String get cashNote => 'ملاحظة';

  @override
  String get cashReceiptNum => 'رقم الإيصال';

  @override
  String get cashCustomer => 'العميل';

  @override
  String get debtsTitle => 'الديون — آجل';

  @override
  String get debtsTabInvoices => 'فواتير';

  @override
  String get debtsTabCustomers => 'عملاء';

  @override
  String get debtsTabSuppliers => 'موردون';

  @override
  String get debtsSettingsTooltip => 'إعدادات الدين';

  @override
  String get debtsRefreshTooltip => 'تحديث (F5)';

  @override
  String get debtsShowingOf => 'القائمة:';

  @override
  String get debtsSearchHint => 'بحث: عميل، رقم فاتورة، معرّف عميل…';

  @override
  String get debtsClearSearch => 'مسح البحث';

  @override
  String get debtsAll => 'الكل';

  @override
  String get debtsPending => 'معلّق';

  @override
  String get debtsOverdue => 'متأخر';

  @override
  String get debtsPaid => 'مدفوع';

  @override
  String get debtsPartial => 'جزئي';

  @override
  String get debtsAmount => 'المبلغ';

  @override
  String get debtsPaidAmount => 'المدفوع';

  @override
  String get debtsRemaining => 'المتبقي';

  @override
  String get debtsCustomer => 'عميل';

  @override
  String get debtsInvoiceNum => 'فاتورة #';

  @override
  String get debtsDate => 'التاريخ';

  @override
  String get debtsDueDate => 'تاريخ الاستحقاق';

  @override
  String get debtsActions => 'إجراءات';

  @override
  String get debtsPay => 'تسديد';

  @override
  String get debtsDetails => 'تفاصيل';

  @override
  String get debtsRecordPayment => 'تسجيل دفعة';

  @override
  String get debtsNoInvoices => 'لا توجد فواتير';

  @override
  String get debtsTotalDebt => 'إجمالي الدين';

  @override
  String get debtsPaidTotal => 'إجمالي المدفوع';

  @override
  String get debtsOutstanding => 'المستحق';

  @override
  String get cdInvalidData => 'بيانات غير صالحة';

  @override
  String get cdRecordPayment => 'تسديد دين';

  @override
  String get cdRemainingCurrent => 'المتبقي الحالي';

  @override
  String get cdAmountLabel => 'المبلغ (Fdj)';

  @override
  String get cdAutoDistribute =>
      'يُوزَّع تلقائياً على الفواتير من الأقدم إلى الأحدث.';

  @override
  String get cdCancel => 'إلغاء';

  @override
  String get cdConfirm => 'تأكيد';

  @override
  String get cdEnterValidAmount => 'أدخل مبلغاً صالحاً';

  @override
  String get cdNoRemaining => 'لا يوجد متبقٍ للتسديد أو المبلغ غير صالح';

  @override
  String get cdPaymentSuccess => 'تم تسجيل الدفعة بنجاح';

  @override
  String get cdPaymentFailed => 'فشل تسجيل الدفعة';

  @override
  String get cdInvoiceHistory => 'سجل الفواتير';

  @override
  String get cdPaymentHistory => 'سجل الدفعات';

  @override
  String get cdNoPayments => 'لا توجد دفعات مسجلة';

  @override
  String get cdFullPayment => 'تسديد كامل';

  @override
  String get cdPartialPayment => 'تسديد جزئي';

  @override
  String get cdRemainingBalance => 'الرصيد المتبقي';

  @override
  String get cdDebtBefore => 'الدين قبل';

  @override
  String get cdDebtAfter => 'الدين بعد';

  @override
  String get cdNoInvoiceLinked => 'لا توجد فاتورة مرتبطة';

  @override
  String get cdCustomerLabel => 'العميل';

  @override
  String get cdInvoiceLabel => 'فاتورة';

  @override
  String get cdClose => 'إغلاق';

  @override
  String get cdViewInvoice => 'عرض الفاتورة';

  @override
  String get cdAmountPaid => 'المبلغ المدفوع';

  @override
  String get dsTitle => 'إعدادات الدين';

  @override
  String get dsReloadTooltip => 'إعادة التحميل من القاعدة';

  @override
  String get dsApplyInfo =>
      'تُطبَّق هذه الحدود عند حفظ فاتورة نوعها «دين / آجل». اترك الحقل فارغاً أو 0 لتعطيل السقف.';

  @override
  String get dsAmountCeilings => 'سؤف المبالغ';

  @override
  String get dsMaxPerCustomer => 'أقصى مجموع متبقٍ لكل عميل (Fdj)';

  @override
  String get dsMaxPerInvoice => 'أقصى متبقٍ لفاتورة دين واحدة (Fdj)';

  @override
  String get dsWarningDays => 'أيام التحذير';

  @override
  String get dsSaved => 'تم حفظ إعدادات الدين';

  @override
  String get dsInvalidDays => 'أيام التحذير: بين 0 و 36500';

  @override
  String get dsEnableLimits => 'تفعيل سقوف الدين';

  @override
  String get dsMaxDebtPerCustomer => 'أقصى مجموع متبقٍ لكل عميل (Fdj)';

  @override
  String get dsMaxDebtPerInvoice => 'أقصى متبقٍ لفاتورة دين واحدة (Fdj)';

  @override
  String get dsAutoEnforce => 'فرض تلقائي للحدود';

  @override
  String get dsAutoEnforceHint => 'منع الحفظ عند تجاوز الحدود';

  @override
  String get dsReminderDays => 'أيام التذكير';

  @override
  String get dsReminderHint => 'أيام قبل تاريخ الاستحقاق لإظهار التذكير';

  @override
  String get dsOverdueThreshold => 'عتبة التأخر (أيام)';

  @override
  String get dsOverdueHint => 'أيام بعد الاستحقاق لتصنيف كمتأخر';

  @override
  String get cashInvoiceNumShort => 'فاتورة #';

  @override
  String get cashShiftLoadError =>
      'تعذّر تحميل سجل الوردية من قاعدة البيانات؛ يُعرض أدناه ما يظهر في قائمة الصندوق فقط.';

  @override
  String get cashTotalMovements =>
      'إجمالي ما يظهر من حركات في الصندوق لهذه المجموعة';

  @override
  String get cashMovementsCount => 'حركة.';

  @override
  String get cashMovementStats => 'أعداد الحركات';

  @override
  String get cashMovementsDeposit => 'إدخال';

  @override
  String get cashMovementsWithdrawal => 'إخراج';

  @override
  String get cashMovementsManual => 'يدوية';

  @override
  String get cashMovementsLinked => 'مرتبطة بفاتورة';

  @override
  String get cashMovementsTimes => 'حركة';

  @override
  String get cashSalesCash => 'بيع نقدي';

  @override
  String get cashFirstPayment => 'مقدم / دفعة أولى';

  @override
  String get cashInstallmentPayment => 'تسديد قسط';

  @override
  String get cashSupplierPayment => 'دفع مورد';

  @override
  String get cashSupplierPaymentReversal => 'عكس دفع مورد';

  @override
  String get cashReturn => 'مرتجع';

  @override
  String get cashMovement => 'حركة';

  @override
  String get cashSummaryInflow => 'وارد';

  @override
  String get cashSummaryOutflow => 'صادر';

  @override
  String get cashNoShift => 'بدون وردية';

  @override
  String get cashTapDetails => 'اضغط لعرض التفاصيل';

  @override
  String get cashShiftLabel => 'وردية ';

  @override
  String get cashMovementsShort => ' حركة';

  @override
  String get cashEmployeeLabel => 'الموظف: ';

  @override
  String get cashTapInvoice => 'اضغط للفاتورة #';

  @override
  String get cashCashboxInfo =>
      'يُسجَّل منفصلاً عن فواتير البيع والأقساط. استخدمه لمصروفات المتجر أو إيداع/سحب بنكي.';

  @override
  String get cashCashboxBalanceInfo =>
      'مجموع وارد الصندوق من المبيعات النقدية والمقدمات وتسديد الأقساط والإيداع اليدوي — دون إجمالي الفواتير الآجلة بدون مقدم';

  @override
  String get calculatorTitle => 'الحاسبة';

  @override
  String get calculatorCopyResult => 'نسخ الناتج';

  @override
  String get calculatorClearAll => 'مسح الكل';

  @override
  String get debtsGroupByCustomer =>
      'تجميع حسب العميل: المنتجات والبائعون وتسديد جزئي من شاشة التفاصيل. QR على الإيصال للعملاء المسجّلين فقط.';

  @override
  String get debtsSearchHintCustomer => 'بحث باسم العميل أو المعرف…';

  @override
  String get debtsXofYCustomers => 'من';

  @override
  String get debtsNoCreditRemaining => 'لا يوجد متبقٍ آجل مجمّع بالعملاء';

  @override
  String get debtsNoResults => 'لا نتائج';

  @override
  String get debtsCustomerLabel => 'عميل';

  @override
  String debtsRegisteredCustomer(Object id) {
    return 'عميل مسجّل #$id';
  }

  @override
  String get debtsNotLinked => 'غير مربوط بجدول العملاء (بالاسم)';

  @override
  String debtsCreditInvoices(Object count) {
    return '$count فاتورة آجل';
  }

  @override
  String get debtsRemainingLabel => 'المتبقي';

  @override
  String get debtsCustomerStatement => 'كشف العميل';

  @override
  String get debtsAgingWarningInfo =>
      'التحذير بالعمر يبدأ بعد يوماً من تاريخ الفاتورة.';

  @override
  String get debtsAgingDisabled =>
      'فعّل «أيام تحذير العمر» من إعدادات الدين لتمييز الفواتير القديمة.';

  @override
  String get debtsInfoBanner =>
      'تُحسب الديون من فواتير النوع «دين / آجل». المتبقي = إجمالي الفاتورة − المقدّم. حدود البيع تُضبط من إعدادات الدين.';

  @override
  String get debtsTotalRemaining => 'إجمالي المتبقي';

  @override
  String get debtsShowAll => 'عرض كل الفواتير';

  @override
  String get debtsOpenInvoices => 'فواتير مفتوحة';

  @override
  String get debtsFilterOpen => 'تصفية: مفتوحة فقط';

  @override
  String get debtsAgingWarning => 'تحذير عمر';

  @override
  String get debtsFilterAging => 'تصفية: تحذير عمر';

  @override
  String get debtsStatusClosed => 'مغلقة';

  @override
  String get debtsStatusAging => 'تنبيه عمر';

  @override
  String get debtsStatusOpen => 'مفتوحة';

  @override
  String get debtsReceiptLabel => 'الإيصال';

  @override
  String get debtsViewDetails => 'تفاصيل';

  @override
  String get debtsDaysSinceInvoice => 'يوماً';

  @override
  String get debtsAdvanceOf => 'المقدّم';

  @override
  String get debtsTapForDetails => 'اضغط لعرض تفاصيل الفاتورة';

  @override
  String get debtsNoInvoicesInFilter =>
      'لا توجد فواتير ضمن البحث أو التصفية الحالية';

  @override
  String get debtsNoDebtInvoices => 'لا توجد فواتير دين مسجّلة';

  @override
  String get debtsClearSearchHint =>
      'امسح البحث أو اختر «الكل» في شريط التصفية.';

  @override
  String get debtsNewSaleHint =>
      'من «بيع جديد» اختر نوع «دين» ليظهر المبلغ المؤجل هنا.';

  @override
  String get hubInventoryTitle => 'مركز المخزون';

  @override
  String get hubProductsList => 'قائمة المنتجات';

  @override
  String get hubProductsListDesc => 'بحث، تصفية، وإدارة جميع الأصناف';

  @override
  String get hubAddProduct => 'إضافة منتج جديد';

  @override
  String get hubAddProductDesc => 'إنشاء صنف جديد في المخزون';

  @override
  String get hubQuickUpdate => 'تحديث منتج موجود';

  @override
  String get hubQuickUpdateDesc =>
      'بحث، باركود، وتعديل أسعار وكميات دون إنشاء صنف جديد';

  @override
  String get hubVouchers => 'حركات المخزون';

  @override
  String get hubVouchersDesc => 'وارد، صادر، تحويل بين المستودعات';

  @override
  String get hubWarehouses => 'إدارة المستودعات';

  @override
  String get hubWarehousesDesc => 'إضافة وتعديل المستودعات والمواقع';

  @override
  String get hubPriceLists => 'قوائم الأسعار';

  @override
  String get hubPriceListsDesc => 'أسعار مخصصة للعملاء والمجموعات';

  @override
  String get hubStocktaking => 'الجرد الدوري';

  @override
  String get hubStocktakingDesc => 'مطابقة المخزون الفعلي بالنظام';

  @override
  String get hubPurchaseOrders => 'أوامر الشراء';

  @override
  String get hubPurchaseOrdersDesc => 'إنشاء وتتبع طلبات الشراء من الموردين';

  @override
  String get hubAnalytics => 'تحليلات المخزون';

  @override
  String get hubAnalyticsDesc => 'قيمة المخزون، تنبيهات، الأكثر حركة';

  @override
  String get hubSettings => 'إعدادات المخزون';

  @override
  String get hubSettingsDesc => 'نوع النشاط، خصائص المنتج، تفعيل الميزات';

  @override
  String get hubTenantSelect => 'اختيار الحساب/المستأجر';

  @override
  String get hubTenantClose => 'إغلاق';

  @override
  String get hubCustomizeUnits => 'تخصيص وحدات المخزون';

  @override
  String get hubCustomizeUnitsDesc =>
      'أخفِ أي وحدة لا تحتاجها الآن. يمكنك إرجاعها لاحقاً من نفس المكان';

  @override
  String get hubCancel => 'إلغاء';

  @override
  String get hubSave => 'حفظ';

  @override
  String get hubRefresh => 'تحديث';

  @override
  String get hubCustomize => 'تخصيص الوحدات';

  @override
  String get hubSwitchTenant => 'تبديل المستأجر';

  @override
  String get hubAllHidden => 'تم إخفاء كل الوحدات أو تعطيلها من الإعدادات';

  @override
  String get hubManageUnits => 'إدارة الوحدات';

  @override
  String get hubReloadOnReturn => 'أعد التحميل عند العودة قد تغيرت الإعدادات';

  @override
  String get bsTitle => 'إعدادات الباركود';

  @override
  String get bsSubtitle => 'تهيئة الباركود إعدادات حقيقية في النظام';

  @override
  String get bsTypeTitle => 'نوع الباركود';

  @override
  String get bsTypeCode128Desc =>
      'باركود مرن يدعم ترميز الأرقام والحروف والرموز، ويُستخدم على نطاق واسع في التوصيل والمستودعات';

  @override
  String get bsTypeEan13Desc =>
      'معيار مكوّن من 13 رقمًا يُستخدم بشكل شائع في قطاع التجزئة، ويشمل رمز الدولة ورمز المصنّع ورمز المنتج';

  @override
  String get bsTypeLabel =>
      'اختر معيار الباركود الذي سيعتمد عليه النظام في إنشاء وقراءة باركود المنتجات';

  @override
  String get bsWeightEmbedded => 'باركود متضمن الوزن';

  @override
  String get bsWeightEnabled => 'مفعّل';

  @override
  String get bsWeightDisabled => 'معطّل';

  @override
  String get bsWeightDesc =>
      'استخدم الباركود متضمن الوزن ليتمكّن النظام من قراءة وزن المنتج والسعر إذا وُجد مباشرة من الباركود';

  @override
  String get bsWeightFormat => 'صيغة الباركود المتضمن';

  @override
  String get bsWeightFormatDesc =>
      'أدخل صيغة الباركود المدمج وفق النموذج، حيث تُمثل أرقام المنتج، وخانات الوزن، وخانات السعر';

  @override
  String get bsWeightExample =>
      'على سبيل المثال، إذا كان الوزن يُعرض بأربع خانات فسيظهر جرامًا، وإذا كان بخمس خانات سيظهر كعشرات الجرامات';

  @override
  String get bsWeightUnit => 'تقسيم وحدة الوزن';

  @override
  String get bsWeightUnitExample => 'مثال';

  @override
  String get bsWeightUnitDesc =>
      'أدخل القيمة التي يستخدمها النظام لتحويل وحدة الوزن في الباركود إلى وحدة البيع لديك';

  @override
  String get bsCurrencyDivision => 'قسمة العملة';

  @override
  String get bsCurrencyExample => 'مثال';

  @override
  String get bsCurrencyDesc =>
      'أدخل القيمة التي يستخدمها النظام لتحويل السعر من الوحدة المضمنة في الباركود إلى وحدتك الأساسية';

  @override
  String get bsFormatLabel => 'صيغة الباركود المتضمن';

  @override
  String get bsFormatError =>
      'صيغة الباركود المتضمن يجب أن تحتوي فقط على الحروف W و P و D';

  @override
  String get bsWeightUnitError =>
      'أدخل قيمة صحيحة أكبر من صفر لتقسيم وحدة الوزن';

  @override
  String get bsCurrencyDivError => 'أدخل قيمة صحيحة أكبر من صفر لقسمة العملة';

  @override
  String get bsSaveSuccess => 'تم حفظ إعدادات الباركود';

  @override
  String get bsSaveError => 'تعذر الحفظ';

  @override
  String get imTabAll => 'الكل';

  @override
  String get imTabDeposit => 'إيداع';

  @override
  String get imTabWithdrawal => 'صرف';

  @override
  String get imTabTransfer => 'تحويل';

  @override
  String get imSortNewest => 'الأحدث';

  @override
  String get imSortOldest => 'الأقدم';

  @override
  String get imLoadError => 'تعذر تحميل الحركات';

  @override
  String get stOpenSessions => 'جلسات مفتوحة';

  @override
  String get stCompleted => 'مكتملة';

  @override
  String get stCloseSessionConfirm => 'هل تريد إقفال جلسة؟';

  @override
  String get stCategory => 'صنف';

  @override
  String get stStarted => 'بدأ';

  @override
  String get stClosed => 'أُقفل';

  @override
  String get stSystemQty => 'النظام';

  @override
  String get stDifference => 'فرق';

  @override
  String get stReport => 'تقرير';

  @override
  String get stActualQty => 'الفعلي';

  @override
  String get plRetail => 'قائمة التجزئة';

  @override
  String get plRetailDesc => 'أسعار بيع التجزئة للعملاء العاديين';

  @override
  String get plWholesale => 'قائمة الجملة';

  @override
  String get plWholesaleDesc => 'أسعار الجملة للموزعين والتجار';

  @override
  String get plVIP => 'قائمة العملاء المميزين';

  @override
  String get plVIPDesc => 'أسعار خاصة للعملاء الدائمين';

  @override
  String get plDeleteConfirm => 'هل تريد حذف';

  @override
  String get plCategory => 'صنف';

  @override
  String get plPrices => 'أسعار';

  @override
  String get plSellPrice => 'سعر البيع';

  @override
  String get rptDashboard => 'لوحة تنفيذية';

  @override
  String get rptDashboardSub => 'مؤشرات وفترة';

  @override
  String get rptSalesInvoices => 'المبيعات والفواتير';

  @override
  String get rptSalesInvoicesSub => 'أنواع الدفع والمرتجعات';

  @override
  String get rptCustomers => 'العملاء';

  @override
  String get rptCustomersSub => 'أكثر المشترين';

  @override
  String get rptDebts => 'الديون';

  @override
  String get rptDebtsSub => 'أرصدة العملاء';

  @override
  String get rptInstallments => 'الأقساط';

  @override
  String get rptInstallmentsSub => 'خطط الفترة';

  @override
  String get rptStaff => 'الموظفون';

  @override
  String get rptStaffSub => 'أداء التسجيل';

  @override
  String get rptAnalyticsMargin => 'تحليل وهامش';

  @override
  String get rptAnalyticsMarginSub => 'منتجات وهامش تقديري';

  @override
  String get rptReportSettings => 'إعدادات التقارير';

  @override
  String get rptReportSettingsSub => 'فترة افتراضية وتفضيلات';

  @override
  String get rptNoData => 'لا توجد بيانات';

  @override
  String get rptDateFilter => 'فلتر التاريخ';

  @override
  String get rptToday => 'اليوم';

  @override
  String get rptYesterday => 'أمس';

  @override
  String get rptLastWeek => 'آخر أسبوع';

  @override
  String get rptLastMonth => 'آخر شهر';

  @override
  String get rptLastQuarter => 'آخر ربع سنة';

  @override
  String get rptReset => 'إعادة ضبط';

  @override
  String get rptApply => 'تطبيق';

  @override
  String get rptClose => 'إغلاق';

  @override
  String get rptCopiedSectionName => 'تم نسخ اسم القسم';

  @override
  String get rptSales => 'مبيعات';

  @override
  String get rptTotal => 'إجمالي';

  @override
  String get rptReturns => 'مرتجعات';

  @override
  String get rptCustomer => 'العميل';

  @override
  String get rptStaffLabel => 'الموظفون';

  @override
  String get rptOthers => 'آخرون';

  @override
  String get rptNoCustomerData => 'لا توجد بيانات عملاء في هذه الفترة';

  @override
  String get rptNoStaffSales => 'لا توجد مبيعات مسجّلة باسم موظف في هذه الفترة';

  @override
  String get rptTopBuyers => 'أكثر العملاء شراءً حسب اسم الفاتورة';

  @override
  String get rptSalesByCustomer => 'توزيع المبيعات على العملاء';

  @override
  String get rptSalesByStaff => 'توزيع المبيعات على الموظفين';

  @override
  String get rptDebtsBalances => 'جدول أرصدة مسجّلة في سجل العملاء';

  @override
  String get rptInstallmentPlans => 'خطط الأقساط المرتبطة بفواتير الفترة';

  @override
  String get rptDetails => 'تفاصيل الخطط';

  @override
  String get rptStaffPercentage => 'نسبة كل موظف من إجمالي المبيعات';

  @override
  String get rptConsistentWithPie => 'متسقة مع نسب المخطط الدائري والجدول';

  @override
  String get rptUnknown => 'غير معروف';

  @override
  String get rptNoName => 'بدون اسم';

  @override
  String get rptSelectedPeriod => 'الفترة المحددة';

  @override
  String get rptApproxNet => 'تقريبي صافي';

  @override
  String get rptTotalExpenses => 'إجمالي المصروفات';

  @override
  String get rptNetAfterExpenses => 'صافي بعد المصروفات';

  @override
  String get rptInvoicesReturns => 'فواتير ومرتجعات';

  @override
  String get rptDailySalesInRange => 'اتجاه المبيعات اليومي في الفترة';

  @override
  String get rptPiePayments => 'توزيع أنواع الدفع';

  @override
  String get osDescription =>
      'بعد تسجيل الدخول عرض رصيد الصندوق، الجرد، إضافة مال، ثم تمييز موظف الوردية';

  @override
  String get osSessionExpired => 'الجلسة انتهت في الخلفية أثناء تحميل الشاشة';

  @override
  String get osUnexpectedError => 'حدث خطأ غير متوقع أثناء التهيئة';

  @override
  String get osPasswordRequired =>
      'عند العودة إلى التطبيق بوردية مفتوحة أصلاً نطلب كلمة مرور موظف الوردية';

  @override
  String get osShiftEmployee => 'موظف الوردية';

  @override
  String get osOpeningBalance => 'رصيد النظام عند الفتح';

  @override
  String get osManualCount => 'الجرد اليدوي الصندوق';

  @override
  String get osAddedMoney => 'المبلغ المضاف عند الفتح';

  @override
  String get osOpeningShift => 'فتح وردية';

  @override
  String get osErrorOpening => 'تعذر فتح الوردية';

  @override
  String get osNoShiftId => 'تمت العملية بدون رقم وردية صالح حاول مرة أخرى';

  @override
  String get osShiftOpened => 'تم فتح الوردية';

  @override
  String get osAmountHint => 'المبلغ الظاهر عند الجرد';

  @override
  String get osAmountLabel => 'اكتب الموجود فعلياً داخل الصندوق الآن';

  @override
  String get osExample => 'مثال';

  @override
  String get osAddMoney => 'إضافة مال للصندوق';

  @override
  String get osAddMoneyDesc => 'اختياري استخدمه إذا أضفت نقداً قبل بداية البيع';

  @override
  String get osLogout => 'الخروج من الحساب';

  @override
  String get osReviewBalance =>
      'راجع رصيد الصندوق حسب النظام، ثم سجّل الجرد الفعلي قبل بدء العمل';

  @override
  String get osOpeningSystemBalance => 'رصيد الصندوق حسب النظام';

  @override
  String get osOpeningLoading => 'جاري فتح الوردية';

  @override
  String get osStaffDialogTitle => 'حوار موظف الوردية';

  @override
  String get osStaffDialogDesc =>
      'اختيار مستخدم مسجّل في النظام رمز البطاقة، أو مسح';

  @override
  String get osAllActiveUsers => 'كل المستخدمين النشطين';

  @override
  String get osErrorLoadingUsers => 'تعذر تحميل مستخدمي الوردية';

  @override
  String get osInvalidCard => 'النص المقروء ليس رمز هوية صالحاً';

  @override
  String get osSelectUser => 'اختر مستخدم الوردية من القائمة أو امسح البطاقة';

  @override
  String get osUserNotFound =>
      'تعذر العثور على المستخدم المختار اختر مستخدماً آخر';

  @override
  String get osNoLocalPassword =>
      'لا توجد كلمة مرور محلية لهذا الحساب عيّن كلمة مرور من إدارة المستخدمين';

  @override
  String get osWrongPassword => 'كلمة مرور الدخول غير صحيحة';

  @override
  String get osSelectEmployee =>
      'اختر الموظف المسؤول عن الصندوق في هذه الوردية';

  @override
  String get osNoActiveUsers =>
      'لا يوجد مستخدمون نشطون في النظام أضف مستخدماً من إدارة المستخدمين';

  @override
  String get osUserLabel => 'مستخدم الوردية';

  @override
  String get osSelectUserHint => 'اختر مستخدماً';

  @override
  String get osDisplayName => 'الاسم الظاهر';

  @override
  String get osAutoDetermined => 'يُحدَّد تلقائياً';

  @override
  String get osScanDesc =>
      'يمكن اختيار المستخدم عبر الكاميرا أو قارئ خارجي، ثم إدخال كلمة المرور للتأكيد';

  @override
  String get osScanCamera => 'مسح بالكاميرا';

  @override
  String get osExternalReader => 'قارئ خارجي';

  @override
  String get osPressToScan => 'اضغط هنا ثم امسح البطاقة';

  @override
  String get osInvalidIdCode => 'النص المقروء ليس رمز هوية صالحاً';

  @override
  String get osLoginPassword => 'كلمة مرور الدخول';

  @override
  String get osSessionEnded => 'انتهت جلسة المستخدم سجّل الدخول مرة أخرى';

  @override
  String get osCannotBeNegative => 'لا يمكن أن يكون المبلغ المضاف سالباً';

  @override
  String osErrorStaffDialog(Object error) {
    return 'تعذر فتح نافذة اختيار موظف الوردية: $error';
  }

  @override
  String get osNoStaffSelected => 'لم يتم اختيار موظف الوردية';

  @override
  String get osIncompleteData =>
      'بيانات موظف الوردية غير مكتملة اختر الموظف مرة أخرى';

  @override
  String get osPasswordNotStored =>
      'لا نخزّن كلمة مرور الدخول التحقق كان في الحوار فقط';

  @override
  String get osAutoFixed =>
      'تم إصلاح بيانات موظف الوردية تلقائياً على هذا الجهاز يمكنك المتابعة';

  @override
  String get osStaffMissing =>
      'موظف الوردية المسجَّل لم يعد موجوداً أغلق الوردية من جهاز آخر أو اتصل بالمدير';

  @override
  String get osAuthRejected =>
      'رفض التحقق من موظف الوردية يجب عدم فتح التطبيق على وردية مفتوحة دون إثبات';

  @override
  String get osReturningToLogin =>
      'نسجّل خروج الجلسة على هذا الجهاز ونعود لشاشة تسجيل الدخول';

  @override
  String get osUseExistingShift => 'العودة للوردية المفتوحة بدلاً من ذلك';

  @override
  String get sdRecordSupplierReceipt => 'تسجيل وصل المورد';

  @override
  String get sdRecordSupplierReceiptSubtitle =>
      'رقم وتاريخ وصلهم + المبلغ + صورة اختيارية';

  @override
  String get sdSupplierPayment => 'دفعة للمورد';

  @override
  String get sdSupplierPaymentSubtitle => 'اختياري: خصم من الصندوق';

  @override
  String get sdSupplierReturn => 'مرتجع مورد (تخفيض الذمة)';

  @override
  String get sdSupplierReturnSubtitle => 'يسجّل حركة دون الصندوق';

  @override
  String get sdSupplierReceiptTitle => 'وصل المورد';

  @override
  String get sdTheirReceiptNo => 'رقم وصلهم / فاتورتهم';

  @override
  String get sdTheirReceiptDate => 'تاريخ وصلهم';

  @override
  String sdTheirReceiptDateWith(Object date) {
    return 'تاريخ وصلهم: $date';
  }

  @override
  String get sdAmountFdj => 'المبلغ (Fdj)';

  @override
  String get sdInternalNote => 'ملاحظة داخلية';

  @override
  String get sdPhoto => 'صورة';

  @override
  String get sdGallery => 'معرض';

  @override
  String sdPhotoSelected(Object name) {
    return 'صورة: $name';
  }

  @override
  String get sdCancel => 'إلغاء';

  @override
  String get sdSave => 'حفظ';

  @override
  String get sdEnterValidAmount => 'أدخل مبلغاً صالحاً';

  @override
  String sdSaveFailed(Object error) {
    return 'تعذّر الحفظ: $error';
  }

  @override
  String get sdReceiptRecorded => 'تم تسجيل وصل المورد';

  @override
  String get sdRecordDiscountFromCash => 'تسجيل خصم من الصندوق';

  @override
  String get sdDisableCashHint => 'يعطّله إن دفعت من حساب بنكي أو خارج النظام';

  @override
  String get sdConfirm => 'تأكيد';

  @override
  String get sdPaymentRecordedCash => 'تم تسجيل الدفعة وقيد الصندوق';

  @override
  String get sdPaymentRecordedNoCash => 'تم تسجيل الدفعة (دون صندوق)';

  @override
  String get sdRecordFailed => 'تعذّر التسجيل';

  @override
  String get sdReturnTitle => 'مرتجع مورد';

  @override
  String get sdNote => 'ملاحظة';

  @override
  String get sdReturnCashHint =>
      'سيُسجّل هذا المرتجع ضمن ذمم الموردين فقط دون حركة صندوق.';

  @override
  String get sdRegister => 'تسجيل';

  @override
  String get sdReturnDefaultNote => 'مرتجع مورد (بدون صندوق)';

  @override
  String get sdReturnFailed => 'تعذّر تسجيل المرتجع';

  @override
  String get sdReturnRecorded => 'تم تسجيل مرتجع المورد';

  @override
  String get sdReversePayment => 'عكس الدفعة؟';

  @override
  String sdReverseCashDesc(Object amount) {
    return 'سيُحذف سجل الدفعة ويُسجَّل في الصندوق إيداع قدره $amount Fdj';
  }

  @override
  String get sdReverseNoCashDesc =>
      'سيُحذف سجل الدفعة فقط (لم تكن مرتبطة بالصندوق).';

  @override
  String get sdConfirmReverse => 'تأكيد العكس';

  @override
  String get sdReverseFailed => 'تعذّر العكس';

  @override
  String get sdReversed => 'تم عكس الدفعة';

  @override
  String get sdNoActiveWarehouse =>
      'لا يوجد مخزن نشط — أضف مخزناً من إعدادات المخازن';

  @override
  String get sdTargetWarehouse => 'المخزن المستهدف';

  @override
  String get sdContinue => 'متابعة';

  @override
  String get sdLinkedVoucherCreated => 'أُنشئ السند وتم الربط';

  @override
  String get sdVoucherCreatedLinkFailed => 'أُنشئ السند وتعذّر الربط';

  @override
  String sdCreationFailed(Object error) {
    return 'تعذّر الإنشاء: $error';
  }

  @override
  String get sdUnlinkVoucher => 'إلغاء ربط الإذن؟';

  @override
  String get sdUnlinkVoucherDesc =>
      'سيُزال الربط بين وصل المورد وسند المخزون فقط دون حذف السند.';

  @override
  String get sdUnlinked => 'تم إلغاء الربط';

  @override
  String get sdLinkToSupplierReceipt => 'ربط بوصل المورد — إذن وارد';

  @override
  String get sdEmptyVoucherAutoLink => 'سند وارد فارغ + ربط تلقائي';

  @override
  String get sdLinkInstruction =>
      'أو اختر سنداً واردًا مسجّلاً، أو أدخل رقم السند / المعرّف ثم «بحث وربط».';

  @override
  String get sdNoVouchersYet =>
      'لا توجد أذون وارد في القاعدة بعد — استخدم الحقل أدناه عند توفر السند.';

  @override
  String get sdLatestVouchers => 'أحدث الأذون';

  @override
  String get sdLinked => 'تم الربط';

  @override
  String get sdLinkFailed => 'تعذّر الربط';

  @override
  String get sdVoucherNoOrId => 'رقم السند أو معرّفه';

  @override
  String get sdClose => 'إغلاق';

  @override
  String get sdVoucherNotFound => 'لم يُعثر على سند وارد بهذا الرقم';

  @override
  String get sdSearchAndLink => 'بحث وربط';

  @override
  String get sdEditSupplier => 'تعديل المورد';

  @override
  String get sdName => 'الاسم';

  @override
  String get sdPhone => 'الهاتف';

  @override
  String get sdSupplierDefault => 'مورد';

  @override
  String get sdEditTooltip => 'تعديل';

  @override
  String get sdSupplierNotFound => 'المورد غير موجود';

  @override
  String get sdBalanceOwedToYou => 'ما علينا لهذا المورد';

  @override
  String get sdOverpayment => 'رصيد لصالحكم (دفعة زائدة / خطأ)';

  @override
  String get sdBalanceWithSupplier => 'الرصيد مع المورد';

  @override
  String get sdNoBillForPayout =>
      'لا يوجد وصل مورد يغطّي هذه الدفعة — استخدم «عكس الدفعة» بجانب الدفعة لا';

  @override
  String sdPhoneLabel(Object phone) {
    return 'هاتف: $phone';
  }

  @override
  String get sdPaymentWithoutReceipt =>
      'تنبيه: دُفع للمورد دون تسجيل وصل بمبلغ مساوٍ. إن كان الدفع بالخطأ،';

  @override
  String get sdSupplierReturnLabel => 'مرتجع مورد';

  @override
  String get sdSupplierPaymentLabel => 'دفعة مورد';

  @override
  String get sdSupplierReceiptLabel => 'وصل مورد';

  @override
  String get sdSupplierReceipts => 'وصولات المورد';

  @override
  String get sdLinkReceiptInstruction =>
      'يمكن ربط كل وصل بإذن مخزني وارد (رقم السند) عند تسجيل الأذون في قاعدة البيانات.';

  @override
  String get sdNoReceiptsYet => 'لا وصولات بعد.';

  @override
  String get sdOurPayments => 'دفعاتنا';

  @override
  String get sdNoPaymentsYet => 'لا دفعات بعد.';

  @override
  String get sdRecordLabel => 'تسجيل';

  @override
  String sdBillRef(Object ref) {
    return 'وصل #$ref';
  }

  @override
  String get sdBillNoRef => 'وصل (بدون رقم)';

  @override
  String get sdUnlinkVoucherTooltip => 'إلغاء ربط الإذن';

  @override
  String get sdLinkVoucherTooltip => 'ربط بإذن وارد';

  @override
  String sdLinkedVoucher(Object ref) {
    return 'إذن وارد: $ref';
  }

  @override
  String sdTheirDate(Object date) {
    return 'تاريخهم: $date';
  }

  @override
  String sdRecordedDate(Object date) {
    return 'سجّلنا: $date';
  }

  @override
  String sdPaymentRef(Object ref) {
    return 'دفعة #$ref';
  }

  @override
  String get sdReverseTooltip => 'عكس الدفعة (خطأ / دفعة زائدة)';

  @override
  String get sdRecordedInCash => 'مسجّل في الصندوق';

  @override
  String get sdNotInCash => 'دون صندوق';

  @override
  String sdInvoiceVoucherRef(Object ref) {
    return 'سند فواتير #$ref';
  }

  @override
  String sdLinkedVoucherShort(Object ref) {
    return 'مرتبط بإذن #$ref';
  }

  @override
  String get sohPending => 'معلقة';

  @override
  String get sohInProgress => 'قيد العمل';

  @override
  String get sohReadyForDelivery => 'جاهزة للتسليم';

  @override
  String get sohDelivered => 'مسلّمة';

  @override
  String get sohSinceStart => 'منذ البدء';

  @override
  String get sohOverdue => 'متأخر';

  @override
  String get sohTimeRemaining => 'الوقت المتبقي';

  @override
  String get sohTryReLogin =>
      'جرّب تسجيل الخروج ثم الدخول، أو أعد تشغيل التطبيق.';

  @override
  String get sohRestartToCompleteInit =>
      'أعد تشغيل التطبيق لإكمال تهيئة قاعدة البيانات.';

  @override
  String get sohUnexpectedLocalData =>
      'بيانات محلية غير متوقعة؛ أعد تشغيل التطبيق. إن تكرّر ذلك، أبلغ الدعم.';

  @override
  String get sohDatabaseBusy =>
      'قاعدة البيانات مشغولة؛ انتظر ثوانٍ ثم أعد المحاولة.';

  @override
  String get sohPersistentError => 'إن استمرّت المشكلة، أعد تشغيل التطبيق.';

  @override
  String get sohNewTicketBreadcrumb => 'تذكرة صيانة جديدة';

  @override
  String get sohFailedToLoadTickets => 'تعذر تحميل التذاكر.';

  @override
  String sohDebugDetails(Object error) {
    return 'تفاصيل تقنية (Debug): $error';
  }

  @override
  String get sohRetry => 'إعادة المحاولة';

  @override
  String get sohNoTicketsInTab => 'لا توجد تذاكر في هذا التبويب.';

  @override
  String get sohNoMatchingResults => 'لا نتائج مطابقة.';

  @override
  String get sohReturnBadge => 'مرتجع';

  @override
  String get sohCreditSaleBadge => 'بيع آجل';

  @override
  String get sohInstallmentBadge => 'تقسيط';

  @override
  String get sohDeliveryBadge => 'توصيل';

  @override
  String get sohDeadlineOverdue =>
      'تجاوز موعد التسليم المتوقع — أكمل العمل أو حدّث الحالة.';

  @override
  String get sohTicketDetailsBreadcrumb => 'تفاصيل التذكرة';

  @override
  String get sohCustomerDefault => 'عميل';

  @override
  String sohSerialPlate(Object value) {
    return 'سيريال/لوحة: $value';
  }

  @override
  String sohValueLabel(Object value) {
    return 'القيمة: $value';
  }

  @override
  String sohPaidLabel(Object value) {
    return 'مدفوع: $value';
  }

  @override
  String sohDepositLabel(Object value) {
    return 'العربون: $value';
  }

  @override
  String sohRemainingLabel(Object value) {
    return 'متبقّي: $value';
  }

  @override
  String get sohConvertToInvoiceTooltip => 'تحويل لفاتورة';

  @override
  String get sohItemsSentToSale => 'تم إرسال البنود إلى شاشة البيع.';

  @override
  String get sohFailedToOpenSale =>
      'تعذر فتح البيع — راجع التذكرة أو أعد المحاولة.';

  @override
  String get sohWorkStarted => 'تم بدء العمل وبدء احتساب الموعد';

  @override
  String get sohStartWorkLabel => 'بدء العمل';

  @override
  String get sohTicketMovedToReady => 'تم نقل التذكرة إلى جاهزة للتسليم';

  @override
  String get sohMoveToReady => 'انتقال إلى جاهز للتسليم';

  @override
  String get sohReadyForDeliveryLabel => 'جاهز للتسليم';

  @override
  String get sohGoToPaymentLabel => 'الانتقال للدفع';

  @override
  String get sohDeliveryRecorded => 'تم تسجيل التسليم';

  @override
  String get sohDeliveryFailed => 'تعذر التسليم — راجع المبالغ من التفاصيل.';

  @override
  String get sohConfirmDelivery => 'تأكيد التسليم';

  @override
  String get sohMaintenanceOrdersTitle => 'طلبات الصيانة';

  @override
  String get sohRefreshTooltip => 'تحديث';

  @override
  String get sohNewTicketLabel => 'تذكرة جديدة';

  @override
  String get sohSearchHint => 'بحث بالعميل أو الجهاز أو السيريال…';

  @override
  String get sohDefaultServiceName => 'خدمة فنية';

  @override
  String sohSerialPrefix(Object value) {
    return 'س: $value';
  }

  @override
  String get sohSparePartDefault => 'قطعة غيار';

  @override
  String get sohNewSaleBreadcrumb => 'بيع جديد';

  @override
  String get psTitle => 'إعدادات المنتجات';

  @override
  String get psTabSetup => 'تهيئة المنتجات';

  @override
  String get psTabTracking => 'تتبع المنتجات';

  @override
  String get psTabVouchers => 'الأذون المخزنية';

  @override
  String get psTabDefaults => 'القيم الافتراضية';

  @override
  String get psSetupTitle => 'تهيئة المنتجات';

  @override
  String get psSetupDesc =>
      'إدارة الترقيم التلقائي، وخيارات التسعير المتقدمة، ونظام الوحدات، والأصناف المجمعة.';

  @override
  String get psNextSkuTitle => 'الرقم التسلسلي للمنتج التالي';

  @override
  String get psNextSkuDecoration => 'الرقم التالي';

  @override
  String get psNumberingSettings => 'إعدادات الترقيم';

  @override
  String get psNextSkuHint =>
      'الرقم الذي سيُعرض كتلميح للمعرّف التالي. البادئة تُحفظ في إعدادات الترقيم.';

  @override
  String get psAdvancedPricingTitle => 'خيارات التسعير المتقدمة';

  @override
  String get psEnabled => 'مفعّل';

  @override
  String get psDisabled => 'معطّل';

  @override
  String get psAdvancedPricingDesc =>
      'عند التفعيل: في «إضافة منتج جديد» يُقترح سعر البيع وأقل سعر من سعر الشراء حسب الهامش أدناه (قابل للتعديل يدوياً قبل الحفظ).';

  @override
  String get psCostMarginDecoration => 'هامش الربح على التكلفة (%)';

  @override
  String get psCostMarginHint => 'مثال: 25';

  @override
  String get psMinSellPriceDesc => 'أقل سعر بيع كنسبة من سعر البيع (%)';

  @override
  String get psMinSellPriceHint => '100 = مساوٍ لسعر البيع';

  @override
  String get psSaveSuggestedPrices => 'حفظ أرقام الاقتراح';

  @override
  String get psPricingExample =>
      'مثال: تكلفة 10,000 وهامش 25% → سعر بيع مقترح 12,500. نسبة أقل سعر 100% تجعل أقل سعر = سعر البيع.';

  @override
  String get psMultiUnitTitle => 'استخدام وحدات متعددة لكل صنف';

  @override
  String get psManageUnits => 'إدارة الوحدات';

  @override
  String get psMultiUnitDesc =>
      'السماح بشراء بوحدة وبيع بوحدة أخرى مع معاملات تحويل من قوالب الوحدات.';

  @override
  String get psDefaultStockDisplayTitle => 'الوحدة الافتراضية لعرض المخزون';

  @override
  String get psUnitBase => 'الوحدة الأساسية لقالب الوحدة';

  @override
  String get psUnitBaseDesc => 'عرض المخزون بوحدة القالب الأساسية.';

  @override
  String get psUnitSale => 'وحدة البيع';

  @override
  String get psUnitSaleDesc => 'عرض الرصيد بوحدة البيع الافتراضية.';

  @override
  String get psUnitPurchase => 'وحدة الشراء';

  @override
  String get psUnitPurchaseDesc => 'عرض الرصيد بوحدة الشراء الافتراضية.';

  @override
  String get psStockDisplayDesc =>
      'تحدد كيف يُعرض المخزون في التقارير والجرد عند تفعيل تعدد الوحدات.';

  @override
  String get psBundlesTitle => 'التجميعات والوحدات المركبة';

  @override
  String get psBundlesAllowed => 'مسموح';

  @override
  String get psBundlesNotAllowed => 'غير مسموح';

  @override
  String get psBundlesDesc =>
      'تعريف صنف مركّب من عدة أصناف وخصم المخزون عند التجميع أو البيع (يتطلب تطوير شاشات لاحقاً).';

  @override
  String get psAddProductPoliciesTitle => 'سياسات شاشة إضافة المنتج';

  @override
  String get psShowAdvancedPricing => 'إظهار قسم التسعير المتقدم';

  @override
  String get psShowAdvancedPricingDesc =>
      'يتحكم بإظهار الضريبة والخصم وأقل سعر البيع وهامش الربح.';

  @override
  String get psShowBarcodeField => 'إظهار حقل الباركود';

  @override
  String get psBarcodeRequired => 'الباركود إلزامي عند الحفظ';

  @override
  String get psShowImageField => 'إظهار حقل صورة المنتج';

  @override
  String get psImageRequired => 'صورة المنتج إلزامية';

  @override
  String get psShowExtraFields => 'إظهار الحقول الإضافية';

  @override
  String get psShowExtraFieldsDesc =>
      'مثل: ملاحظات داخلية، وسوم، الوزن، وتواريخ الإنتاج/الانتهاء.';

  @override
  String get psSupplierRequired => 'المورد إلزامي عند الحفظ';

  @override
  String get psWarehouseRequired => 'المخزن إلزامي عند الحفظ';

  @override
  String get psDefaultTrackingEnabled => 'تفعيل تتبع المخزون افتراضياً';

  @override
  String get psDefaultTrackingDesc =>
      'ينعكس على حالة المفتاح عند فتح شاشة إضافة المنتج.';

  @override
  String get psAddProductPoliciesDesc =>
      'هذه السياسات تُطبّق مباشرة على شاشة «إضافة منتج جديد» دون التأثير على شاشة البيع.';

  @override
  String get psTrackingTitle => 'تتبع المنتجات';

  @override
  String get psTrackingDesc => 'إعداد طرق التتبع وسلوك النظام عند نفاد الكمية.';

  @override
  String get psSerialBatchExpiryTitle =>
      'تتبع بواسطة الرقم المسلسل، رقم التوصيلة، أو تاريخ الانتهاء';

  @override
  String get psSerialBatchExpiryDesc =>
      'عند التفعيل يمكن تفعيل التتبع لكل منتج على حدة عند الإضافة.';

  @override
  String get psNegativeStockTitle => 'المخزون السالب';

  @override
  String get psNegativeStockStop =>
      'إيقاف العمليات عند نفاد الكمية لجميع المنتجات';

  @override
  String get psNegativeStockStopDesc =>
      'منع البيع أو الصرف عند وصول المخزون إلى الصفر.';

  @override
  String get psNegativeStockTrackableOnly =>
      'السماح فقط للمنتجات القابلة للتتبع بالكميات';

  @override
  String get psNegativeStockTrackableDesc =>
      'يُسمح بالبيع السالب أو الصرف حسب سياسة الصنف.';

  @override
  String get psNegativeStockDesc => 'يحدد سلوك النظام عند نفاد المخزون.';

  @override
  String get psShowTotalAvailableTitle => 'عرض الكمية الإجمالية والمتوفرة';

  @override
  String get psShowTotalAvailableDesc =>
      'عرض إجمالي الكمية مقابل المتاح بعد الحجوزات (عند تفعيل الحجز لاحقاً).';

  @override
  String get psVouchersTitle => 'الأذون المخزنية';

  @override
  String get psVouchersDesc =>
      'إنشاء طلبات مخزنية وترقيم أذون التحويل وربطها بالمبيعات والمشتريات.';

  @override
  String get psInventoryRequestsTitle => 'الطلبات المخزنية';

  @override
  String get psInventoryRequestsDesc =>
      'تمكين الأقسام من رفع طلبات مخزنية لمراجعتها. الصلاحيات تُضبط من أدوار المستخدمين عند توفرها.';

  @override
  String get psTransferVoucherNextTitle =>
      'الرقم التسلسلي لإذن التحويل المخزني التالي';

  @override
  String get psTransferVoucherNextDecoration => 'الرقم';

  @override
  String get psTransferVoucherNextDesc => 'الرقم التالي المقترح لأذون التحويل.';

  @override
  String get psSalesVoucherTitle => 'الأذون المخزنية لفواتير المبيعات';

  @override
  String get psSalesVoucherDesc =>
      'عند التفعيل يُنشأ إذن صرف يحتاج اعتماداً قبل خصم المخزون.';

  @override
  String get psPurchaseVoucherTitle => 'الأذون المخزنية لفواتير الشراء';

  @override
  String get psPurchaseVoucherDesc =>
      'عند التفعيل يُنشأ إذن إدخال يحتاج اعتماداً قبل إضافة المخزون.';

  @override
  String get psDefaultsTitle => 'القيم الافتراضية للنظام';

  @override
  String get psDefaultsDesc =>
      'قيم تُقترح تلقائياً للمستودعات والمنتجات والضرائب.';

  @override
  String get psDefaultSubAccountTitle => 'الحساب الفرعي الافتراضي';

  @override
  String get psPleaseChoose => 'من فضلك اختر';

  @override
  String get psNone => '— بدون —';

  @override
  String get psGeneralInventory => 'مخزون عام';

  @override
  String get psRawMaterials => 'مواد خام';

  @override
  String get psCommercial => 'تجاري';

  @override
  String get psDefaultSubAccountDesc =>
      'يُستخدم كمرجع محاسبي عند ربط المخزون بالحسابات.';

  @override
  String get psDefaultWarehouseTitle => 'المستودع الافتراضي';

  @override
  String get psManageWarehouses => 'إدارة المستودعات';

  @override
  String get psChooseWarehouse => 'اختر مستودعاً';

  @override
  String get psDefaultWarehouseDesc =>
      'يُقترح عند إضافة منتجات وحركات مخزون جديدة.';

  @override
  String get psDefaultPriceListTitle => 'قائمة الأسعار الافتراضية';

  @override
  String get psManagePriceLists => 'إدارة القوائم';

  @override
  String get psDefaultPriceListDesc =>
      'تُستخدم كقائمة أسعار افتراضية للفرع الحالي عند توفر الربط.';

  @override
  String get psDefaultTax1Title => 'الضريبة الافتراضية 1';

  @override
  String get psManageTaxes => 'إدارة الضرائب';

  @override
  String get psTaxRatesDesc =>
      'نِسَب الضريبة تُضبط لكل منتج أو من إعدادات الفاتورة.';

  @override
  String get psDefaultTax1Desc =>
      'تُقترح للمنتجات الجديدة ومتوافقة مع حقل الضريبة في المنتج.';

  @override
  String get psDefaultTax2Title => 'الضريبة الافتراضية 2';

  @override
  String get psDefaultTax2Desc => 'للاستخدام المزدوج عند دعم ضريبتين لاحقاً.';

  @override
  String get psReturnCostMethodTitle => 'طريقة احتساب تكلفة المرتجعات';

  @override
  String get psReturnBySalePrice => 'حسب سعر البيع';

  @override
  String get psReturnBySalePriceDesc => 'استخدام سعر البيع من فاتورة المبيعات.';

  @override
  String get psReturnByAvgCost => 'حسب آخر متوسط للتكلفة';

  @override
  String get psReturnByAvgCostDesc =>
      'استخدام متوسط التكلفة عند إنشاء المرتجع.';

  @override
  String get psReturnCostDesc => 'يُطبَّق عند معالجة مرتجعات المبيعات.';

  @override
  String get psBusinessNatureTitle => 'طبيعة مبيعات النشاط';

  @override
  String get psNatureProducts => 'المنتجات فقط';

  @override
  String get psNatureProductsDesc => 'مناسب للمخزون الفعلي.';

  @override
  String get psNatureServices => 'الخدمات فقط';

  @override
  String get psNatureServicesDesc => 'أنشطة تعتمد على الوقت أو المشاريع.';

  @override
  String get psNatureBoth => 'منتجات وخدمات';

  @override
  String get psNatureBothDesc => 'دمج بين الصنفين في النظام.';

  @override
  String get psBusinessNatureDesc =>
      'يحدد التركيز الافتراضي في شاشات المخزون والفوترة.';

  @override
  String get psVoucherPermEnabled => 'مفعّل';

  @override
  String get psVoucherPermDisabled => 'معطّل';

  @override
  String get psTaxExempt => 'معفى';

  @override
  String get psCustomTax => 'مخصص';

  @override
  String get psTransferSettingsTitle => 'إعدادات ترقيم أذون التحويل';

  @override
  String get psOptionalPrefix => 'بادئة اختيارية';

  @override
  String get psExamplePrefix => 'مثال: TR-';

  @override
  String get psCancel => 'إلغاء';

  @override
  String get psSave => 'حفظ';

  @override
  String get psSavePrefixHint => 'الرقم التالي المقترح لأذون التحويل.';

  @override
  String get psSerialHint =>
      'الرقم الذي سيُعرض كتلميح للمعرّف التالي. البادئة تُحفظ في إعدادات الترقيم.';

  @override
  String get psTaxToggleTooltip =>
      'عدم التعامل بالضريبة — إيقاف إظهار حقل الضريبة';

  @override
  String get psShowTaxField => 'إظهار حقل الضريبة';

  @override
  String get psTaxToggleDesc =>
      'في «إضافة منتج جديد». أيقونة المنع تعطّل الضريبة دفعة واحدة.';

  @override
  String get psDiscountToggleTooltip =>
      'عدم التعامل بالخصم — إيقاف إظهار حقول الخصم';

  @override
  String get psShowDiscountFields => 'إظهار حقول الخصم';

  @override
  String get psDiscountToggleDesc =>
      'في «إضافة منتج جديد». أيقونة المنع تعطّل الخصم دفعة واحدة.';

  @override
  String get sodEditTicket => 'تعديل تذكرة';

  @override
  String get sodSearchParts => 'بحث في قطع الغيار…';

  @override
  String get sodProduct => 'منتج';

  @override
  String get sodAddPart => 'إضافة قطعة غيار';

  @override
  String get sodPart => 'قطعة غيار';

  @override
  String get sodQuantity => 'الكمية';

  @override
  String get sodSalePrice => 'سعر البيع (Fdj)';

  @override
  String get sodCancel => 'إلغاء';

  @override
  String get sodAdd => 'إضافة';

  @override
  String get sodTechnicalService => 'خدمة فنية';

  @override
  String get sodSerialPlate => 'سيريال/لوحة';

  @override
  String get sodNewSale => 'بيع جديد';

  @override
  String get sodTicketDetails => 'تفاصيل التذكرة';

  @override
  String get sodEdit => 'تعديل';

  @override
  String get sodUpdate => 'تحديث';

  @override
  String get sodAddPartShort => 'إضافة قطعة';

  @override
  String get sodCustomer => 'عميل';

  @override
  String get sodSerialInfo => 'سيريال/لوحة';

  @override
  String get sodConvertToInvoice => 'تحويل لفاتورة بيع';

  @override
  String get sodParts => 'قطع الغيار';

  @override
  String get sodNoPartsYet => 'لا توجد قطع غيار بعد.';

  @override
  String get sodInvoiceItems => 'بنود الفاتورة';

  @override
  String get sodViewOnly => 'للعرض فقط';

  @override
  String get sodInvoiceProductsDesc =>
      'المنتجات والخدمات المسجّلة في فاتورة البيع المرتبطة.';

  @override
  String get sodPastDue => 'تجاوز موعد التسليم المتوقع';

  @override
  String get sodExpectedDelivery => 'موعد التسليم المتوقع للزبون';

  @override
  String sodWorkDurationMin(Object minutes) {
    return 'مدة العمل المتوقعة: \$dm دقيقة';
  }

  @override
  String get sodPending => 'معلقة';

  @override
  String get sodInProgress => 'قيد العمل';

  @override
  String get sodReadyForDelivery => 'جاهزة للتسليم';

  @override
  String get sodDelivered => 'مسلّمة';

  @override
  String get sodCancelled => 'ملغاة';

  @override
  String get sodFinancialSummary => 'ملخص مالي (بالفلس)';

  @override
  String get sodService => 'الخدمة الفنية';

  @override
  String get sodPartsLabel => 'قطع الغيار';

  @override
  String get sodTotal => 'الإجمالي';

  @override
  String get sodPaidAdvance => 'مدفوع مسبقاً';

  @override
  String get sodRemainingOnDelivery => 'المتبقي عند التسليم';

  @override
  String sodQtyPriceTotal(Object price, Object qty, Object total) {
    return 'الكمية: $qty · سعر: $price · إجمالي: $total';
  }

  @override
  String sodQtyOnly(Object qty) {
    return 'الكمية: $qty';
  }

  @override
  String get sodDelete => 'حذف';

  @override
  String get sodLoadError => 'تعذر تحميل بيانات التذكرة.';

  @override
  String get sodRetry => 'إعادة المحاولة';

  @override
  String get settingsImportMeds => 'استيراد الأدوية';

  @override
  String get settingsImportMedsDesc => 'إضافة 157 دواء من ملف الجرد';

  @override
  String get settingsImportMedsConfirm =>
      'سيتم إضافة 157 دواء إلى كتالوج المنتجات. هل تريد المتابعة؟';

  @override
  String settingsImportedCount(Object count) {
    return 'تم استيراد $count دواء بنجاح';
  }

  @override
  String settingsImportError(Object error) {
    return 'خطأ: $error';
  }

  @override
  String get settingsAppVersion => 'الإصدار 1.0.0';

  @override
  String get settingsCopyright => '© 2026 Mاري. جميع الحقوق محفوظة.';

  @override
  String get settingsLicenseActive => 'مفعّل';

  @override
  String get settingsLicenseTrial => 'تجريبية';

  @override
  String get settingsLicenseInactive => 'غير نشط';

  @override
  String get settingsLicenseDisconnected => 'غير متصّل';

  @override
  String get settingsLicenseNone => 'بدون ترخيص';

  @override
  String get settingsDeviceAllowed => 'تم السماح للجهاز بالعودة';

  @override
  String settingsDeviceCount(Object count) {
    return '$count أجهزة';
  }

  @override
  String get settingsSubscription => 'الاشتراك';

  @override
  String settingsSubscriptionExpires(Object date) {
    return 'ينتهي الاشتراك في: $date';
  }

  @override
  String settingsDaysRemaining(Object days) {
    return 'متبقٍ تقريباً: $days يوماً';
  }

  @override
  String get settingsSubscriptionActiveNoExpiry =>
      'اشتراك مفعّل بلا تاريخ انتهاء محدد في السحابة.';

  @override
  String get settingsLinkedDevices => 'الأجهزة المرتبطة بالحساب';

  @override
  String get settingsUpdate => 'تحديث';

  @override
  String get settingsNoDevicesRegistered => 'لا توجد أجهزة مسجّلة بعد.';

  @override
  String settingsLastActive(Object date) {
    return 'آخر نشاط: $date';
  }

  @override
  String get settingsDisconnectedCannotLogin =>
      'مفصول — لا يمكنه الدخول حتى الموافقة';

  @override
  String get settingsThisDevice => 'هذا الجهاز';

  @override
  String get settingsAllowReturn => 'سماح بالعودة';

  @override
  String get settingsDisconnectDevice => 'فصل الجهاز';

  @override
  String get settingsAutoSync => 'المزامنة التلقائية';

  @override
  String get settingsAutoSyncDesc =>
      'تُرفع من كل جهاز نسخة كاملة من قاعدة البيانات؛ الأحدث في السحابة هي التي تُستورد على الجهاز.';

  @override
  String get settingsSyncNow => 'مزامنة الآن';

  @override
  String settingsLastSync(Object date) {
    return 'آخر مزامنة: $date';
  }

  @override
  String get settingsSyncSuccess => 'تمت المزامنة بنجاح';

  @override
  String get settingsClearCloudProducts => 'مسح المنتجات من السحابة';

  @override
  String get settingsClearCloudProductsDesc =>
      'سيتم حذف جميع المنتجات من السحابة فقط. الإعدادات والفواتير والعملاء لن تتأثر. تريد المتابعة؟';

  @override
  String get settingsCleared => 'تم مسح المنتجات من السحابة. اضغط مزامنة الآن';

  @override
  String settingsClearFailed(Object error) {
    return 'فشل المسح: $error';
  }

  @override
  String get settingsViewSubscriptionPlans => 'عرض خطط الاشتراك';

  @override
  String get settingsSubscriptionPlans => 'خطط الاشتراك';

  @override
  String get settingsThankYou => 'شكراً لتعاملكم معنا';

  @override
  String get sofTenantError =>
      'تعذر تحديد بيانات المستأجر. أعد فتح التطبيق ثم حاول مرة أخرى.';

  @override
  String get sofDbInitError =>
      'قاعدة البيانات تحتاج تهيئة/تحديث. أعد فتح التطبيق ثم حاول مرة أخرى.';

  @override
  String get sofUnexpectedError => 'حدث خطأ غير متوقع أثناء الحفظ.';

  @override
  String get sofExpectedWorkDuration => 'المدة المتوقعة لإنجاز العمل';

  @override
  String get sofHours => 'ساعات';

  @override
  String get sofMinutes => 'دقائق';

  @override
  String get sofCancel => 'إلغاء';

  @override
  String get sofDone => 'تم';

  @override
  String get sofNotSet => 'لم تُحدَّد — اضغط لاختيار الساعات والدقائق';

  @override
  String sofHoursMinutes(Object hours, Object minutes) {
    return '$hours س $minutes د — اضغط للتعديل';
  }

  @override
  String sofHoursOnly(Object hours) {
    return '$hours ساعة — اضغط للتعديل';
  }

  @override
  String sofMinutesOnly(Object minutes) {
    return '$minutes دقيقة — اضغط للتعديل';
  }

  @override
  String get sofTaskNotStarted =>
      'بعد «بدء العمل» من قائمة التذاكر يُثبَّت الموعد بدقة من وقت البدء.';

  @override
  String sofWorkDurationMin(Object minutes) {
    return 'مدة العمل المتوقعة: $minutes دقيقة';
  }

  @override
  String get sofPastDue => 'تجاوز موعد التسليم المتوقع';

  @override
  String get sofExpectedDelivery => 'موعد التسليم المتوقع (للزبون)';

  @override
  String get sofSearchServices => 'بحث في الخدمات…';

  @override
  String get sofService => 'خدمة';

  @override
  String get sofEditTicket => 'تعديل تذكرة';

  @override
  String get sofNewTicket => 'تذكرة جديدة';

  @override
  String get sofSave => 'حفظ';

  @override
  String get sofSaveError => 'حدث خطأ أثناء الحفظ. حاول مرة أخرى.';

  @override
  String get sofAll => 'الكل';

  @override
  String get sofCustomerName => 'اسم العميل';

  @override
  String get sofCustomerSearchHint => 'ابدأ الكتابة للبحث في العملاء';

  @override
  String get sofCustomerRequired => 'اسم العميل مطلوب';

  @override
  String get sofCustomer => 'عميل';

  @override
  String get sofNewCustomer => 'عميل جديد';

  @override
  String get sofDeviceName => 'اسم الجهاز / السيارة';

  @override
  String get sofDeviceNameRequired => 'اسم الجهاز مطلوب';

  @override
  String get sofSerialPlateOptional => 'رقم تسلسلي / لوحة (اختياري)';

  @override
  String get sofSerialHint =>
      'إن تُرك فارغاً يُولَّد تلقائياً رقم مرجعي داخلي للتذكرة (وليس سيريال الجهاز).';

  @override
  String get sofExpectedDuration => 'المدة المتوقعة';

  @override
  String get sofServiceTitle => 'الخدمة';

  @override
  String get sofServiceNotSet => 'غير محددة (اختياري)';

  @override
  String get sofServiceSet => 'محددة';

  @override
  String get sofSelect => 'اختيار';

  @override
  String get sofEstimatedPrice => 'سعر تقديري (من الخدمة)';

  @override
  String get sofEstimatedPriceHint => 'يُملأ تلقائياً من سعر الخدمة';

  @override
  String get sofAgreedPrice => 'السعر المتفق عليه (Fdj)';

  @override
  String get sofAgreedPriceHint => 'المكان الوحيد لتعديل السعر';

  @override
  String get sofInvalidAmount => 'أدخل مبلغاً صحيحاً';

  @override
  String get sofAdvancePayment => 'عربون/دفعة مقدمة (Fdj)';

  @override
  String get sofProblemDesc => 'وصف المشكلة (اختياري)';

  @override
  String get sofSaving => 'جارٍ الحفظ…';

  @override
  String get sofSaveTicket => 'حفظ التذكرة';

  @override
  String get licCheckingLicense => 'جارٍ التحقق من الترخيص…';

  @override
  String get licNoInternet => 'لا يوجد اتصال بالإنترنت';

  @override
  String get licOfflineWarning =>
      'يعمل التطبيق بآخر بيانات ترخيص محفوظة.\nتأكد من الاتصال في أقرب فرصة.';

  @override
  String get licRetry => 'إعادة المحاولة';

  @override
  String get licEnterWithoutConnection => 'الدخول بدون اتصال';

  @override
  String get licUpgradeForDevices => 'ترقية الخطة لإضافة أجهزة';

  @override
  String osUnexpectedInitError(Object error) {
    return 'حدث خطأ غير متوقع أثناء التهيئة: $error';
  }

  @override
  String osErrorOpeningShift(Object error) {
    return 'تعذر فتح الوردية: $error';
  }

  @override
  String osShiftOpenedMsg(Object id) {
    return 'تم فتح الوردية رقم #$id';
  }

  @override
  String osOpenShiftNotifTitle(Object id) {
    return 'فتح وردية #$id';
  }

  @override
  String osDetailStaff(Object name) {
    return 'موظف الوردية: $name';
  }

  @override
  String osDetailSystemBalance(Object amount) {
    return 'رصيد النظام عند الفتح: $amount';
  }

  @override
  String osDetailPhysicalCount(Object amount) {
    return 'الجرد اليدوي (الصندوق): $amount';
  }

  @override
  String osDetailAddedCash(Object amount) {
    return 'المبلغ المضاف عند الفتح: $amount';
  }

  @override
  String get osResumeShift => 'متابعة الوردية';

  @override
  String osResumeShiftDesc(Object name) {
    return 'توجد وردية مفتوحة باسم \"$name\". أدخل كلمة مرور الموظف للمتابعة.';
  }

  @override
  String get osResumeShiftHint => 'أدخل كلمة مرور الموظف للمتابعة';

  @override
  String osUserFallback(Object id) {
    return 'مستخدم #$id';
  }

  @override
  String osErrorLoadingUsersParam(Object error) {
    return 'تعذر تحميل مستخدمي الوردية: $error';
  }

  @override
  String get osPasswordHint => 'كلمة مرور المستخدم المختار';

  @override
  String get osOpeningShiftLoading => 'جاري فتح الوردية…';

  @override
  String get csNoOpenShift => 'لا توجد وردية مفتوحة';

  @override
  String get csCloseShiftTitle => 'إغلاق الوردية';

  @override
  String get csShiftSummary => 'ملخص هذه الوردية';

  @override
  String get csSalesInvoices => 'فواتير البيع';

  @override
  String get csReturnInvoices => 'فواتير المرتجع';

  @override
  String get csPasswordVerifyTitle => 'تأكيد بكلمة مرور موظف الوردية (اختياري)';

  @override
  String get csPasswordHintNoUser =>
      'أدخل كلمة مرور حساب الدخول إن أردت التحقق. اترك الحقل فارغاً لتخطي التحقق';

  @override
  String csPasswordHintWithName(Object name) {
    return 'أدخل كلمة مرور الحساب \"$name\" إن أردت التحقق. اترك الحقل فارغاً لتخطي التحقق';
  }

  @override
  String get csPasswordPlaceholder => 'كلمة مرور الدخول (اختياري)';

  @override
  String get csSystemBalance => 'رصيد الصندوق (حسب النظام)';

  @override
  String get csBalanceDesc =>
      'يُحدَّد الرصيد تلقائياً من حركات الصندوق. راجع القيم ثم أكّد السحب.';

  @override
  String get csCashInBox => 'المبلغ في الصندوق';

  @override
  String get csWithdrawAmount => 'المبلغ الذي تريد أخذه';

  @override
  String get csRemainingAfterWithdraw => 'المتبقي في الصندوق بعد السحب';

  @override
  String get csConfirmClose => 'تأكيد وإغلاق الوردية';

  @override
  String get csPasswordVerifyError => 'تعذر التحقق من كلمة المرور لهذا الحساب';

  @override
  String get csUserVerifyError => 'تعذر التحقق من المستخدم الحالي';

  @override
  String get csNoSavedPassword =>
      'لا توجد كلمة مرور محفوظة لهذا الحساب. اترك الحقل فارغاً.';

  @override
  String get csWrongPassword => 'كلمة المرور غير صحيحة';

  @override
  String get csWithdrawNegative => 'المبلغ المسحوب لا يمكن أن يكون سالباً';

  @override
  String get csWithdrawExceeds =>
      'المبلغ المسحوب أكبر من المبلغ الموجود في الصندوق';

  @override
  String csCloseError(Object error) {
    return 'تعذر الإغلاق: $error';
  }

  @override
  String get csRefreshBalance => 'تحديث الرصيد';

  @override
  String get csInvalidValue => 'قيمة غير صالحة';

  @override
  String csCloseNotifTitle(Object id) {
    return 'إغلاق وردية #$id';
  }

  @override
  String get csShiftClosedMsg => 'تم إغلاق الوردية. افتح وردية جديدة للمتابعة.';

  @override
  String csDetailStaff(Object name) {
    return 'موظف الوردية: $name';
  }

  @override
  String csDetailSystemBalanceClose(Object amount) {
    return 'رصيد النظام لحظة الإغلاق: $amount Fdj';
  }

  @override
  String csDetailDeclaredCash(Object amount) {
    return 'المبلغ المُعلَن في الصندوق: $amount Fdj';
  }

  @override
  String csDetailWithdrawn(Object amount) {
    return 'المبلغ المسحوب: $amount Fdj';
  }

  @override
  String csDetailRemaining(Object amount) {
    return 'المتبقّي في الصندوق بعد السحب: $amount Fdj';
  }

  @override
  String get cashBucketInvoices => 'فواتير ومبيعات (قيود مرتبطة بفاتورة)';

  @override
  String get cashBucketOther => 'حركات أخرى';

  @override
  String get cashDeclaredClosingCash => 'المُعلَن متبقيًّا في الصندوق';

  @override
  String get expCsvHeader => 'الفئة,الوصف,المبلغ,التاريخ,الحالة,متكرر,الموظف';

  @override
  String expDateFromTo(Object from, Object to) {
    return 'من: $from   إلى: $to';
  }

  @override
  String get expOtherPrefix => 'أخرى: ';

  @override
  String get expBeneficiarySuffix => ' — المستفيد';

  @override
  String get expBreakdownByCategory => 'توزيع حسب الفئة';

  @override
  String get expCategoryShareGauge => 'نسب إنفاق الفئات';

  @override
  String get expCategoryShareDescription =>
      'كل قوس يمثل نسبة فئة من إجمالي المصروفات في الفترة.';

  @override
  String get expDailyTrendDescription =>
      'يعرض مجموع كل فئة يوميًا بشكل تراكمي، مع محور قيم واضح ومسافات مريحة.';

  @override
  String get expAnalyticsDisclaimer =>
      'ملاحظة: التحليلات تعتمد على تجميع SQL مباشر من جدول المصروفات ضمن الفترة المختارة.';

  @override
  String get expNoMetricsData => 'لا توجد بيانات لعرض المقاييس.';

  @override
  String get expNoTrendData => 'لا توجد بيانات اتجاه عبر الزمن لعرضها.';

  @override
  String get expAmountColon => 'المبلغ:';

  @override
  String expEmployeeFallback(Object id) {
    return 'موظف #$id';
  }

  @override
  String get expReceiptNumber => 'رقم الفاتورة';

  @override
  String expSaveError(Object error) {
    return 'تعذر الحفظ: $error';
  }

  @override
  String expTopCategoryLabel(Object name) {
    return 'أعلى فئة: $name';
  }

  @override
  String get blTitle => 'طباعة ملصقات باركود';

  @override
  String blPrintCount(Object count) {
    return 'طباعة $count ملصق';
  }

  @override
  String blTotalLabels(Object count) {
    return 'إجمالي الملصقات: $count';
  }

  @override
  String blProducts(Object count) {
    return 'المنتجات: $count';
  }

  @override
  String get blPrintHint =>
      'الطباعة عبر الطابعة الافتراضية للنظام أو من شاشة المعاينة.';

  @override
  String get blDocTitle => 'ملصقات باركود المنتجات';

  @override
  String blSkippedZeroQty(Object count) {
    return 'تم تخطي المنتجات ذات الكمية صفر ($count)';
  }

  @override
  String blLoadError(Object error) {
    return 'تعذّر التحميل: $error';
  }

  @override
  String get blWeightProductsHint =>
      'منتجات الوزن: يُطبع المعرف على الملصق؛ الوزن يُوزَّن عند البيع.';

  @override
  String blBarcode(Object code) {
    return 'باركود: $code';
  }

  @override
  String get blNoBarcode => 'بدون باركود';

  @override
  String blStock(Object qty) {
    return 'مخزون: $qty';
  }

  @override
  String blProductCode(Object code) {
    return 'رمز صنف: $code';
  }

  @override
  String get blSettingsHint =>
      'اختَر المقاس ومظهر المعاينة (تطبَّق على البطاقات والطباعة).';

  @override
  String get blLabelSize => 'مقاس الملصق';

  @override
  String get blSetAllOne => 'اجعل الكل (1)';

  @override
  String blSetAllOneCount(Object count) {
    return 'اجعل الكل (1) ($count)';
  }

  @override
  String get blSearchProductHint => 'بحث عن منتج';

  @override
  String get blSearchProductSub => 'الاسم، الباركود، أو رمز الصنف';

  @override
  String blLastUpdated(Object time) {
    return 'آخر تحديث: $time — إعادة جلب الأسعار والمخزون';
  }

  @override
  String get blEmptyHint => 'ابحث عن منتج لإضافته للطباعة';

  @override
  String get blEmptySubHint => 'يمكنك إضافة منتجات متعددة وطباعتها دفعة واحدة';

  @override
  String blStockPrint(Object print, Object stock) {
    return 'مخزون: $stock | طباعة: $print';
  }

  @override
  String blPreviewLabel(Object name, Object price, Object size) {
    return 'معاينة: $name — $price — $size';
  }

  @override
  String get blAutoBarcodeNote => 'سيتم توليد باركود تلقائياً';

  @override
  String get blKg => 'كغم';

  @override
  String get blPerKg => '/كغم';

  @override
  String get blWeighted => 'وزن';

  @override
  String rptSectionCopied(Object name) {
    return 'تم نسخ اسم القسم: $name';
  }

  @override
  String get rptSalesTrendSubtitle =>
      'مخطط أعمدة — يوضح اتجاه المبيعات بين تاريخي الفترة';

  @override
  String get rptKPIShare =>
      'نسبة كل مؤشر من صافي المبيعات — متزامنة مع بطاقات KPI أعلاه';

  @override
  String get rptDailyBreakdownSubtitle =>
      'مكدّس من بيانات الفواتير والمصروفات (SQL GROUP BY يومي)';

  @override
  String get rptCustomerPieSubtitle =>
      'مخطط بيتزا تفاعلي — من فواتير البيع فقط (بدون السندات)';

  @override
  String get rptPaymentGaugeSubtitle =>
      'Gauges — متسقة مع نسب المخطط الدائري والجدول';

  @override
  String get rptPaymentTrendSubtitle =>
      'مكدّس — يبني كل يوم مجموع كل نوع دفع مباشرة من SQL';

  @override
  String get rptSalesOnlyNote =>
      'هذا القسم يعرض المبيعات فقط: نقدي/دين/تقسيط/توصيل.';

  @override
  String get rptVouchersExcluded =>
      'سندات التحصيل/تسديد الأقساط/دفع المورد تُستبعد من “المبيعات” (لأنها ليست إيراد بيع).';

  @override
  String get rptCustomerDistributionTitle => 'توزيع المبيعات على العملاء';

  @override
  String get rptCustomerDistributionDesc =>
      'بيتزا تفاعلي — يعرض أعلى 6 عملاء وباقي العملاء كـ “آخرون”';

  @override
  String get rptTopCustomersTitle => 'أكثر العملاء شراءً (حسب اسم الفاتورة)';

  @override
  String get rptTopCustomersSubtitle =>
      'ترتيب حسب الإجمالي — من بيانات الفواتير في الفترة';

  @override
  String get rptCustomerNameNote =>
      'تنبيه: الاسم مأخوذ من حقل “اسم العميل” في الفاتورة؛ لربط أدق استخدم اختيار العميل من السجل.';

  @override
  String get rptCustomerBalancesSubtitle =>
      'جدول — أرصدة مسجّلة في سجل العملاء';

  @override
  String get rptInstallmentPlansSubtitle =>
      'جدول — خطط الأقساط المرتبطة بفواتير الفترة';

  @override
  String get rptUnknownStaff => '(غير معروف)';

  @override
  String get rptStaffDistributionTitle => 'توزيع المبيعات على الموظفين';

  @override
  String get rptStaffDistributionDesc =>
      'مخطط بيتزا تفاعلي — حسب اسم الموظف المسجّل في الفاتورة (فواتير بيع فقط)';

  @override
  String get rptNoStaffData => 'لا توجد مبيعات مسجّلة باسم موظف في هذه الفترة';

  @override
  String get rptStaffShareTitle => 'نسبة كل موظف من إجمالي المبيعات';

  @override
  String get rptStaffShareSubtitle =>
      'Gauges — متسقة مع نسب المخطط الدائري والجدول';

  @override
  String get rptStaffTrendTitle => 'اتجاه مبيعات الموظفين عبر الزمن';

  @override
  String get rptStaffTrendSubtitle =>
      'مكدّس — أعلى 5 موظفين فقط لتفادي ازدحام الرسم';

  @override
  String get rptStaffInvoicesTitle =>
      'فواتير مسجّلة باسم الموظف (حقل الفاتورة)';

  @override
  String get rptStaffInvoicesSubtitle =>
      'جدول — أداء التسجيل حسب اسم الموظف على الفاتورة';

  @override
  String get rptMarginGaugeSubtitle =>
      'Gauges — توزيع نسبي يوضح أين تذهب كل وحدة إيراد';

  @override
  String get rptMarginTrendStacked =>
      'مكدّس — كل يوم يوضح تركيب الإيراد ومقابله المصروفات';

  @override
  String get rptMarginTrendStackedExpense =>
      'مكدّس — كل يوم يوضح تركيب الإيراد ومقابله المصروفات';

  @override
  String get rptMarginSortNote =>
      'ترتيب حسب الهامش الصافي (إيراد − تكلفة) بعد توزيع الخصومات وطرح المرتجعات';

  @override
  String get rptMarginPercent => 'الهامش %';

  @override
  String rptLoyaltyDiscounts(Object amount) {
    return 'خصومات ولاء على الفواتير: $amount Fdj';
  }

  @override
  String rptLoyaltyPointsEarned(Object count) {
    return 'نقاط ممنوحة (مجموع النقاط المسجّلة على الفواتير): $count';
  }

  @override
  String get rptCostBasisNote =>
      'تكلفة البند تُؤخذ بالترتيب: (١) مثبّتة وقت البيع، (٢) المتوسط المرجّح من دفعات المنتج (WAC)، (٣) آخر سعر شراء في بطاقة المنتج';

  @override
  String get rptCostBasisNote2 =>
      'الفواتير الجديدة تُثبّت التكلفة تلقائياً لحظة إنشائها، فلا يتأثر الماضي بتغيّر أسعار الشراء.';

  @override
  String get rptInvoiceDiscountNote =>
      'الخصم على مستوى الفاتورة (خصم الفاتورة + خصم الولاء) يُوزَّع نسبياً على كل سطر بند.';

  @override
  String get rptReturnsNote =>
      'المرتجعات (isReturned = 1) تُطرح من الإيراد ومن التكلفة معاً للحصول على الصافي الحقيقي.';

  @override
  String get rptVouchersExcludedNote =>
      'تُستبعد السندات (تحصيل/تسديد/دفع مورد) لأنها ليست بيع.';

  @override
  String get rptNetTotalNote =>
      'الصافي = الهامش الإجمالي − إجمالي المصروفات في الفترة.';

  @override
  String get rptItemRevenueSubtitle =>
      'جدول — ترتيب حسب إيراد البنود في الفترة';

  @override
  String get rptCostConfidenceSubtitle =>
      'كلما ارتفعت نسبة السطور ذات التكلفة المثبّتة، زادت دقة الرقم';

  @override
  String rptCostAccuracyLine1(Object known, Object total) {
    return 'من أصل $total سطر بيع في الفترة، $known تملك تكلفة معروفة.';
  }

  @override
  String rptCostAccuracyLine2(Object count) {
    return '$count سطر بدون تكلفة معروفة — أكمِل سعر الشراء في بطاقات المنتجات أو اربط السطر بمنتج لرفع دقة الهامش.';
  }

  @override
  String rptFixedCostLabel(Object count) {
    return 'مثبّتة وقت البيع: $count';
  }

  @override
  String rptCurrentPriceCostLabel(Object count) {
    return 'تعتمد على سعر شراء حالي: $count';
  }

  @override
  String rptNoCostLabel(Object count) {
    return 'بدون تكلفة (تُعامَل 0): $count';
  }

  @override
  String rptCostAccuracyNote(Object count) {
    return 'يوجد $count سطر بدون تكلفة معروفة — أكمِل سعر الشراء في بطاقات المنتجات أو اربط السطر بمنتج لرفع دقة الهامش.';
  }

  @override
  String get rptSavePeriodNote =>
      'عند الحفظ تُحدَّث الفترة الحالية وتُخزَّن للمرّة القادمة.';

  @override
  String get rptStaffRecorder => 'الموظف / المسجّل';

  @override
  String rptHaveKnownCost(Object count) {
    return '$count تملك تكلفة معروفة.';
  }

  @override
  String get rptDefaultPeriodSubtitle =>
      'عند الحفظ تُحدَّث الفترة الحالية وتُخزَّن للمرّة القادمة.';

  @override
  String get expReportTitle => 'فاتورة تقرير المصروفات';

  @override
  String get expPeriodLabel => 'الفترة';

  @override
  String get expCreatedLabel => 'تم الإنشاء';

  @override
  String expPageLabel(Object current, Object total) {
    return 'صفحة $current/$total';
  }

  @override
  String get expCategory => 'الفئة';

  @override
  String get expTotal => 'الإجمالي';

  @override
  String get expPercentage => 'النسبة';

  @override
  String get expOperationsCount => 'عدد العمليات';

  @override
  String get expPaid => 'المدفوع';

  @override
  String get expPending => 'المعلق';

  @override
  String get expDate => 'التاريخ';

  @override
  String get expAmount => 'المبلغ';

  @override
  String get expDescription => 'الوصف';

  @override
  String get expStaff => 'الموظف';

  @override
  String get expExpenseReason => 'سبب الصرف (تعليق)';

  @override
  String get expNoNoteHint => 'بدون تعليق - يُنصح بإضافة سبب الصرف.';

  @override
  String get expDaily => 'يومي';

  @override
  String get expWeekly => 'أسبوعي';

  @override
  String get expMonthly => 'شهري';

  @override
  String get expYearly => 'سنوي';

  @override
  String get expPrintReport => 'طباعة تقرير مصروفات';

  @override
  String get expChoosePeriod => 'اختر الفترة الزمنية للفاتورة:';

  @override
  String get expCustom => 'مخصص';

  @override
  String get expSelectedPeriod => 'الفترة المختارة:';

  @override
  String get expCancel => 'إلغاء';

  @override
  String get expPrint => 'طباعة';

  @override
  String debtsListFiltered(Object filtered, Object total) {
    return 'القائمة: $filtered من $total فاتورة (بحث أو تصفية)';
  }

  @override
  String get debtsAggregateHint =>
      'تجميع حسب العميل: المنتجات والبائعون وتسديد جزئي من شاشة التفاصيل. QR على الإيصال للعملاء المسجّلين فقط.';

  @override
  String debtsCustomersFiltered(Object filtered, Object total) {
    return '$filtered من $total عميل';
  }

  @override
  String get debtsNoRemainingAged => 'لا يوجد متبقٍ آجل مجمّع بالعملاء';

  @override
  String get debtsUnlinkedToCustomerTable => 'غير مربوط بجدول العملاء (بالاسم)';

  @override
  String debtsAgeWarningActive(Object days) {
    return ' التحذير بالعمر يبدأ بعد \$warnDays يوماً من تاريخ الفاتورة.';
  }

  @override
  String get debtsAgeWarningDisabled =>
      ' فعّل «أيام تحذير العمر» من إعدادات الدين لتمييز الفواتير القديمة.';

  @override
  String debtsHowCalculated(Object ageHint) {
    return 'تُحسب الديون من فواتير النوع «دين / آجل». المتبقي = إجمالي الفاتورة − المقدّم. حدود البيع تُضبط من إعدادات الديون.\$ageHint';
  }

  @override
  String get debtsShowAllInvoices => 'عرض كل الفواتير';

  @override
  String get debtsAgeWarning => 'تحذير عمر';

  @override
  String get debtsFilterAge => 'تصفية: تحذير عمر';

  @override
  String get debtsClosed => 'مغلقة';

  @override
  String get debtsAgeAlert => 'تنبيه عمر';

  @override
  String get debtsOpen => 'مفتوحة';

  @override
  String get debtsReceipt => 'الإيصال';

  @override
  String debtsInvoiceDays(Object date, Object days, Object id) {
    return 'فاتورة #$id · $date · $days يوماً';
  }

  @override
  String debtsAdvanceOverTotal(Object advance, Object total) {
    return 'المقدّم $advance / $total Fdj';
  }

  @override
  String get debtsTapForInvoiceDetails => 'اضغط لعرض تفاصيل الفاتورة';

  @override
  String get debtsNoMatchingInvoices =>
      'لا توجد فواتير ضمن البحث أو التصفية الحالية';

  @override
  String get debtsNoCreditInvoices => 'لا توجد فواتير دين مسجّلة';
}
