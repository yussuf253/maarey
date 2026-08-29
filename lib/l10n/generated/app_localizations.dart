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
  /// **'البريد: {email}'**
  String emailLabel(Object email);

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
  /// **'إقفال'**
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
  /// **'مفتوح'**
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

  /// No description provided for @checkingLicense.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ التحقق من الترخيص…'**
  String get checkingLicense;

  /// No description provided for @storeManagementSystem.
  ///
  /// In ar, this message translates to:
  /// **'نظام إدارة المتاجر'**
  String get storeManagementSystem;

  /// No description provided for @systemInitializing.
  ///
  /// In ar, this message translates to:
  /// **'جاري تهيئة النظام...'**
  String get systemInitializing;

  /// No description provided for @maintenance.
  ///
  /// In ar, this message translates to:
  /// **'صيانة'**
  String get maintenance;

  /// No description provided for @ok.
  ///
  /// In ar, this message translates to:
  /// **'حسناً'**
  String get ok;

  /// No description provided for @updateRequired.
  ///
  /// In ar, this message translates to:
  /// **'تحديث مطلوب'**
  String get updateRequired;

  /// No description provided for @downloadUpdate.
  ///
  /// In ar, this message translates to:
  /// **'تحميل التحديث'**
  String get downloadUpdate;

  /// No description provided for @updateAvailable.
  ///
  /// In ar, this message translates to:
  /// **'تحديث متوفر'**
  String get updateAvailable;

  /// No description provided for @later.
  ///
  /// In ar, this message translates to:
  /// **'لاحقاً'**
  String get later;

  /// No description provided for @download.
  ///
  /// In ar, this message translates to:
  /// **'تحميل'**
  String get download;

  /// No description provided for @openLink.
  ///
  /// In ar, this message translates to:
  /// **'فتح الرابط'**
  String get openLink;

  /// No description provided for @done.
  ///
  /// In ar, this message translates to:
  /// **'تم'**
  String get done;

  /// No description provided for @businessManagementSystem.
  ///
  /// In ar, this message translates to:
  /// **'نظام إدارة الأعمال'**
  String get businessManagementSystem;

  /// No description provided for @salesAndInvoices.
  ///
  /// In ar, this message translates to:
  /// **'المبيعات والفواتير'**
  String get salesAndInvoices;

  /// No description provided for @accountsAndReports.
  ///
  /// In ar, this message translates to:
  /// **'الحسابات والتقارير'**
  String get accountsAndReports;

  /// No description provided for @inventoryAndWarehouses.
  ///
  /// In ar, this message translates to:
  /// **'المخزون والمستودعات'**
  String get inventoryAndWarehouses;

  /// No description provided for @createNewAccountTitle.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب جديد'**
  String get createNewAccountTitle;

  /// No description provided for @loginTitle.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الدخول'**
  String get loginTitle;

  /// No description provided for @signupSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'سيصلك رمز تحقق على بريدك الإلكتروني لتأكيد حسابك'**
  String get signupSubtitle;

  /// No description provided for @loginSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'أدخل البريد الإلكتروني وكلمة السر للدخول'**
  String get loginSubtitle;

  /// No description provided for @haveAccountBackToLogin.
  ///
  /// In ar, this message translates to:
  /// **'لديك حساب؟ العودة إلى تسجيل الدخول'**
  String get haveAccountBackToLogin;

  /// No description provided for @noAccountCreateNew.
  ///
  /// In ar, this message translates to:
  /// **'ليس لديك حساب؟ إنشاء حساب جديد'**
  String get noAccountCreateNew;

  /// No description provided for @requiredField.
  ///
  /// In ar, this message translates to:
  /// **'مطلوب'**
  String get requiredField;

  /// No description provided for @minLength3Chars.
  ///
  /// In ar, this message translates to:
  /// **'يجب أن يكون 3 أحرف على الأقل'**
  String get minLength3Chars;

  /// No description provided for @nameRequired.
  ///
  /// In ar, this message translates to:
  /// **'الاسم مطلوب'**
  String get nameRequired;

  /// No description provided for @nameRequiredMin3.
  ///
  /// In ar, this message translates to:
  /// **'الاسم مطلوب (3 أحرف على الأقل)'**
  String get nameRequiredMin3;

  /// No description provided for @emailRequiredShort.
  ///
  /// In ar, this message translates to:
  /// **'البريد مطلوب'**
  String get emailRequiredShort;

  /// No description provided for @iraqMobileInvalid.
  ///
  /// In ar, this message translates to:
  /// **'رقم عراقي: 11 رقماً يبدأ بـ 07 (مثال: 07701234567)'**
  String get iraqMobileInvalid;

  /// No description provided for @passwordRequired.
  ///
  /// In ar, this message translates to:
  /// **'كلمة السر مطلوبة'**
  String get passwordRequired;

  /// No description provided for @passwordDoesNotMeetRequirements.
  ///
  /// In ar, this message translates to:
  /// **'كلمة السر لا تحقق الشروط المطلوبة'**
  String get passwordDoesNotMeetRequirements;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In ar, this message translates to:
  /// **'كلمتا السر غير متطابقتين'**
  String get passwordsDoNotMatch;

  /// No description provided for @enterPasswordAgain.
  ///
  /// In ar, this message translates to:
  /// **'الرجاء إعادة كتابة كلمة السر'**
  String get enterPasswordAgain;

  /// No description provided for @iraqDialTooltip.
  ///
  /// In ar, this message translates to:
  /// **'+964 العراق — سيتوفر اختيار دول أخرى لاحقاً'**
  String get iraqDialTooltip;

  /// No description provided for @welcomeToNaBoo.
  ///
  /// In ar, this message translates to:
  /// **'مرحباً بك في نابو'**
  String get welcomeToNaBoo;

  /// No description provided for @welcomeBackGreeting.
  ///
  /// In ar, this message translates to:
  /// **'مرحبًا بعودتك، {name}'**
  String welcomeBackGreeting(Object name);

  /// No description provided for @todaysBusinessSummary.
  ///
  /// In ar, this message translates to:
  /// **'إليك ملخص أعمال اليوم'**
  String get todaysBusinessSummary;

  /// No description provided for @userFallback.
  ///
  /// In ar, this message translates to:
  /// **'مستخدم'**
  String get userFallback;

  /// No description provided for @failedToLoadChartData.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل بيانات الرسوم البيانية.'**
  String get failedToLoadChartData;

  /// No description provided for @lastWeek.
  ///
  /// In ar, this message translates to:
  /// **'آخر أسبوع'**
  String get lastWeek;

  /// No description provided for @lastMonth.
  ///
  /// In ar, this message translates to:
  /// **'آخر شهر'**
  String get lastMonth;

  /// No description provided for @incomeLabel.
  ///
  /// In ar, this message translates to:
  /// **'إيراد:'**
  String get incomeLabel;

  /// No description provided for @expenseLabel.
  ///
  /// In ar, this message translates to:
  /// **'مصروف:'**
  String get expenseLabel;

  /// No description provided for @salesPerformance.
  ///
  /// In ar, this message translates to:
  /// **'أداء المبيعات'**
  String get salesPerformance;

  /// No description provided for @totalLabelColon.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي:'**
  String get totalLabelColon;

  /// No description provided for @expensesVsIncome.
  ///
  /// In ar, this message translates to:
  /// **'المصروفات مقابل الإيرادات'**
  String get expensesVsIncome;

  /// No description provided for @incomeLegend.
  ///
  /// In ar, this message translates to:
  /// **'الإيرادات'**
  String get incomeLegend;

  /// No description provided for @expensesLegend.
  ///
  /// In ar, this message translates to:
  /// **'المصروفات'**
  String get expensesLegend;

  /// No description provided for @changePeriod.
  ///
  /// In ar, this message translates to:
  /// **'تغيير الفترة'**
  String get changePeriod;

  /// No description provided for @pinnedProductsHint.
  ///
  /// In ar, this message translates to:
  /// **'منتجات مثبّتة — اضغط لبيع جديد'**
  String get pinnedProductsHint;

  /// No description provided for @byPiece.
  ///
  /// In ar, this message translates to:
  /// **'بالقطعة'**
  String get byPiece;

  /// No description provided for @byWeight.
  ///
  /// In ar, this message translates to:
  /// **'بالوزن'**
  String get byWeight;

  /// No description provided for @addGroup.
  ///
  /// In ar, this message translates to:
  /// **'إضافة مجموعة'**
  String get addGroup;

  /// No description provided for @remainingColon.
  ///
  /// In ar, this message translates to:
  /// **'متبقي:'**
  String get remainingColon;

  /// No description provided for @notTracked.
  ///
  /// In ar, this message translates to:
  /// **'غير متتبّع'**
  String get notTracked;

  /// No description provided for @technicalService.
  ///
  /// In ar, this message translates to:
  /// **'خدمة فنية'**
  String get technicalService;

  /// No description provided for @groupByCategory.
  ///
  /// In ar, this message translates to:
  /// **'مجموعة حسب التصنيف'**
  String get groupByCategory;

  /// No description provided for @groupByCategoryDesc.
  ///
  /// In ar, this message translates to:
  /// **'تصفية المنتجات المثبتة حسب تصنيف واحد'**
  String get groupByCategoryDesc;

  /// No description provided for @groupByBrand.
  ///
  /// In ar, this message translates to:
  /// **'مجموعة حسب الماركة'**
  String get groupByBrand;

  /// No description provided for @groupByBrandDesc.
  ///
  /// In ar, this message translates to:
  /// **'تصفية المنتجات المثبتة حسب ماركة واحدة'**
  String get groupByBrandDesc;

  /// No description provided for @noCategoriesYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد تصنيفات بعد'**
  String get noCategoriesYet;

  /// No description provided for @chooseCategory.
  ///
  /// In ar, this message translates to:
  /// **'اختر تصنيفاً'**
  String get chooseCategory;

  /// No description provided for @categoryFallback.
  ///
  /// In ar, this message translates to:
  /// **'تصنيف'**
  String get categoryFallback;

  /// No description provided for @noBrandsYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد علامات تجارية بعد.\nاضغط «ماركة جديدة» لإضافة أول ماركة.'**
  String get noBrandsYet;

  /// No description provided for @chooseBrand.
  ///
  /// In ar, this message translates to:
  /// **'اختر ماركة'**
  String get chooseBrand;

  /// No description provided for @brandFallback.
  ///
  /// In ar, this message translates to:
  /// **'ماركة'**
  String get brandFallback;

  /// No description provided for @groupAlreadyExists.
  ///
  /// In ar, this message translates to:
  /// **'هذه المجموعة موجودة مسبقاً'**
  String get groupAlreadyExists;

  /// No description provided for @noMatchingActivityYet.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد نشاط مطابق بعد'**
  String get noMatchingActivityYet;

  /// No description provided for @noActivityHint.
  ///
  /// In ar, this message translates to:
  /// **'سجّل مبيعات أو حركات صندوق أو أي عمل في التطبيق لتظهر هنا مرتّبة زمنياً.'**
  String get noActivityHint;

  /// No description provided for @failedToLoadActivity.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل النشاط: {error}'**
  String failedToLoadActivity(Object error);

  /// No description provided for @recentActivityOverview.
  ///
  /// In ar, this message translates to:
  /// **'نظرة عامة على النشاطات الأخيرة'**
  String get recentActivityOverview;

  /// No description provided for @invoicesLabelShort.
  ///
  /// In ar, this message translates to:
  /// **'الفواتير'**
  String get invoicesLabelShort;

  /// No description provided for @cashLabelShort.
  ///
  /// In ar, this message translates to:
  /// **'الصندوق'**
  String get cashLabelShort;

  /// No description provided for @otherLabelShort.
  ///
  /// In ar, this message translates to:
  /// **'أخرى'**
  String get otherLabelShort;

  /// No description provided for @openInvoicesList.
  ///
  /// In ar, this message translates to:
  /// **'قائمة الفواتير'**
  String get openInvoicesList;

  /// No description provided for @openCashRegister.
  ///
  /// In ar, this message translates to:
  /// **'الصندوق'**
  String get openCashRegister;

  /// No description provided for @cashRegisterCard.
  ///
  /// In ar, this message translates to:
  /// **'الصندوق'**
  String get cashRegisterCard;

  /// No description provided for @cashRegisterHint.
  ///
  /// In ar, this message translates to:
  /// **'رصيد مجمّع في السجل'**
  String get cashRegisterHint;

  /// No description provided for @shiftLabel.
  ///
  /// In ar, this message translates to:
  /// **'وردية'**
  String get shiftLabel;

  /// No description provided for @newSaleCard.
  ///
  /// In ar, this message translates to:
  /// **'بيع جديد'**
  String get newSaleCard;

  /// No description provided for @newSaleSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة سريعة'**
  String get newSaleSubtitle;

  /// No description provided for @newSaleHint.
  ///
  /// In ar, this message translates to:
  /// **'اختصار للصندوق والبيع'**
  String get newSaleHint;

  /// No description provided for @inventoryCard.
  ///
  /// In ar, this message translates to:
  /// **'المخزون'**
  String get inventoryCard;

  /// No description provided for @inventorySubtitle.
  ///
  /// In ar, this message translates to:
  /// **'{count} صنفاً نشطاً'**
  String inventorySubtitle(Object count);

  /// No description provided for @inventoryAlertLowStock.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه: {count} بمخزون منخفض'**
  String inventoryAlertLowStock(Object count);

  /// No description provided for @inventoryNoAlerts.
  ///
  /// In ar, this message translates to:
  /// **'لا تنبيهات مخزون'**
  String get inventoryNoAlerts;

  /// No description provided for @completedOrdersCard.
  ///
  /// In ar, this message translates to:
  /// **'الطلبات المنجزة'**
  String get completedOrdersCard;

  /// No description provided for @completedOrdersSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'{count} طلب'**
  String completedOrdersSubtitle(Object count);

  /// No description provided for @completedOrdersHint.
  ///
  /// In ar, this message translates to:
  /// **'مكسب الوردية السابقة'**
  String get completedOrdersHint;

  /// No description provided for @parkedCard.
  ///
  /// In ar, this message translates to:
  /// **'معلّقات'**
  String get parkedCard;

  /// No description provided for @parkedSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'{count} فاتورة'**
  String parkedSubtitle(Object count);

  /// No description provided for @parkedHint.
  ///
  /// In ar, this message translates to:
  /// **'مؤقتاً في الانتظار'**
  String get parkedHint;

  /// No description provided for @reportsCard.
  ///
  /// In ar, this message translates to:
  /// **'التقارير'**
  String get reportsCard;

  /// No description provided for @reportsSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'لوحة تنفيذية'**
  String get reportsSubtitle;

  /// No description provided for @reportsHint.
  ///
  /// In ar, this message translates to:
  /// **'مؤشرات الفترة'**
  String get reportsHint;

  /// No description provided for @dragToReorderCards.
  ///
  /// In ar, this message translates to:
  /// **'اسحب العناصر لأعلى أو لأسفل. الترتيب يُحفظ على هذا الجهاز.'**
  String get dragToReorderCards;

  /// No description provided for @saveOrder.
  ///
  /// In ar, this message translates to:
  /// **'حفظ الترتيب'**
  String get saveOrder;

  /// No description provided for @reorderCards.
  ///
  /// In ar, this message translates to:
  /// **'ترتيب البطاقات'**
  String get reorderCards;

  /// No description provided for @refreshNumbers.
  ///
  /// In ar, this message translates to:
  /// **'تحديث الأرقام'**
  String get refreshNumbers;

  /// No description provided for @glanceOverview.
  ///
  /// In ar, this message translates to:
  /// **'لمحة المربّع'**
  String get glanceOverview;

  /// No description provided for @dragHeightHint.
  ///
  /// In ar, this message translates to:
  /// **'اسحب لأعلى أو لأسفل لتغيير ارتفاع قائمة المنتجات'**
  String get dragHeightHint;

  /// No description provided for @pinnedProductsHeightHandle.
  ///
  /// In ar, this message translates to:
  /// **'مقبض تغيير ارتفاع قائمة المنتجات المثبتة'**
  String get pinnedProductsHeightHandle;

  /// No description provided for @filterByCategoryColon.
  ///
  /// In ar, this message translates to:
  /// **'تصفية حسب التصنيف: {name}'**
  String filterByCategoryColon(Object name);

  /// No description provided for @filterByBrandColon.
  ///
  /// In ar, this message translates to:
  /// **'تصفية حسب الماركة: {name}'**
  String filterByBrandColon(Object name);

  /// No description provided for @accountLabel.
  ///
  /// In ar, this message translates to:
  /// **'الحساب'**
  String get accountLabel;

  /// No description provided for @lightModeLabel.
  ///
  /// In ar, this message translates to:
  /// **'الوضع النهاري'**
  String get lightModeLabel;

  /// No description provided for @darkModeLabel.
  ///
  /// In ar, this message translates to:
  /// **'الوضع الليلي'**
  String get darkModeLabel;

  /// No description provided for @calculatorLabel.
  ///
  /// In ar, this message translates to:
  /// **'حاسبة'**
  String get calculatorLabel;

  /// No description provided for @settingsLabelMenu.
  ///
  /// In ar, this message translates to:
  /// **'الإعدادات'**
  String get settingsLabelMenu;

  /// No description provided for @showMacPanel.
  ///
  /// In ar, this message translates to:
  /// **'إظهار لوحة Mac'**
  String get showMacPanel;

  /// No description provided for @hideMacPanel.
  ///
  /// In ar, this message translates to:
  /// **'إخفاء لوحة Mac'**
  String get hideMacPanel;

  /// No description provided for @customizeModules.
  ///
  /// In ar, this message translates to:
  /// **'تخصيص الوحدات'**
  String get customizeModules;

  /// No description provided for @editDone.
  ///
  /// In ar, this message translates to:
  /// **'إنهاء التحرير'**
  String get editDone;

  /// No description provided for @breadcrumbNavHint.
  ///
  /// In ar, this message translates to:
  /// **'مسار التنقل — اضغط خطوة سابقة للرجوع'**
  String get breadcrumbNavHint;

  /// No description provided for @currentPageLabel.
  ///
  /// In ar, this message translates to:
  /// **'الصفحة الحالية: {title}'**
  String currentPageLabel(Object title);

  /// No description provided for @restrictedModeBanner.
  ///
  /// In ar, this message translates to:
  /// **'وضع مقيّد — اتصل بالإنترنت للتحقق'**
  String get restrictedModeBanner;

  /// No description provided for @retryButton.
  ///
  /// In ar, this message translates to:
  /// **'إعادة المحاولة'**
  String get retryButton;

  /// No description provided for @timeTamperTitle.
  ///
  /// In ar, this message translates to:
  /// **'تعارض في إعدادات الوقت'**
  String get timeTamperTitle;

  /// No description provided for @licenseSuspendedTitle.
  ///
  /// In ar, this message translates to:
  /// **'الترخيص موقوف'**
  String get licenseSuspendedTitle;

  /// No description provided for @deviceLimitExceededTitle.
  ///
  /// In ar, this message translates to:
  /// **'تجاوز حد الأجهزة'**
  String get deviceLimitExceededTitle;

  /// No description provided for @subscriptionExpiredTitle.
  ///
  /// In ar, this message translates to:
  /// **'انتهى الاشتراك'**
  String get subscriptionExpiredTitle;

  /// No description provided for @timeTamperMessage.
  ///
  /// In ar, this message translates to:
  /// **'تم اكتشاف تعارض في إعدادات الوقت. تواصل مع الدعم للمساعدة في إعادة التحقق.'**
  String get timeTamperMessage;

  /// No description provided for @accountSuspendedMessage.
  ///
  /// In ar, this message translates to:
  /// **'تم إيقاف حسابك. تواصل مع الدعم الفني.'**
  String get accountSuspendedMessage;

  /// No description provided for @subscriptionExpiredMessage.
  ///
  /// In ar, this message translates to:
  /// **'انتهى اشتراكك. جدّد للمتابعة.'**
  String get subscriptionExpiredMessage;

  /// No description provided for @enterLicenseKeyError.
  ///
  /// In ar, this message translates to:
  /// **'أدخل مفتاح الترخيص'**
  String get enterLicenseKeyError;

  /// No description provided for @yourCurrentPlan.
  ///
  /// In ar, this message translates to:
  /// **'خطتك الحالية'**
  String get yourCurrentPlan;

  /// No description provided for @registeredDevices.
  ///
  /// In ar, this message translates to:
  /// **'الأجهزة المسجّلة'**
  String get registeredDevices;

  /// No description provided for @subscriptionExpires.
  ///
  /// In ar, this message translates to:
  /// **'انتهاء الاشتراك'**
  String get subscriptionExpires;

  /// No description provided for @trialExpires.
  ///
  /// In ar, this message translates to:
  /// **'انتهاء التجربة'**
  String get trialExpires;

  /// No description provided for @upgradePlanToAddDevices.
  ///
  /// In ar, this message translates to:
  /// **'ترقية الخطة لإضافة أجهزة'**
  String get upgradePlanToAddDevices;

  /// No description provided for @renewSubscription.
  ///
  /// In ar, this message translates to:
  /// **'تجديد الاشتراك'**
  String get renewSubscription;

  /// No description provided for @comparePlans.
  ///
  /// In ar, this message translates to:
  /// **'مقارنة خطط الاشتراك'**
  String get comparePlans;

  /// No description provided for @enterNewKey.
  ///
  /// In ar, this message translates to:
  /// **'إدخال مفتاح جديد'**
  String get enterNewKey;

  /// No description provided for @activateButton.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل'**
  String get activateButton;

  /// No description provided for @reVerifyButton.
  ///
  /// In ar, this message translates to:
  /// **'إعادة التحقق'**
  String get reVerifyButton;

  /// No description provided for @useAnotherKey.
  ///
  /// In ar, this message translates to:
  /// **'استخدام مفتاح آخر'**
  String get useAnotherKey;

  /// No description provided for @allRightsReserved.
  ///
  /// In ar, this message translates to:
  /// **'NaBoo v2.0 — جميع الحقوق محفوظة'**
  String get allRightsReserved;

  /// No description provided for @noInternetConnection.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد اتصال بالإنترنت'**
  String get noInternetConnection;

  /// No description provided for @offlineMessage.
  ///
  /// In ar, this message translates to:
  /// **'يعمل التطبيق بآخر بيانات ترخيص محفوظة.\nتأكد من الاتصال في أقرب فرصة.'**
  String get offlineMessage;

  /// No description provided for @enterWithoutConnection.
  ///
  /// In ar, this message translates to:
  /// **'الدخول بدون اتصال'**
  String get enterWithoutConnection;

  /// No description provided for @activateLicenseTitle.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل الترخيص'**
  String get activateLicenseTitle;

  /// No description provided for @enterLicenseKeyToContinue.
  ///
  /// In ar, this message translates to:
  /// **'أدخل مفتاح الترخيص للمتابعة'**
  String get enterLicenseKeyToContinue;

  /// No description provided for @contactTeamForLicense.
  ///
  /// In ar, this message translates to:
  /// **'للحصول على مفتاح ترخيص، تواصل مع فريق NaBoo.'**
  String get contactTeamForLicense;

  /// No description provided for @subscriptionPlansTitle.
  ///
  /// In ar, this message translates to:
  /// **'خطط الاشتراك'**
  String get subscriptionPlansTitle;

  /// No description provided for @chooseRightPlan.
  ///
  /// In ar, this message translates to:
  /// **'اختر الخطة المناسبة لنشاطك'**
  String get chooseRightPlan;

  /// No description provided for @plansDescriptionJwt.
  ///
  /// In ar, this message translates to:
  /// **'البطاقات أدناه للمقارنة والأسعار فقط. بعد الدفع تستلم رمزاً موقّعاً (JWT) — الصقه في حقل التفعيل أسفل البطاقات مباشرة.'**
  String get plansDescriptionJwt;

  /// No description provided for @plansDescriptionLegacy.
  ///
  /// In ar, this message translates to:
  /// **'البطاقة الأولى: تجربة تلقائية 15 يوماً (جهازان). البطاقات التالية خطط مدفوعة — بعد الدفع تُدخل المفتاح في الحقل الموحّد أسفل الصفحة.'**
  String get plansDescriptionLegacy;

  /// No description provided for @howToSubscribe.
  ///
  /// In ar, this message translates to:
  /// **'كيفية الاشتراك'**
  String get howToSubscribe;

  /// No description provided for @subscribeStepsJwt.
  ///
  /// In ar, this message translates to:
  /// **'١. تواصل مع فريق NaBoo عبر الطرق أدناه\n٢. أكمل الدفع للخطة التي تريدها\n٣. استلم رمز التفعيل الكامل (JWT) من الإدارة\n٤. الصق الرمز في الحقل الموحّد أسفل بطاقات الخطط — الخطة وحد الأجهزة يُستنتجان من الرمز'**
  String get subscribeStepsJwt;

  /// No description provided for @subscribeStepsLegacy.
  ///
  /// In ar, this message translates to:
  /// **'١. تواصل مع فريق NaBoo عبر الطرق أدناه\n٢. أخبرنا بالخطة التي تريدها وأكمل الدفع\n٣. استلم مفتاح الترخيص من الإدارة\n٤. الصق المفتاح في الحقل الموحّد أسفل بطاقات الخطط ثم اضغط «تفعيل المفتاح»'**
  String get subscribeStepsLegacy;

  /// No description provided for @whatsappOrPhone.
  ///
  /// In ar, this message translates to:
  /// **'واتساب / هاتف'**
  String get whatsappOrPhone;

  /// No description provided for @emailContact.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get emailContact;

  /// No description provided for @continueButton.
  ///
  /// In ar, this message translates to:
  /// **'متابعة'**
  String get continueButton;

  /// No description provided for @pasteTokenFirst.
  ///
  /// In ar, this message translates to:
  /// **'الصق رمز الترخيص أولاً'**
  String get pasteTokenFirst;

  /// No description provided for @activateTokenTitle.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل رمز الترخيص'**
  String get activateTokenTitle;

  /// No description provided for @activateTokenDescription.
  ///
  /// In ar, this message translates to:
  /// **'الصق الرمز الكامل الذي أرسلته الإدارة. الخطة وحد الأجهزة يُستنتجان من داخل الرمز وليس من شكل البطاقة.'**
  String get activateTokenDescription;

  /// No description provided for @pasteTokenHint.
  ///
  /// In ar, this message translates to:
  /// **'الصق رمز التفعيل هنا'**
  String get pasteTokenHint;

  /// No description provided for @activateTokenButton.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل الرمز'**
  String get activateTokenButton;

  /// No description provided for @pasteKeyOrTokenFirst.
  ///
  /// In ar, this message translates to:
  /// **'الصق مفتاح الترخيص أو رمز التفعيل أولاً'**
  String get pasteKeyOrTokenFirst;

  /// No description provided for @activateKeyTitle.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل المفتاح'**
  String get activateKeyTitle;

  /// No description provided for @activateKeyDescription.
  ///
  /// In ar, this message translates to:
  /// **'الصق مفتاح الترخيص الذي استلمته بعد الدفع، أو رمز JWT إن وُجد. الخطط أعلاه للعرض والمقارنة فقط.'**
  String get activateKeyDescription;

  /// No description provided for @pasteKeyHint.
  ///
  /// In ar, this message translates to:
  /// **'الصق مفتاح الترخيص أو رمز التفعيل'**
  String get pasteKeyHint;

  /// No description provided for @activateKeyButton.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل المفتاح'**
  String get activateKeyButton;

  /// No description provided for @freeLabel.
  ///
  /// In ar, this message translates to:
  /// **'مجاناً'**
  String get freeLabel;

  /// No description provided for @trialDaysLabel.
  ///
  /// In ar, this message translates to:
  /// **'15 يوماً'**
  String get trialDaysLabel;

  /// No description provided for @currencyLabel.
  ///
  /// In ar, this message translates to:
  /// **'د.ع'**
  String get currencyLabel;

  /// No description provided for @perMonthLabel.
  ///
  /// In ar, this message translates to:
  /// **'شهرياً'**
  String get perMonthLabel;

  /// No description provided for @yourCurrentTrial.
  ///
  /// In ar, this message translates to:
  /// **'تجربتك الحالية'**
  String get yourCurrentTrial;

  /// No description provided for @yourCurrentPlanCard.
  ///
  /// In ar, this message translates to:
  /// **'خطتك الحالية'**
  String get yourCurrentPlanCard;

  /// No description provided for @trialAutoStartsMessage.
  ///
  /// In ar, this message translates to:
  /// **'التجربة تبدأ تلقائياً — لا مفتاح. عند الترقية استلم الرمز من الإدارة والصقه في الحقل الموحّد أسفل البطاقات.'**
  String get trialAutoStartsMessage;

  /// No description provided for @jwtPlanDescription.
  ///
  /// In ar, this message translates to:
  /// **'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق رمز التفعيل (JWT) في الحقل الموحّد أسفل البطاقات مباشرة.'**
  String get jwtPlanDescription;

  /// No description provided for @legacyPlanDescription.
  ///
  /// In ar, this message translates to:
  /// **'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق مفتاح الترخيص في الحقل الموحّد أسفل البطاقات.'**
  String get legacyPlanDescription;

  /// No description provided for @mostPopular.
  ///
  /// In ar, this message translates to:
  /// **'الأكثر طلباً'**
  String get mostPopular;

  /// No description provided for @numberCopied.
  ///
  /// In ar, this message translates to:
  /// **'تم نسخ الرقم'**
  String get numberCopied;

  /// No description provided for @emailCopied.
  ///
  /// In ar, this message translates to:
  /// **'تم نسخ البريد'**
  String get emailCopied;

  /// No description provided for @copyTooltip.
  ///
  /// In ar, this message translates to:
  /// **'نسخ'**
  String get copyTooltip;

  /// No description provided for @inventorySettingsTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات المخزون'**
  String get inventorySettingsTitle;

  /// No description provided for @subSettingsTitle.
  ///
  /// In ar, this message translates to:
  /// **'الإعدادات الفرعية'**
  String get subSettingsTitle;

  /// No description provided for @subSettingsSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات تفصيلية لكل جانب من جوانب المخزون'**
  String get subSettingsSubtitle;

  /// No description provided for @productAddSettingsTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات إضافة منتج'**
  String get productAddSettingsTitle;

  /// No description provided for @productAddSettingsDesc.
  ///
  /// In ar, this message translates to:
  /// **'الحقول الافتراضية، المخزن الافتراضي، حقول إلزامية'**
  String get productAddSettingsDesc;

  /// No description provided for @barcodeSettingsTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات الباركود'**
  String get barcodeSettingsTitle;

  /// No description provided for @barcodeSettingsDesc.
  ///
  /// In ar, this message translates to:
  /// **'معيار الباركود، الحقول المدمجة في الباركود'**
  String get barcodeSettingsDesc;

  /// No description provided for @categoriesTitle.
  ///
  /// In ar, this message translates to:
  /// **'التصنيفات'**
  String get categoriesTitle;

  /// No description provided for @categoriesDesc.
  ///
  /// In ar, this message translates to:
  /// **'إضافة وتعديل وحذف فئات المنتجات'**
  String get categoriesDesc;

  /// No description provided for @brandsTitle.
  ///
  /// In ar, this message translates to:
  /// **'العلامات التجارية'**
  String get brandsTitle;

  /// No description provided for @brandsDesc.
  ///
  /// In ar, this message translates to:
  /// **'إضافة وتعديل وحذف الماركات'**
  String get brandsDesc;

  /// No description provided for @unitTemplatesTitle.
  ///
  /// In ar, this message translates to:
  /// **'قوالب وحدات القياس'**
  String get unitTemplatesTitle;

  /// No description provided for @unitTemplatesDesc.
  ///
  /// In ar, this message translates to:
  /// **'إدارة قوالب الوحدات (الأساسية والتحويل) من الشاشة المخصّصة. افتح «قوالب الوحدات» من القائمة الرئيسية لإعدادات المخزون — تُستعمل كمرجع عند تعريف وحدات إضافية للمنتج.'**
  String get unitTemplatesDesc;

  /// No description provided for @stockMovementsTitle.
  ///
  /// In ar, this message translates to:
  /// **'حركات المخزون'**
  String get stockMovementsTitle;

  /// No description provided for @newVoucher.
  ///
  /// In ar, this message translates to:
  /// **'سند جديد'**
  String get newVoucher;

  /// No description provided for @deposits.
  ///
  /// In ar, this message translates to:
  /// **'إيداعات'**
  String get deposits;

  /// No description provided for @withdrawals.
  ///
  /// In ar, this message translates to:
  /// **'مصروفات'**
  String get withdrawals;

  /// No description provided for @transfers.
  ///
  /// In ar, this message translates to:
  /// **'تحويلات'**
  String get transfers;

  /// No description provided for @searchByProductOrVoucher.
  ///
  /// In ar, this message translates to:
  /// **'بحث بالمنتج أو رقم السند...'**
  String get searchByProductOrVoucher;

  /// No description provided for @noMovements.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد حركات'**
  String get noMovements;

  /// No description provided for @noItems.
  ///
  /// In ar, this message translates to:
  /// **'بدون بنود'**
  String get noItems;

  /// No description provided for @failedToLoadMovements.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل الحركات: {error}'**
  String failedToLoadMovements(Object error);

  /// No description provided for @filterAll.
  ///
  /// In ar, this message translates to:
  /// **'الكل'**
  String get filterAll;

  /// No description provided for @filterDeposit.
  ///
  /// In ar, this message translates to:
  /// **'إيداع'**
  String get filterDeposit;

  /// No description provided for @filterWithdraw.
  ///
  /// In ar, this message translates to:
  /// **'صرف'**
  String get filterWithdraw;

  /// No description provided for @filterTransfer.
  ///
  /// In ar, this message translates to:
  /// **'تحويل'**
  String get filterTransfer;

  /// No description provided for @sortNewest.
  ///
  /// In ar, this message translates to:
  /// **'الأحدث'**
  String get sortNewest;

  /// No description provided for @sortOldest.
  ///
  /// In ar, this message translates to:
  /// **'الأقدم'**
  String get sortOldest;

  /// No description provided for @productDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل المنتج'**
  String get productDetails;

  /// No description provided for @unpinFromHome.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء التثبيت من الرئيسية'**
  String get unpinFromHome;

  /// No description provided for @pinToHome.
  ///
  /// In ar, this message translates to:
  /// **'تثبيت في الرئيسية'**
  String get pinToHome;

  /// No description provided for @failedToLoadProduct.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر تحميل بيانات المنتج'**
  String get failedToLoadProduct;

  /// No description provided for @lowStock.
  ///
  /// In ar, this message translates to:
  /// **'مخزون منخفض'**
  String get lowStock;

  /// No description provided for @inStock.
  ///
  /// In ar, this message translates to:
  /// **'في المخزون'**
  String get inStock;

  /// No description provided for @summary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص'**
  String get summary;

  /// No description provided for @availableQtyLabel.
  ///
  /// In ar, this message translates to:
  /// **'الكمية المتاحة'**
  String get availableQtyLabel;

  /// No description provided for @salePrice.
  ///
  /// In ar, this message translates to:
  /// **'سعر البيع'**
  String get salePrice;

  /// No description provided for @minSalePrice.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأدنى للبيع'**
  String get minSalePrice;

  /// No description provided for @purchasePrice.
  ///
  /// In ar, this message translates to:
  /// **'سعر الشراء'**
  String get purchasePrice;

  /// No description provided for @warehouseStock.
  ///
  /// In ar, this message translates to:
  /// **'مخزون المخازن'**
  String get warehouseStock;

  /// No description provided for @noWarehouseData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات مخازن'**
  String get noWarehouseData;

  /// No description provided for @batchesLast20.
  ///
  /// In ar, this message translates to:
  /// **'دفعات (Batches) — آخر 20'**
  String get batchesLast20;

  /// No description provided for @noRecordedBatches.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد دفعات مسجلة'**
  String get noRecordedBatches;

  /// No description provided for @batch.
  ///
  /// In ar, this message translates to:
  /// **'دفعة'**
  String get batch;

  /// No description provided for @recentSalesMovements.
  ///
  /// In ar, this message translates to:
  /// **'آخر مبيعات/حركات'**
  String get recentSalesMovements;

  /// No description provided for @noRecentSales.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد حركات بيع مؤخراً'**
  String get noRecentSales;

  /// No description provided for @warehouseFallback.
  ///
  /// In ar, this message translates to:
  /// **'مخزن'**
  String get warehouseFallback;

  /// No description provided for @stockAnalytics.
  ///
  /// In ar, this message translates to:
  /// **'تحليلات المخزون'**
  String get stockAnalytics;

  /// No description provided for @stockOverview.
  ///
  /// In ar, this message translates to:
  /// **'نظرة عامة على المخزون'**
  String get stockOverview;

  /// No description provided for @inventoryValue.
  ///
  /// In ar, this message translates to:
  /// **'قيمة المخزون'**
  String get inventoryValue;

  /// No description provided for @totalProducts.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المنتجات'**
  String get totalProducts;

  /// No description provided for @lowStockLabel.
  ///
  /// In ar, this message translates to:
  /// **'مخزون منخفض'**
  String get lowStockLabel;

  /// No description provided for @outOfStockLabel.
  ///
  /// In ar, this message translates to:
  /// **'نفد المخزون'**
  String get outOfStockLabel;

  /// No description provided for @nearExpiryWarning.
  ///
  /// In ar, this message translates to:
  /// **'{count} منتج قريب الانتهاء خلال 60 يوماً — راجع القائمة أدناه'**
  String nearExpiryWarning(Object count);

  /// No description provided for @nearExpiry60days.
  ///
  /// In ar, this message translates to:
  /// **'قريبة الانتهاء (60 يوم)'**
  String get nearExpiry60days;

  /// No description provided for @topSellersLast30.
  ///
  /// In ar, this message translates to:
  /// **'الأكثر مبيعاً — آخر 30 يوم'**
  String get topSellersLast30;

  /// No description provided for @inventoryValueByCategory.
  ///
  /// In ar, this message translates to:
  /// **'قيمة المخزون حسب الفئة'**
  String get inventoryValueByCategory;

  /// No description provided for @product.
  ///
  /// In ar, this message translates to:
  /// **'المنتج'**
  String get product;

  /// No description provided for @quantity.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get quantity;

  /// No description provided for @minimumThreshold.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأدنى'**
  String get minimumThreshold;

  /// No description provided for @expiryDate.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الانتهاء'**
  String get expiryDate;

  /// No description provided for @soldQuantity.
  ///
  /// In ar, this message translates to:
  /// **'الكمية المباعة'**
  String get soldQuantity;

  /// No description provided for @revenue.
  ///
  /// In ar, this message translates to:
  /// **'الإيرادات'**
  String get revenue;

  /// No description provided for @productCount.
  ///
  /// In ar, this message translates to:
  /// **'{count} منتج'**
  String productCount(Object count);

  /// No description provided for @noCategory.
  ///
  /// In ar, this message translates to:
  /// **'بدون فئة'**
  String get noCategory;

  /// No description provided for @unitTemplates.
  ///
  /// In ar, this message translates to:
  /// **'قوالب الوحدات'**
  String get unitTemplates;

  /// No description provided for @search.
  ///
  /// In ar, this message translates to:
  /// **'بحث'**
  String get search;

  /// No description provided for @all.
  ///
  /// In ar, this message translates to:
  /// **'الكل'**
  String get all;

  /// No description provided for @cancelFilter.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء الفلتر'**
  String get cancelFilter;

  /// No description provided for @newTemplate.
  ///
  /// In ar, this message translates to:
  /// **'قالب جديد'**
  String get newTemplate;

  /// No description provided for @sortBy.
  ///
  /// In ar, this message translates to:
  /// **'الترتيب حسب'**
  String get sortBy;

  /// No description provided for @results.
  ///
  /// In ar, this message translates to:
  /// **'النتائج'**
  String get results;

  /// No description provided for @noTemplatesYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد قوالب بعد.\nاضغط «قالب جديد» لإضافة قالب وربط وحدات البيع بالمنتجات.'**
  String get noTemplatesYet;

  /// No description provided for @edit.
  ///
  /// In ar, this message translates to:
  /// **'تعديل'**
  String get edit;

  /// No description provided for @delete.
  ///
  /// In ar, this message translates to:
  /// **'حذف'**
  String get delete;

  /// No description provided for @activeStatus.
  ///
  /// In ar, this message translates to:
  /// **'نشط'**
  String get activeStatus;

  /// No description provided for @inactiveStatus.
  ///
  /// In ar, this message translates to:
  /// **'غير نشط'**
  String get inactiveStatus;

  /// No description provided for @deleteTemplate.
  ///
  /// In ar, this message translates to:
  /// **'حذف القالب'**
  String get deleteTemplate;

  /// No description provided for @deleteTemplateConfirm.
  ///
  /// In ar, this message translates to:
  /// **'حذف «{name}»؟'**
  String deleteTemplateConfirm(Object name);

  /// No description provided for @deleted.
  ///
  /// In ar, this message translates to:
  /// **'تم الحذف'**
  String get deleted;

  /// No description provided for @newTemplateEditor.
  ///
  /// In ar, this message translates to:
  /// **'قالب جديد'**
  String get newTemplateEditor;

  /// No description provided for @editTemplateEditor.
  ///
  /// In ar, this message translates to:
  /// **'تعديل القالب'**
  String get editTemplateEditor;

  /// No description provided for @templateNotFound.
  ///
  /// In ar, this message translates to:
  /// **'القالب غير موجود.'**
  String get templateNotFound;

  /// No description provided for @baseUnitNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم الوحدة الأساسية'**
  String get baseUnitNameLabel;

  /// No description provided for @baseUnitHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: جرام'**
  String get baseUnitHint;

  /// No description provided for @symbolLabel.
  ///
  /// In ar, this message translates to:
  /// **'رمز'**
  String get symbolLabel;

  /// No description provided for @symbolHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: جم'**
  String get symbolHint;

  /// No description provided for @addUnit.
  ///
  /// In ar, this message translates to:
  /// **'أضف الوحدة'**
  String get addUnit;

  /// No description provided for @templateNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'القالب'**
  String get templateNameLabel;

  /// No description provided for @templateHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: الوزن'**
  String get templateHint;

  /// No description provided for @activeLabel.
  ///
  /// In ar, this message translates to:
  /// **'نشط'**
  String get activeLabel;

  /// No description provided for @templateCreated.
  ///
  /// In ar, this message translates to:
  /// **'تم إنشاء القالب'**
  String get templateCreated;

  /// No description provided for @templateSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ التعديلات'**
  String get templateSaved;

  /// No description provided for @largerUnitNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم الوحدة الأكبر'**
  String get largerUnitNameLabel;

  /// No description provided for @largerUnitHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: كيلوغرام'**
  String get largerUnitHint;

  /// No description provided for @conversionFactorLabel.
  ///
  /// In ar, this message translates to:
  /// **'عامل التحويل إلى الأساس'**
  String get conversionFactorLabel;

  /// No description provided for @conversionFactorHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 1000'**
  String get conversionFactorHint;

  /// No description provided for @unitSymbolHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: كجم'**
  String get unitSymbolHint;

  /// No description provided for @baseUnitTooltip.
  ///
  /// In ar, this message translates to:
  /// **'أصغر وحدة للقياس في هذا القالب (مثال: كيلوغرام عند بيع بالوزن).'**
  String get baseUnitTooltip;

  /// No description provided for @newBrand.
  ///
  /// In ar, this message translates to:
  /// **'ماركة جديدة'**
  String get newBrand;

  /// No description provided for @brandNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم الماركة'**
  String get brandNameLabel;

  /// No description provided for @brandSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ الماركة'**
  String get brandSaved;

  /// No description provided for @deleteBrand.
  ///
  /// In ar, this message translates to:
  /// **'حذف الماركة'**
  String get deleteBrand;

  /// No description provided for @deleteBrandConfirm.
  ///
  /// In ar, this message translates to:
  /// **'حذف «{name}»؟'**
  String deleteBrandConfirm(Object name);

  /// No description provided for @searchAndFilter.
  ///
  /// In ar, this message translates to:
  /// **'بحث وتصفية'**
  String get searchAndFilter;

  /// No description provided for @showHide.
  ///
  /// In ar, this message translates to:
  /// **'{show, select, true {إخفاء} other {إظهار}}'**
  String showHide(String show);

  /// No description provided for @barcodeConfiguration.
  ///
  /// In ar, this message translates to:
  /// **'تهيئة الباركود'**
  String get barcodeConfiguration;

  /// No description provided for @barcodeConfigDesc.
  ///
  /// In ar, this message translates to:
  /// **'حدد تفضيلات وصيغ الباركود لمسح دقيق وضبط التسعير حسب الوزن.'**
  String get barcodeConfigDesc;

  /// No description provided for @barcodeType.
  ///
  /// In ar, this message translates to:
  /// **'نوع الباركود'**
  String get barcodeType;

  /// No description provided for @code128Desc.
  ///
  /// In ar, this message translates to:
  /// **'باركود مرن يدعم ترميز الأرقام والحروف والرموز، ويُستخدم على نطاق واسع في التوصيل والمستودعات وتتبع المنتجات.'**
  String get code128Desc;

  /// No description provided for @ean13Desc.
  ///
  /// In ar, this message translates to:
  /// **'معيار مكوّن من 13 رقمًا يُستخدم بشكل شائع في قطاع التجزئة، ويشمل رمز الدولة ورمز المصنّع ورمز المنتج بالإضافة إلى رقم تحقق.'**
  String get ean13Desc;

  /// No description provided for @selectBarcodeStandard.
  ///
  /// In ar, this message translates to:
  /// **'اختر معيار الباركود الذي سيعتمد عليه النظام في إنشاء وقراءة باركود المنتجات.'**
  String get selectBarcodeStandard;

  /// No description provided for @weightEmbedBarcode.
  ///
  /// In ar, this message translates to:
  /// **'باركود متضمن الوزن'**
  String get weightEmbedBarcode;

  /// No description provided for @enabledLabel.
  ///
  /// In ar, this message translates to:
  /// **'مفعّل'**
  String get enabledLabel;

  /// No description provided for @disabledLabel.
  ///
  /// In ar, this message translates to:
  /// **'معطّل'**
  String get disabledLabel;

  /// No description provided for @weightEmbedDesc.
  ///
  /// In ar, this message translates to:
  /// **'استخدم الباركود متضمن الوزن ليتمكّن النظام من قراءة وزن المنتج (والسعر إذن) مباشرة من الباركود.'**
  String get weightEmbedDesc;

  /// No description provided for @embeddedPattern.
  ///
  /// In ar, this message translates to:
  /// **'صيغة الباركود المتضمن'**
  String get embeddedPattern;

  /// No description provided for @patternFormatDesc.
  ///
  /// In ar, this message translates to:
  /// **'أدخل صيغة الباركود المدمج وفق النموذج، حيث تُمثل X أرقام المنتج، وW خانات الوزن.'**
  String get patternFormatDesc;

  /// No description provided for @patternExample.
  ///
  /// In ar, this message translates to:
  /// **'على سبيل المثال، إذا كان الوزن يُعرض بأربع خانات فسيظهر 250 جرامًا كـ 0250.'**
  String get patternExample;

  /// No description provided for @weightDivisor.
  ///
  /// In ar, this message translates to:
  /// **'تقسيم وحدة الوزن'**
  String get weightDivisor;

  /// No description provided for @weightDivisorHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 1000'**
  String get weightDivisorHint;

  /// No description provided for @weightDivisorDesc.
  ///
  /// In ar, this message translates to:
  /// **'أدخل القيمة التي يستخدمها النظام لتحويل وحدة الوزن في الباركود إلى وحدة البيع.'**
  String get weightDivisorDesc;

  /// No description provided for @currencyDivisor.
  ///
  /// In ar, this message translates to:
  /// **'قسمة العملة'**
  String get currencyDivisor;

  /// No description provided for @currencyDivisorHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 100'**
  String get currencyDivisorHint;

  /// No description provided for @currencyDivisorDesc.
  ///
  /// In ar, this message translates to:
  /// **'أدخل القيمة التي يستخدمها النظام لتحويل السعر من الوحدة المضمنة في الباركود إلى سعر البيع.'**
  String get currencyDivisorDesc;

  /// No description provided for @barcodePatternError.
  ///
  /// In ar, this message translates to:
  /// **'صيغة الباركود المتضمن يجب أن تحتوي فقط على الحروف X و W و P و N.'**
  String get barcodePatternError;

  /// No description provided for @weightDivisorError.
  ///
  /// In ar, this message translates to:
  /// **'أدخل قيمة صحيحة أكبر من صفر لتقسيم وحدة الوزن.'**
  String get weightDivisorError;

  /// No description provided for @currencyDivisorError.
  ///
  /// In ar, this message translates to:
  /// **'أدخل قيمة صحيحة أكبر من صفر لقسمة العملة.'**
  String get currencyDivisorError;

  /// No description provided for @barcodeSettingsSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ إعدادات الباركود.'**
  String get barcodeSettingsSaved;

  /// No description provided for @saveError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحفظ: {error}'**
  String saveError(Object error);

  /// No description provided for @savingLabel.
  ///
  /// In ar, this message translates to:
  /// **'جاري الحفظ…'**
  String get savingLabel;

  /// No description provided for @saveSettings.
  ///
  /// In ar, this message translates to:
  /// **'حفظ الإعدادات'**
  String get saveSettings;

  /// No description provided for @productsFullSettings.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات المنتجات الكاملة (تهيئة، تتبع، أذون، قيم افتراضية) متوفرة من البطاقة الرئيسية «إعدادات المنتجات» في شبكة إعدادات المخزون.'**
  String get productsFullSettings;

  /// No description provided for @categoriesMoved.
  ///
  /// In ar, this message translates to:
  /// **'تم نقل إدارة التصنيفات إلى شاشة مخصّصة. افتح «التصنيفات» من القائمة الرئيسية لإعدادات المخزون.'**
  String get categoriesMoved;

  /// No description provided for @brandsMoved.
  ///
  /// In ar, this message translates to:
  /// **'تم نقل إدارة العلامات التجارية إلى شاشة مخصّصة. افتح «العلامات التجارية» من القائمة الرئيسية.'**
  String get brandsMoved;

  /// No description provided for @barcodeMoved.
  ///
  /// In ar, this message translates to:
  /// **'تم نقل تهيئة الباركود إلى شاشة مخصّصة. افتح «إعدادات الباركود» من القائمة الرئيسية لهذه الإعدادات.'**
  String get barcodeMoved;

  /// No description provided for @defaultWarehouses.
  ///
  /// In ar, this message translates to:
  /// **'المستودعات الافتراضية للموظفين'**
  String get defaultWarehouses;

  /// No description provided for @forceDefaultWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'فرض مستودع افتراضي عند تسجيل الحركات'**
  String get forceDefaultWarehouse;

  /// No description provided for @recommendDefaultWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'يُنصح بربط كل موظف بمستودع افتراضي لتتبع الصلاحيات والحركات.'**
  String get recommendDefaultWarehouse;

  /// No description provided for @unitsSection.
  ///
  /// In ar, this message translates to:
  /// **'الوحدات'**
  String get unitsSection;

  /// No description provided for @allowDifferentPurchaseUnits.
  ///
  /// In ar, this message translates to:
  /// **'السماح بوحدات شراء مختلفة عن البيع'**
  String get allowDifferentPurchaseUnits;

  /// No description provided for @showConversionsInPO.
  ///
  /// In ar, this message translates to:
  /// **'عرض التحويلات في فاتورة الشراء'**
  String get showConversionsInPO;

  /// No description provided for @printingSection.
  ///
  /// In ar, this message translates to:
  /// **'الطباعة'**
  String get printingSection;

  /// No description provided for @includeStoreLogo.
  ///
  /// In ar, this message translates to:
  /// **'تضمين شعار المتجر في المستندات'**
  String get includeStoreLogo;

  /// No description provided for @printBarcodeOnIssue.
  ///
  /// In ar, this message translates to:
  /// **'طباعة باركود على أذون الصرف'**
  String get printBarcodeOnIssue;

  /// No description provided for @customFieldsSection.
  ///
  /// In ar, this message translates to:
  /// **'الحقول الإضافية'**
  String get customFieldsSection;

  /// No description provided for @showCustomFieldLists.
  ///
  /// In ar, this message translates to:
  /// **'إظهار الحقول الإضافية في قوائم المنتجات'**
  String get showCustomFieldLists;

  /// No description provided for @includeInExport.
  ///
  /// In ar, this message translates to:
  /// **'تضمينها في التقارير القابلة للتصدير'**
  String get includeInExport;

  /// No description provided for @noAdditionalSettings.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد إعدادات إضافية لهذه الفئة بعد.'**
  String get noAdditionalSettings;

  /// No description provided for @autoNumberingTitle.
  ///
  /// In ar, this message translates to:
  /// **'الترقيم التلقائي لـ المنتجات'**
  String get autoNumberingTitle;

  /// No description provided for @autoNumberingDesc.
  ///
  /// In ar, this message translates to:
  /// **'تحكم في إعدادات وتنسيق الترقيم التلقائي.'**
  String get autoNumberingDesc;

  /// No description provided for @nextNumberLabel.
  ///
  /// In ar, this message translates to:
  /// **'الرقم التالي'**
  String get nextNumberLabel;

  /// No description provided for @nextNumberDesc.
  ///
  /// In ar, this message translates to:
  /// **'الرقم الذي سيقوم النظام بتعيينه للعنصر التالي.'**
  String get nextNumberDesc;

  /// No description provided for @numberingFormat.
  ///
  /// In ar, this message translates to:
  /// **'تنسيق الترقيم'**
  String get numberingFormat;

  /// No description provided for @numericFormat.
  ///
  /// In ar, this message translates to:
  /// **'الأرقام الرقمية (0، 1، 2، …)'**
  String get numericFormat;

  /// No description provided for @alphaFormat.
  ///
  /// In ar, this message translates to:
  /// **'حروف أبجدية'**
  String get alphaFormat;

  /// No description provided for @alnumFormat.
  ///
  /// In ar, this message translates to:
  /// **'أرقام وحروف'**
  String get alnumFormat;

  /// No description provided for @formatDescription.
  ///
  /// In ar, this message translates to:
  /// **'اختر الصيغة المراد استخدامها في إنشاء الترقيم (أرقام، حروف، أو مزيج).'**
  String get formatDescription;

  /// No description provided for @digitCountLabel.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأرقام'**
  String get digitCountLabel;

  /// No description provided for @digitCountDesc.
  ///
  /// In ar, this message translates to:
  /// **'حدد عدد الخانات للرقم التسلسلي. إذا كان الرقم أقل من هذا العدد، تُضاف أصفار من اليسار.'**
  String get digitCountDesc;

  /// No description provided for @uniqueLabel.
  ///
  /// In ar, this message translates to:
  /// **'غير مكرر'**
  String get uniqueLabel;

  /// No description provided for @uniqueDesc.
  ///
  /// In ar, this message translates to:
  /// **'تأكد من أن يكون كل رقم في التسلسل فريداً وغير مكرر.'**
  String get uniqueDesc;

  /// No description provided for @prefixLabel.
  ///
  /// In ar, this message translates to:
  /// **'البادئة'**
  String get prefixLabel;

  /// No description provided for @prefixHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: PR أو INV'**
  String get prefixHint;

  /// No description provided for @prefixDesc.
  ///
  /// In ar, this message translates to:
  /// **'الرموز أو الأحرف التي تظهر قبل رقم المستند. يمكن أن تكون ثابتة مثل INV أو تتبع نمط.'**
  String get prefixDesc;

  /// No description provided for @noAdditionalSettingsForCategory.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد إعدادات إضافية لهذه الفئة بعد.'**
  String get noAdditionalSettingsForCategory;

  /// No description provided for @hideLabel.
  ///
  /// In ar, this message translates to:
  /// **'إخفاء'**
  String get hideLabel;

  /// No description provided for @showLabel.
  ///
  /// In ar, this message translates to:
  /// **'إظهار'**
  String get showLabel;

  /// No description provided for @reset.
  ///
  /// In ar, this message translates to:
  /// **'إعادة تعيين'**
  String get reset;

  /// No description provided for @newCategory.
  ///
  /// In ar, this message translates to:
  /// **'تصنيف جديد'**
  String get newCategory;

  /// No description provided for @parentCategory.
  ///
  /// In ar, this message translates to:
  /// **'التصنيف الرئيسي'**
  String get parentCategory;

  /// No description provided for @noParent.
  ///
  /// In ar, this message translates to:
  /// **'بدون (تصنيف رئيسي)'**
  String get noParent;

  /// No description provided for @descriptionLabel.
  ///
  /// In ar, this message translates to:
  /// **'الوصف'**
  String get descriptionLabel;

  /// No description provided for @categorySaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ التصنيف'**
  String get categorySaved;

  /// No description provided for @deleteCategory.
  ///
  /// In ar, this message translates to:
  /// **'حذف التصنيف'**
  String get deleteCategory;

  /// No description provided for @deleteCategoryConfirm.
  ///
  /// In ar, this message translates to:
  /// **'حذف «{name}»؟'**
  String deleteCategoryConfirm(Object name);

  /// No description provided for @addNewCategory.
  ///
  /// In ar, this message translates to:
  /// **'إضافة تصنيف جديد'**
  String get addNewCategory;

  /// No description provided for @rootsOnly.
  ///
  /// In ar, this message translates to:
  /// **'جذور فقط (بدون أب)'**
  String get rootsOnly;

  /// No description provided for @underParent.
  ///
  /// In ar, this message translates to:
  /// **'تحت: {name}'**
  String underParent(Object name);

  /// No description provided for @noMatchingCategories.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد تصنيفات مطابقة.\nأضف تصنيفاً جديداً أو غيّر الفلتر.'**
  String get noMatchingCategories;

  /// No description provided for @noResults.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد نتائج'**
  String get noResults;

  /// No description provided for @inventoryManagement.
  ///
  /// In ar, this message translates to:
  /// **'إدارة المخزون'**
  String get inventoryManagement;

  /// No description provided for @alerts.
  ///
  /// In ar, this message translates to:
  /// **'التنبيهات'**
  String get alerts;

  /// No description provided for @inventorySettings.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات المخزون'**
  String get inventorySettings;

  /// No description provided for @mainSections.
  ///
  /// In ar, this message translates to:
  /// **'الأقسام الرئيسية'**
  String get mainSections;

  /// No description provided for @recentInventoryMovements.
  ///
  /// In ar, this message translates to:
  /// **'آخر الحركات المخزونية'**
  String get recentInventoryMovements;

  /// No description provided for @quickActions.
  ///
  /// In ar, this message translates to:
  /// **'إجراءات سريعة'**
  String get quickActions;

  /// No description provided for @addProduct.
  ///
  /// In ar, this message translates to:
  /// **'إضافة منتج'**
  String get addProduct;

  /// No description provided for @inventoryVoucher.
  ///
  /// In ar, this message translates to:
  /// **'سند مخزوني'**
  String get inventoryVoucher;

  /// No description provided for @periodicStocktaking.
  ///
  /// In ar, this message translates to:
  /// **'جرد دوري'**
  String get periodicStocktaking;

  /// No description provided for @movements.
  ///
  /// In ar, this message translates to:
  /// **'الحركات'**
  String get movements;

  /// No description provided for @products.
  ///
  /// In ar, this message translates to:
  /// **'المنتجات'**
  String get products;

  /// No description provided for @productsSub.
  ///
  /// In ar, this message translates to:
  /// **'عرض وإدارة جميع الأصناف'**
  String get productsSub;

  /// No description provided for @warehouses.
  ///
  /// In ar, this message translates to:
  /// **'المستودعات'**
  String get warehouses;

  /// No description provided for @warehousesSub.
  ///
  /// In ar, this message translates to:
  /// **'مراقبة الأرصدة والأماكن'**
  String get warehousesSub;

  /// No description provided for @inventoryVouchers.
  ///
  /// In ar, this message translates to:
  /// **'السندات المخزونية'**
  String get inventoryVouchers;

  /// No description provided for @inventoryVouchersSub.
  ///
  /// In ar, this message translates to:
  /// **'إيداع وصرف ونقل'**
  String get inventoryVouchersSub;

  /// No description provided for @priceLists.
  ///
  /// In ar, this message translates to:
  /// **'فوائم الأسعار'**
  String get priceLists;

  /// No description provided for @priceListsSub.
  ///
  /// In ar, this message translates to:
  /// **'تجزئة وجملة وخاصة'**
  String get priceListsSub;

  /// No description provided for @periodicStocktakingSub.
  ///
  /// In ar, this message translates to:
  /// **'تسوية الفروقات الفعلية'**
  String get periodicStocktakingSub;

  /// No description provided for @inventorySettingsSub.
  ///
  /// In ar, this message translates to:
  /// **'وحدات، تصنيفات، طباعة'**
  String get inventorySettingsSub;

  /// No description provided for @deposit.
  ///
  /// In ar, this message translates to:
  /// **'إيداع'**
  String get deposit;

  /// No description provided for @withdrawal.
  ///
  /// In ar, this message translates to:
  /// **'صرف'**
  String get withdrawal;

  /// No description provided for @transfer.
  ///
  /// In ar, this message translates to:
  /// **'تحويل'**
  String get transfer;

  /// No description provided for @lastMovements.
  ///
  /// In ar, this message translates to:
  /// **'آخر الحركات'**
  String get lastMovements;

  /// No description provided for @viewAll.
  ///
  /// In ar, this message translates to:
  /// **'عرض الكل'**
  String get viewAll;

  /// No description provided for @savedInventoryPolicies.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ سياسات المخزون'**
  String get savedInventoryPolicies;

  /// No description provided for @inventoryPolicyCenter.
  ///
  /// In ar, this message translates to:
  /// **'مركز سياسات المخزون'**
  String get inventoryPolicyCenter;

  /// No description provided for @saveTooltip.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get saveTooltip;

  /// No description provided for @customerActivityType.
  ///
  /// In ar, this message translates to:
  /// **'نوع نشاط العميل'**
  String get customerActivityType;

  /// No description provided for @activityProfile.
  ///
  /// In ar, this message translates to:
  /// **'ملف النشاط'**
  String get activityProfile;

  /// No description provided for @activityTypeDesc.
  ///
  /// In ar, this message translates to:
  /// **'عند اختيار نوع النشاط تُضبط الخصائص الافتراضية تلقائياً — يمكنك تعديلها يدوياً.'**
  String get activityTypeDesc;

  /// No description provided for @enableUnits.
  ///
  /// In ar, this message translates to:
  /// **'تمكين الوحدات'**
  String get enableUnits;

  /// No description provided for @productManagement.
  ///
  /// In ar, this message translates to:
  /// **'إدارة المنتجات'**
  String get productManagement;

  /// No description provided for @addProductToggle.
  ///
  /// In ar, this message translates to:
  /// **'إضافة منتج'**
  String get addProductToggle;

  /// No description provided for @inventoryVouchersToggle.
  ///
  /// In ar, this message translates to:
  /// **'السندات المخزنية'**
  String get inventoryVouchersToggle;

  /// No description provided for @priceListsToggle.
  ///
  /// In ar, this message translates to:
  /// **'قوائم الأسعار'**
  String get priceListsToggle;

  /// No description provided for @warehousesToggle.
  ///
  /// In ar, this message translates to:
  /// **'المستودعات'**
  String get warehousesToggle;

  /// No description provided for @stocktakingToggle.
  ///
  /// In ar, this message translates to:
  /// **'الجرد'**
  String get stocktakingToggle;

  /// No description provided for @settingsToggle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات المخزون'**
  String get settingsToggle;

  /// No description provided for @productCardProperties.
  ///
  /// In ar, this message translates to:
  /// **'خصائص بطاقة المنتج'**
  String get productCardProperties;

  /// No description provided for @gradeField.
  ///
  /// In ar, this message translates to:
  /// **'حقل الرتبة / درجة الجودة'**
  String get gradeField;

  /// No description provided for @expiryTracking.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الانتهاء والإنتاج'**
  String get expiryTracking;

  /// No description provided for @batchTracking.
  ///
  /// In ar, this message translates to:
  /// **'تتبع الدفعات (Batch)'**
  String get batchTracking;

  /// No description provided for @lowStockAlerts.
  ///
  /// In ar, this message translates to:
  /// **'تنبيهات نفاد المخزون'**
  String get lowStockAlerts;

  /// No description provided for @productImages.
  ///
  /// In ar, this message translates to:
  /// **'صور المنتج'**
  String get productImages;

  /// No description provided for @productVariants.
  ///
  /// In ar, this message translates to:
  /// **'متغيرات المنتج (مقاس/لون)'**
  String get productVariants;

  /// No description provided for @purchasingAndSuppliers.
  ///
  /// In ar, this message translates to:
  /// **'المشتريات والموردون'**
  String get purchasingAndSuppliers;

  /// No description provided for @purchaseOrders.
  ///
  /// In ar, this message translates to:
  /// **'أوامر الشراء (PO)'**
  String get purchaseOrders;

  /// No description provided for @requireSourceOnInbound.
  ///
  /// In ar, this message translates to:
  /// **'إلزام تحديد مصدر في الوارد'**
  String get requireSourceOnInbound;

  /// No description provided for @analyticsAndReports.
  ///
  /// In ar, this message translates to:
  /// **'التحليلات والتقارير'**
  String get analyticsAndReports;

  /// No description provided for @items.
  ///
  /// In ar, this message translates to:
  /// **'صنف'**
  String get items;

  /// No description provided for @iqd.
  ///
  /// In ar, this message translates to:
  /// **'د.ع'**
  String get iqd;

  /// No description provided for @warehouseLabel.
  ///
  /// In ar, this message translates to:
  /// **'المستودع'**
  String get warehouseLabel;

  /// No description provided for @periodicStocktakingTitle.
  ///
  /// In ar, this message translates to:
  /// **'الجرد الدوري'**
  String get periodicStocktakingTitle;

  /// No description provided for @openSessions.
  ///
  /// In ar, this message translates to:
  /// **'جلسات مفتوحة ({count})'**
  String openSessions(Object count);

  /// No description provided for @closedSessions.
  ///
  /// In ar, this message translates to:
  /// **'مكتملة ({count})'**
  String closedSessions(Object count);

  /// No description provided for @startNewStocktake.
  ///
  /// In ar, this message translates to:
  /// **'بدء جرد جديد'**
  String get startNewStocktake;

  /// No description provided for @closeStocktaking.
  ///
  /// In ar, this message translates to:
  /// **'إقفال الجرد'**
  String get closeStocktaking;

  /// No description provided for @closeStocktakeConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد إقفال جلسة «{title}»؟'**
  String closeStocktakeConfirm(Object title);

  /// No description provided for @autoPostDifferences.
  ///
  /// In ar, this message translates to:
  /// **'ترحيل الفروقات تلقائيا'**
  String get autoPostDifferences;

  /// No description provided for @autoPostDesc.
  ///
  /// In ar, this message translates to:
  /// **'ينشئ سند تسوية مخزني واحد للجلسة'**
  String get autoPostDesc;

  /// No description provided for @sessionClosedSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم إقفال الجلسة بنجاح'**
  String get sessionClosedSuccess;

  /// No description provided for @noSessionsYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد جلسات'**
  String get noSessionsYet;

  /// No description provided for @closedStatus.
  ///
  /// In ar, this message translates to:
  /// **'مكتمل'**
  String get closedStatus;

  /// No description provided for @itemsCount.
  ///
  /// In ar, this message translates to:
  /// **'{counted} / {total} صنف'**
  String itemsCount(Object counted, Object total);

  /// No description provided for @startedAt.
  ///
  /// In ar, this message translates to:
  /// **'بدأ: {date}'**
  String startedAt(Object date);

  /// No description provided for @closedAt.
  ///
  /// In ar, this message translates to:
  /// **'أُقفل: {date}'**
  String closedAt(Object date);

  /// No description provided for @closeStocktakingAction.
  ///
  /// In ar, this message translates to:
  /// **'إقفال الجرد'**
  String get closeStocktakingAction;

  /// No description provided for @reportAction.
  ///
  /// In ar, this message translates to:
  /// **'التقرير'**
  String get reportAction;

  /// No description provided for @startNewStocktakeSession.
  ///
  /// In ar, this message translates to:
  /// **'بدء جلسة جرد جديدة'**
  String get startNewStocktakeSession;

  /// No description provided for @sessionTitleLabel.
  ///
  /// In ar, this message translates to:
  /// **'عنوان الجلسة *'**
  String get sessionTitleLabel;

  /// No description provided for @sessionTitleHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: جرد شهر يوليو 2025'**
  String get sessionTitleHint;

  /// No description provided for @selectWarehouseError.
  ///
  /// In ar, this message translates to:
  /// **'اختر مستودعاً'**
  String get selectWarehouseError;

  /// No description provided for @startStocktakingBtn.
  ///
  /// In ar, this message translates to:
  /// **'بدء الجرد'**
  String get startStocktakingBtn;

  /// No description provided for @searchHint.
  ///
  /// In ar, this message translates to:
  /// **'اسم، باركود، رمز، أو رقم المنتج'**
  String get searchHint;

  /// No description provided for @systemQty.
  ///
  /// In ar, this message translates to:
  /// **'النظام: {qty}'**
  String systemQty(Object qty);

  /// No description provided for @diffQty.
  ///
  /// In ar, this message translates to:
  /// **'فرق: {diff}'**
  String diffQty(Object diff);

  /// No description provided for @enterValueHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل'**
  String get enterValueHint;

  /// No description provided for @reportTitle.
  ///
  /// In ar, this message translates to:
  /// **'تقرير: {title}'**
  String reportTitle(Object title);

  /// No description provided for @totalItemsLabel.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الأصناف'**
  String get totalItemsLabel;

  /// No description provided for @countedLabel.
  ///
  /// In ar, this message translates to:
  /// **'تم عده'**
  String get countedLabel;

  /// No description provided for @uncountedLabel.
  ///
  /// In ar, this message translates to:
  /// **'غير معدود'**
  String get uncountedLabel;

  /// No description provided for @sessionSummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الجلسة:'**
  String get sessionSummary;

  /// No description provided for @statusRow.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get statusRow;

  /// No description provided for @actualQty.
  ///
  /// In ar, this message translates to:
  /// **'الفعلي: {qty}'**
  String actualQty(Object qty);

  /// No description provided for @purchaseOrdersTitle.
  ///
  /// In ar, this message translates to:
  /// **'أوامر الشراء'**
  String get purchaseOrdersTitle;

  /// No description provided for @newPurchaseOrder.
  ///
  /// In ar, this message translates to:
  /// **'أمر شراء جديد'**
  String get newPurchaseOrder;

  /// No description provided for @sentLabel.
  ///
  /// In ar, this message translates to:
  /// **'مرسلة'**
  String get sentLabel;

  /// No description provided for @partialLabel.
  ///
  /// In ar, this message translates to:
  /// **'جزئي'**
  String get partialLabel;

  /// No description provided for @completedLabel.
  ///
  /// In ar, this message translates to:
  /// **'مكتمل'**
  String get completedLabel;

  /// No description provided for @totalOrderValue.
  ///
  /// In ar, this message translates to:
  /// **'القيمة الكلية: {value}'**
  String totalOrderValue(Object value);

  /// No description provided for @clearTooltip.
  ///
  /// In ar, this message translates to:
  /// **'مسح'**
  String get clearTooltip;

  /// No description provided for @cancelOrder.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء أمر الشراء'**
  String get cancelOrder;

  /// No description provided for @cancelOrderConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد إلغاء هذا الأمر؟'**
  String get cancelOrderConfirm;

  /// No description provided for @backAction.
  ///
  /// In ar, this message translates to:
  /// **'رجوع'**
  String get backAction;

  /// No description provided for @cancelAction.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get cancelAction;

  /// No description provided for @allFilter.
  ///
  /// In ar, this message translates to:
  /// **'الكل'**
  String get allFilter;

  /// No description provided for @draftStatus.
  ///
  /// In ar, this message translates to:
  /// **'مسودة'**
  String get draftStatus;

  /// No description provided for @sentStatus.
  ///
  /// In ar, this message translates to:
  /// **'مرسلة'**
  String get sentStatus;

  /// No description provided for @partialStatus.
  ///
  /// In ar, this message translates to:
  /// **'جزئي'**
  String get partialStatus;

  /// No description provided for @receivedStatus.
  ///
  /// In ar, this message translates to:
  /// **'مكتمل'**
  String get receivedStatus;

  /// No description provided for @cancelledStatus.
  ///
  /// In ar, this message translates to:
  /// **'ملغي'**
  String get cancelledStatus;

  /// No description provided for @noSupplier.
  ///
  /// In ar, this message translates to:
  /// **'مورد غير محدد'**
  String get noSupplier;

  /// No description provided for @receivedValue.
  ///
  /// In ar, this message translates to:
  /// **'مستلم {received} من {total}'**
  String receivedValue(Object received, Object total);

  /// No description provided for @itemCount.
  ///
  /// In ar, this message translates to:
  /// **'{count} صنف'**
  String itemCount(Object count);

  /// No description provided for @viewAction.
  ///
  /// In ar, this message translates to:
  /// **'عرض'**
  String get viewAction;

  /// No description provided for @editAction.
  ///
  /// In ar, this message translates to:
  /// **'تعديل'**
  String get editAction;

  /// No description provided for @copyAction.
  ///
  /// In ar, this message translates to:
  /// **'نسخ'**
  String get copyAction;

  /// No description provided for @noResultsMatch.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد نتائج تطابق البحث'**
  String get noResultsMatch;

  /// No description provided for @noPurchaseOrdersYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أوامر شراء بعد'**
  String get noPurchaseOrdersYet;

  /// No description provided for @createFirstOrder.
  ///
  /// In ar, this message translates to:
  /// **'+ إنشاء أول أمر شراء'**
  String get createFirstOrder;

  /// No description provided for @orPressCtrlN.
  ///
  /// In ar, this message translates to:
  /// **'أو اضغط Ctrl+N'**
  String get orPressCtrlN;

  /// No description provided for @failedToFetchLowItems.
  ///
  /// In ar, this message translates to:
  /// **'تعذر جلب الأصناف المنخفضة. تأكد من تحديث قاعدة البيانات.'**
  String get failedToFetchLowItems;

  /// No description provided for @noNewItemsAllAdded.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أصناف جديدة: كل المنتجات المنخفضة مضافة مسبقاً في القائمة.'**
  String get noNewItemsAllAdded;

  /// No description provided for @noLowStockProducts.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد منتجات منخفضة المخزون (رصيد عند أو تحت حد التنبيه، مع تفعيل تتبع المخزون).'**
  String get noLowStockProducts;

  /// No description provided for @addedLowItems.
  ///
  /// In ar, this message translates to:
  /// **'تمت إضافة {added} صنفاً من المخزون المنخفض/النافض. عُدّل الكميات ثم احفظ.'**
  String addedLowItems(Object added);

  /// No description provided for @skippedDuplicates.
  ///
  /// In ar, this message translates to:
  /// **' (تُجاهل {skipped} مكرراً)'**
  String skippedDuplicates(Object skipped);

  /// No description provided for @showingOnlyFirst.
  ///
  /// In ar, this message translates to:
  /// **' — عُرض أول {count} صنفاً فقط.'**
  String showingOnlyFirst(Object count);

  /// No description provided for @addAtLeastOne.
  ///
  /// In ar, this message translates to:
  /// **'أضف صنفاً واحداً على الأقل'**
  String get addAtLeastOne;

  /// No description provided for @checkNameAndQty.
  ///
  /// In ar, this message translates to:
  /// **'تأكد من اسم المنتج والكمية في كل صنف'**
  String get checkNameAndQty;

  /// No description provided for @errorOccurred.
  ///
  /// In ar, this message translates to:
  /// **'حدث خطأ: {error}'**
  String errorOccurred(Object error);

  /// No description provided for @editPurchaseOrder.
  ///
  /// In ar, this message translates to:
  /// **'تعديل أمر شراء'**
  String get editPurchaseOrder;

  /// No description provided for @newPurchaseOrderTitle.
  ///
  /// In ar, this message translates to:
  /// **'أمر شراء جديد'**
  String get newPurchaseOrderTitle;

  /// No description provided for @orderInfo.
  ///
  /// In ar, this message translates to:
  /// **'معلومات الأمر'**
  String get orderInfo;

  /// No description provided for @supplierLabel.
  ///
  /// In ar, this message translates to:
  /// **'المورد'**
  String get supplierLabel;

  /// No description provided for @selectSupplierHint.
  ///
  /// In ar, this message translates to:
  /// **'اختر مورداً (اختياري)'**
  String get selectSupplierHint;

  /// No description provided for @noSupplierText.
  ///
  /// In ar, this message translates to:
  /// **'— بدون مورد —'**
  String get noSupplierText;

  /// No description provided for @orderDateLabel.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الأمر'**
  String get orderDateLabel;

  /// No description provided for @expectedDeliveryLabel.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الاستلام المتوقع'**
  String get expectedDeliveryLabel;

  /// No description provided for @selectOptionalHint.
  ///
  /// In ar, this message translates to:
  /// **'اختر (اختياري)'**
  String get selectOptionalHint;

  /// No description provided for @statusLabel.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get statusLabel;

  /// No description provided for @draftText.
  ///
  /// In ar, this message translates to:
  /// **'مسودة'**
  String get draftText;

  /// No description provided for @sentText.
  ///
  /// In ar, this message translates to:
  /// **'مرسل للمورد'**
  String get sentText;

  /// No description provided for @partialText.
  ///
  /// In ar, this message translates to:
  /// **'مستلم جزئياً'**
  String get partialText;

  /// No description provided for @receivedText.
  ///
  /// In ar, this message translates to:
  /// **'مستلم بالكامل'**
  String get receivedText;

  /// No description provided for @cancelledText.
  ///
  /// In ar, this message translates to:
  /// **'ملغى'**
  String get cancelledText;

  /// No description provided for @notesLabel.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظات'**
  String get notesLabel;

  /// No description provided for @notesHint.
  ///
  /// In ar, this message translates to:
  /// **'شروط، تفاصيل، ملاحظات…'**
  String get notesHint;

  /// No description provided for @orderItems.
  ///
  /// In ar, this message translates to:
  /// **'أصناف الأمر'**
  String get orderItems;

  /// No description provided for @fillLowStock.
  ///
  /// In ar, this message translates to:
  /// **'ملء من المخزون النافض'**
  String get fillLowStock;

  /// No description provided for @addItem.
  ///
  /// In ar, this message translates to:
  /// **'إضافة صنف'**
  String get addItem;

  /// No description provided for @emptyListHint.
  ///
  /// In ar, this message translates to:
  /// **'اضغط «ملء من المخزون النافض» أو «إضافة صنف» لبدء القائمة'**
  String get emptyListHint;

  /// No description provided for @itemCol.
  ///
  /// In ar, this message translates to:
  /// **'الصنف'**
  String get itemCol;

  /// No description provided for @qtyCol.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get qtyCol;

  /// No description provided for @unitPriceCol.
  ///
  /// In ar, this message translates to:
  /// **'سعر الوحدة'**
  String get unitPriceCol;

  /// No description provided for @totalCol.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get totalCol;

  /// No description provided for @grandTotal.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get grandTotal;

  /// No description provided for @itemNameHint.
  ///
  /// In ar, this message translates to:
  /// **'اسم الصنف'**
  String get itemNameHint;

  /// No description provided for @noProductForBarcode.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد منتج بهذا الباركود'**
  String get noProductForBarcode;

  /// No description provided for @productAlreadyExists.
  ///
  /// In ar, this message translates to:
  /// **'المنتج موجود بالفعل'**
  String get productAlreadyExists;

  /// No description provided for @removeFromList.
  ///
  /// In ar, this message translates to:
  /// **'إزالة من القائمة'**
  String get removeFromList;

  /// No description provided for @removeConfirm.
  ///
  /// In ar, this message translates to:
  /// **'كمية الطباعة أكبر من 5؛ هل تريد الإزالة؟'**
  String get removeConfirm;

  /// No description provided for @removeAction.
  ///
  /// In ar, this message translates to:
  /// **'إزالة'**
  String get removeAction;

  /// No description provided for @quantitiesUpdated.
  ///
  /// In ar, this message translates to:
  /// **'تم تحديث الكميات'**
  String get quantitiesUpdated;

  /// No description provided for @zeroQtySkipped.
  ///
  /// In ar, this message translates to:
  /// **'تم تخطي المنتجات ذات الكمية صفر ({count})'**
  String zeroQtySkipped(Object count);

  /// No description provided for @resetAll.
  ///
  /// In ar, this message translates to:
  /// **'إعادة التعيين'**
  String get resetAll;

  /// No description provided for @resetConfirm.
  ///
  /// In ar, this message translates to:
  /// **'سيتم إعادة تعيين جميع الكميات إلى 1، هل تريد المتابعة؟'**
  String get resetConfirm;

  /// No description provided for @printPreview.
  ///
  /// In ar, this message translates to:
  /// **'معاينة الطباعة'**
  String get printPreview;

  /// No description provided for @totalLabels.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الملصقات: {count}'**
  String totalLabels(Object count);

  /// No description provided for @printViaSystem.
  ///
  /// In ar, this message translates to:
  /// **'الطباعة عبر الطابعة الافتراضية للنظام أو من شاشة المعاينة.'**
  String get printViaSystem;

  /// No description provided for @productBarcodes.
  ///
  /// In ar, this message translates to:
  /// **'ملصقات باركود المنتجات'**
  String get productBarcodes;

  /// No description provided for @printedTitle.
  ///
  /// In ar, this message translates to:
  /// **'تمت الطباعة'**
  String get printedTitle;

  /// No description provided for @printedContent.
  ///
  /// In ar, this message translates to:
  /// **'تم تنفيذ المعاينة أو الطباعة من نافذة النظام.'**
  String get printedContent;

  /// No description provided for @clearList.
  ///
  /// In ar, this message translates to:
  /// **'مسح القائمة'**
  String get clearList;

  /// No description provided for @printAgain.
  ///
  /// In ar, this message translates to:
  /// **'طباعة مرة أخرى'**
  String get printAgain;

  /// No description provided for @printListCleared.
  ///
  /// In ar, this message translates to:
  /// **'تم مسح قائمة الطباعة'**
  String get printListCleared;

  /// No description provided for @itemFallback.
  ///
  /// In ar, this message translates to:
  /// **'صنف'**
  String get itemFallback;

  /// No description provided for @kgUnit.
  ///
  /// In ar, this message translates to:
  /// **'كجم'**
  String get kgUnit;

  /// No description provided for @justNow.
  ///
  /// In ar, this message translates to:
  /// **'الآن'**
  String get justNow;

  /// No description provided for @minutesAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ {minutes} دقيقة'**
  String minutesAgo(Object minutes);

  /// No description provided for @hoursAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ {hours} ساعة'**
  String hoursAgo(Object hours);

  /// No description provided for @dayOrMoreAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ يوم أو أكثر'**
  String get dayOrMoreAgo;

  /// No description provided for @barcodeLabelsTitle.
  ///
  /// In ar, this message translates to:
  /// **'طباعة ملصقات باركود'**
  String get barcodeLabelsTitle;

  /// No description provided for @lastUpdate.
  ///
  /// In ar, this message translates to:
  /// **'آخر تحديث: {time} — إعادة جلب الأسعار والمخزون'**
  String lastUpdate(Object time);

  /// No description provided for @printLabelsBtn.
  ///
  /// In ar, this message translates to:
  /// **'طباعة {count} ملصق'**
  String printLabelsBtn(Object count);

  /// No description provided for @loadFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر التحميل: {error}'**
  String loadFailed(Object error);

  /// No description provided for @searchProductHint.
  ///
  /// In ar, this message translates to:
  /// **'بحث عن منتج'**
  String get searchProductHint;

  /// No description provided for @searchProductSub.
  ///
  /// In ar, this message translates to:
  /// **'حرفان أو أكثر (اسم / باركود / رمز صنف)'**
  String get searchProductSub;

  /// No description provided for @weightProductsNote.
  ///
  /// In ar, this message translates to:
  /// **'منتجات الوزن: يُطبع المعرف على الملصق؛ الوزن يُوزَّن عند البيع.'**
  String get weightProductsNote;

  /// No description provided for @barcodeLabel.
  ///
  /// In ar, this message translates to:
  /// **'الباركود'**
  String get barcodeLabel;

  /// No description provided for @stockLabel.
  ///
  /// In ar, this message translates to:
  /// **'مخزون: {qty}'**
  String stockLabel(Object qty);

  /// No description provided for @skuLabel.
  ///
  /// In ar, this message translates to:
  /// **'رمز صنف: {code}'**
  String skuLabel(Object code);

  /// No description provided for @sizeAndPreview.
  ///
  /// In ar, this message translates to:
  /// **'اختَر المقاس ومظهر المعاينة (تطبَّق على البطاقات والطباعة).'**
  String get sizeAndPreview;

  /// No description provided for @labelSizeHint.
  ///
  /// In ar, this message translates to:
  /// **'مقاس الملصق'**
  String get labelSizeHint;

  /// No description provided for @showProductName.
  ///
  /// In ar, this message translates to:
  /// **'إظهار اسم المنتج'**
  String get showProductName;

  /// No description provided for @showPrice.
  ///
  /// In ar, this message translates to:
  /// **'إظهار السعر'**
  String get showPrice;

  /// No description provided for @smartQtyTooltip.
  ///
  /// In ar, this message translates to:
  /// **'يضبط كمية الطباعة تلقائياً حسب كمية المخزون'**
  String get smartQtyTooltip;

  /// No description provided for @smartQtyLabel.
  ///
  /// In ar, this message translates to:
  /// **'الكمية الذكية'**
  String get smartQtyLabel;

  /// No description provided for @setAllOne.
  ///
  /// In ar, this message translates to:
  /// **'اجعل الكل (1)'**
  String get setAllOne;

  /// No description provided for @setAllOneCount.
  ///
  /// In ar, this message translates to:
  /// **'اجعل الكل (1) ({count})'**
  String setAllOneCount(Object count);

  /// No description provided for @productsCount.
  ///
  /// In ar, this message translates to:
  /// **'المنتجات: {count}'**
  String productsCount(Object count);

  /// No description provided for @totalLabelsCount.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الملصقات: {count}'**
  String totalLabelsCount(Object count);

  /// No description provided for @searchToAddHint.
  ///
  /// In ar, this message translates to:
  /// **'ابحث عن منتج لإضافته للطباعة'**
  String get searchToAddHint;

  /// No description provided for @addMultipleHint.
  ///
  /// In ar, this message translates to:
  /// **'يمكنك إضافة منتجات متعددة وطباعتها دفعة واحدة'**
  String get addMultipleHint;

  /// No description provided for @removeTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إزالة'**
  String get removeTooltip;

  /// No description provided for @stockAndPrint.
  ///
  /// In ar, this message translates to:
  /// **'مخزون: {stock} | طباعة: {print}'**
  String stockAndPrint(Object print, Object stock);

  /// No description provided for @printQtyExceedsStock.
  ///
  /// In ar, this message translates to:
  /// **'كمية الطباعة أكبر من المخزون'**
  String get printQtyExceedsStock;

  /// No description provided for @decreaseTooltip.
  ///
  /// In ar, this message translates to:
  /// **'نقص'**
  String get decreaseTooltip;

  /// No description provided for @increaseTooltip.
  ///
  /// In ar, this message translates to:
  /// **'زيادة'**
  String get increaseTooltip;

  /// No description provided for @previewLabel.
  ///
  /// In ar, this message translates to:
  /// **'معاينة: {name} — {price} — {size}'**
  String previewLabel(Object name, Object price, Object size);

  /// No description provided for @priceFormat.
  ///
  /// In ar, this message translates to:
  /// **'{price} د.ع'**
  String priceFormat(Object price);

  /// No description provided for @autoBarcodeNote.
  ///
  /// In ar, this message translates to:
  /// **'سيتم توليد باركود تلقائياً'**
  String get autoBarcodeNote;

  /// No description provided for @unsavedChanges.
  ///
  /// In ar, this message translates to:
  /// **'تغييرات غير محفوظة'**
  String get unsavedChanges;

  /// No description provided for @unsavedChangesConfirm.
  ///
  /// In ar, this message translates to:
  /// **'التغييرات لم تُحفظ، هل تريد المغادرة؟'**
  String get unsavedChangesConfirm;

  /// No description provided for @stayAction.
  ///
  /// In ar, this message translates to:
  /// **'البقاء'**
  String get stayAction;

  /// No description provided for @leaveAction.
  ///
  /// In ar, this message translates to:
  /// **'مغادرة'**
  String get leaveAction;

  /// No description provided for @productSelected.
  ///
  /// In ar, this message translates to:
  /// **'تم اختيار: {name}'**
  String productSelected(Object name);

  /// No description provided for @failedToLoad.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر التحميل: {error}'**
  String failedToLoad(Object error);

  /// No description provided for @failedToLoadMore.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر تحميل المزيد: {error}'**
  String failedToLoadMore(Object error);

  /// No description provided for @clearProductBarcode.
  ///
  /// In ar, this message translates to:
  /// **'مسح باركود المنتج'**
  String get clearProductBarcode;

  /// No description provided for @nameEmpty.
  ///
  /// In ar, this message translates to:
  /// **'اسم المنتج لا يمكن أن يكون فارغاً'**
  String get nameEmpty;

  /// No description provided for @nameTooLong.
  ///
  /// In ar, this message translates to:
  /// **'اسم المنتج طويل جداً'**
  String get nameTooLong;

  /// No description provided for @barcodeAlreadyUsed.
  ///
  /// In ar, this message translates to:
  /// **'الباركود مستخدم مسبقاً'**
  String get barcodeAlreadyUsed;

  /// No description provided for @minPriceExceedsSalePrice.
  ///
  /// In ar, this message translates to:
  /// **'أقل سعر بيع يجب ألا يتجاوز سعر البيع'**
  String get minPriceExceedsSalePrice;

  /// No description provided for @productUpdatedSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم تحديث المنتج بنجاح'**
  String get productUpdatedSuccess;

  /// No description provided for @barcodeUsedByOther.
  ///
  /// In ar, this message translates to:
  /// **'الباركود مستخدم لمنتج/وحدة أخرى'**
  String get barcodeUsedByOther;

  /// No description provided for @saveFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر حفظ التعديلات'**
  String get saveFailed;

  /// No description provided for @lossSuffix.
  ///
  /// In ar, this message translates to:
  /// **' — خسارة'**
  String get lossSuffix;

  /// No description provided for @profitMarginLabel.
  ///
  /// In ar, this message translates to:
  /// **'هامش الربح: '**
  String get profitMarginLabel;

  /// No description provided for @profitLabel.
  ///
  /// In ar, this message translates to:
  /// **'ربح: '**
  String get profitLabel;

  /// No description provided for @updateExistingProduct.
  ///
  /// In ar, this message translates to:
  /// **'تحديث منتج موجود'**
  String get updateExistingProduct;

  /// No description provided for @clearBarcodeCameraTooltip.
  ///
  /// In ar, this message translates to:
  /// **'مسح باركود (كاميرا)'**
  String get clearBarcodeCameraTooltip;

  /// No description provided for @searchLabel.
  ///
  /// In ar, this message translates to:
  /// **'بحث'**
  String get searchLabel;

  /// No description provided for @typeTwoCharsHint.
  ///
  /// In ar, this message translates to:
  /// **'اكتب حرفين على الأقل للبحث الموحّد'**
  String get typeTwoCharsHint;

  /// No description provided for @noResultsFound.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد نتائج'**
  String get noResultsFound;

  /// No description provided for @scannerSearchNote.
  ///
  /// In ar, this message translates to:
  /// **'في هذه الصفحة: قارئ الباركود (HID) يبحث عن المنتج هنا ولا يُوجَّه للبيع. مرّر للأسفل لتحميل المزيد.'**
  String get scannerSearchNote;

  /// No description provided for @noResultsForText.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد نتائج لهذا النص بعد.'**
  String get noResultsForText;

  /// No description provided for @pieceUnit.
  ///
  /// In ar, this message translates to:
  /// **'قطعة'**
  String get pieceUnit;

  /// No description provided for @outOfStockWarning.
  ///
  /// In ar, this message translates to:
  /// **'المنتج نفذ من المخزون'**
  String get outOfStockWarning;

  /// No description provided for @lowStockWarning.
  ///
  /// In ar, this message translates to:
  /// **'الكمية وصلت لحد التنبيه'**
  String get lowStockWarning;

  /// No description provided for @productNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم المنتج'**
  String get productNameLabel;

  /// No description provided for @barcodeAlreadyUsedByOther.
  ///
  /// In ar, this message translates to:
  /// **'الباركود مستخدم مسبقاً'**
  String get barcodeAlreadyUsedByOther;

  /// No description provided for @viewProductWithBarcode.
  ///
  /// In ar, this message translates to:
  /// **'عرض المنتج الذي يملك هذا الباركود'**
  String get viewProductWithBarcode;

  /// No description provided for @purchasePriceLabel.
  ///
  /// In ar, this message translates to:
  /// **'سعر الشراء'**
  String get purchasePriceLabel;

  /// No description provided for @salePriceLabel.
  ///
  /// In ar, this message translates to:
  /// **'سعر البيع'**
  String get salePriceLabel;

  /// No description provided for @minSalePriceLabel.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأدنى للبيع'**
  String get minSalePriceLabel;

  /// No description provided for @quantityLabel.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get quantityLabel;

  /// No description provided for @alertThresholdLabel.
  ///
  /// In ar, this message translates to:
  /// **'حد التنبيه'**
  String get alertThresholdLabel;

  /// No description provided for @productIdLabel.
  ///
  /// In ar, this message translates to:
  /// **'رقم {id}'**
  String productIdLabel(Object id);

  /// No description provided for @categoryLabel.
  ///
  /// In ar, this message translates to:
  /// **'التصنيف: {name}'**
  String categoryLabel(Object name);

  /// No description provided for @stockTrackingDisabled.
  ///
  /// In ar, this message translates to:
  /// **'تتبع المخزون معطّل لهذا الصنف — الكمية من قاعدة البيانات تبقى كما هي عند الحفظ.'**
  String get stockTrackingDisabled;

  /// No description provided for @saveLabel.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get saveLabel;

  /// No description provided for @retailList.
  ///
  /// In ar, this message translates to:
  /// **'قائمة التجزئة'**
  String get retailList;

  /// No description provided for @retailDesc.
  ///
  /// In ar, this message translates to:
  /// **'أسعار بيع التجزئة للعملاء العاديين'**
  String get retailDesc;

  /// No description provided for @wholesaleList.
  ///
  /// In ar, this message translates to:
  /// **'قائمة الجملة'**
  String get wholesaleList;

  /// No description provided for @wholesaleDesc.
  ///
  /// In ar, this message translates to:
  /// **'أسعار الجملة للموزعين والتجار'**
  String get wholesaleDesc;

  /// No description provided for @vipList.
  ///
  /// In ar, this message translates to:
  /// **'قائمة العملاء المميزين'**
  String get vipList;

  /// No description provided for @vipDesc.
  ///
  /// In ar, this message translates to:
  /// **'أسعار خاصة للعملاء الدائمين (VIP)'**
  String get vipDesc;

  /// No description provided for @cannotDeleteDefault.
  ///
  /// In ar, this message translates to:
  /// **'لا يمكن حذف قائمة الأسعار الافتراضية'**
  String get cannotDeleteDefault;

  /// No description provided for @deletePriceList.
  ///
  /// In ar, this message translates to:
  /// **'حذف قائمة الأسعار'**
  String get deletePriceList;

  /// No description provided for @deletePriceListConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد حذف «{name}»؟'**
  String deletePriceListConfirm(Object name);

  /// No description provided for @priceListsTitle.
  ///
  /// In ar, this message translates to:
  /// **'فوائم الأسعار'**
  String get priceListsTitle;

  /// No description provided for @listsTab.
  ///
  /// In ar, this message translates to:
  /// **'القوائم'**
  String get listsTab;

  /// No description provided for @productsByListTab.
  ///
  /// In ar, this message translates to:
  /// **'منتجات بحسب القائمة'**
  String get productsByListTab;

  /// No description provided for @newListBtn.
  ///
  /// In ar, this message translates to:
  /// **'قائمة جديدة'**
  String get newListBtn;

  /// No description provided for @defaultLabel.
  ///
  /// In ar, this message translates to:
  /// **'افتراضي'**
  String get defaultLabel;

  /// No description provided for @setAsDefault.
  ///
  /// In ar, this message translates to:
  /// **'تعيين كافتراضي'**
  String get setAsDefault;

  /// No description provided for @managePrices.
  ///
  /// In ar, this message translates to:
  /// **'إدارة الأسعار'**
  String get managePrices;

  /// No description provided for @productCol.
  ///
  /// In ar, this message translates to:
  /// **'المنتج'**
  String get productCol;

  /// No description provided for @purchasePriceCol.
  ///
  /// In ar, this message translates to:
  /// **'سعر الشراء'**
  String get purchasePriceCol;

  /// No description provided for @retailPriceCol.
  ///
  /// In ar, this message translates to:
  /// **'سعر التجزئة'**
  String get retailPriceCol;

  /// No description provided for @wholesalePriceCol.
  ///
  /// In ar, this message translates to:
  /// **'سعر الجملة'**
  String get wholesalePriceCol;

  /// No description provided for @vipPriceCol.
  ///
  /// In ar, this message translates to:
  /// **'سعر VIP'**
  String get vipPriceCol;

  /// No description provided for @listPricesTitle.
  ///
  /// In ar, this message translates to:
  /// **'أسعار {name}'**
  String listPricesTitle(Object name);

  /// No description provided for @salePriceCol.
  ///
  /// In ar, this message translates to:
  /// **'سعر البيع'**
  String get salePriceCol;

  /// No description provided for @editList.
  ///
  /// In ar, this message translates to:
  /// **'تعديل القائمة'**
  String get editList;

  /// No description provided for @newListTitle.
  ///
  /// In ar, this message translates to:
  /// **'قائمة أسعار جديدة'**
  String get newListTitle;

  /// No description provided for @listNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم القائمة *'**
  String get listNameLabel;

  /// No description provided for @listColorLabel.
  ///
  /// In ar, this message translates to:
  /// **'لون القائمة:'**
  String get listColorLabel;

  /// No description provided for @saveChanges.
  ///
  /// In ar, this message translates to:
  /// **'حفظ التعديلات'**
  String get saveChanges;

  /// No description provided for @createList.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء القائمة'**
  String get createList;

  /// No description provided for @colorsAndSizes.
  ///
  /// In ar, this message translates to:
  /// **'الألوان والمقاسات'**
  String get colorsAndSizes;

  /// No description provided for @closeBtn.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get closeBtn;

  /// No description provided for @doneBtn.
  ///
  /// In ar, this message translates to:
  /// **'تم'**
  String get doneBtn;

  /// No description provided for @addAtLeastOneColor.
  ///
  /// In ar, this message translates to:
  /// **'أضف لوناً واحداً على الأقل.'**
  String get addAtLeastOneColor;

  /// No description provided for @colorNameRequired.
  ///
  /// In ar, this message translates to:
  /// **'اسم اللون مطلوب.'**
  String get colorNameRequired;

  /// No description provided for @addAtLeastOneSize.
  ///
  /// In ar, this message translates to:
  /// **'أضف مقاساً واحداً على الأقل لكل لون.'**
  String get addAtLeastOneSize;

  /// No description provided for @sizeFieldRequired.
  ///
  /// In ar, this message translates to:
  /// **'حقل المقاس مطلوب.'**
  String get sizeFieldRequired;

  /// No description provided for @duplicateSize.
  ///
  /// In ar, this message translates to:
  /// **'المقاس \"\$size\" مكرر داخل اللون \"\$color\".'**
  String duplicateSize(Object color, Object size);

  /// No description provided for @qtyMustBeNonNegative.
  ///
  /// In ar, this message translates to:
  /// **'الكمية يجب أن تكون رقماً صحيحاً أكبر أو يساوي 0.'**
  String get qtyMustBeNonNegative;

  /// No description provided for @duplicateBarcode.
  ///
  /// In ar, this message translates to:
  /// **'يوجد باركود مكرر داخل المتغيرات.'**
  String get duplicateBarcode;

  /// No description provided for @conversionFactorError.
  ///
  /// In ar, this message translates to:
  /// **'عامل التحويل يجب أن يكون أكبر من 0 لكل وحدة جديدة.'**
  String get conversionFactorError;

  /// No description provided for @variantBarcodeUsed.
  ///
  /// In ar, this message translates to:
  /// **'باركود المتغير مستخدم مسبقاً'**
  String get variantBarcodeUsed;

  /// No description provided for @conversionFactorGt0.
  ///
  /// In ar, this message translates to:
  /// **'عامل التحويل يجب أن يكون أكبر من 0'**
  String get conversionFactorGt0;

  /// No description provided for @chooseColorTitle.
  ///
  /// In ar, this message translates to:
  /// **'اختيار لون'**
  String get chooseColorTitle;

  /// No description provided for @chooseColorSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'اختر لوناً يمثّل هذا الخيار (اختياري).'**
  String get chooseColorSubtitle;

  /// No description provided for @applyUniformQtyTitle.
  ///
  /// In ar, this message translates to:
  /// **'تطبيق كمية موحدة'**
  String get applyUniformQtyTitle;

  /// No description provided for @enterQtyHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل كمية (0 أو أكثر)'**
  String get enterQtyHint;

  /// No description provided for @qtyMustBePositive.
  ///
  /// In ar, this message translates to:
  /// **'الكمية يجب أن تكون رقماً صحيحاً أكبر أو يساوي 0.'**
  String get qtyMustBePositive;

  /// No description provided for @sizeLabel.
  ///
  /// In ar, this message translates to:
  /// **'المقاس'**
  String get sizeLabel;

  /// No description provided for @chooseSizeTooltip.
  ///
  /// In ar, this message translates to:
  /// **'اختيار مقاس'**
  String get chooseSizeTooltip;

  /// No description provided for @qtyLabel.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get qtyLabel;

  /// No description provided for @barcodeOptional.
  ///
  /// In ar, this message translates to:
  /// **'الباركود (اختياري)'**
  String get barcodeOptional;

  /// No description provided for @deleteTooltip.
  ///
  /// In ar, this message translates to:
  /// **'حذف'**
  String get deleteTooltip;

  /// No description provided for @colorNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم اللون'**
  String get colorNameLabel;

  /// No description provided for @colorPickerTooltip.
  ///
  /// In ar, this message translates to:
  /// **'اختيار لون (HEX)'**
  String get colorPickerTooltip;

  /// No description provided for @deleteColorTooltip.
  ///
  /// In ar, this message translates to:
  /// **'حذف اللون'**
  String get deleteColorTooltip;

  /// No description provided for @sizesAndQuantities.
  ///
  /// In ar, this message translates to:
  /// **'المقاسات والكميات'**
  String get sizesAndQuantities;

  /// No description provided for @noSizesYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مقاسات بعد. أضف مقاساً واحداً على الأقل.'**
  String get noSizesYet;

  /// No description provided for @addSizeBtn.
  ///
  /// In ar, this message translates to:
  /// **'إضافة مقاس'**
  String get addSizeBtn;

  /// No description provided for @colorTotal.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي اللون: {count}'**
  String colorTotal(Object count);

  /// No description provided for @addNewColor.
  ///
  /// In ar, this message translates to:
  /// **'إضافة لون جديد'**
  String get addNewColor;

  /// No description provided for @applyUniformQtyAllSizes.
  ///
  /// In ar, this message translates to:
  /// **'تطبيق كمية موحدة على كل المقاسات'**
  String get applyUniformQtyAllSizes;

  /// No description provided for @noColorsYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد ألوان بعد. أضف لوناً للبدء.'**
  String get noColorsYet;

  /// No description provided for @editProductTitle.
  ///
  /// In ar, this message translates to:
  /// **'تعديل المنتج'**
  String get editProductTitle;

  /// No description provided for @saveBtn.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get saveBtn;

  /// No description provided for @productNameHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: سكر 1 كغم'**
  String get productNameHint;

  /// No description provided for @barcodeOptionalLabel.
  ///
  /// In ar, this message translates to:
  /// **'الباركود (اختياري)'**
  String get barcodeOptionalLabel;

  /// No description provided for @trackStock.
  ///
  /// In ar, this message translates to:
  /// **'تتبع المخزون'**
  String get trackStock;

  /// No description provided for @trackStockDesc.
  ///
  /// In ar, this message translates to:
  /// **'يحسب الكمية والتنبيه منخفض'**
  String get trackStockDesc;

  /// No description provided for @noTrackDesc.
  ///
  /// In ar, this message translates to:
  /// **'الكمية تُصبح 0 ولا تظهر تنبيهات مخزون'**
  String get noTrackDesc;

  /// No description provided for @pricingTitle.
  ///
  /// In ar, this message translates to:
  /// **'التسعير'**
  String get pricingTitle;

  /// No description provided for @enterSalePrice.
  ///
  /// In ar, this message translates to:
  /// **'أدخل سعر بيع'**
  String get enterSalePrice;

  /// No description provided for @baseStockType.
  ///
  /// In ar, this message translates to:
  /// **'نوع المخزون الأساسي'**
  String get baseStockType;

  /// No description provided for @stockTypePiece.
  ///
  /// In ar, this message translates to:
  /// **'عدد (قطعة كأساس)'**
  String get stockTypePiece;

  /// No description provided for @stockTypeWeight.
  ///
  /// In ar, this message translates to:
  /// **'وزن (كيلوغرام كأساس)'**
  String get stockTypeWeight;

  /// No description provided for @stockTypeClothing.
  ///
  /// In ar, this message translates to:
  /// **'ملابس (ألوان ومقاسات)'**
  String get stockTypeClothing;

  /// No description provided for @colorsAndSizesTitle.
  ///
  /// In ar, this message translates to:
  /// **'الألوان والمقاسات'**
  String get colorsAndSizesTitle;

  /// No description provided for @editColorsSizesBtn.
  ///
  /// In ar, this message translates to:
  /// **'تعديل الألوان والمقاسات'**
  String get editColorsSizesBtn;

  /// No description provided for @salesUnitsBarcode.
  ///
  /// In ar, this message translates to:
  /// **'وحدات البيع والباركود'**
  String get salesUnitsBarcode;

  /// No description provided for @unitsDesc.
  ///
  /// In ar, this message translates to:
  /// **'الوحدة الافتراضية تُدار تلقائياً مع المنتج؛ يمكنك تعديل الوحدات الإضافية أو إضافة وحدة جديدة.'**
  String get unitsDesc;

  /// No description provided for @defaultUnitTitle.
  ///
  /// In ar, this message translates to:
  /// **'الوحدة الافتراضية'**
  String get defaultUnitTitle;

  /// No description provided for @defaultUnitDesc.
  ///
  /// In ar, this message translates to:
  /// **'{name} — عامل {factor}'**
  String defaultUnitDesc(Object factor, Object name);

  /// No description provided for @unitNumber.
  ///
  /// In ar, this message translates to:
  /// **'وحدة #{id}'**
  String unitNumber(Object id);

  /// No description provided for @unitNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم الوحدة'**
  String get unitNameLabel;

  /// No description provided for @unitBarcodeOptional.
  ///
  /// In ar, this message translates to:
  /// **'باركود (اختياري)'**
  String get unitBarcodeOptional;

  /// No description provided for @unitSalePriceOptional.
  ///
  /// In ar, this message translates to:
  /// **'سعر بيع الوحدة (اختياري)'**
  String get unitSalePriceOptional;

  /// No description provided for @unitMinPriceOptional.
  ///
  /// In ar, this message translates to:
  /// **'أدنى سعر (اختياري)'**
  String get unitMinPriceOptional;

  /// No description provided for @addNewUnitBtn.
  ///
  /// In ar, this message translates to:
  /// **'إضافة وحدة جديدة'**
  String get addNewUnitBtn;

  /// No description provided for @newUnitTitle.
  ///
  /// In ar, this message translates to:
  /// **'وحدة جديدة'**
  String get newUnitTitle;

  /// No description provided for @cancelTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get cancelTooltip;

  /// No description provided for @stockTitle.
  ///
  /// In ar, this message translates to:
  /// **'المخزون'**
  String get stockTitle;

  /// No description provided for @stockManagedByVariants.
  ///
  /// In ar, this message translates to:
  /// **'المخزون يُدار عبر الألوان والمقاسات. الإجمالي الحالي: {count}'**
  String stockManagedByVariants(Object count);

  /// No description provided for @lowStockThreshold.
  ///
  /// In ar, this message translates to:
  /// **'حد التنبيه منخفض'**
  String get lowStockThreshold;

  /// No description provided for @saveChangesBtn.
  ///
  /// In ar, this message translates to:
  /// **'حفظ التعديلات'**
  String get saveChangesBtn;

  /// No description provided for @invoiceNumber.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة #{number}'**
  String invoiceNumber(Object number);

  /// No description provided for @closeTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get closeTooltip;

  /// No description provided for @customerLabel.
  ///
  /// In ar, this message translates to:
  /// **'العميل'**
  String get customerLabel;

  /// No description provided for @dateLabel.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get dateLabel;

  /// No description provided for @invoiceTypeLabel.
  ///
  /// In ar, this message translates to:
  /// **'نوع الفاتورة'**
  String get invoiceTypeLabel;

  /// No description provided for @recordedByLabel.
  ///
  /// In ar, this message translates to:
  /// **'سجّلها'**
  String get recordedByLabel;

  /// No description provided for @customerIdLabel.
  ///
  /// In ar, this message translates to:
  /// **'معرّف العميل'**
  String get customerIdLabel;

  /// No description provided for @returnStatusLabel.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع'**
  String get returnStatusLabel;

  /// No description provided for @originalInvoiceLabel.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة الأصل'**
  String get originalInvoiceLabel;

  /// No description provided for @deliveryAddressLabel.
  ///
  /// In ar, this message translates to:
  /// **'عنوان التوصيل'**
  String get deliveryAddressLabel;

  /// No description provided for @discountPercentLabel.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الخصم %'**
  String get discountPercentLabel;

  /// No description provided for @noItemsLabel.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بنود'**
  String get noItemsLabel;

  /// No description provided for @quantityTimesPrice.
  ///
  /// In ar, this message translates to:
  /// **'{qty} × {price} د.ع'**
  String quantityTimesPrice(Object price, Object qty);

  /// No description provided for @itemsSubtotalLabel.
  ///
  /// In ar, this message translates to:
  /// **'مجموع البنود'**
  String get itemsSubtotalLabel;

  /// No description provided for @invoiceDiscountLabel.
  ///
  /// In ar, this message translates to:
  /// **'خصم الفاتورة'**
  String get invoiceDiscountLabel;

  /// No description provided for @loyaltyDiscountLabel.
  ///
  /// In ar, this message translates to:
  /// **'خصم الولاء'**
  String get loyaltyDiscountLabel;

  /// No description provided for @redeemedPointsLabel.
  ///
  /// In ar, this message translates to:
  /// **'نقاط مُستبدَلة'**
  String get redeemedPointsLabel;

  /// No description provided for @earnedPointsLabel.
  ///
  /// In ar, this message translates to:
  /// **'نقاط مُكتسبة'**
  String get earnedPointsLabel;

  /// No description provided for @taxLabel.
  ///
  /// In ar, this message translates to:
  /// **'الضريبة'**
  String get taxLabel;

  /// No description provided for @advanceFirstPaymentLabel.
  ///
  /// In ar, this message translates to:
  /// **'المقدم / الدفعة الأولى'**
  String get advanceFirstPaymentLabel;

  /// No description provided for @interestInfoSavedAtSale.
  ///
  /// In ar, this message translates to:
  /// **'معلومات الفائدة (محفوظة عند البيع)'**
  String get interestInfoSavedAtSale;

  /// No description provided for @interestRatePercent.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الفائدة %'**
  String get interestRatePercent;

  /// No description provided for @monthsCountLabel.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأشهر'**
  String get monthsCountLabel;

  /// No description provided for @financedAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المموّل'**
  String get financedAmountLabel;

  /// No description provided for @interestValueLabel.
  ///
  /// In ar, this message translates to:
  /// **'قيمة الفائدة'**
  String get interestValueLabel;

  /// No description provided for @totalWithInterestLabel.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي مع الفائدة'**
  String get totalWithInterestLabel;

  /// No description provided for @suggestedMonthlyInstallment.
  ///
  /// In ar, this message translates to:
  /// **'القسط الشهري المقترح'**
  String get suggestedMonthlyInstallment;

  /// No description provided for @selectInvoicePrompt.
  ///
  /// In ar, this message translates to:
  /// **'اختر فاتورة لعرض تفاصيلها'**
  String get selectInvoicePrompt;

  /// No description provided for @invoiceNotFoundMsg.
  ///
  /// In ar, this message translates to:
  /// **'الفاتورة غير موجودة'**
  String get invoiceNotFoundMsg;

  /// No description provided for @iqdCurrency.
  ///
  /// In ar, this message translates to:
  /// **'د.ع'**
  String get iqdCurrency;

  /// No description provided for @customerNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم العميل'**
  String get customerNameLabel;

  /// No description provided for @saleTitle.
  ///
  /// In ar, this message translates to:
  /// **'البيع'**
  String get saleTitle;

  /// No description provided for @parkInvoiceTooltip.
  ///
  /// In ar, this message translates to:
  /// **'تعليق الفاتورة'**
  String get parkInvoiceTooltip;

  /// No description provided for @insufficientStockForUnit.
  ///
  /// In ar, this message translates to:
  /// **'لا يتوفر مخزون كافٍ لهذه الوحدة.'**
  String get insufficientStockForUnit;

  /// No description provided for @qtyAdjustedToStock.
  ///
  /// In ar, this message translates to:
  /// **'تم ضبط الكمية إلى {qty} بسبب حد المخزون المتاح.'**
  String qtyAdjustedToStock(Object qty);

  /// No description provided for @serviceAlreadyAdded.
  ///
  /// In ar, this message translates to:
  /// **'الخدمة مضافة بالفعل: {name}'**
  String serviceAlreadyAdded(Object name);

  /// No description provided for @quantityIncreased.
  ///
  /// In ar, this message translates to:
  /// **'تمت زيادة الكمية: {name}'**
  String quantityIncreased(Object name);

  /// No description provided for @serviceQtyFixed.
  ///
  /// In ar, this message translates to:
  /// **'كمية الخدمة ثابتة ولا يمكن تعديلها.'**
  String get serviceQtyFixed;

  /// No description provided for @okAction.
  ///
  /// In ar, this message translates to:
  /// **'موافق'**
  String get okAction;

  /// No description provided for @addAtLeastOneToSell.
  ///
  /// In ar, this message translates to:
  /// **'أضف صنفاً واحداً على الأقل لإتمام البيع'**
  String get addAtLeastOneToSell;

  /// No description provided for @addAtLeastOneToPark.
  ///
  /// In ar, this message translates to:
  /// **'أضف صنفاً واحداً على الأقل لتعليق الفاتورة'**
  String get addAtLeastOneToPark;

  /// No description provided for @fillRequiredFields.
  ///
  /// In ar, this message translates to:
  /// **'أكمل الحقول المطلوبة: للدين أو التقسيط أدخل اسم العميل، وللتوصيل أدخل اسم العميل وعنوان التوصيل.'**
  String get fillRequiredFields;

  /// No description provided for @paymentTypeNotAllowed.
  ///
  /// In ar, this message translates to:
  /// **'طريقة الدفع الحالية غير مسموحة — راجع الفواتير إعدادات نقطة البيع أو اختر نقدي.'**
  String get paymentTypeNotAllowed;

  /// No description provided for @discountExceedsMax.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الخصم أعلى من المسموح. الحد الأقصى {limit}%'**
  String discountExceedsMax(Object limit);

  /// No description provided for @creditInstallmentNeedCustomer.
  ///
  /// In ar, this message translates to:
  /// **'للمبيع بالدين أو التقسيط: اختر عميلاً مسجّلاً من القائمة المقترحة أسفل حقل الاسم (أو أضفه من العملاء أولاً).'**
  String get creditInstallmentNeedCustomer;

  /// No description provided for @loyaltyRedeemNeedCustomer.
  ///
  /// In ar, this message translates to:
  /// **'لاستبدال النقاط اختر العميل من القائمة أو أدخل اسماً يطابق سجلاً واحداً في العملاء.'**
  String get loyaltyRedeemNeedCustomer;

  /// No description provided for @installmentMinAdvanceError.
  ///
  /// In ar, this message translates to:
  /// **'بيع التقسيط: المقدّم يجب ألا يقل عن {percent}% من إجمالي الفاتورة ({amount}).'**
  String installmentMinAdvanceError(Object amount, Object percent);

  /// No description provided for @invoiceDebtCapExceeded.
  ///
  /// In ar, this message translates to:
  /// **'حد الدين للفاتورة: المتبقي ({remaining}) يتجاوز السقف ({limit}).'**
  String invoiceDebtCapExceeded(Object limit, Object remaining);

  /// No description provided for @customerDebtCapExceeded.
  ///
  /// In ar, this message translates to:
  /// **'حد الدين للعميل: مجموع المتبقي الحالي ≈ {existing}، والفاتورة تضيف {adding} (يتجاوز {limit}).'**
  String customerDebtCapExceeded(Object adding, Object existing, Object limit);

  /// No description provided for @failedToSaveInvoice.
  ///
  /// In ar, this message translates to:
  /// **'تعذر حفظ الفاتورة: {error}'**
  String failedToSaveInvoice(Object error);

  /// No description provided for @invoiceImbalanceError.
  ///
  /// In ar, this message translates to:
  /// **'عدم توازن الفاتورة: {error}'**
  String invoiceImbalanceError(Object error);

  /// No description provided for @invoiceBalanceError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحفظ — {error}. راجع الأصناف والإجمالي قبل إعادة المحاولة.'**
  String invoiceBalanceError(Object error);

  /// No description provided for @serviceOrderUpdateFailed.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه: حُفظت الفاتورة ولكن تعذر تلقائياً تحديث حالة تذكرة الصيانة. يرجى مراجعتها يدوياً.'**
  String get serviceOrderUpdateFailed;

  /// No description provided for @installmentPlanCreationFailed.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ الفاتورة لكن تعذّر إنشاء خطة التقسيط: {error}'**
  String installmentPlanCreationFailed(Object error);

  /// No description provided for @invoiceSavedWithPlan.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ الفاتورة وإنشاء خطة التقسيط — يمكنك ضبط الجدول'**
  String get invoiceSavedWithPlan;

  /// No description provided for @installmentFullyPaid.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ فاتورة التقسيط وربطها بخطة (لا أقساط متبقية لأن المبلغ محصّل بالكامل).'**
  String get installmentFullyPaid;

  /// No description provided for @invoiceSavedSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم تسجيل الفاتورة وتحديث المخزون والصندوق'**
  String get invoiceSavedSuccess;

  /// No description provided for @failedToLoadParkedInvoice.
  ///
  /// In ar, this message translates to:
  /// **'تعذر العثور على الفاتورة المعلّقة'**
  String get failedToLoadParkedInvoice;

  /// No description provided for @failedToApplyParkedInvoice.
  ///
  /// In ar, this message translates to:
  /// **'فشل تطبيق الفاتورة المعلّقة: {error}'**
  String failedToApplyParkedInvoice(Object error);

  /// No description provided for @clearCartTitle.
  ///
  /// In ar, this message translates to:
  /// **'إفراغ السلة؟'**
  String get clearCartTitle;

  /// No description provided for @clearCartBody.
  ///
  /// In ar, this message translates to:
  /// **'سيتم إزالة جميع الأصناف من الفاتورة الحالية.'**
  String get clearCartBody;

  /// No description provided for @clearCartAction.
  ///
  /// In ar, this message translates to:
  /// **'إفراغ'**
  String get clearCartAction;

  /// No description provided for @returnDialogAction.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع'**
  String get returnDialogAction;

  /// No description provided for @productNotFoundTitle.
  ///
  /// In ar, this message translates to:
  /// **'المنتج غير موجود'**
  String get productNotFoundTitle;

  /// No description provided for @productNotFoundBody.
  ///
  /// In ar, this message translates to:
  /// **'هذا الباركود غير موجود في المنتجات. هل تريد فتح شاشة إضافة منتج جديد؟'**
  String get productNotFoundBody;

  /// No description provided for @addProductAction.
  ///
  /// In ar, this message translates to:
  /// **'إضافة منتج'**
  String get addProductAction;

  /// No description provided for @productAddedSnack.
  ///
  /// In ar, this message translates to:
  /// **'تمت إضافة المنتج: {name}'**
  String productAddedSnack(Object name);

  /// No description provided for @searchCustomerHint.
  ///
  /// In ar, this message translates to:
  /// **'ابحث من أول حرف…'**
  String get searchCustomerHint;

  /// No description provided for @addNewCustomerTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إضافة عميل جديد دون مغادرة البيع'**
  String get addNewCustomerTooltip;

  /// No description provided for @discountOnTotalSaleLabel.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الخصم على إجمالي البيع %'**
  String get discountOnTotalSaleLabel;

  /// No description provided for @discountPercentHelper.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأقصى المسموح: {limit}٪ — يُحسب من أدنى سعر لكل صنف'**
  String discountPercentHelper(Object limit);

  /// No description provided for @taxSectionLabel.
  ///
  /// In ar, this message translates to:
  /// **'الضريبة'**
  String get taxSectionLabel;

  /// No description provided for @taxDescription.
  ///
  /// In ar, this message translates to:
  /// **'أدخل مبلغ الضريبة بالدينار إن وُجد؛ يُضاف إلى المجموع بعد خصم الفاتورة.'**
  String get taxDescription;

  /// No description provided for @taxAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'مبلغ الضريبة (د.ع)'**
  String get taxAmountLabel;

  /// No description provided for @discountSectionLabel.
  ///
  /// In ar, this message translates to:
  /// **'خصم الفاتورة'**
  String get discountSectionLabel;

  /// No description provided for @advanceDownPaymentLabel.
  ///
  /// In ar, this message translates to:
  /// **'المقدّم / الدفعة الأولى (د.ع)'**
  String get advanceDownPaymentLabel;

  /// No description provided for @advancePaymentHelper.
  ///
  /// In ar, this message translates to:
  /// **'يُخصم من الإجمالي قبل حساب الفائدة والقسط'**
  String get advancePaymentHelper;

  /// No description provided for @installmentInterestLabel.
  ///
  /// In ar, this message translates to:
  /// **'فائدة على المبلغ المراد تقسيطه'**
  String get installmentInterestLabel;

  /// No description provided for @interestRateHelper.
  ///
  /// In ar, this message translates to:
  /// **'نسبة من المبلغ بعد المقدّم'**
  String get interestRateHelper;

  /// No description provided for @numberOfMonthsLabel.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأشهر'**
  String get numberOfMonthsLabel;

  /// No description provided for @receivedAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ الواصل (د.ع)'**
  String get receivedAmountLabel;

  /// No description provided for @advanceDescription.
  ///
  /// In ar, this message translates to:
  /// **'يُحسب على الإجمالي بعد المقدّم. للمراجعة مع العميل — لا يُضاف للفاتورة إلا إذا رفعت الأسعار يدوياً.'**
  String get advanceDescription;

  /// No description provided for @priceSummaryCaptionNoDiscount.
  ///
  /// In ar, this message translates to:
  /// **'نتيجة الأرقام والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.'**
  String get priceSummaryCaptionNoDiscount;

  /// No description provided for @priceSummaryCaptionWithDiscount.
  ///
  /// In ar, this message translates to:
  /// **'نتيجة الأرقام بعد الخصم والضريبة، والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.'**
  String get priceSummaryCaptionWithDiscount;

  /// No description provided for @financedAmountBasis.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ بعد المقدّم (أساس التقسيط)'**
  String get financedAmountBasis;

  /// No description provided for @parkedInvoiceDialogHint.
  ///
  /// In ar, this message translates to:
  /// **'يُحفظ محلياً على هذا الجهاز. يمكنك استئناف البيع لاحقاً من الفواتير معلّقة مؤقتاً.'**
  String get parkedInvoiceDialogHint;

  /// No description provided for @parkedInvoiceNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم للتعريف (يظهر في القائمة)'**
  String get parkedInvoiceNameLabel;

  /// No description provided for @saveParkingAction.
  ///
  /// In ar, this message translates to:
  /// **'حفظ التعليق'**
  String get saveParkingAction;

  /// No description provided for @quantityDialogTitle.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get quantityDialogTitle;

  /// No description provided for @maxAction.
  ///
  /// In ar, this message translates to:
  /// **'الأقصى'**
  String get maxAction;

  /// No description provided for @changeColorAction.
  ///
  /// In ar, this message translates to:
  /// **'تغيير اللون'**
  String get changeColorAction;

  /// No description provided for @filterListHint.
  ///
  /// In ar, this message translates to:
  /// **'تصفية القائمة…'**
  String get filterListHint;

  /// No description provided for @sizesLabel.
  ///
  /// In ar, this message translates to:
  /// **'المقاسات'**
  String get sizesLabel;

  /// No description provided for @selectColorFirstHint.
  ///
  /// In ar, this message translates to:
  /// **'اختر لوناً أولاً لإظهار المقاسات.'**
  String get selectColorFirstHint;

  /// No description provided for @priceMinLine.
  ///
  /// In ar, this message translates to:
  /// **'سعر {price} · أدنى {min}'**
  String priceMinLine(Object min, Object price);

  /// No description provided for @itemTotalLine.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي: {total}'**
  String itemTotalLine(Object total);

  /// No description provided for @parkedInvoiceUpdated.
  ///
  /// In ar, this message translates to:
  /// **'تم تحديث الفاتورة المعلّقة'**
  String get parkedInvoiceUpdated;

  /// No description provided for @parkedInvoiceCreated.
  ///
  /// In ar, this message translates to:
  /// **'تم تعليق الفاتورة — يمكنك استئنافها من قائمة الفواتير'**
  String get parkedInvoiceCreated;

  /// No description provided for @barcodeScanTitle.
  ///
  /// In ar, this message translates to:
  /// **'باركود صنف أو فاتورة للمرتجع'**
  String get barcodeScanTitle;

  /// No description provided for @productFallback.
  ///
  /// In ar, this message translates to:
  /// **'منتج'**
  String get productFallback;

  /// No description provided for @colorLabel.
  ///
  /// In ar, this message translates to:
  /// **'لون'**
  String get colorLabel;

  /// No description provided for @colorSizeFallback.
  ///
  /// In ar, this message translates to:
  /// **'لون/مقاس'**
  String get colorSizeFallback;

  /// No description provided for @sizeFallback.
  ///
  /// In ar, this message translates to:
  /// **'مقاس'**
  String get sizeFallback;

  /// No description provided for @unitFallback.
  ///
  /// In ar, this message translates to:
  /// **'وحدة'**
  String get unitFallback;

  /// No description provided for @pieceUnitFallback.
  ///
  /// In ar, this message translates to:
  /// **'قطعة'**
  String get pieceUnitFallback;

  /// No description provided for @availableQtyChipLabel.
  ///
  /// In ar, this message translates to:
  /// **'المتاح: {qty}'**
  String availableQtyChipLabel(Object qty);

  /// No description provided for @cashDiscountNote.
  ///
  /// In ar, this message translates to:
  /// **'خُصم من الصندوق.'**
  String get cashDiscountNote;

  /// No description provided for @installmentDiscountNote.
  ///
  /// In ar, this message translates to:
  /// **'خُصم من إجمالي التقسيط.'**
  String get installmentDiscountNote;

  /// No description provided for @returnScreenTitle.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع'**
  String get returnScreenTitle;

  /// No description provided for @returnInvoiceTitle.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع — فاتورة #{id}'**
  String returnInvoiceTitle(Object id);

  /// No description provided for @vouchersNotReturnable.
  ///
  /// In ar, this message translates to:
  /// **'سندات القبض أو دفع المورد لا تُعالج من شاشة المرتجع.'**
  String get vouchersNotReturnable;

  /// No description provided for @noInvoiceNumber.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد رقم فاتورة'**
  String get noInvoiceNumber;

  /// No description provided for @invoiceNotFoundReturn.
  ///
  /// In ar, this message translates to:
  /// **'الفاتورة غير موجودة'**
  String get invoiceNotFoundReturn;

  /// No description provided for @alreadyReturnedReturn.
  ///
  /// In ar, this message translates to:
  /// **'هذه الفاتورة مسجّلة كمرتجع مسبقاً'**
  String get alreadyReturnedReturn;

  /// No description provided for @cashPaymentType.
  ///
  /// In ar, this message translates to:
  /// **'نقدي'**
  String get cashPaymentType;

  /// No description provided for @creditPaymentTypeLabel.
  ///
  /// In ar, this message translates to:
  /// **'دين (آجل)'**
  String get creditPaymentTypeLabel;

  /// No description provided for @installmentPaymentTypeLabel.
  ///
  /// In ar, this message translates to:
  /// **'تقسيط'**
  String get installmentPaymentTypeLabel;

  /// No description provided for @deliveryPaymentType.
  ///
  /// In ar, this message translates to:
  /// **'توصيل'**
  String get deliveryPaymentType;

  /// No description provided for @debtCollectionType.
  ///
  /// In ar, this message translates to:
  /// **'سند تحصيل دين'**
  String get debtCollectionType;

  /// No description provided for @installmentCollectionType.
  ///
  /// In ar, this message translates to:
  /// **'سند تسديد قسط'**
  String get installmentCollectionType;

  /// No description provided for @supplierPaymentTypeLabel.
  ///
  /// In ar, this message translates to:
  /// **'سند دفع مورد'**
  String get supplierPaymentTypeLabel;

  /// No description provided for @cashReturnHint.
  ///
  /// In ar, this message translates to:
  /// **'يُسجَّل خروجاً من الصندوق بنفس المبلغ.'**
  String get cashReturnHint;

  /// No description provided for @installmentReturnHint.
  ///
  /// In ar, this message translates to:
  /// **'يُحدَّث إجمالي خطة التقسيط المرتبطة بهذه الفاتورة؛ ويُسجَّل خروج نقدي إن وُجد مقدم يُسترد.'**
  String get installmentReturnHint;

  /// No description provided for @creditReturnHintLabel.
  ///
  /// In ar, this message translates to:
  /// **'يُسجَّل المرتجع كفاتورة مرتبطة بالأصل؛ راجع قائمة الفواتير لحالة الدين.'**
  String get creditReturnHintLabel;

  /// No description provided for @notApplicableForType.
  ///
  /// In ar, this message translates to:
  /// **'لا يُستعمل لهذا النوع.'**
  String get notApplicableForType;

  /// No description provided for @selectAtLeastOneReturnQty.
  ///
  /// In ar, this message translates to:
  /// **'اختر كمية إرجاع واحدة على الأقل'**
  String get selectAtLeastOneReturnQty;

  /// No description provided for @returnSaveFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحفظ: {error}'**
  String returnSaveFailed(Object error);

  /// No description provided for @returnUseBarcodeOnly.
  ///
  /// In ar, this message translates to:
  /// **'للمرتجع استخدم باركود الفاتورة فقط (مثل INV-12)'**
  String get returnUseBarcodeOnly;

  /// No description provided for @sameInvoiceDisplayed.
  ///
  /// In ar, this message translates to:
  /// **'هذه هي نفس الفاتورة المعروضة'**
  String get sameInvoiceDisplayed;

  /// No description provided for @noInvoiceWithIdReturn.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فاتورة برقم {id}'**
  String noInvoiceWithIdReturn(Object id);

  /// No description provided for @alreadyReturnedInvoiceReturn.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة مرتجعة مسبقاً'**
  String get alreadyReturnedInvoiceReturn;

  /// No description provided for @navigateToInvoiceTitle.
  ///
  /// In ar, this message translates to:
  /// **'الانتقال إلى فاتورة #{id}؟'**
  String navigateToInvoiceTitle(Object id);

  /// No description provided for @navigateToInvoiceBody.
  ///
  /// In ar, this message translates to:
  /// **'سيتم استبدال المنتجات المعروضة بفاتورة أخرى.'**
  String get navigateToInvoiceBody;

  /// No description provided for @allItemsReturnedBanner.
  ///
  /// In ar, this message translates to:
  /// **'تم إرجاع جميع بنود الفاتورة #{id} بالكامل في فواتير مرتجع سابقة. لا يوجد ما يمكن إرجاعه إضافياً.'**
  String allItemsReturnedBanner(Object id);

  /// No description provided for @noItemsInInvoice.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أصناف في هذه الفاتورة'**
  String get noItemsInInvoice;

  /// No description provided for @noItemsInInvoiceHint.
  ///
  /// In ar, this message translates to:
  /// **'تأكّد من رقم الفاتورة، أو استعمل حقل تبديل الباركود لاختيار فاتورة أخرى.'**
  String get noItemsInInvoiceHint;

  /// No description provided for @itemsSelectReturnQty.
  ///
  /// In ar, this message translates to:
  /// **'الأصناف — اختر كمية الإرجاع'**
  String get itemsSelectReturnQty;

  /// No description provided for @fullReturnAction.
  ///
  /// In ar, this message translates to:
  /// **'إرجاع كامل'**
  String get fullReturnAction;

  /// No description provided for @switchInvoiceHint.
  ///
  /// In ar, this message translates to:
  /// **'تبديل الفاتورة (INV-رقم)'**
  String get switchInvoiceHint;

  /// No description provided for @scanReceiptBarcodeHint.
  ///
  /// In ar, this message translates to:
  /// **'امسح باركود إيصال آخر ثم Enter'**
  String get scanReceiptBarcodeHint;

  /// No description provided for @originalInvoiceHashLabel.
  ///
  /// In ar, this message translates to:
  /// **'الفاتورة الأصلية #{id}'**
  String originalInvoiceHashLabel(Object id);

  /// No description provided for @dateLabelReturn.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ: {date}'**
  String dateLabelReturn(Object date);

  /// No description provided for @customerLabelReturn.
  ///
  /// In ar, this message translates to:
  /// **'العميل: {name}'**
  String customerLabelReturn(Object name);

  /// No description provided for @originalSellerLabel.
  ///
  /// In ar, this message translates to:
  /// **'بائع أصلي: {name}'**
  String originalSellerLabel(Object name);

  /// No description provided for @currentRecorderLabel.
  ///
  /// In ar, this message translates to:
  /// **'المُسجِّل الآن: {name}'**
  String currentRecorderLabel(Object name);

  /// No description provided for @fullyReturnedBadge.
  ///
  /// In ar, this message translates to:
  /// **'مُرجَع بالكامل'**
  String get fullyReturnedBadge;

  /// No description provided for @partiallyReturnedBadge.
  ///
  /// In ar, this message translates to:
  /// **'مُرجَع جزئياً'**
  String get partiallyReturnedBadge;

  /// No description provided for @soldQtyTimesPrice.
  ///
  /// In ar, this message translates to:
  /// **'المباع: {qty} × {price}'**
  String soldQtyTimesPrice(Object price, Object qty);

  /// No description provided for @previouslyReturnedRemaining.
  ///
  /// In ar, this message translates to:
  /// **'مُرجَع سابقاً: {returned} • المتبقي: {remaining}'**
  String previouslyReturnedRemaining(Object remaining, Object returned);

  /// No description provided for @returnQuantityLabel.
  ///
  /// In ar, this message translates to:
  /// **'كمية الإرجاع'**
  String get returnQuantityLabel;

  /// No description provided for @returnSummaryTitle.
  ///
  /// In ar, this message translates to:
  /// **'ملخص المرتجع'**
  String get returnSummaryTitle;

  /// No description provided for @linesSubtotalLabel.
  ///
  /// In ar, this message translates to:
  /// **'مجموع الأسطر'**
  String get linesSubtotalLabel;

  /// No description provided for @invoiceDiscountShareLabel.
  ///
  /// In ar, this message translates to:
  /// **'خصم نسبة الفاتورة'**
  String get invoiceDiscountShareLabel;

  /// No description provided for @taxShareLabel.
  ///
  /// In ar, this message translates to:
  /// **'حصة الضريبة'**
  String get taxShareLabel;

  /// No description provided for @refundAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المسترد للعميل'**
  String get refundAmountLabel;

  /// No description provided for @confirmReturnAction.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد المرتجع'**
  String get confirmReturnAction;

  /// No description provided for @returnedInOtherInvoice.
  ///
  /// In ar, this message translates to:
  /// **'تم إرجاع \"{name}\" في فاتورة أخرى منذ فتح هذه الشاشة. المتبقي: {qty}. أعِد تحميل الشاشة وحاول مجدداً.'**
  String returnedInOtherInvoice(Object name, Object qty);

  /// No description provided for @returnRecordedSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم تسجيل المرتجع #{id} ← مرتبط بالفاتورة الأصلية #{originalId}. {hint}'**
  String returnRecordedSuccess(Object hint, Object id, Object originalId);

  /// No description provided for @deleteReturnTitle.
  ///
  /// In ar, this message translates to:
  /// **'حذف المرتجع؟'**
  String get deleteReturnTitle;

  /// No description provided for @deleteReturnConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هل أنت متأكد من حذف هذا المرتجع؟'**
  String get deleteReturnConfirm;

  /// No description provided for @amountDueLabel.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المستحق (د.ع)'**
  String get amountDueLabel;

  /// No description provided for @discountOnTotalSaleTitle.
  ///
  /// In ar, this message translates to:
  /// **'خصم الفاتورة'**
  String get discountOnTotalSaleTitle;

  /// No description provided for @advanceFirstPaymentShortLabel.
  ///
  /// In ar, this message translates to:
  /// **'المقدم'**
  String get advanceFirstPaymentShortLabel;

  /// No description provided for @parkingInvoiceTitle.
  ///
  /// In ar, this message translates to:
  /// **'تعليق الفاتورة'**
  String get parkingInvoiceTitle;

  /// No description provided for @parkedInvoiceSnackbarHint.
  ///
  /// In ar, this message translates to:
  /// **'يُحفظ محلياً. يمكنك الاستئناف من الفواتير معلّقة.'**
  String get parkedInvoiceSnackbarHint;
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
