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
