import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('fr'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In ar, this message translates to:
  /// **'Naboo'**
  String get appTitle;

  /// No description provided for @settings.
  ///
  /// In ar, this message translates to:
  /// **'الإعدادات'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In ar, this message translates to:
  /// **'اللغة'**
  String get language;

  /// No description provided for @save.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get cancel;

  /// No description provided for @storeAccountGroup.
  ///
  /// In ar, this message translates to:
  /// **'المتجر والحساب'**
  String get storeAccountGroup;

  /// No description provided for @appearanceNotificationsGroup.
  ///
  /// In ar, this message translates to:
  /// **'المظهر والإشعارات'**
  String get appearanceNotificationsGroup;

  /// No description provided for @dataBackupGroup.
  ///
  /// In ar, this message translates to:
  /// **'البيانات والنسخ الاحتياطي'**
  String get dataBackupGroup;

  /// No description provided for @subscriptionSupportGroup.
  ///
  /// In ar, this message translates to:
  /// **'الاشتراك والدعم'**
  String get subscriptionSupportGroup;

  /// No description provided for @storeInfo.
  ///
  /// In ar, this message translates to:
  /// **'بيانات المتجر'**
  String get storeInfo;

  /// No description provided for @storeInfoSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'الاسم، العنوان، الشعار، الفرع'**
  String get storeInfoSubtitle;

  /// No description provided for @invoiceSettings.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات الفواتير'**
  String get invoiceSettings;

  /// No description provided for @invoiceSettingsSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'رقم البداية، التذييل، الضريبة، الخصم'**
  String get invoiceSettingsSubtitle;

  /// No description provided for @businessFeatures.
  ///
  /// In ar, this message translates to:
  /// **'ميزادات المتجر'**
  String get businessFeatures;

  /// No description provided for @businessFeaturesSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'العملاء، الولاء، الضريبة، الخصم، الديون، التقسيط، الوزن، الملابن، والخدمات'**
  String get businessFeaturesSubtitle;

  /// No description provided for @customizeDashboard.
  ///
  /// In ar, this message translates to:
  /// **'تخصيص الشاشة الرئيسية'**
  String get customizeDashboard;

  /// No description provided for @customizeDashboardSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'إظهار أو إخفاء أقسام لوحة التحكم وترتيبها بالسحب'**
  String get customizeDashboardSubtitle;

  /// No description provided for @appColorsIdentity.
  ///
  /// In ar, this message translates to:
  /// **'ألوان وهوية التطبيق'**
  String get appColorsIdentity;

  /// No description provided for @appColorsIdentitySubtitle.
  ///
  /// In ar, this message translates to:
  /// **'مخططات جاهزة، مخصص، وزوايا البطاقات — تُطبَّق على كل الشاشات'**
  String get appColorsIdentitySubtitle;

  /// No description provided for @compactSnackNotifications.
  ///
  /// In ar, this message translates to:
  /// **'شكل تنبيهات الصفحات (كل التطبيق)'**
  String get compactSnackNotifications;

  /// No description provided for @compactSnackNotificationsSubtitleOn.
  ///
  /// In ar, this message translates to:
  /// **'شرائط أضيق وعائمة في كل الشاشات — من إعدادات التطبيق العامة هنا، وليس من «إعدادات نقطة البيع»'**
  String get compactSnackNotificationsSubtitleOn;

  /// No description provided for @compactSnackNotificationsSubtitleOff.
  ///
  /// In ar, this message translates to:
  /// **'وضع كلاسيكي: شريط تنبيه بعرض أسفل الشاشة في كل الصفحات'**
  String get compactSnackNotificationsSubtitleOff;

  /// No description provided for @idleMode.
  ///
  /// In ar, this message translates to:
  /// **'وضع السكون'**
  String get idleMode;

  /// No description provided for @idleModeSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'بعد عدم النشاط: {minutes}'**
  String idleModeSubtitle(Object minutes);

  /// No description provided for @arabic.
  ///
  /// In ar, this message translates to:
  /// **'العربية'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In ar, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @french.
  ///
  /// In ar, this message translates to:
  /// **'Français'**
  String get french;

  /// No description provided for @floatingWindowMacos.
  ///
  /// In ar, this message translates to:
  /// **'النافذة العائمة (macOS)'**
  String get floatingWindowMacos;

  /// No description provided for @floatingWindowSubtitleOn.
  ///
  /// In ar, this message translates to:
  /// **'يمكن فتح عدة نوافذ معاً؛ التصغير الأصفر يضع بلاطة أسفل الشاشة بأيقونة كل صفحة — عطّلها لفتحها داخل المحتوى'**
  String get floatingWindowSubtitleOn;

  /// No description provided for @floatingWindowSubtitleOff.
  ///
  /// In ar, this message translates to:
  /// **'تُفتح هذه الشاشات داخل المحتوى. فعّل الخيار لاستخدام النوافذ العائمة والبلاطات'**
  String get floatingWindowSubtitleOff;

  /// No description provided for @theme.
  ///
  /// In ar, this message translates to:
  /// **'المظهر'**
  String get theme;

  /// No description provided for @darkMode.
  ///
  /// In ar, this message translates to:
  /// **'الوضع الداكن'**
  String get darkMode;

  /// No description provided for @lightMode.
  ///
  /// In ar, this message translates to:
  /// **'الوضع الفاتح'**
  String get lightMode;

  /// No description provided for @notifications.
  ///
  /// In ar, this message translates to:
  /// **'الإشعارات'**
  String get notifications;

  /// No description provided for @notificationsSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'تنبيهات المخزون، الفواتير، الأقساط'**
  String get notificationsSubtitle;

  /// No description provided for @printingSettings.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات الطباعة'**
  String get printingSettings;

  /// No description provided for @printingSettingsSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'حجم الورق، الطابعة الافتراضية'**
  String get printingSettingsSubtitle;

  /// No description provided for @restoreData.
  ///
  /// In ar, this message translates to:
  /// **'استعادة البيانات'**
  String get restoreData;

  /// No description provided for @restoreDataSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'من ملف أو سحابة'**
  String get restoreDataSubtitle;

  /// No description provided for @subscriptionPlan.
  ///
  /// In ar, this message translates to:
  /// **'خطة الاشتراك'**
  String get subscriptionPlan;

  /// No description provided for @subscriptionPlanSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'الحساب، الأجهزة، والمزامنة التلقائية'**
  String get subscriptionPlanSubtitle;

  /// No description provided for @trialVersion.
  ///
  /// In ar, this message translates to:
  /// **'نسخة تجريبية'**
  String get trialVersion;

  /// No description provided for @helpSupport.
  ///
  /// In ar, this message translates to:
  /// **'المساعدة والدعم'**
  String get helpSupport;

  /// No description provided for @helpSupportSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'الأسئلة الشائعة والتواصل مع الدعم'**
  String get helpSupportSubtitle;

  /// No description provided for @aboutApp.
  ///
  /// In ar, this message translates to:
  /// **'عن التطبيق'**
  String get aboutApp;

  /// No description provided for @aboutAppSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'الإصدار 1.0.0 · NaBoo Store Manager'**
  String get aboutAppSubtitle;

  /// No description provided for @appName.
  ///
  /// In ar, this message translates to:
  /// **'نابو لإدارة المتاجر'**
  String get appName;

  /// No description provided for @appDescription.
  ///
  /// In ar, this message translates to:
  /// **'تطبيق متكامل لإدارة المبيعات والمخزون والحسابات.'**
  String get appDescription;

  /// No description provided for @accountData.
  ///
  /// In ar, this message translates to:
  /// **'بيانات الحساب'**
  String get accountData;

  /// No description provided for @userLabel.
  ///
  /// In ar, this message translates to:
  /// **'المستخدم: {name}'**
  String userLabel(Object name);

  /// No description provided for @emailLabel.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get emailLabel;

  /// No description provided for @currentPlanLabel.
  ///
  /// In ar, this message translates to:
  /// **'الخطة الحالية: {plan}'**
  String currentPlanLabel(Object plan);

  /// No description provided for @deviceLimitLabel.
  ///
  /// In ar, this message translates to:
  /// **'حد الأجهزة: {limit}'**
  String deviceLimitLabel(Object limit);

  /// No description provided for @unlimited.
  ///
  /// In ar, this message translates to:
  /// **'غير محدود'**
  String get unlimited;

  /// No description provided for @devicesLabel.
  ///
  /// In ar, this message translates to:
  /// **'الأجهزة المسجّلة: {count}'**
  String devicesLabel(Object count);

  /// No description provided for @freeTrial.
  ///
  /// In ar, this message translates to:
  /// **'التجربة المجانية'**
  String get freeTrial;

  /// No description provided for @daysRemaining.
  ///
  /// In ar, this message translates to:
  /// **'الأيام المتبقية: {count} من 15'**
  String daysRemaining(Object count);

  /// No description provided for @trialEndsAt.
  ///
  /// In ar, this message translates to:
  /// **'تنتهي في: {date}'**
  String trialEndsAt(Object date);

  /// No description provided for @subscription.
  ///
  /// In ar, this message translates to:
  /// **'الاشتراك'**
  String get subscription;

  /// No description provided for @subscriptionExpiresAt.
  ///
  /// In ar, this message translates to:
  /// **'ينتهي الاشتراك في: {date}'**
  String subscriptionExpiresAt(Object date);

  /// No description provided for @subscriptionDaysRemaining.
  ///
  /// In ar, this message translates to:
  /// **'متبقٍ تقريباً: {days} يوماً'**
  String subscriptionDaysRemaining(Object days);

  /// No description provided for @noExpirationDate.
  ///
  /// In ar, this message translates to:
  /// **'اشتراك مفعّل بلا تاريخ انتهاء محدد في السحابة.'**
  String get noExpirationDate;

  /// No description provided for @linkedDevices.
  ///
  /// In ar, this message translates to:
  /// **'الأجهزة المرتبطة بالحساب'**
  String get linkedDevices;

  /// No description provided for @refreshTooltip.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get refreshTooltip;

  /// No description provided for @noDevicesRegistered.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أجهزة مسجّلة بعد.'**
  String get noDevicesRegistered;

  /// No description provided for @devicePlatform.
  ///
  /// In ar, this message translates to:
  /// **'{platform} • آخر نشاط: {date}'**
  String devicePlatform(Object date, Object platform);

  /// No description provided for @currentDevice.
  ///
  /// In ar, this message translates to:
  /// **'هذا الجهاز'**
  String get currentDevice;

  /// No description provided for @allowReturn.
  ///
  /// In ar, this message translates to:
  /// **'سماح بالعودة'**
  String get allowReturn;

  /// No description provided for @disconnectDevice.
  ///
  /// In ar, this message translates to:
  /// **'فصل الجهاز'**
  String get disconnectDevice;

  /// No description provided for @autoSync.
  ///
  /// In ar, this message translates to:
  /// **'المزامنة التلقائية'**
  String get autoSync;

  /// No description provided for @autoSyncDescription.
  ///
  /// In ar, this message translates to:
  /// **'تُرفع من كل جهاز نسخة كاملة من قاعدة البيانات؛ الأحدث في السحابة هي التي تُستورد على الجهاز الآخر بعد «مزامنة الآن» أو خلال نحو دقيقة. ليست لحظية لكل إدخال. يجب تنفيذ ملف SQL للمزامنة في Supabase، والإنترنت مفعّل.'**
  String get autoSyncDescription;

  /// No description provided for @syncNow.
  ///
  /// In ar, this message translates to:
  /// **'مزامنة الآن'**
  String get syncNow;

  /// No description provided for @lastSync.
  ///
  /// In ar, this message translates to:
  /// **'آخر مزامنة: {date}'**
  String lastSync(Object date);

  /// No description provided for @syncSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تمت المزامنة بنجاح'**
  String get syncSuccess;

  /// No description provided for @viewSubscriptionPlans.
  ///
  /// In ar, this message translates to:
  /// **'عرض خطط الاشتراك'**
  String get viewSubscriptionPlans;

  /// No description provided for @storeName.
  ///
  /// In ar, this message translates to:
  /// **'اسم المتجر'**
  String get storeName;

  /// No description provided for @address.
  ///
  /// In ar, this message translates to:
  /// **'العنوان'**
  String get address;

  /// No description provided for @phone.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهاتف'**
  String get phone;

  /// No description provided for @taxNumber.
  ///
  /// In ar, this message translates to:
  /// **'الرقم الضريبي'**
  String get taxNumber;

  /// No description provided for @invoiceFooterText.
  ///
  /// In ar, this message translates to:
  /// **'نص التذييل'**
  String get invoiceFooterText;

  /// No description provided for @invoiceStartNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم بداية الفواتير'**
  String get invoiceStartNumber;

  /// No description provided for @showTax.
  ///
  /// In ar, this message translates to:
  /// **'إظهار الضريبة'**
  String get showTax;

  /// No description provided for @showDiscount.
  ///
  /// In ar, this message translates to:
  /// **'إظهار الخصم'**
  String get showDiscount;

  /// No description provided for @showLogo.
  ///
  /// In ar, this message translates to:
  /// **'إظهار الشعار'**
  String get showLogo;

  /// No description provided for @showFooter.
  ///
  /// In ar, this message translates to:
  /// **'إظهار التذييل'**
  String get showFooter;

  /// No description provided for @taxRate.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الضريبة'**
  String get taxRate;

  /// No description provided for @taxRatePercent.
  ///
  /// In ar, this message translates to:
  /// **'{rate}%'**
  String taxRatePercent(Object rate);

  /// No description provided for @notificationsBuildFromDb.
  ///
  /// In ar, this message translates to:
  /// **'تُبنى التنبيهات من قاعدة البيانات عند فتح لوحة الإشعارات من الشاشة الرئيسية.'**
  String get notificationsBuildFromDb;

  /// No description provided for @lowStockAlert.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه نقص المخزون'**
  String get lowStockAlert;

  /// No description provided for @lowStockAlertSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'منتجات وصلت للحد الأدنى أو نفدت (مع تتبع مخزون)'**
  String get lowStockAlertSubtitle;

  /// No description provided for @negativeStockSaleAlert.
  ///
  /// In ar, this message translates to:
  /// **'إشعار بيع أدى لرصيد سالب'**
  String get negativeStockSaleAlert;

  /// No description provided for @negativeStockSaleAlertSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'بعد حفظ فاتورة البيع: رقم الفاتورة، البائع، العميل، والأصناف والكميات قبل/بعد الرصيد'**
  String get negativeStockSaleAlertSubtitle;

  /// No description provided for @financedSaleAlert.
  ///
  /// In ar, this message translates to:
  /// **'إشعار بيع بالدين أو التقسيط'**
  String get financedSaleAlert;

  /// No description provided for @financedSaleAlertSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'عند حفظ فاتورة «آجل» أو «تقسيط» من شاشة البيع: رقم الفاتورة، البائع، العميل، المبالغ، الأسطر، وخطة التقسيط إن وُجدت'**
  String get financedSaleAlertSubtitle;

  /// No description provided for @expiryAlert.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه صلاحية المنتجات'**
  String get expiryAlert;

  /// No description provided for @expiryAlertSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'منتهية، أو تدخل ضمن «نافذة التنبيه» قبل التاريخ (حسب كل منتج أو الافتراضي أدناه)'**
  String get expiryAlertSubtitle;

  /// No description provided for @defaultExpiryDaysLabel.
  ///
  /// In ar, this message translates to:
  /// **'الأيام الافتراضية قبل تاريخ الانتهاء لإظهار تنبيه «قرب الصلاحية» (يُستعمل عند إضافة منتج إن لم تُضبط للصنف، و1–365).'**
  String get defaultExpiryDaysLabel;

  /// No description provided for @defaultExpiryDaysHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 14'**
  String get defaultExpiryDaysHint;

  /// No description provided for @defaultExpiryDaysInputLabel.
  ///
  /// In ar, this message translates to:
  /// **'أيام التنبيه الافتراضية'**
  String get defaultExpiryDaysInputLabel;

  /// No description provided for @saveDefaultDays.
  ///
  /// In ar, this message translates to:
  /// **'حفظ الرقم الافتراضي'**
  String get saveDefaultDays;

  /// No description provided for @installmentAlert.
  ///
  /// In ar, this message translates to:
  /// **'أقساط التقسيط'**
  String get installmentAlert;

  /// No description provided for @installmentAlertSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'متأخرة أو مستحقة خلال 14 يوماً'**
  String get installmentAlertSubtitle;

  /// No description provided for @customerDebtAlert.
  ///
  /// In ar, this message translates to:
  /// **'ديون العملاء (آجل)'**
  String get customerDebtAlert;

  /// No description provided for @customerDebtAlertSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'رصيد مدين في بطاقة العميل، وفق إعدادات الدين: عمر الفاتورة، سقف المجموع لكل عميل، وسقف الفاتورة الواحدة'**
  String get customerDebtAlertSubtitle;

  /// No description provided for @returnsAlert.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل المرتجعات'**
  String get returnsAlert;

  /// No description provided for @returnsAlertSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'آخر مرتجعات مسجّلة (21 يوماً)'**
  String get returnsAlertSubtitle;

  /// No description provided for @dailyReportAlert.
  ///
  /// In ar, this message translates to:
  /// **'ملخص مبيعات اليوم'**
  String get dailyReportAlert;

  /// No description provided for @dailyReportAlertSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي فواتير البيع لهذا اليوم (بدون مرتجعات)'**
  String get dailyReportAlertSubtitle;

  /// No description provided for @shiftLifecycleAlert.
  ///
  /// In ar, this message translates to:
  /// **'فتح وإغلاق الوردية'**
  String get shiftLifecycleAlert;

  /// No description provided for @shiftLifecycleAlertSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'إشعار بموظف الوردية والمبالغ (رصيد النظام، الجرد، المضاف، المسحوب، المتبقي)'**
  String get shiftLifecycleAlertSubtitle;

  /// No description provided for @allowDeviceReturnTitle.
  ///
  /// In ar, this message translates to:
  /// **'السماح بالعودة'**
  String get allowDeviceReturnTitle;

  /// No description provided for @allowDeviceReturnContent.
  ///
  /// In ar, this message translates to:
  /// **'هل تسمح لجهاز «{deviceName}» بتسجيل الدخول مرة أخرى؟'**
  String allowDeviceReturnContent(Object deviceName);

  /// No description provided for @disconnectDeviceTitle.
  ///
  /// In ar, this message translates to:
  /// **'فصل الجهاز'**
  String get disconnectDeviceTitle;

  /// No description provided for @disconnectDeviceContent.
  ///
  /// In ar, this message translates to:
  /// **'الجهاز: {deviceName}\nسيتم إنهاء الجلسة على ذلك الجهاز فورًا (إن كان متصلاً)، ولن يستطيع تسجيل الدخول حتى تضغط «السماح بالعودة» من هنا.'**
  String disconnectDeviceContent(Object deviceName);

  /// No description provided for @disconnectNow.
  ///
  /// In ar, this message translates to:
  /// **'فصل الآن'**
  String get disconnectNow;

  /// No description provided for @deviceDisconnected.
  ///
  /// In ar, this message translates to:
  /// **'تم فصل الجهاز بنجاح'**
  String get deviceDisconnected;

  /// No description provided for @deviceAllowed.
  ///
  /// In ar, this message translates to:
  /// **'تم السماح للجهاز بالعودة'**
  String get deviceAllowed;

  /// No description provided for @notConnected.
  ///
  /// In ar, this message translates to:
  /// **'غير متصّل'**
  String get notConnected;

  /// No description provided for @checking.
  ///
  /// In ar, this message translates to:
  /// **'…'**
  String get checking;

  /// No description provided for @noLicense.
  ///
  /// In ar, this message translates to:
  /// **'بدون ترخيص'**
  String get noLicense;

  /// No description provided for @revokedDevice.
  ///
  /// In ar, this message translates to:
  /// **'مفصول — لا يمكنه الدخول حتى الموافقة'**
  String get revokedDevice;

  /// No description provided for @activeLicense.
  ///
  /// In ar, this message translates to:
  /// **'مفعّل'**
  String get activeLicense;

  /// No description provided for @inactiveLicense.
  ///
  /// In ar, this message translates to:
  /// **'غير نشط'**
  String get inactiveLicense;

  /// No description provided for @testTools.
  ///
  /// In ar, this message translates to:
  /// **'فتح أدوات الاختبار…'**
  String get testTools;

  /// No description provided for @basraStore.
  ///
  /// In ar, this message translates to:
  /// **'متجر البصرة'**
  String get basraStore;

  /// No description provided for @basraIraq.
  ///
  /// In ar, this message translates to:
  /// **'البصرة، العراق'**
  String get basraIraq;

  /// No description provided for @deviceKickedOutTitle.
  ///
  /// In ar, this message translates to:
  /// **'تم فصل هذا الجهاز من الحساب'**
  String get deviceKickedOutTitle;

  /// No description provided for @deviceKickedOutBody.
  ///
  /// In ar, this message translates to:
  /// **'أُنهيت جلستك على هذا الجهاز. عند فتح التطبيق لاحقًا ستظهر لك شاشة تسجيل الدخول المعتادة.'**
  String get deviceKickedOutBody;

  /// No description provided for @goToLoginAction.
  ///
  /// In ar, this message translates to:
  /// **'الانتقال لتسجيل الدخول'**
  String get goToLoginAction;

  /// No description provided for @exitAction.
  ///
  /// In ar, this message translates to:
  /// **'خروج'**
  String get exitAction;

  /// No description provided for @closeWindowHint.
  ///
  /// In ar, this message translates to:
  /// **'يمكنك إغلاق النافذة أو استخدام الزر أعلاه.'**
  String get closeWindowHint;

  /// No description provided for @appWillCloseHint.
  ///
  /// In ar, this message translates to:
  /// **'يغلق التطبيق'**
  String get appWillCloseHint;

  /// No description provided for @deviceRevokedTitle.
  ///
  /// In ar, this message translates to:
  /// **'تم إزالة هذا الجهاز من الحساب'**
  String get deviceRevokedTitle;

  /// No description provided for @deviceRevokedBody.
  ///
  /// In ar, this message translates to:
  /// **'لا يمكنك تسجيل الدخول من هذا الجهاز حتى يوافق أحد الأجهزة المفعّلة على نفس الحساب من الإعدادات ← الحساب والاشتراك ← «السماح بالعودة».'**
  String get deviceRevokedBody;

  /// No description provided for @backToLoginAction.
  ///
  /// In ar, this message translates to:
  /// **'العودة لتسجيل الدخول'**
  String get backToLoginAction;

  /// No description provided for @otpEnterFullCode.
  ///
  /// In ar, this message translates to:
  /// **'أدخل الرمز كاملاً ({digits} أرقام كما في البريد)'**
  String otpEnterFullCode(Object digits);

  /// No description provided for @otpResentSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم إعادة إرسال رمز التحقق'**
  String get otpResentSuccess;

  /// No description provided for @back.
  ///
  /// In ar, this message translates to:
  /// **'رجوع'**
  String get back;

  /// No description provided for @emailVerificationTitle.
  ///
  /// In ar, this message translates to:
  /// **'التحقق من البريد'**
  String get emailVerificationTitle;

  /// No description provided for @otpSentToEmailShort.
  ///
  /// In ar, this message translates to:
  /// **'أرسلنا رمزاً من {digits} أرقام إلى بريدك الإلكتروني'**
  String otpSentToEmailShort(Object digits);

  /// No description provided for @enterVerificationCode.
  ///
  /// In ar, this message translates to:
  /// **'أدخل رمز التحقق'**
  String get enterVerificationCode;

  /// No description provided for @otpSentToEmailDetailed.
  ///
  /// In ar, this message translates to:
  /// **'أُرسل رمز مكوّن من {digits} أرقام إلى\n{email}'**
  String otpSentToEmailDetailed(Object digits, Object email);

  /// No description provided for @verifyAndCreateAccount.
  ///
  /// In ar, this message translates to:
  /// **'تحقق وأنشئ الحساب'**
  String get verifyAndCreateAccount;

  /// No description provided for @resendInSeconds.
  ///
  /// In ar, this message translates to:
  /// **'إعادة الإرسال خلال {seconds} ثانية'**
  String resendInSeconds(Object seconds);

  /// No description provided for @resendCode.
  ///
  /// In ar, this message translates to:
  /// **'إعادة إرسال الرمز'**
  String get resendCode;

  /// No description provided for @editData.
  ///
  /// In ar, this message translates to:
  /// **'تعديل البيانات'**
  String get editData;

  /// No description provided for @emailRequired.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني مطلوب'**
  String get emailRequired;

  /// No description provided for @emailInvalidFormat.
  ///
  /// In ar, this message translates to:
  /// **'صيغة البريد غير صحيحة'**
  String get emailInvalidFormat;

  /// No description provided for @enterYourEmail.
  ///
  /// In ar, this message translates to:
  /// **'أدخل بريدك الإلكتروني'**
  String get enterYourEmail;

  /// No description provided for @forgotPasswordSendCodeHint.
  ///
  /// In ar, this message translates to:
  /// **'سنرسل لك رمز تحقق لإعادة تعيين رمز الدخول'**
  String get forgotPasswordSendCodeHint;

  /// No description provided for @sendVerificationCode.
  ///
  /// In ar, this message translates to:
  /// **'إرسال رمز التحقق'**
  String get sendVerificationCode;

  /// No description provided for @otpSentToEmailColon.
  ///
  /// In ar, this message translates to:
  /// **'أُرسل رمز مكوّن من {digits} أرقام إلى:\n{email}'**
  String otpSentToEmailColon(Object digits, Object email);

  /// No description provided for @continueAction.
  ///
  /// In ar, this message translates to:
  /// **'متابعة'**
  String get continueAction;

  /// No description provided for @editEmail.
  ///
  /// In ar, this message translates to:
  /// **'تعديل البريد'**
  String get editEmail;

  /// No description provided for @passwordUpdateSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم تحديث رمز الدخول بنجاح'**
  String get passwordUpdateSuccess;

  /// No description provided for @setNewPasswordTitle.
  ///
  /// In ar, this message translates to:
  /// **'تعيين رمز دخول جديد'**
  String get setNewPasswordTitle;

  /// No description provided for @newPasswordLabel.
  ///
  /// In ar, this message translates to:
  /// **'رمز الدخول الجديد'**
  String get newPasswordLabel;

  /// No description provided for @enterNewPasswordHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل رمز الدخول الجديد'**
  String get enterNewPasswordHint;

  /// No description provided for @enterPasswordValidation.
  ///
  /// In ar, this message translates to:
  /// **'أدخل رمز الدخول'**
  String get enterPasswordValidation;

  /// No description provided for @minLength8Chars.
  ///
  /// In ar, this message translates to:
  /// **'يجب أن يكون 8 أحرف على الأقل'**
  String get minLength8Chars;

  /// No description provided for @confirmPasswordLabel.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد كلمة السر'**
  String get confirmPasswordLabel;

  /// No description provided for @confirmPasswordHint.
  ///
  /// In ar, this message translates to:
  /// **'أعد كتابة رمز الدخول'**
  String get confirmPasswordHint;

  /// No description provided for @passwordMismatch.
  ///
  /// In ar, this message translates to:
  /// **'رمز الدخول غير متطابق'**
  String get passwordMismatch;

  /// No description provided for @passwordRequirementsTitle.
  ///
  /// In ar, this message translates to:
  /// **'شروط رمز الدخول (اختياري)'**
  String get passwordRequirementsTitle;

  /// No description provided for @reqMinLength.
  ///
  /// In ar, this message translates to:
  /// **'8 أحرف على الأقل'**
  String get reqMinLength;

  /// No description provided for @reqUppercase.
  ///
  /// In ar, this message translates to:
  /// **'حرف كبير (A-Z)'**
  String get reqUppercase;

  /// No description provided for @reqLowercase.
  ///
  /// In ar, this message translates to:
  /// **'حرف صغير (a-z)'**
  String get reqLowercase;

  /// No description provided for @reqDigit.
  ///
  /// In ar, this message translates to:
  /// **'رقم (0-9)'**
  String get reqDigit;

  /// No description provided for @reqSpecialChar.
  ///
  /// In ar, this message translates to:
  /// **'رمز خاص (!@#...)'**
  String get reqSpecialChar;

  /// No description provided for @onboardingChangeLaterHint.
  ///
  /// In ar, this message translates to:
  /// **'يمكنك تغيير هذه الخيارات لاحقاً من الإعدادات ← ميزات المتجر.'**
  String get onboardingChangeLaterHint;

  /// No description provided for @businessFeaturesWizardTitle.
  ///
  /// In ar, this message translates to:
  /// **'ميزات المتجر'**
  String get businessFeaturesWizardTitle;

  /// No description provided for @quickAppSetupTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعداد سريع للتطبيق'**
  String get quickAppSetupTitle;

  /// No description provided for @stepXofY.
  ///
  /// In ar, this message translates to:
  /// **'الخطوة {current} من {total}'**
  String stepXofY(Object current, Object total);

  /// No description provided for @previousAction.
  ///
  /// In ar, this message translates to:
  /// **'السابق'**
  String get previousAction;

  /// No description provided for @nextAction.
  ///
  /// In ar, this message translates to:
  /// **'التالي'**
  String get nextAction;

  /// No description provided for @practicalExamplesLabel.
  ///
  /// In ar, this message translates to:
  /// **'أمثلة عملية'**
  String get practicalExamplesLabel;

  /// No description provided for @onboardingStep1Question.
  ///
  /// In ar, this message translates to:
  /// **'هل تستخدم العملاء في نشاطك؟'**
  String get onboardingStep1Question;

  /// No description provided for @onboardingStep1Paragraph1.
  ///
  /// In ar, this message translates to:
  /// **'عند التفعيل تظهر لك وحدة العملاء الكاملة: بطاقة لكل عميل، سجل مشتريات، ومتابعة سريعة من الفاتورة.'**
  String get onboardingStep1Paragraph1;

  /// No description provided for @onboardingStep1Paragraph2.
  ///
  /// In ar, this message translates to:
  /// **'يمكنك ربط كل عملية بيع بعميل معيّن، ما يسهّل التقارير لاحقاً ويوحّد تجربة المتجر أمام الزبائن الذين يتكررون.'**
  String get onboardingStep1Paragraph2;

  /// No description provided for @onboardingStep1Paragraph3.
  ///
  /// In ar, this message translates to:
  /// **'إذا عملت بيعاً نقدياً سريعاً دون اسم، يبقى ذلك متاحاً؛ التفعيل لا يفرض اختيار عميل في كل مرة.'**
  String get onboardingStep1Paragraph3;

  /// No description provided for @onboardingStep1Example1.
  ///
  /// In ar, this message translates to:
  /// **'مثال: زبون دائم يشتري يومياً، تحفظ اسمه وترى آخر فواتيره بسرعة.'**
  String get onboardingStep1Example1;

  /// No description provided for @onboardingStep1Example2.
  ///
  /// In ar, this message translates to:
  /// **'مثال: عند وجود دين أو نقاط ولاء، تظهر مرتبطة بنفس العميل بدل البحث اليدوي.'**
  String get onboardingStep1Example2;

  /// No description provided for @onboardingStep1SwitchLabel.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل وحدة العملاء'**
  String get onboardingStep1SwitchLabel;

  /// No description provided for @onboardingStep2Question.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد برنامج نقاط الولاء؟'**
  String get onboardingStep2Question;

  /// No description provided for @onboardingStep2Paragraph1.
  ///
  /// In ar, this message translates to:
  /// **'الولاء يمنح الزبائن نقاطاً عند الشراء، ويمكنهم استبدالها وفق القواعد التي تضبطها من الإعدادات.'**
  String get onboardingStep2Paragraph1;

  /// No description provided for @onboardingStep2Paragraph2.
  ///
  /// In ar, this message translates to:
  /// **'البرنامج مرتبط بملفات العملاء؛ كلما كانت بيانات العملاء أوضح، كانت المتابعة أسهل.'**
  String get onboardingStep2Paragraph2;

  /// No description provided for @onboardingStep2Paragraph3.
  ///
  /// In ar, this message translates to:
  /// **'يمكنك تشغيل الميزة الآن وتعديل نسب الجمع والاستبدال لاحقاً دون إعادة هذا المعالج.'**
  String get onboardingStep2Paragraph3;

  /// No description provided for @onboardingStep2Example1.
  ///
  /// In ar, this message translates to:
  /// **'مثال: كل 10,000 د.ع تمنح 10 نقاط حسب القاعدة التي تختارها.'**
  String get onboardingStep2Example1;

  /// No description provided for @onboardingStep2Example2.
  ///
  /// In ar, this message translates to:
  /// **'مثال: عميل جمع نقاطاً كافية فيستبدلها بخصم في فاتورة لاحقة.'**
  String get onboardingStep2Example2;

  /// No description provided for @onboardingStep2SwitchLabel.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل نقاط الولاء'**
  String get onboardingStep2SwitchLabel;

  /// No description provided for @onboardingStep2Footnote.
  ///
  /// In ar, this message translates to:
  /// **'يتطلّب تفعيل وحدة العملاء في الخطوة السابقة؛ إن لم تكن مفعّلة، لن يعمل الولاء حتى تعيد تفعيل العملاء.'**
  String get onboardingStep2Footnote;

  /// No description provided for @onboardingStep3Question.
  ///
  /// In ar, this message translates to:
  /// **'هل تستخدم الضريبة عند البيع؟'**
  String get onboardingStep3Question;

  /// No description provided for @onboardingStep3Paragraph1.
  ///
  /// In ar, this message translates to:
  /// **'عند التفعيل يظهر في فاتورة البيع حقل واضح للضريبة بحيث تحسب مع الإجمالي بطريقة متسقة.'**
  String get onboardingStep3Paragraph1;

  /// No description provided for @onboardingStep3Paragraph2.
  ///
  /// In ar, this message translates to:
  /// **'مناسب للمتاجر التي تطبّق نسبة ضريبة معروفة على السلع أو الخدمات.'**
  String get onboardingStep3Paragraph2;

  /// No description provided for @onboardingStep3Paragraph3.
  ///
  /// In ar, this message translates to:
  /// **'يمكنك ضبط السلوك التفصيلي من إعدادات نقطة البيع بعد إنهاء الإعداد السريع.'**
  String get onboardingStep3Paragraph3;

  /// No description provided for @onboardingStep3Example1.
  ///
  /// In ar, this message translates to:
  /// **'مثال: فاتورة قيمتها 100,000 د.ع وتضيف عليها نسبة ضريبة محددة.'**
  String get onboardingStep3Example1;

  /// No description provided for @onboardingStep3Example2.
  ///
  /// In ar, this message translates to:
  /// **'مثال: الموظف يرى الضريبة والإجمالي النهائي داخل نفس فاتورة البيع.'**
  String get onboardingStep3Example2;

  /// No description provided for @onboardingStep3SwitchLabel.
  ///
  /// In ar, this message translates to:
  /// **'إظهار الضريبة في فاتورة البيع'**
  String get onboardingStep3SwitchLabel;

  /// No description provided for @onboardingStep4Question.
  ///
  /// In ar, this message translates to:
  /// **'هل تسمح بالخصم على إجمالي الفاتورة؟'**
  String get onboardingStep4Question;

  /// No description provided for @onboardingStep4Paragraph1.
  ///
  /// In ar, this message translates to:
  /// **'الخصم الإجمالي مفيد للعروض الموسمية أو التفاوض على السعر أمام الزبون دون تعديل سعر كل صنف.'**
  String get onboardingStep4Paragraph1;

  /// No description provided for @onboardingStep4Paragraph2.
  ///
  /// In ar, this message translates to:
  /// **'يظهر الحقل في شاشة البيع بحيث يكمّل الفاتورة دون تعقيد إضافي للموظف.'**
  String get onboardingStep4Paragraph2;

  /// No description provided for @onboardingStep4Paragraph3.
  ///
  /// In ar, this message translates to:
  /// **'يمكنك إيقافه لاحقاً إذا قررت العمل بأسعار ثابتة فقط.'**
  String get onboardingStep4Paragraph3;

  /// No description provided for @onboardingStep4Example1.
  ///
  /// In ar, this message translates to:
  /// **'مثال: تمنح خصماً عاماً 5,000 د.ع على فاتورة كبيرة.'**
  String get onboardingStep4Example1;

  /// No description provided for @onboardingStep4Example2.
  ///
  /// In ar, this message translates to:
  /// **'مثال: عرض خاص ليوم واحد دون تغيير أسعار المنتجات الأساسية.'**
  String get onboardingStep4Example2;

  /// No description provided for @onboardingStep4SwitchLabel.
  ///
  /// In ar, this message translates to:
  /// **'إظهار الخصم الإجمالي في الفاتورة'**
  String get onboardingStep4SwitchLabel;

  /// No description provided for @onboardingStep5Question.
  ///
  /// In ar, this message translates to:
  /// **'هل تبيع بالدّين (بيع آجل)؟'**
  String get onboardingStep5Question;

  /// No description provided for @onboardingStep5Paragraph1.
  ///
  /// In ar, this message translates to:
  /// **'التفعيل يفتح لوحة الديون ومتابعة المبالغ المستحقة على كل عميل مع تنبيهات وسقوف يمكن ضبطها.'**
  String get onboardingStep5Paragraph1;

  /// No description provided for @onboardingStep5Paragraph2.
  ///
  /// In ar, this message translates to:
  /// **'يناسب التجار الذين يثقون بزبائن معروفين ويحتاجون أرشيفاً واضحاً للآجلات.'**
  String get onboardingStep5Paragraph2;

  /// No description provided for @onboardingStep5Paragraph3.
  ///
  /// In ar, this message translates to:
  /// **'لا يمنع البيع النقدي؛ يضيف فقط خيار التسجيل كدين عند اختيار العميل والصلاحيات المناسبة.'**
  String get onboardingStep5Paragraph3;

  /// No description provided for @onboardingStep5Example1.
  ///
  /// In ar, this message translates to:
  /// **'مثال: زبون يأخذ بضاعة اليوم ويدفع نهاية الأسبوع.'**
  String get onboardingStep5Example1;

  /// No description provided for @onboardingStep5Example2.
  ///
  /// In ar, this message translates to:
  /// **'مثال: تراجع كشف العميل فتجد المبلغ المدفوع والمتبقي بوضوح.'**
  String get onboardingStep5Example2;

  /// No description provided for @onboardingStep5SwitchLabel.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل البيع الآجل والديون'**
  String get onboardingStep5SwitchLabel;

  /// No description provided for @onboardingStep6Question.
  ///
  /// In ar, this message translates to:
  /// **'هل تبيع بالتقسيط؟'**
  String get onboardingStep6Question;

  /// No description provided for @onboardingStep6Paragraph1.
  ///
  /// In ar, this message translates to:
  /// **'خطط الأقساط تتيح تقسيم ثمن الفاتورة على دفعات مجدولة مع متابعة ما تبقّى على العميل.'**
  String get onboardingStep6Paragraph1;

  /// No description provided for @onboardingStep6Paragraph2.
  ///
  /// In ar, this message translates to:
  /// **'مفيد للسلع ذات السعر المرتفع أو العقود طويلة الأمد.'**
  String get onboardingStep6Paragraph2;

  /// No description provided for @onboardingStep6Paragraph3.
  ///
  /// In ar, this message translates to:
  /// **'التفاصيل الدقيقة للجدولة تُدار من الوحدات المخصصة بعد إتمام هذا الإعداد.'**
  String get onboardingStep6Paragraph3;

  /// No description provided for @onboardingStep6Example1.
  ///
  /// In ar, this message translates to:
  /// **'مثال: جهاز قيمته 600,000 د.ع يُدفع على 6 دفعات شهرية.'**
  String get onboardingStep6Example1;

  /// No description provided for @onboardingStep6Example2.
  ///
  /// In ar, this message translates to:
  /// **'مثال: ترى الدفعات القادمة والمتأخرة لكل عميل من مكان واحد.'**
  String get onboardingStep6Example2;

  /// No description provided for @onboardingStep6SwitchLabel.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل البيع بالتقسيط'**
  String get onboardingStep6SwitchLabel;

  /// No description provided for @onboardingStep7Question.
  ///
  /// In ar, this message translates to:
  /// **'هل تبيع بالوزن (كيلو، غرام، إلخ)؟'**
  String get onboardingStep7Question;

  /// No description provided for @onboardingStep7Paragraph1.
  ///
  /// In ar, this message translates to:
  /// **'التفعيل يجهّز واجهة البيع والباركود بحيث تدعم أوزاناً وكميات عشرية حيث يلزم.'**
  String get onboardingStep7Paragraph1;

  /// No description provided for @onboardingStep7Paragraph2.
  ///
  /// In ar, this message translates to:
  /// **'مناسب للمواد الغذائية، الحديد، أو أي نشاط يعتمد الميزان.'**
  String get onboardingStep7Paragraph2;

  /// No description provided for @onboardingStep7Paragraph3.
  ///
  /// In ar, this message translates to:
  /// **'يمكن ضبط أنماط الباركود بالوزن من الإعدادات المتقدمة بعد متابعة هذا المعالج.'**
  String get onboardingStep7Paragraph3;

  /// No description provided for @onboardingStep7Example1.
  ///
  /// In ar, this message translates to:
  /// **'مثال: بيع 1.250 كغم من منتج بدلاً من قطعة واحدة.'**
  String get onboardingStep7Example1;

  /// No description provided for @onboardingStep7Example2.
  ///
  /// In ar, this message translates to:
  /// **'مثال: قراءة باركود ميزان يحتوي وزن المنتج وسعره تلقائياً.'**
  String get onboardingStep7Example2;

  /// No description provided for @onboardingStep7SwitchLabel.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل البيع بالوزن'**
  String get onboardingStep7SwitchLabel;

  /// No description provided for @onboardingStep8Question.
  ///
  /// In ar, this message translates to:
  /// **'هل تبيع ملابس (ألوان ومقاسات)؟'**
  String get onboardingStep8Question;

  /// No description provided for @onboardingStep8Paragraph1.
  ///
  /// In ar, this message translates to:
  /// **'التفعيل يجهّز شاشات المنتجات والبيع لدعم تباين الأصناف (الألوان والقياسات المختلفة لنفس الموديل).'**
  String get onboardingStep8Paragraph1;

  /// No description provided for @onboardingStep8Paragraph2.
  ///
  /// In ar, this message translates to:
  /// **'يسهل تتبع مخزون كل لون أو مقاس على حدة وإظهار نافذة التحديد التفاعلية عند البيع.'**
  String get onboardingStep8Paragraph2;

  /// No description provided for @onboardingStep8Example1.
  ///
  /// In ar, this message translates to:
  /// **'مثال: قميص متوفر باللون الأزرق والأسود، وبقياسات S و M و L.'**
  String get onboardingStep8Example1;

  /// No description provided for @onboardingStep8Example2.
  ///
  /// In ar, this message translates to:
  /// **'مثال: اختيار قطعة الملابس يفتح نافذة منبثقة سريعة لاختيار المقاس واللون المتاحين بالمخزون.'**
  String get onboardingStep8Example2;

  /// No description provided for @onboardingStep8SwitchLabel.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل وحدة الملابس والقياسات'**
  String get onboardingStep8SwitchLabel;

  /// No description provided for @onboardingStep9Question.
  ///
  /// In ar, this message translates to:
  /// **'هل تقدّم خدمات معينة (صيانة، ورشة، إلخ)؟'**
  String get onboardingStep9Question;

  /// No description provided for @onboardingStep9Paragraph1.
  ///
  /// In ar, this message translates to:
  /// **'التفعيل يظهر وحدة الخدمات والصيانة كاملة: تذاكر عمل، طلبات الصيانة، ودليل الخدمات والأسعار.'**
  String get onboardingStep9Paragraph1;

  /// No description provided for @onboardingStep9Paragraph2.
  ///
  /// In ar, this message translates to:
  /// **'مفيدة للمشاغل، مراكز الصيانة، وأي نشاط يعتمد تقديم خدمات للعملاء إلى جانب بيع المواد.'**
  String get onboardingStep9Paragraph2;

  /// No description provided for @onboardingStep9Example1.
  ///
  /// In ar, this message translates to:
  /// **'مثال: فتح تذكرة صيانة لجهاز كمبيوتر أو سيارة وتعيين حالة العمل.'**
  String get onboardingStep9Example1;

  /// No description provided for @onboardingStep9Example2.
  ///
  /// In ar, this message translates to:
  /// **'مثال: إضافة خدمة تركيب أو صيانة سريعة لفاتورة البيع.'**
  String get onboardingStep9Example2;

  /// No description provided for @onboardingStep9SwitchLabel.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل الخدمات وتذاكر الصيانة'**
  String get onboardingStep9SwitchLabel;

  /// No description provided for @invoicesLabel.
  ///
  /// In ar, this message translates to:
  /// **'الفواتير'**
  String get invoicesLabel;

  /// No description provided for @invoicesListLabel.
  ///
  /// In ar, this message translates to:
  /// **'قائمة الفواتير'**
  String get invoicesListLabel;

  /// No description provided for @newSaleLabel.
  ///
  /// In ar, this message translates to:
  /// **'بيع جديد'**
  String get newSaleLabel;

  /// No description provided for @parkedSalesLabel.
  ///
  /// In ar, this message translates to:
  /// **'معلّقة مؤقتاً'**
  String get parkedSalesLabel;

  /// No description provided for @posSettingsLabel.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات نقطة البيع'**
  String get posSettingsLabel;

  /// No description provided for @customersLabel.
  ///
  /// In ar, this message translates to:
  /// **'العملاء'**
  String get customersLabel;

  /// No description provided for @customersManageLabel.
  ///
  /// In ar, this message translates to:
  /// **'إدارة العملاء'**
  String get customersManageLabel;

  /// No description provided for @addNewCustomerLabel.
  ///
  /// In ar, this message translates to:
  /// **'إضافة عميل جديد'**
  String get addNewCustomerLabel;

  /// No description provided for @addCustomerBreadcrumb.
  ///
  /// In ar, this message translates to:
  /// **'إضافة عميل'**
  String get addCustomerBreadcrumb;

  /// No description provided for @contactListLabel.
  ///
  /// In ar, this message translates to:
  /// **'قائمة الاتصال'**
  String get contactListLabel;

  /// No description provided for @customerLoyaltySettingsLabel.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات العميل (الولاء)'**
  String get customerLoyaltySettingsLabel;

  /// No description provided for @customerLoyaltyLabel.
  ///
  /// In ar, this message translates to:
  /// **'ولاء العملاء'**
  String get customerLoyaltyLabel;

  /// No description provided for @loyaltyPointsSettingsLabel.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات النقاط والاستبدال'**
  String get loyaltyPointsSettingsLabel;

  /// No description provided for @loyaltyLedgerLabel.
  ///
  /// In ar, this message translates to:
  /// **'سجل حركات النقاط'**
  String get loyaltyLedgerLabel;

  /// No description provided for @installmentsLabel.
  ///
  /// In ar, this message translates to:
  /// **'الأقساط'**
  String get installmentsLabel;

  /// No description provided for @installmentPlansLabel.
  ///
  /// In ar, this message translates to:
  /// **'خطط التقسيط'**
  String get installmentPlansLabel;

  /// No description provided for @installmentSettingsLabel.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات تقسيط'**
  String get installmentSettingsLabel;

  /// No description provided for @debtsLabel.
  ///
  /// In ar, this message translates to:
  /// **'الديون'**
  String get debtsLabel;

  /// No description provided for @debtsPanelLabel.
  ///
  /// In ar, this message translates to:
  /// **'لوحة الديون (آجل)'**
  String get debtsPanelLabel;

  /// No description provided for @debtSettingsLabel.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات الدين'**
  String get debtSettingsLabel;

  /// No description provided for @inventoryLabel.
  ///
  /// In ar, this message translates to:
  /// **'المخزون'**
  String get inventoryLabel;

  /// No description provided for @productListLabel.
  ///
  /// In ar, this message translates to:
  /// **'قائمة المنتجات'**
  String get productListLabel;

  /// No description provided for @addNewProductLabel.
  ///
  /// In ar, this message translates to:
  /// **'إضافة منتج جديد'**
  String get addNewProductLabel;

  /// No description provided for @updateExistingProductLabel.
  ///
  /// In ar, this message translates to:
  /// **'تحديث منتج موجود'**
  String get updateExistingProductLabel;

  /// No description provided for @printBarcodeLabelsLabel.
  ///
  /// In ar, this message translates to:
  /// **'طباعة ملصقات باركود'**
  String get printBarcodeLabelsLabel;

  /// No description provided for @inventoryMovementsLabel.
  ///
  /// In ar, this message translates to:
  /// **'حركات المخزون'**
  String get inventoryMovementsLabel;

  /// No description provided for @warehousesLabel.
  ///
  /// In ar, this message translates to:
  /// **'المستودعات'**
  String get warehousesLabel;

  /// No description provided for @stocktakingLabel.
  ///
  /// In ar, this message translates to:
  /// **'الجرد الدوري'**
  String get stocktakingLabel;

  /// No description provided for @purchaseOrdersLabel.
  ///
  /// In ar, this message translates to:
  /// **'أوامر الشراء'**
  String get purchaseOrdersLabel;

  /// No description provided for @stockAnalyticsLabel.
  ///
  /// In ar, this message translates to:
  /// **'تحليلات المخزون'**
  String get stockAnalyticsLabel;

  /// No description provided for @inventorySettingsLabel.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات المخزون'**
  String get inventorySettingsLabel;

  /// No description provided for @servicesAndMaintenanceLabel.
  ///
  /// In ar, this message translates to:
  /// **'الخدمات والصيانة'**
  String get servicesAndMaintenanceLabel;

  /// No description provided for @servicesAndMaintenancePanelLabel.
  ///
  /// In ar, this message translates to:
  /// **'لوحة الخدمات والصيانة'**
  String get servicesAndMaintenancePanelLabel;

  /// No description provided for @addTechnicalServiceLabel.
  ///
  /// In ar, this message translates to:
  /// **'إضافة خدمة فنية'**
  String get addTechnicalServiceLabel;

  /// No description provided for @maintenanceRequestsLabel.
  ///
  /// In ar, this message translates to:
  /// **'طلبات الصيانة وتذاكر العمل'**
  String get maintenanceRequestsLabel;

  /// No description provided for @cashRegisterLabel.
  ///
  /// In ar, this message translates to:
  /// **'الصندوق'**
  String get cashRegisterLabel;

  /// No description provided for @expensesLabel.
  ///
  /// In ar, this message translates to:
  /// **'المصروفات'**
  String get expensesLabel;

  /// No description provided for @reportsLabel.
  ///
  /// In ar, this message translates to:
  /// **'التقارير'**
  String get reportsLabel;

  /// No description provided for @usersLabel.
  ///
  /// In ar, this message translates to:
  /// **'المستخدمين'**
  String get usersLabel;

  /// No description provided for @manageUsersLabel.
  ///
  /// In ar, this message translates to:
  /// **'إدارة المستخدمين'**
  String get manageUsersLabel;

  /// No description provided for @staffShiftsWeekLabel.
  ///
  /// In ar, this message translates to:
  /// **'ورديات الموظفين (أسبوع)'**
  String get staffShiftsWeekLabel;

  /// No description provided for @staffIdentitiesLabel.
  ///
  /// In ar, this message translates to:
  /// **'هويات الموظفين'**
  String get staffIdentitiesLabel;

  /// No description provided for @printingLabel.
  ///
  /// In ar, this message translates to:
  /// **'الطباعة'**
  String get printingLabel;

  /// No description provided for @homeLabel.
  ///
  /// In ar, this message translates to:
  /// **'الرئيسية'**
  String get homeLabel;

  /// No description provided for @defaultUserFallback.
  ///
  /// In ar, this message translates to:
  /// **'المستخدم'**
  String get defaultUserFallback;

  /// No description provided for @logoutLabel.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الخروج'**
  String get logoutLabel;

  /// No description provided for @logoutConfirmMessage.
  ///
  /// In ar, this message translates to:
  /// **'هل أنت متأكد أنك تريد تسجيل الخروج؟'**
  String get logoutConfirmMessage;

  /// No description provided for @confirmAction.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get confirmAction;

  /// No description provided for @searchFailedSnackbar.
  ///
  /// In ar, this message translates to:
  /// **'تعذر إكمال البحث: {error}'**
  String searchFailedSnackbar(Object error);

  /// No description provided for @addProductLabel.
  ///
  /// In ar, this message translates to:
  /// **'إضافة منتج'**
  String get addProductLabel;

  /// No description provided for @shiftTooltipWithName.
  ///
  /// In ar, this message translates to:
  /// **'وردية: {name} — إغلاق'**
  String shiftTooltipWithName(Object name);

  /// No description provided for @closeShiftTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق الوردية'**
  String get closeShiftTooltip;

  /// No description provided for @syncFailedTooltip.
  ///
  /// In ar, this message translates to:
  /// **'تزامن — فشل آخر محاولة'**
  String get syncFailedTooltip;

  /// No description provided for @cloudSyncTooltip.
  ///
  /// In ar, this message translates to:
  /// **'تزامن سحابي'**
  String get cloudSyncTooltip;

  /// No description provided for @syncStartingSnackbar.
  ///
  /// In ar, this message translates to:
  /// **'بدء التزامن…'**
  String get syncStartingSnackbar;

  /// No description provided for @notificationsTooltip.
  ///
  /// In ar, this message translates to:
  /// **'التنبيهات'**
  String get notificationsTooltip;

  /// No description provided for @settingsLabel.
  ///
  /// In ar, this message translates to:
  /// **'الإعدادات'**
  String get settingsLabel;

  /// No description provided for @copyLabel.
  ///
  /// In ar, this message translates to:
  /// **'نسخ'**
  String get copyLabel;

  /// No description provided for @copiedSnackbar.
  ///
  /// In ar, this message translates to:
  /// **'تم النسخ'**
  String get copiedSnackbar;

  /// No description provided for @userInfoTitle.
  ///
  /// In ar, this message translates to:
  /// **'بيانات المستخدم'**
  String get userInfoTitle;

  /// No description provided for @displayNameFieldLabel.
  ///
  /// In ar, this message translates to:
  /// **'الاسم المعروض:'**
  String get displayNameFieldLabel;

  /// No description provided for @usernameFieldLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم الدخول:'**
  String get usernameFieldLabel;

  /// No description provided for @roleFieldLabel.
  ///
  /// In ar, this message translates to:
  /// **'الصلاحية:'**
  String get roleFieldLabel;

  /// No description provided for @emailFieldLabel.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني:'**
  String get emailFieldLabel;

  /// No description provided for @closeAction.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get closeAction;

  /// No description provided for @barcodeScanTooltip.
  ///
  /// In ar, this message translates to:
  /// **'قراءة باركود (كاميرا على الجهاز المحمول، أو نافذة القارئ على الحاسوب)'**
  String get barcodeScanTooltip;

  /// No description provided for @hideKeyboardTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إخفاء لوحة المفاتيح'**
  String get hideKeyboardTooltip;

  /// No description provided for @keyboardDragPinHint.
  ///
  /// In ar, this message translates to:
  /// **'لوحة مفاتيح عربي / English — اسحب من المقبض أو ثبّتها بالدبوس'**
  String get keyboardDragPinHint;

  /// No description provided for @clearSearchTooltip.
  ///
  /// In ar, this message translates to:
  /// **'مسح البحث'**
  String get clearSearchTooltip;

  /// No description provided for @searchToolsTooltip.
  ///
  /// In ar, this message translates to:
  /// **'أدوات البحث'**
  String get searchToolsTooltip;

  /// No description provided for @showKeyboardTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إظهار لوحة المفاتيح (عربي / English)'**
  String get showKeyboardTooltip;

  /// No description provided for @quickSearchHint.
  ///
  /// In ar, this message translates to:
  /// **'بحث سريع: وحدات، منتجات، عملاء…'**
  String get quickSearchHint;

  /// No description provided for @fullSearchHint.
  ///
  /// In ar, this message translates to:
  /// **'بحث: وحدات، منتجات، عملاء، موظفون، باركود…'**
  String get fullSearchHint;

  /// No description provided for @collapseMenuTooltip.
  ///
  /// In ar, this message translates to:
  /// **'طي القائمة'**
  String get collapseMenuTooltip;

  /// No description provided for @expandMenuTooltip.
  ///
  /// In ar, this message translates to:
  /// **'توسيع القائمة'**
  String get expandMenuTooltip;

  /// No description provided for @restrictedModeTooltip.
  ///
  /// In ar, this message translates to:
  /// **'غير متاح في الوضع المقيّد'**
  String get restrictedModeTooltip;

  /// No description provided for @paymentTypeCash.
  ///
  /// In ar, this message translates to:
  /// **'نقدي'**
  String get paymentTypeCash;

  /// No description provided for @paymentTypeCredit.
  ///
  /// In ar, this message translates to:
  /// **'دين'**
  String get paymentTypeCredit;

  /// No description provided for @paymentTypeInstallment.
  ///
  /// In ar, this message translates to:
  /// **'تقسيط'**
  String get paymentTypeInstallment;

  /// No description provided for @paymentTypeDelivery.
  ///
  /// In ar, this message translates to:
  /// **'توصيل'**
  String get paymentTypeDelivery;

  /// No description provided for @paymentTypeDebtCollection.
  ///
  /// In ar, this message translates to:
  /// **'تحصيل دين'**
  String get paymentTypeDebtCollection;

  /// No description provided for @paymentTypeInstallmentCollection.
  ///
  /// In ar, this message translates to:
  /// **'تسديد قسط'**
  String get paymentTypeInstallmentCollection;

  /// No description provided for @paymentTypeSupplierPayment.
  ///
  /// In ar, this message translates to:
  /// **'دفع مورد'**
  String get paymentTypeSupplierPayment;

  /// No description provided for @noInvoiceWithNumber.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فاتورة برقم {id}'**
  String noInvoiceWithNumber(Object id);

  /// No description provided for @invoiceAlreadyReturned.
  ///
  /// In ar, this message translates to:
  /// **'هذه الفاتورة مسجّلة كمرتجع مسبقاً'**
  String get invoiceAlreadyReturned;

  /// No description provided for @invoiceNotOpenableAsReturn.
  ///
  /// In ar, this message translates to:
  /// **'هذا السند لا يُفتَح كمرتجع بيع — عكس الدفعة من شاشة المورد أو إدارة الأقساط حسب النوع.'**
  String get invoiceNotOpenableAsReturn;

  /// No description provided for @salesInvoiceNumber.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة بيع #{id}'**
  String salesInvoiceNumber(Object id);

  /// No description provided for @emptyPlaceholder.
  ///
  /// In ar, this message translates to:
  /// **'(فارغ)'**
  String get emptyPlaceholder;

  /// No description provided for @returnInvoiceDialogBody.
  ///
  /// In ar, this message translates to:
  /// **'العميل: {customer}\nالدفع: {paymentType}\nالإجمالي: {total}\n\nفتح شاشة المرتجع؟ يمكنك تقليل الكمية أو حذف الأسطر لإرجاع جزئي فقط.'**
  String returnInvoiceDialogBody(
    Object customer,
    Object paymentType,
    Object total,
  );

  /// No description provided for @returnLabel.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع'**
  String get returnLabel;

  /// No description provided for @returnNumber.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع #{id}'**
  String returnNumber(Object id);

  /// No description provided for @scanQrBarcodeTitle.
  ///
  /// In ar, this message translates to:
  /// **'مسح QR / Barcode'**
  String get scanQrBarcodeTitle;

  /// No description provided for @pointsLedgerShortLabel.
  ///
  /// In ar, this message translates to:
  /// **'سجل النقاط'**
  String get pointsLedgerShortLabel;

  /// No description provided for @staffShiftsLabel.
  ///
  /// In ar, this message translates to:
  /// **'ورديات الموظفين'**
  String get staffShiftsLabel;

  /// No description provided for @shiftStaffFallback.
  ///
  /// In ar, this message translates to:
  /// **'موظف الوردية'**
  String get shiftStaffFallback;

  /// No description provided for @itemsLabel.
  ///
  /// In ar, this message translates to:
  /// **'الأصناف'**
  String get itemsLabel;

  /// No description provided for @noResultsFor.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد نتائج لـ «{query}»'**
  String noResultsFor(Object query);

  /// No description provided for @modulesLabel.
  ///
  /// In ar, this message translates to:
  /// **'الوحدات'**
  String get modulesLabel;

  /// No description provided for @openModuleLabel.
  ///
  /// In ar, this message translates to:
  /// **'فتح الوحدة'**
  String get openModuleLabel;

  /// No description provided for @productsLabel.
  ///
  /// In ar, this message translates to:
  /// **'المنتجات'**
  String get productsLabel;

  /// No description provided for @sellPriceIqd.
  ///
  /// In ar, this message translates to:
  /// **'بيع {price} د.ع'**
  String sellPriceIqd(Object price);

  /// No description provided for @viewCustomersLabel.
  ///
  /// In ar, this message translates to:
  /// **'عرض العملاء'**
  String get viewCustomersLabel;

  /// No description provided for @staffLabel.
  ///
  /// In ar, this message translates to:
  /// **'الموظفون'**
  String get staffLabel;

  /// No description provided for @viewStaffLabel.
  ///
  /// In ar, this message translates to:
  /// **'عرض الموظفين'**
  String get viewStaffLabel;

  /// No description provided for @technicalServiceLabel.
  ///
  /// In ar, this message translates to:
  /// **'خدمة فنية'**
  String get technicalServiceLabel;

  /// No description provided for @notStockTracked.
  ///
  /// In ar, this message translates to:
  /// **'غير متتبّع للمخزون'**
  String get notStockTracked;

  /// No description provided for @availableUnknown.
  ///
  /// In ar, this message translates to:
  /// **'المتوفر: —'**
  String get availableUnknown;

  /// No description provided for @availableZero.
  ///
  /// In ar, this message translates to:
  /// **'المتوفر: 0'**
  String get availableZero;

  /// No description provided for @availableQty.
  ///
  /// In ar, this message translates to:
  /// **'المتوفر: {qty}'**
  String availableQty(Object qty);

  /// No description provided for @negativeStockWarning.
  ///
  /// In ar, this message translates to:
  /// **'رصيد سالب {qty} — بيع زائد قدره {soldOver} عن آخر رصيد'**
  String negativeStockWarning(Object qty, Object soldOver);

  /// No description provided for @chooseFromListBelow.
  ///
  /// In ar, this message translates to:
  /// **'اختر من القائمة أدناه'**
  String get chooseFromListBelow;

  /// No description provided for @viewAllLabel.
  ///
  /// In ar, this message translates to:
  /// **'عرض الكل'**
  String get viewAllLabel;

  /// No description provided for @untitledLabel.
  ///
  /// In ar, this message translates to:
  /// **'بدون عنوان'**
  String get untitledLabel;

  /// No description provided for @deleteParkedSaleTitle.
  ///
  /// In ar, this message translates to:
  /// **'حذف الفاتورة المعلّقة؟'**
  String get deleteParkedSaleTitle;

  /// No description provided for @deleteParkedSaleBody.
  ///
  /// In ar, this message translates to:
  /// **'سيتم حذف «{label}» نهائياً من الجهاز.'**
  String deleteParkedSaleBody(Object label);

  /// No description provided for @deleteAction.
  ///
  /// In ar, this message translates to:
  /// **'حذف'**
  String get deleteAction;

  /// No description provided for @deletedSnackbar.
  ///
  /// In ar, this message translates to:
  /// **'تم الحذف'**
  String get deletedSnackbar;

  /// No description provided for @parkedSalesScreenTitle.
  ///
  /// In ar, this message translates to:
  /// **'فواتير معلّقة مؤقتاً'**
  String get parkedSalesScreenTitle;

  /// No description provided for @noParkedSalesTitle.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير معلّقة'**
  String get noParkedSalesTitle;

  /// No description provided for @noParkedSalesHint.
  ///
  /// In ar, this message translates to:
  /// **'من شاشة البيع اضغط «تعليق الفاتورة» لحفظ العمل الحالي وخدمة عميل آخر.'**
  String get noParkedSalesHint;

  /// No description provided for @parkedSaleSummaryLine.
  ///
  /// In ar, this message translates to:
  /// **'{count} صنف · ≈ {total} د.ع'**
  String parkedSaleSummaryLine(Object count, Object total);

  /// No description provided for @lastUpdatedLabel.
  ///
  /// In ar, this message translates to:
  /// **'آخر تحديث: {date}'**
  String lastUpdatedLabel(Object date);

  /// No description provided for @resumeSaleTooltip.
  ///
  /// In ar, this message translates to:
  /// **'متابعة البيع'**
  String get resumeSaleTooltip;

  /// No description provided for @allLabel.
  ///
  /// In ar, this message translates to:
  /// **'الكل'**
  String get allLabel;

  /// No description provided for @paidStatus.
  ///
  /// In ar, this message translates to:
  /// **'مدفوعة'**
  String get paidStatus;

  /// No description provided for @unpaidStatus.
  ///
  /// In ar, this message translates to:
  /// **'غير مدفوعة'**
  String get unpaidStatus;

  /// No description provided for @cannotShowInvoiceNoId.
  ///
  /// In ar, this message translates to:
  /// **'لا يمكن عرض فاتورة بدون رقم'**
  String get cannotShowInvoiceNoId;

  /// No description provided for @invoiceNotFound.
  ///
  /// In ar, this message translates to:
  /// **'الفاتورة غير موجودة'**
  String get invoiceNotFound;

  /// No description provided for @flatViewOption.
  ///
  /// In ar, this message translates to:
  /// **'عرض مفرد (بدون تجميع بالوردية)'**
  String get flatViewOption;

  /// No description provided for @groupByShiftOption.
  ///
  /// In ar, this message translates to:
  /// **'تجميع حسب الوردية'**
  String get groupByShiftOption;

  /// No description provided for @advancedFilterLabel.
  ///
  /// In ar, this message translates to:
  /// **'تصفية متقدمة'**
  String get advancedFilterLabel;

  /// No description provided for @shiftsCalendarLabel.
  ///
  /// In ar, this message translates to:
  /// **'تقويم الورديات'**
  String get shiftsCalendarLabel;

  /// No description provided for @moreLabel.
  ///
  /// In ar, this message translates to:
  /// **'المزيد'**
  String get moreLabel;

  /// No description provided for @parkedInvoicesShortLabel.
  ///
  /// In ar, this message translates to:
  /// **'فواتير معلّقة'**
  String get parkedInvoicesShortLabel;

  /// No description provided for @saleLabel.
  ///
  /// In ar, this message translates to:
  /// **'البيع'**
  String get saleLabel;

  /// No description provided for @totalLabel.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get totalLabel;

  /// No description provided for @sortLabel.
  ///
  /// In ar, this message translates to:
  /// **'ترتيب'**
  String get sortLabel;

  /// No description provided for @sortNewestFirst.
  ///
  /// In ar, this message translates to:
  /// **'الأحدث أولاً'**
  String get sortNewestFirst;

  /// No description provided for @sortOldestFirst.
  ///
  /// In ar, this message translates to:
  /// **'الأقدم أولاً'**
  String get sortOldestFirst;

  /// No description provided for @sortHighestAmount.
  ///
  /// In ar, this message translates to:
  /// **'الأعلى مبلغاً'**
  String get sortHighestAmount;

  /// No description provided for @sortLowestAmount.
  ///
  /// In ar, this message translates to:
  /// **'الأقل مبلغاً'**
  String get sortLowestAmount;

  /// No description provided for @searchInvoicesHint.
  ///
  /// In ar, this message translates to:
  /// **'بحث باسم العميل أو رقم الفاتورة أو هاتف العميل...'**
  String get searchInvoicesHint;

  /// No description provided for @shiftNumberLabel.
  ///
  /// In ar, this message translates to:
  /// **'وردية #{id}'**
  String shiftNumberLabel(Object id);

  /// No description provided for @noShiftGroupLabel.
  ///
  /// In ar, this message translates to:
  /// **'بدون وردية — فواتير قديمة أو خارج جلسة وردية ({count})'**
  String noShiftGroupLabel(Object count);

  /// No description provided for @shiftLoadFailedLabel.
  ///
  /// In ar, this message translates to:
  /// **'وردية #{id} — تعذر تحميل تفاصيل الوردية ({count} فاتورة)'**
  String shiftLoadFailedLabel(Object count, Object id);

  /// No description provided for @openStatus.
  ///
  /// In ar, this message translates to:
  /// **'مفتوحة'**
  String get openStatus;

  /// No description provided for @shiftWithNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'وردية #{id} — {name}'**
  String shiftWithNameLabel(Object id, Object name);

  /// No description provided for @invoiceCountLabel.
  ///
  /// In ar, this message translates to:
  /// **'{count} فاتورة'**
  String invoiceCountLabel(Object count);

  /// No description provided for @totalIqd.
  ///
  /// In ar, this message translates to:
  /// **'{amount} د.ع'**
  String totalIqd(Object amount);

  /// No description provided for @itemsAndDiscountLine.
  ///
  /// In ar, this message translates to:
  /// **'{count} صنف · خصم {discount} د.ع'**
  String itemsAndDiscountLine(Object count, Object discount);

  /// No description provided for @shiftColonLabel.
  ///
  /// In ar, this message translates to:
  /// **'وردية: {name}'**
  String shiftColonLabel(Object name);

  /// No description provided for @createReturnInvoiceTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء فاتورة ترجيع لهذه الفاتورة'**
  String get createReturnInvoiceTooltip;

  /// No description provided for @returnActionLabel.
  ///
  /// In ar, this message translates to:
  /// **'ترجيع'**
  String get returnActionLabel;

  /// No description provided for @noInvoicesTitle.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير'**
  String get noInvoicesTitle;

  /// No description provided for @addFirstInvoiceCta.
  ///
  /// In ar, this message translates to:
  /// **'أضف أول فاتورة الآن'**
  String get addFirstInvoiceCta;

  /// No description provided for @sortOptionsTitle.
  ///
  /// In ar, this message translates to:
  /// **'خيارات الترتيب'**
  String get sortOptionsTitle;

  /// No description provided for @applyAction.
  ///
  /// In ar, this message translates to:
  /// **'تطبيق'**
  String get applyAction;

  /// No description provided for @loginTabLabel.
  ///
  /// In ar, this message translates to:
  /// **'دخول'**
  String get loginTabLabel;

  /// No description provided for @signupTabLabel.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب'**
  String get signupTabLabel;

  /// No description provided for @usernameOrEmailLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم المستخدم أو البريد'**
  String get usernameOrEmailLabel;

  /// No description provided for @enterUsernameOrEmail.
  ///
  /// In ar, this message translates to:
  /// **'أدخل اسم المستخدم أو البريد الإلكتروني'**
  String get enterUsernameOrEmail;

  /// No description provided for @passwordLabel.
  ///
  /// In ar, this message translates to:
  /// **'كلمة السر'**
  String get passwordLabel;

  /// No description provided for @enterPassword.
  ///
  /// In ar, this message translates to:
  /// **'أدخل كلمة السر'**
  String get enterPassword;

  /// No description provided for @storeNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم المتجر/الشركة'**
  String get storeNameLabel;

  /// No description provided for @enterStoreName.
  ///
  /// In ar, this message translates to:
  /// **'أدخل اسم المتجر أو الشركة'**
  String get enterStoreName;

  /// No description provided for @nameLabel.
  ///
  /// In ar, this message translates to:
  /// **'الاسم'**
  String get nameLabel;

  /// No description provided for @enterName.
  ///
  /// In ar, this message translates to:
  /// **'أدخل اسمك'**
  String get enterName;

  /// No description provided for @enterEmail.
  ///
  /// In ar, this message translates to:
  /// **'أدخل بريدك الإلكتروني'**
  String get enterEmail;

  /// No description provided for @phoneLabel.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهاتف'**
  String get phoneLabel;

  /// No description provided for @enterPhone.
  ///
  /// In ar, this message translates to:
  /// **'أدخل رقم هاتفك'**
  String get enterPhone;

  /// No description provided for @countryCodeLabel.
  ///
  /// In ar, this message translates to:
  /// **'رمز الدولة'**
  String get countryCodeLabel;

  /// No description provided for @selectCountryCode.
  ///
  /// In ar, this message translates to:
  /// **'اختر رمز الدولة'**
  String get selectCountryCode;

  /// No description provided for @confirmPassword.
  ///
  /// In ar, this message translates to:
  /// **'أعد إدخال كلمة السر'**
  String get confirmPassword;

  /// No description provided for @showPassword.
  ///
  /// In ar, this message translates to:
  /// **'إظهار كلمة السر'**
  String get showPassword;

  /// No description provided for @hidePassword.
  ///
  /// In ar, this message translates to:
  /// **'إخفاء كلمة السر'**
  String get hidePassword;

  /// No description provided for @clearField.
  ///
  /// In ar, this message translates to:
  /// **'مسح'**
  String get clearField;

  /// No description provided for @rememberMe.
  ///
  /// In ar, this message translates to:
  /// **'تذكرني'**
  String get rememberMe;

  /// No description provided for @forgotPassword.
  ///
  /// In ar, this message translates to:
  /// **'هل نسيت كلمة السر؟'**
  String get forgotPassword;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In ar, this message translates to:
  /// **'هل لديك حساب بالفعل؟'**
  String get alreadyHaveAccount;

  /// No description provided for @dontHaveAccount.
  ///
  /// In ar, this message translates to:
  /// **'ليس لديك حساب؟'**
  String get dontHaveAccount;

  /// No description provided for @loginButton.
  ///
  /// In ar, this message translates to:
  /// **'دخول'**
  String get loginButton;

  /// No description provided for @signupButton.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب'**
  String get signupButton;

  /// No description provided for @signupButton2.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب جديد'**
  String get signupButton2;

  /// No description provided for @termsAndConditions.
  ///
  /// In ar, this message translates to:
  /// **'الشروط والأحكام'**
  String get termsAndConditions;

  /// No description provided for @privacyPolicy.
  ///
  /// In ar, this message translates to:
  /// **'سياسة الخصوصية'**
  String get privacyPolicy;

  /// No description provided for @agreeToTerms.
  ///
  /// In ar, this message translates to:
  /// **'أوافق على الشروط والأحكام'**
  String get agreeToTerms;

  /// No description provided for @agreeToTermsRequired.
  ///
  /// In ar, this message translates to:
  /// **'يجب أن توافق على الشروط للمتابعة'**
  String get agreeToTermsRequired;

  /// No description provided for @passwordRecovery.
  ///
  /// In ar, this message translates to:
  /// **'استعادة كلمة السر'**
  String get passwordRecovery;

  /// No description provided for @enterEmailForRecovery.
  ///
  /// In ar, this message translates to:
  /// **'أدخل بريدك الإلكتروني لاستعادة كلمة السر'**
  String get enterEmailForRecovery;

  /// No description provided for @captchaLabel.
  ///
  /// In ar, this message translates to:
  /// **'رمز التحقق'**
  String get captchaLabel;

  /// No description provided for @enterCaptcha.
  ///
  /// In ar, this message translates to:
  /// **'أدخل النتيجة: {firstNumber} + {secondNumber} = ؟'**
  String enterCaptcha(Object firstNumber, Object secondNumber);

  /// No description provided for @invalidCaptcha.
  ///
  /// In ar, this message translates to:
  /// **'رمز التحقق غير صحيح'**
  String get invalidCaptcha;

  /// No description provided for @invalidCredentials.
  ///
  /// In ar, this message translates to:
  /// **'اسم المستخدم أو كلمة السر غير صحيحة'**
  String get invalidCredentials;

  /// No description provided for @accountCreated.
  ///
  /// In ar, this message translates to:
  /// **'تم إنشاء الحساب بنجاح'**
  String get accountCreated;

  /// No description provided for @loginSuccessful.
  ///
  /// In ar, this message translates to:
  /// **'تم الدخول بنجاح'**
  String get loginSuccessful;

  /// No description provided for @passwordResetSent.
  ///
  /// In ar, this message translates to:
  /// **'تم إرسال رمز استعادة كلمة السر إلى بريدك الإلكتروني'**
  String get passwordResetSent;

  /// No description provided for @passwordResetSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم إعادة تعيين كلمة السر بنجاح'**
  String get passwordResetSuccess;

  /// No description provided for @accountAlreadyExists.
  ///
  /// In ar, this message translates to:
  /// **'يوجد حساب بهذا البريد الإلكتروني بالفعل'**
  String get accountAlreadyExists;

  /// No description provided for @weekDayMonday.
  ///
  /// In ar, this message translates to:
  /// **'الإثنين'**
  String get weekDayMonday;

  /// No description provided for @weekDayTuesday.
  ///
  /// In ar, this message translates to:
  /// **'الثلاثاء'**
  String get weekDayTuesday;

  /// No description provided for @weekDayWednesday.
  ///
  /// In ar, this message translates to:
  /// **'الأربعاء'**
  String get weekDayWednesday;

  /// No description provided for @weekDayThursday.
  ///
  /// In ar, this message translates to:
  /// **'الخميس'**
  String get weekDayThursday;

  /// No description provided for @weekDayFriday.
  ///
  /// In ar, this message translates to:
  /// **'الجمعة'**
  String get weekDayFriday;

  /// No description provided for @weekDaySaturday.
  ///
  /// In ar, this message translates to:
  /// **'السبت'**
  String get weekDaySaturday;

  /// No description provided for @weekDaySunday.
  ///
  /// In ar, this message translates to:
  /// **'الأحد'**
  String get weekDaySunday;

  /// No description provided for @iraq.
  ///
  /// In ar, this message translates to:
  /// **'العراق'**
  String get iraq;

  /// No description provided for @saudiArabia.
  ///
  /// In ar, this message translates to:
  /// **'المملكة العربية السعودية'**
  String get saudiArabia;

  /// No description provided for @uae.
  ///
  /// In ar, this message translates to:
  /// **'الإمارات العربية المتحدة'**
  String get uae;

  /// No description provided for @kuwait.
  ///
  /// In ar, this message translates to:
  /// **'الكويت'**
  String get kuwait;

  /// No description provided for @syria.
  ///
  /// In ar, this message translates to:
  /// **'سوريا'**
  String get syria;

  /// No description provided for @jordan.
  ///
  /// In ar, this message translates to:
  /// **'الأردن'**
  String get jordan;

  /// No description provided for @lebanon.
  ///
  /// In ar, this message translates to:
  /// **'لبنان'**
  String get lebanon;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
