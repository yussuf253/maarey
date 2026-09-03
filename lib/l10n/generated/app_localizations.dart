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
  /// **'Maarey'**
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
  /// **'الإصدار 1.0.0 · Maarey Store Manager'**
  String get aboutAppSubtitle;

  /// No description provided for @appName.
  ///
  /// In ar, this message translates to:
  /// **'Mاري لإدارة المتاجر'**
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
  /// **'مثال: كل 10,000 Fdj تمنح 10 نقاط حسب القاعدة التي تختارها.'**
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
  /// **'مثال: فاتورة قيمتها 100,000 Fdj وتضيف عليها نسبة ضريبة محددة.'**
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
  /// **'مثال: تمنح خصماً عاماً 5,000 Fdj على فاتورة كبيرة.'**
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
  /// **'مثال: جهاز قيمته 600,000 Fdj يُدفع على 6 دفعات شهرية.'**
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
  /// **'بيع {price} Fdj'**
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
  /// **'{count} صنف · ≈ {total} Fdj'**
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
  /// **'{amount} Fdj'**
  String totalIqd(Object amount);

  /// No description provided for @itemsAndDiscountLine.
  ///
  /// In ar, this message translates to:
  /// **'{count} صنف · خصم {discount} Fdj'**
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

  /// No description provided for @emailNotConfirmed.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني غير مؤكد. يرجى التحقق من صندوق الوارد.'**
  String get emailNotConfirmed;

  /// No description provided for @tooManyRequests.
  ///
  /// In ar, this message translates to:
  /// **'محاولات كثيرة جداً. يرجى الانتظار بضع دقائق ثم المحاولة مجدداً.'**
  String get tooManyRequests;

  /// No description provided for @networkError.
  ///
  /// In ar, this message translates to:
  /// **'خطأ في الاتصال. يرجى التحقق من الاتصال بالإنترنت والمحاولة مجدداً.'**
  String get networkError;

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

  /// No description provided for @welcomeToMaarey.
  ///
  /// In ar, this message translates to:
  /// **'مرحباً بك في Mاري'**
  String get welcomeToMaarey;

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
  /// **'Maarey v2.0 — جميع الحقوق محفوظة'**
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
  /// **'للحصول على مفتاح ترخيص، تواصل مع فريق Maarey.'**
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
  /// **'١. تواصل مع فريق Maarey عبر الطرق أدناه\n٢. أكمل الدفع للخطة التي تريدها\n٣. استلم رمز التفعيل الكامل (JWT) من الإدارة\n٤. الصق الرمز في الحقل الموحّد أسفل بطاقات الخطط — الخطة وحد الأجهزة يُستنتجان من الرمز'**
  String get subscribeStepsJwt;

  /// No description provided for @subscribeStepsLegacy.
  ///
  /// In ar, this message translates to:
  /// **'١. تواصل مع فريق Maarey عبر الطرق أدناه\n٢. أخبرنا بالخطة التي تريدها وأكمل الدفع\n٣. استلم مفتاح الترخيص من الإدارة\n٤. الصق المفتاح في الحقل الموحّد أسفل بطاقات الخطط ثم اضغط «تفعيل المفتاح»'**
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
  /// **'Fdj'**
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
  /// **'Fdj'**
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

  /// No description provided for @now.
  ///
  /// In ar, this message translates to:
  /// **'الآن'**
  String get now;

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
  /// **'{price} Fdj'**
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
  /// **'{qty} × {price} Fdj'**
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
  /// **'القسط الشهري المقترح ({months} شهراً)'**
  String suggestedMonthlyInstallment(Object months);

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
  /// **'Fdj'**
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
  /// **'مبلغ الضريبة (Fdj)'**
  String get taxAmountLabel;

  /// No description provided for @discountSectionLabel.
  ///
  /// In ar, this message translates to:
  /// **'خصم الفاتورة'**
  String get discountSectionLabel;

  /// No description provided for @advanceDownPaymentLabel.
  ///
  /// In ar, this message translates to:
  /// **'المقدّم / الدفعة الأولى (Fdj)'**
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
  /// **'المبلغ الواصل (Fdj)'**
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
  /// **'المبلغ المستحق (Fdj)'**
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

  /// No description provided for @pieceFallback.
  ///
  /// In ar, this message translates to:
  /// **'قطعة'**
  String get pieceFallback;

  /// No description provided for @unnamedProduct.
  ///
  /// In ar, this message translates to:
  /// **'منتج غير مسمى'**
  String get unnamedProduct;

  /// No description provided for @newProductFallback.
  ///
  /// In ar, this message translates to:
  /// **'منتج جديد'**
  String get newProductFallback;

  /// No description provided for @qtyAdjustedToAvailableStock.
  ///
  /// In ar, this message translates to:
  /// **'تم ضبط الكمية إلى {qty} بسبب حد المخزون المتاح.'**
  String qtyAdjustedToAvailableStock(Object qty);

  /// No description provided for @stockNotAvailableDetails.
  ///
  /// In ar, this message translates to:
  /// **'الكمية غير متوفرة في المخزون. المتاح للبيع (أساس المخزون): {max} فقط (بعد احتساب الكميات في الأسطر الأخرى).'**
  String stockNotAvailableDetails(Object max);

  /// No description provided for @noStockAvailableForProduct.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد كمية متوفرة في المخزون لهذا المنتج.'**
  String get noStockAvailableForProduct;

  /// No description provided for @stockUnavailableAvailableIs.
  ///
  /// In ar, this message translates to:
  /// **'الكمية غير متوفرة. المتاح للبيع (أساس المخزون): {max} فقط.'**
  String stockUnavailableAvailableIs(Object max);

  /// No description provided for @newLineAddedSnack.
  ///
  /// In ar, this message translates to:
  /// **'تمت إضافة سطر جديد: {name}'**
  String newLineAddedSnack(Object name);

  /// No description provided for @installmentPlanTitle.
  ///
  /// In ar, this message translates to:
  /// **'مخطط التقسيط'**
  String get installmentPlanTitle;

  /// No description provided for @installmentCalcNote.
  ///
  /// In ar, this message translates to:
  /// **'يُحسب على «الإجمالي بعد المقدّم». للمراجعة مع العميل — لا يُضاف للفاتورة إلا إذا رفعت الأسعار يدوياً.'**
  String get installmentCalcNote;

  /// No description provided for @advanceDownPaymentHelper.
  ///
  /// In ar, this message translates to:
  /// **'يُخصم من الإجمالي قبل حساب الفائدة والقسط'**
  String get advanceDownPaymentHelper;

  /// No description provided for @monthsSuffix.
  ///
  /// In ar, this message translates to:
  /// **'شهراً'**
  String get monthsSuffix;

  /// No description provided for @interestAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'قيمة الفائدة ({pct}٪)'**
  String interestAmountLabel(Object pct);

  /// No description provided for @advanceEqualsTotalHint.
  ///
  /// In ar, this message translates to:
  /// **'المقدّم يساوي الإجمالي — لا يوجد مبلغ للتقسيط. خفّض المقدّم لرؤية الفائدة والقسط.'**
  String get advanceEqualsTotalHint;

  /// No description provided for @parkInvoiceWithCount.
  ///
  /// In ar, this message translates to:
  /// **'تعليق الفاتورة — تعليق ({count})'**
  String parkInvoiceWithCount(Object count);

  /// No description provided for @parkInvoiceOtherCustomer.
  ///
  /// In ar, this message translates to:
  /// **'تعليق الفاتورة — خدمة عميل آخر'**
  String get parkInvoiceOtherCustomer;

  /// No description provided for @payButtonLabel.
  ///
  /// In ar, this message translates to:
  /// **'الدفع — {amount}'**
  String payButtonLabel(Object amount);

  /// No description provided for @swipeToResizeHint.
  ///
  /// In ar, this message translates to:
  /// **'اسحب لتغيير عرض القائمة الجانبية'**
  String get swipeToResizeHint;

  /// No description provided for @checkoutStepHintWithPayment.
  ///
  /// In ar, this message translates to:
  /// **'أسطر الفاتورة والكميات والأسعار — ثم راجع تفاصيل السعر وطريقة الدفع.'**
  String get checkoutStepHintWithPayment;

  /// No description provided for @checkoutStepHintNoPayment.
  ///
  /// In ar, this message translates to:
  /// **'أسطر الفاتورة والكميات والأسعار — ثم انتقل لخصم الفاتورة والضريبة.'**
  String get checkoutStepHintNoPayment;

  /// No description provided for @productsTitle.
  ///
  /// In ar, this message translates to:
  /// **'المنتجات'**
  String get productsTitle;

  /// No description provided for @barcodeFieldHint.
  ///
  /// In ar, this message translates to:
  /// **'إضافة صنف بالباركود، أو فتح مرتجع بمسح رقم الفاتورة (INV-)'**
  String get barcodeFieldHint;

  /// No description provided for @scannerTabLabel.
  ///
  /// In ar, this message translates to:
  /// **'الماسح'**
  String get scannerTabLabel;

  /// No description provided for @noItemsYetWithScanner.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أصناف بعد.\nامسح الباركود أعلاه أو أضف من البحث في الشاشة الرئيسية.\nابحث عن منتج أو امسح الباركود للإضافة.'**
  String get noItemsYetWithScanner;

  /// No description provided for @noItemsYetNoScanner.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أصناف بعد.\nأضف منتجات من البحث في الشاشة الرئيسية.\nابحث عن منتج أو امسح الباركود للإضافة.'**
  String get noItemsYetNoScanner;

  /// No description provided for @saleSummaryTitle.
  ///
  /// In ar, this message translates to:
  /// **'ملخص البيع'**
  String get saleSummaryTitle;

  /// No description provided for @discountTaxNote.
  ///
  /// In ar, this message translates to:
  /// **'الخصم والضريبة يُطبَّقان على إجمالي الفاتورة (وليس لكل صنف على حدة).'**
  String get discountTaxNote;

  /// No description provided for @maxDiscountAllowedHint.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأقصى المسموح حالياً: {max}٪ — يُحسب من أدنى سعر لكل صنف.'**
  String maxDiscountAllowedHint(Object max);

  /// No description provided for @taxHelperHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل مبلغ الضريبة بالدينار إن وُجد؛ يُضاف إلى المجموع بعد خصم الفاتورة.'**
  String get taxHelperHint;

  /// No description provided for @priceDetailStepHintWithPayment.
  ///
  /// In ar, this message translates to:
  /// **'نتيجة الأرقام والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.'**
  String get priceDetailStepHintWithPayment;

  /// No description provided for @priceDetailStepHintNoPayment.
  ///
  /// In ar, this message translates to:
  /// **'نتيجة الأرقام بعد الخصم والضريبة، والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.'**
  String get priceDetailStepHintNoPayment;

  /// No description provided for @priceDetailsTitle.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل السعر'**
  String get priceDetailsTitle;

  /// No description provided for @amountBreakdownTitle.
  ///
  /// In ar, this message translates to:
  /// **'تفصيل المبالغ'**
  String get amountBreakdownTitle;

  /// No description provided for @originalAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ الأصلي (مجموع البنود)'**
  String get originalAmountLabel;

  /// No description provided for @invoiceDiscountAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'قيمة خصم الفاتورة'**
  String get invoiceDiscountAmountLabel;

  /// No description provided for @subtotalAfterDiscountLabel.
  ///
  /// In ar, this message translates to:
  /// **'المجموع بعد الخصم (قبل الضريبة)'**
  String get subtotalAfterDiscountLabel;

  /// No description provided for @iqdCurrencySymbol.
  ///
  /// In ar, this message translates to:
  /// **'Fdj'**
  String get iqdCurrencySymbol;

  /// No description provided for @grandTotalLabel.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي النهائي'**
  String get grandTotalLabel;

  /// No description provided for @cashLabel.
  ///
  /// In ar, this message translates to:
  /// **'نقدي'**
  String get cashLabel;

  /// No description provided for @creditLabel.
  ///
  /// In ar, this message translates to:
  /// **'دين'**
  String get creditLabel;

  /// No description provided for @installmentLabel.
  ///
  /// In ar, this message translates to:
  /// **'تقسيط'**
  String get installmentLabel;

  /// No description provided for @deliveryLabel.
  ///
  /// In ar, this message translates to:
  /// **'توصيل'**
  String get deliveryLabel;

  /// No description provided for @selectPaymentMethodHint.
  ///
  /// In ar, this message translates to:
  /// **'اختر {options}، ثم أكمل بيانات العميل والحقول المرتبطة بنوع الدفع.'**
  String selectPaymentMethodHint(Object options);

  /// No description provided for @customerAndPaymentTitle.
  ///
  /// In ar, this message translates to:
  /// **'العميل وطريقة الدفع'**
  String get customerAndPaymentTitle;

  /// No description provided for @paymentMethodLabel.
  ///
  /// In ar, this message translates to:
  /// **'طريقة الدفع'**
  String get paymentMethodLabel;

  /// No description provided for @customerNameRequiredForDelivery.
  ///
  /// In ar, this message translates to:
  /// **'اسم العميل مطلوب للتوصيل'**
  String get customerNameRequiredForDelivery;

  /// No description provided for @requiredForCreditInstallment.
  ///
  /// In ar, this message translates to:
  /// **'مطلوب للدين/التقسيط'**
  String get requiredForCreditInstallment;

  /// No description provided for @addNewCustomerMessage.
  ///
  /// In ar, this message translates to:
  /// **'إضافة عميل جديد دون مغادرة البيع'**
  String get addNewCustomerMessage;

  /// No description provided for @deliveryAddressWithMapQR.
  ///
  /// In ar, this message translates to:
  /// **'عنوان التوصيل والموقع (QR خرائط)'**
  String get deliveryAddressWithMapQR;

  /// No description provided for @buyerAddressWithMapQR.
  ///
  /// In ar, this message translates to:
  /// **'عنوان المشتري (QR للخرائط على الإيصال)'**
  String get buyerAddressWithMapQR;

  /// No description provided for @addressMapDescriptionOptional.
  ///
  /// In ar, this message translates to:
  /// **'اختياري — وصف أو عنوان يظهر في Google Maps عند مسح الرمز'**
  String get addressMapDescriptionOptional;

  /// No description provided for @addressMapRequired.
  ///
  /// In ar, this message translates to:
  /// **'مطلوب — يُطبَع QR للخرائط عند وجود نص؛ اكتب عنوان التوصيل بوضوح'**
  String get addressMapRequired;

  /// No description provided for @qrOpensMapsOnScan.
  ///
  /// In ar, this message translates to:
  /// **'يُطبَع QR يفتح الخرائط عند المسح'**
  String get qrOpensMapsOnScan;

  /// No description provided for @deliveryAddressRequired.
  ///
  /// In ar, this message translates to:
  /// **'عنوان التوصيل مطلوب'**
  String get deliveryAddressRequired;

  /// No description provided for @loyaltyPointsRequiresCustomer.
  ///
  /// In ar, this message translates to:
  /// **'لاستخدام النقاط: اختر عميلاً مسجّلاً من القائمة المقترحة.'**
  String get loyaltyPointsRequiresCustomer;

  /// No description provided for @customerLoyaltyBalance.
  ///
  /// In ar, this message translates to:
  /// **'رصيد نقاط العميل: {balance}'**
  String customerLoyaltyBalance(Object balance);

  /// No description provided for @loyaltyPointsToRedeem.
  ///
  /// In ar, this message translates to:
  /// **'نقاط للاستبدال (حد أقصى {max})'**
  String loyaltyPointsToRedeem(Object max);

  /// No description provided for @deliveryInstruction.
  ///
  /// In ar, this message translates to:
  /// **'للتوصيل: أدخل اسم العميل وعنوان التوصيل (كلاهما مطلوب). يظهر اقتراح للاسم من قاعدة العملاء أثناء الكتابة.'**
  String get deliveryInstruction;

  /// No description provided for @creditInstallmentCustomerTip.
  ///
  /// In ar, this message translates to:
  /// **'مهم: للدين والتقسيط اضغط على اسم العميل من القائمة المقترحة لربط البيع ببطاقته (لا يكفي كتابة الاسم يدوياً إن لم يُطابق سجلاً واحداً بالضبط).'**
  String get creditInstallmentCustomerTip;

  /// No description provided for @hideDetailsLabel.
  ///
  /// In ar, this message translates to:
  /// **'إخفاء التفاصيل'**
  String get hideDetailsLabel;

  /// No description provided for @priceDiscountDetailsLabel.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل السعر والخصم'**
  String get priceDiscountDetailsLabel;

  /// No description provided for @priceAndMinLabel.
  ///
  /// In ar, this message translates to:
  /// **'سعر {price} · أدنى {min}'**
  String priceAndMinLabel(Object min, Object price);

  /// No description provided for @lineTotalLabel.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي: {total}'**
  String lineTotalLabel(Object total);

  /// No description provided for @unitSellPriceLabel.
  ///
  /// In ar, this message translates to:
  /// **'سعر البيع (للوحدة)'**
  String get unitSellPriceLabel;

  /// No description provided for @lineTotalBeforeDiscount.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي السطر قبل خصم الفاتورة'**
  String get lineTotalBeforeDiscount;

  /// No description provided for @lineDiscountShare.
  ///
  /// In ar, this message translates to:
  /// **'حصة خصم الفاتورة لهذا السطر'**
  String get lineDiscountShare;

  /// No description provided for @lineTotalAfterDiscount.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي بعد خصم الفاتورة (لهذا السطر)'**
  String get lineTotalAfterDiscount;

  /// No description provided for @percentageDiscountDistributionNote.
  ///
  /// In ar, this message translates to:
  /// **'يُوزَّع خصم النسبة على الأسطر بحسب مساهمة كل سطر في إجمالي البنود.'**
  String get percentageDiscountDistributionNote;

  /// No description provided for @quantityKgLabel.
  ///
  /// In ar, this message translates to:
  /// **'الكمية (كيلوغرام)'**
  String get quantityKgLabel;

  /// No description provided for @quantityHintWeight.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 0.25 أو 1.5 أو 3'**
  String get quantityHintWeight;

  /// No description provided for @quantityHintPiece.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 2'**
  String get quantityHintPiece;

  /// No description provided for @quantityErrorWeight.
  ///
  /// In ar, this message translates to:
  /// **'أدخل كمية أكبر من 0 (يمكن كسور للوزن).'**
  String get quantityErrorWeight;

  /// No description provided for @quantityErrorPiece.
  ///
  /// In ar, this message translates to:
  /// **'أدخل عدداً صحيحاً 1 فما فوق'**
  String get quantityErrorPiece;

  /// No description provided for @itemFallbackShort.
  ///
  /// In ar, this message translates to:
  /// **'صنف'**
  String get itemFallbackShort;

  /// No description provided for @payloadEmptyOrNotText.
  ///
  /// In ar, this message translates to:
  /// **'الحمولة فارغة أو ليست نصاً'**
  String get payloadEmptyOrNotText;

  /// No description provided for @payloadNotValidJson.
  ///
  /// In ar, this message translates to:
  /// **'الحمولة ليست object JSON صالحاً'**
  String get payloadNotValidJson;

  /// No description provided for @payloadNoVersionField.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد حقل إصدار (v) في الحمولة'**
  String get payloadNoVersionField;

  /// No description provided for @payloadUnsupportedVersion.
  ///
  /// In ar, this message translates to:
  /// **'إصدار الحمولة {ver} غير مدعوم (المتوقع 1)'**
  String payloadUnsupportedVersion(Object ver);

  /// No description provided for @decryptionError.
  ///
  /// In ar, this message translates to:
  /// **'خطأ في فك التشفير: {error}'**
  String decryptionError(Object error);

  /// No description provided for @failedToOpenParkedInvoice.
  ///
  /// In ar, this message translates to:
  /// **'تعذر فتح الفاتورة المعلّقة: {reason}'**
  String failedToOpenParkedInvoice(Object reason);

  /// No description provided for @unknownReason.
  ///
  /// In ar, this message translates to:
  /// **'سبب غير معروف'**
  String get unknownReason;

  /// No description provided for @invoiceWithItemCount.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة ({count} صنف)'**
  String invoiceWithItemCount(Object count);

  /// No description provided for @invoiceParkedMessage.
  ///
  /// In ar, this message translates to:
  /// **'تم تعليق الفاتورة — يمكنك استئنافها من قائمة الفواتير'**
  String get invoiceParkedMessage;

  /// No description provided for @requiredFieldsMessage.
  ///
  /// In ar, this message translates to:
  /// **'أكمل الحقول المطلوبة: للدين أو التقسيط أدخل اسم العميل، وللتوصيل أدخل اسم العميل وعنوان التوصيل. راجع الحقول المظللة بالأحمر.'**
  String get requiredFieldsMessage;

  /// No description provided for @paymentMethodNotAllowed.
  ///
  /// In ar, this message translates to:
  /// **'طريقة الدفع الحالية غير مسموحة — راجع «الفواتير ← إعدادات نقطة البيع» أو اختر نقدي.'**
  String get paymentMethodNotAllowed;

  /// No description provided for @discountExceedsMaximum.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الخصم أعلى من المسموح. الحد الأقصى {max}%'**
  String discountExceedsMaximum(Object max);

  /// No description provided for @creditInstallmentMustSelectCustomer.
  ///
  /// In ar, this message translates to:
  /// **'للمبيع بالدين أو التقسيط: اختر عميلاً مسجّلاً من القائمة المقترحة أسفل حقل الاسم (أو أضفه من «العملاء» أولاً) حتى تُربط الفاتورة ببطاقة العميل وتظهر لاحقاً في الديون والأقساط.'**
  String get creditInstallmentMustSelectCustomer;

  /// No description provided for @loyaltyRedeemMustSelectCustomer.
  ///
  /// In ar, this message translates to:
  /// **'لاستبدال النقاط اختر العميل من القائمة أو أدخل اسماً يطابق سجلاً واحداً في العملاء.'**
  String get loyaltyRedeemMustSelectCustomer;

  /// No description provided for @invoiceDebtLimitExceeded.
  ///
  /// In ar, this message translates to:
  /// **'حد الدين للفاتورة: المتبقي ({rem}) يتجاوز السقف {cap}. عدّل الإجمالي أو المبلغ الواصل أو «الديون ← إعدادات الدين».'**
  String invoiceDebtLimitExceeded(Object cap, Object rem);

  /// No description provided for @customerDebtLimitExceeded.
  ///
  /// In ar, this message translates to:
  /// **'حد الدين للعميل: مجموع المتبقي الحالي ≈ {existing}، والفاتورة تضيف {rem} (يتجاوز {cap}).'**
  String customerDebtLimitExceeded(Object cap, Object existing, Object rem);

  /// No description provided for @debtLimitActionHint.
  ///
  /// In ar, this message translates to:
  /// **'اربط العميل من القائمة، أو خفّض المبلغ، أو راجع إعدادات الديون.'**
  String get debtLimitActionHint;

  /// No description provided for @invoiceSaveFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر حفظ الفاتورة — {error}. راجع الأصناف والإجمالي قبل إعادة المحاولة.'**
  String invoiceSaveFailed(Object error);

  /// No description provided for @maintenanceTicketUpdateFailed.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه: حُفظت الفاتورة ولكن تعذر تلقائياً تحديث حالة تذكرة الصيانة. يرجى مراجعتها يدوياً.'**
  String get maintenanceTicketUpdateFailed;

  /// No description provided for @installmentPlanCreated.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ الفاتورة وإنشاء خطة التقسيط — يمكنك ضبط الجدول أو الرجوع'**
  String get installmentPlanCreated;

  /// No description provided for @installmentPlanSavedNoRemaining.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ فاتورة التقسيط وربطها بخطة (لا أقساط متبقية لأن المبلغ محصّل بالكامل).'**
  String get installmentPlanSavedNoRemaining;

  /// No description provided for @barcodeOrInvoiceForReturn.
  ///
  /// In ar, this message translates to:
  /// **'باركود صنف أو فاتورة للمرتجع'**
  String get barcodeOrInvoiceForReturn;

  /// No description provided for @alreadyReturned.
  ///
  /// In ar, this message translates to:
  /// **'هذه الفاتورة مرتجع مسبقاً'**
  String get alreadyReturned;

  /// No description provided for @invoiceNumberLabel.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة #{id}'**
  String invoiceNumberLabel(Object id);

  /// No description provided for @openReturnScreenConfirm.
  ///
  /// In ar, this message translates to:
  /// **'فتح شاشة المرتجع (منتجات فقط)؟\nالإجمالي الأصلي: {total}'**
  String openReturnScreenConfirm(Object total);

  /// No description provided for @returnButton.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع'**
  String get returnButton;

  /// No description provided for @selectColorAndSize.
  ///
  /// In ar, this message translates to:
  /// **'اختيار اللون والمقاس'**
  String get selectColorAndSize;

  /// No description provided for @cannotChangeQtyBeforeSelection.
  ///
  /// In ar, this message translates to:
  /// **'لا يمكن تغيير الكمية قبل الاختيار'**
  String get cannotChangeQtyBeforeSelection;

  /// No description provided for @loadingColorsAndSizes.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ تحميل الألوان والمقاسات…'**
  String get loadingColorsAndSizes;

  /// No description provided for @colorsTitle.
  ///
  /// In ar, this message translates to:
  /// **'الألوان'**
  String get colorsTitle;

  /// No description provided for @availableLabel.
  ///
  /// In ar, this message translates to:
  /// **'المتاح: {rem}'**
  String availableLabel(Object rem);

  /// No description provided for @sizesTitle.
  ///
  /// In ar, this message translates to:
  /// **'المقاسات'**
  String get sizesTitle;

  /// No description provided for @currentlySelected.
  ///
  /// In ar, this message translates to:
  /// **'المحدد حالياً'**
  String get currentlySelected;

  /// No description provided for @colorOrSize.
  ///
  /// In ar, this message translates to:
  /// **'لون/مقاس'**
  String get colorOrSize;

  /// No description provided for @selectColorFirst.
  ///
  /// In ar, this message translates to:
  /// **'اختر لوناً أولاً لإظهار المقاسات.'**
  String get selectColorFirst;

  /// No description provided for @parkInvoiceDialogTitle.
  ///
  /// In ar, this message translates to:
  /// **'تعليق الفاتورة'**
  String get parkInvoiceDialogTitle;

  /// No description provided for @parkInvoiceDescription.
  ///
  /// In ar, this message translates to:
  /// **'يُحفظ محلياً على هذا الجهاز. يمكنك استئناف البيع لاحقاً من «الفواتير ← معلّقة مؤقتاً».'**
  String get parkInvoiceDescription;

  /// No description provided for @saveParkButton.
  ///
  /// In ar, this message translates to:
  /// **'حفظ التعليق'**
  String get saveParkButton;

  /// No description provided for @barcodeScannerTitle.
  ///
  /// In ar, this message translates to:
  /// **'ماسح الباركود'**
  String get barcodeScannerTitle;

  /// No description provided for @flashTooltip.
  ///
  /// In ar, this message translates to:
  /// **'فلاش'**
  String get flashTooltip;

  /// No description provided for @switchCameraTooltip.
  ///
  /// In ar, this message translates to:
  /// **'تبديل الكاميرا'**
  String get switchCameraTooltip;

  /// No description provided for @scanToAddAuto.
  ///
  /// In ar, this message translates to:
  /// **'امسح — سيتم الإضافة تلقائيًا'**
  String get scanToAddAuto;

  /// No description provided for @passOriginalInvoiceOrId.
  ///
  /// In ar, this message translates to:
  /// **'مرّر originalInvoice أو invoiceId'**
  String get passOriginalInvoiceOrId;

  /// No description provided for @deductedFromVault.
  ///
  /// In ar, this message translates to:
  /// **'خُصم من الصندوق.'**
  String get deductedFromVault;

  /// No description provided for @deductedFromInstallmentTotal.
  ///
  /// In ar, this message translates to:
  /// **'خُصم من إجمالي التقسيط.'**
  String get deductedFromInstallmentTotal;

  /// No description provided for @switchInvoiceLabel.
  ///
  /// In ar, this message translates to:
  /// **'تبديل الفاتورة (INV-رقم)'**
  String get switchInvoiceLabel;

  /// No description provided for @scanAnotherReceiptHint.
  ///
  /// In ar, this message translates to:
  /// **'امسح باركود إيصال آخر ثم Enter'**
  String get scanAnotherReceiptHint;

  /// No description provided for @barcodeNotFoundAddNew.
  ///
  /// In ar, this message translates to:
  /// **'هذا الباركود غير موجود في المنتجات. هل تريد فتح شاشة إضافة منتج جديد؟'**
  String get barcodeNotFoundAddNew;

  /// No description provided for @receiptPrintFailed.
  ///
  /// In ar, this message translates to:
  /// **'فشل طباعة إيصال البيع'**
  String get receiptPrintFailed;

  /// No description provided for @royalNavyScheme.
  ///
  /// In ar, this message translates to:
  /// **'كحلي ملكي — ذهبي — عاجي (الافتراضي)'**
  String get royalNavyScheme;

  /// No description provided for @midnightScheme.
  ///
  /// In ar, this message translates to:
  /// **'منتصف ليل — فضي — رمادي فاتح'**
  String get midnightScheme;

  /// No description provided for @oceanScheme.
  ///
  /// In ar, this message translates to:
  /// **'محيط — رملي ذهبي — كريمي'**
  String get oceanScheme;

  /// No description provided for @forestScheme.
  ///
  /// In ar, this message translates to:
  /// **'غابة — برونزي — نعناعي فاتح'**
  String get forestScheme;

  /// No description provided for @wineScheme.
  ///
  /// In ar, this message translates to:
  /// **'نبيذي — ذهبي دافئ — أبيض وردي'**
  String get wineScheme;

  /// No description provided for @charcoalScheme.
  ///
  /// In ar, this message translates to:
  /// **'فحمي — عنبر — أبيض مزرق'**
  String get charcoalScheme;

  /// No description provided for @slateScheme.
  ///
  /// In ar, this message translates to:
  /// **'أردوازي — سماوي — أبيض بارد'**
  String get slateScheme;

  /// No description provided for @copperScheme.
  ///
  /// In ar, this message translates to:
  /// **'نحاسي — نحاس محمر — رمل'**
  String get copperScheme;

  /// No description provided for @customScheme.
  ///
  /// In ar, this message translates to:
  /// **'مخصص — استوديو ألوان تفاعلي'**
  String get customScheme;

  /// No description provided for @appAppearance.
  ///
  /// In ar, this message translates to:
  /// **'مظهر التطبيق'**
  String get appAppearance;

  /// No description provided for @posSettings.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات نقطة البيع'**
  String get posSettings;

  /// No description provided for @paymentMethodsSection.
  ///
  /// In ar, this message translates to:
  /// **'طرق الدفع'**
  String get paymentMethodsSection;

  /// No description provided for @creditSaleTitle.
  ///
  /// In ar, this message translates to:
  /// **'البيع بالدين (آجل)'**
  String get creditSaleTitle;

  /// No description provided for @creditSaleSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'إيقافه يخفي خيار «دين» في شاشة البيع.'**
  String get creditSaleSubtitle;

  /// No description provided for @installmentSaleTitle.
  ///
  /// In ar, this message translates to:
  /// **'البيع بالتقسيط'**
  String get installmentSaleTitle;

  /// No description provided for @installmentSaleSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'إيقافه يخفي خيار «تقسيط».'**
  String get installmentSaleSubtitle;

  /// No description provided for @deliverySaleTitle.
  ///
  /// In ar, this message translates to:
  /// **'البيع مع التوصيل'**
  String get deliverySaleTitle;

  /// No description provided for @deliverySaleSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'إيقافه يخفي خيار «توصيل».'**
  String get deliverySaleSubtitle;

  /// No description provided for @cashCustomerSection.
  ///
  /// In ar, this message translates to:
  /// **'العميل في البيع النقدي'**
  String get cashCustomerSection;

  /// No description provided for @showBuyerAddressCashTitle.
  ///
  /// In ar, this message translates to:
  /// **'إظهار حقل عنوان المشتري عند النقدي'**
  String get showBuyerAddressCashTitle;

  /// No description provided for @showBuyerAddressCashDesc.
  ///
  /// In ar, this message translates to:
  /// **'يظهر فقط إذا فعّلت «QR لعنوان المشتري» في إعدادات الطباعة. عند الإيقاف يبقى الحقل للتوصيل كما هو.'**
  String get showBuyerAddressCashDesc;

  /// No description provided for @stockInSaleSection.
  ///
  /// In ar, this message translates to:
  /// **'المخزون في البيع'**
  String get stockInSaleSection;

  /// No description provided for @preventOversellTitle.
  ///
  /// In ar, this message translates to:
  /// **'منع البيع عند تجاوز الرصيد المعروض'**
  String get preventOversellTitle;

  /// No description provided for @preventOversellDesc.
  ///
  /// In ar, this message translates to:
  /// **'عند التفعيل لا تزيد الكمية في الفاتورة فوق المتاح. عند الإيقاف يُسمح بالبيع حتى لو أصبح الرصيد سالباً، فيُلغى السالب عند الحفظ.'**
  String get preventOversellDesc;

  /// No description provided for @discountTaxSection.
  ///
  /// In ar, this message translates to:
  /// **'الخصم والضريبة'**
  String get discountTaxSection;

  /// No description provided for @invoiceDiscountPercentTitle.
  ///
  /// In ar, this message translates to:
  /// **'حقل خصم الفاتورة (نسبة)'**
  String get invoiceDiscountPercentTitle;

  /// No description provided for @invoiceDiscountPercentSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'عند الإيقاف يُثبَّت الخصم على 0 ويُخفى الحقل.'**
  String get invoiceDiscountPercentSubtitle;

  /// No description provided for @taxFieldTitle.
  ///
  /// In ar, this message translates to:
  /// **'حقل الضريبة'**
  String get taxFieldTitle;

  /// No description provided for @taxFieldSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'عند الإيقاف يُثبَّت الضريبة على 0 ويُخفى الحقل.'**
  String get taxFieldSubtitle;

  /// No description provided for @brandColorsTitle.
  ///
  /// In ar, this message translates to:
  /// **'ألوان هوية الشعار بدل ثيم التطبيق'**
  String get brandColorsTitle;

  /// No description provided for @brandColorsDesc.
  ///
  /// In ar, this message translates to:
  /// **'عند الإيقاف يبقى ثيم التطبيق العام (فاتح/داكن) في كل الصفحات، مع نفس شكل الزوايا أدناه.'**
  String get brandColorsDesc;

  /// No description provided for @colorSchemesTitle.
  ///
  /// In ar, this message translates to:
  /// **'مخطط الألوان'**
  String get colorSchemesTitle;

  /// No description provided for @colorSchemesDesc.
  ///
  /// In ar, this message translates to:
  /// **'كل مخطط ألوان احترافي جاهز؛ «مخصص» يفتح استوديو ألوان تفاعلياً (طيف، تشبع، سطوع، جاهز، HEX) لكل لون.'**
  String get colorSchemesDesc;

  /// No description provided for @primaryColorLabel.
  ///
  /// In ar, this message translates to:
  /// **'اللون الرئيسي (شريط العنوان والأزرار)'**
  String get primaryColorLabel;

  /// No description provided for @accentColorLabel.
  ///
  /// In ar, this message translates to:
  /// **'لون التمييز (ذهبي/مميز)'**
  String get accentColorLabel;

  /// No description provided for @lightSurfaceLabel.
  ///
  /// In ar, this message translates to:
  /// **'خلفية اللوحات الفاتحة'**
  String get lightSurfaceLabel;

  /// No description provided for @darkSurfaceLabel.
  ///
  /// In ar, this message translates to:
  /// **'خلفية الوضع الداكن للوحات'**
  String get darkSurfaceLabel;

  /// No description provided for @saleCardShapeTitle.
  ///
  /// In ar, this message translates to:
  /// **'شكل بطاقات البيع'**
  String get saleCardShapeTitle;

  /// No description provided for @saleCardShapeDesc.
  ///
  /// In ar, this message translates to:
  /// **'معاينة بسيطة بجانب كل خيار — كيف تبدو زوايا اللوحات وأسطر المنتجات.'**
  String get saleCardShapeDesc;

  /// No description provided for @sharpCornersTitle.
  ///
  /// In ar, this message translates to:
  /// **'زوايا حادة'**
  String get sharpCornersTitle;

  /// No description provided for @roundedCornersTitle.
  ///
  /// In ar, this message translates to:
  /// **'زوايا مستديرة'**
  String get roundedCornersTitle;

  /// No description provided for @fontAndSizeTitle.
  ///
  /// In ar, this message translates to:
  /// **'خط التطبيق وحجمه'**
  String get fontAndSizeTitle;

  /// No description provided for @fontAndSizeDesc.
  ///
  /// In ar, this message translates to:
  /// **'يُطبَّق على كل الشاشات والقوائم، ويُضرب مع حجم خط النظام (إن وُجد).'**
  String get fontAndSizeDesc;

  /// No description provided for @fontStyleTitle.
  ///
  /// In ar, this message translates to:
  /// **'شكل الخط'**
  String get fontStyleTitle;

  /// No description provided for @fontSizeTitle.
  ///
  /// In ar, this message translates to:
  /// **'حجم الخط'**
  String get fontSizeTitle;

  /// No description provided for @textColorTitle.
  ///
  /// In ar, this message translates to:
  /// **'لون النص'**
  String get textColorTitle;

  /// No description provided for @textColorDesc.
  ///
  /// In ar, this message translates to:
  /// **'اختياري — استوديو ألوان كامل لكل وضع (فاتح/داكن)؛ يُطبَّق على النصوص الرئيسية والقوائم.'**
  String get textColorDesc;

  /// No description provided for @textLightLabel.
  ///
  /// In ar, this message translates to:
  /// **'لون النص — الوضع الفاتح'**
  String get textLightLabel;

  /// No description provided for @textLightDesc.
  ///
  /// In ar, this message translates to:
  /// **'عند تشغيل الثيم الفاتح. اضغط للتعديل، أو «افتراضي» لإلغاء اللون المخصص.'**
  String get textLightDesc;

  /// No description provided for @textDarkLabel.
  ///
  /// In ar, this message translates to:
  /// **'لون النص — الوضع الداكن'**
  String get textDarkLabel;

  /// No description provided for @textDarkDesc.
  ///
  /// In ar, this message translates to:
  /// **'عند تشغيل الثيم الداكن. اضغط للتعديل، أو «افتراضي» لإلغاء اللون المخصص.'**
  String get textDarkDesc;

  /// No description provided for @resetTextColorLabel.
  ///
  /// In ar, this message translates to:
  /// **'إعادة ضبط لون النص للوضعين (الثيم الافتراضي)'**
  String get resetTextColorLabel;

  /// No description provided for @royalNavyDefaultDesc.
  ///
  /// In ar, this message translates to:
  /// **'مرجع ألوان «الكحلي الملكي» الافتراضية — المخططات الأخرى أعلاه.'**
  String get royalNavyDefaultDesc;

  /// No description provided for @wideSaleLayoutTitle.
  ///
  /// In ar, this message translates to:
  /// **'تقسيم مساحة البيع (عرض عريض)'**
  String get wideSaleLayoutTitle;

  /// No description provided for @wideSaleLayoutSwitchTitle.
  ///
  /// In ar, this message translates to:
  /// **'تقسيم شاشة البيع إلى عمودين (عرض عريض)'**
  String get wideSaleLayoutSwitchTitle;

  /// No description provided for @wideSaleLayoutSwitchDesc.
  ///
  /// In ar, this message translates to:
  /// **'عند الإيقاف تعود «بيع جديد» إلى عمود واحد كالمعتاد حتى على الشاشة الواسعة. النسبة تُحفظ ولا تُفقد عند التعطيل.'**
  String get wideSaleLayoutSwitchDesc;

  /// No description provided for @wideSaleLayoutDesc.
  ///
  /// In ar, this message translates to:
  /// **'عندما يكون عرض النافذة ٧٠٠ نقطة فأكثر وليست شاشة هاتف، ومع تشغيل الخيار أعلاه، تُقسَّم شاشة «بيع جديد» إلى عمودين: منتجات واختيار والملخص والعميل.'**
  String get wideSaleLayoutDesc;

  /// No description provided for @productsColumnRatioLabel.
  ///
  /// In ar, this message translates to:
  /// **'عمود المنتجات: {products} — الملخص والعميل: {summary}'**
  String productsColumnRatioLabel(Object products, Object summary);

  /// No description provided for @productsSummaryLabel.
  ///
  /// In ar, this message translates to:
  /// **'منتجات {products} · باقي الشاشة {summary}'**
  String productsSummaryLabel(Object products, Object summary);

  /// No description provided for @wideSalePreviewLabel.
  ///
  /// In ar, this message translates to:
  /// **'معاينة مباشرة (مساحة صغيرة — كيف يتغيّر التقسيم عند تحريك المنزلق أو السحب في البيع):'**
  String get wideSalePreviewLabel;

  /// No description provided for @wideSaleDragHint.
  ///
  /// In ar, this message translates to:
  /// **'في شاشة «بيع جديد» على عرض عريض: مرّر المؤشر على الشريط الرفيع بين العمودين ثم اسحب أفقياً — يوسّع عمود «المنتجات» أو عمود الملخص والعميل.'**
  String get wideSaleDragHint;

  /// No description provided for @saleSpaceLayoutLabel.
  ///
  /// In ar, this message translates to:
  /// **'تقسيم مساحة البيع'**
  String get saleSpaceLayoutLabel;

  /// No description provided for @phoneLayoutDesc.
  ///
  /// In ar, this message translates to:
  /// **'على هذا الحجم (هاتف) تُعرض شاشة «بيع جديد» دائماً في عمود واحد. تقسيم المنتجات والملخص إلى عمودين مع سحب المساحة يظهر فقط على الشاشات العريضة.'**
  String get phoneLayoutDesc;

  /// No description provided for @appearanceNote.
  ///
  /// In ar, this message translates to:
  /// **'تُطبَّق الألوان والزوايا فوراً على كامل التطبيق (عبر ثيم النظام). سياسات البيع تبقى من «إعدادات نقطة البيع» في القائمة الجانبية.'**
  String get appearanceNote;

  /// No description provided for @posNote.
  ///
  /// In ar, this message translates to:
  /// **'تُطبَّق سياسات البيع والتقسيم فوراً على شاشة «بيع جديد». المظهر (الألوان، الخط، الزوايا، لون النص) يُضبط من إعدادات «مظهر التطبيق».'**
  String get posNote;

  /// No description provided for @resetAppearanceTitle.
  ///
  /// In ar, this message translates to:
  /// **'استرجاع المظهر الافتراضي؟'**
  String get resetAppearanceTitle;

  /// No description provided for @resetAppearanceDesc.
  ///
  /// In ar, this message translates to:
  /// **'سيتم إرجاع نوع الخط، حجم النص، ألوان النص المخصصة، مخطط الألوان، الزوايا، وهوية الشعار إلى القيم الأساسية. لا يتغير policies البيع.'**
  String get resetAppearanceDesc;

  /// No description provided for @cancelLabel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get cancelLabel;

  /// No description provided for @restoreLabel.
  ///
  /// In ar, this message translates to:
  /// **'استرجاع'**
  String get restoreLabel;

  /// No description provided for @appearanceRestoredSnack.
  ///
  /// In ar, this message translates to:
  /// **'تم استرجاع إعدادات المظهر الافتراضية'**
  String get appearanceRestoredSnack;

  /// No description provided for @resetAppearanceLog.
  ///
  /// In ar, this message translates to:
  /// **'استرجاع المظهر الافتراضي (خط، ألوان، مخطط، زوايا)'**
  String get resetAppearanceLog;

  /// No description provided for @summaryCustomerLabel.
  ///
  /// In ar, this message translates to:
  /// **'ملخص\nوعميل'**
  String get summaryCustomerLabel;

  /// No description provided for @customColorLabel.
  ///
  /// In ar, this message translates to:
  /// **'{hex} — مخصص'**
  String customColorLabel(Object hex);

  /// No description provided for @themeDefaultLabel.
  ///
  /// In ar, this message translates to:
  /// **'افتراضي الثيم'**
  String get themeDefaultLabel;

  /// No description provided for @colorStudioDesc.
  ///
  /// In ar, this message translates to:
  /// **'مربع التشبع/السطوع، شريط الطيف، ألوان جاهزة، أو HEX — ثم تأكيد.'**
  String get colorStudioDesc;

  /// No description provided for @appIdentityTitle.
  ///
  /// In ar, this message translates to:
  /// **'هوية التطبيق'**
  String get appIdentityTitle;

  /// No description provided for @appIdentityDesc.
  ///
  /// In ar, this message translates to:
  /// **'هنا تضبط ألوان الهوية وشكل الزوايا ليُطبَّق على كامل التطبيق. سياسات الدفع والمخزون والخصم تبقى في «إعدادات نقطة البيع» من القائمة الجانبية.'**
  String get appIdentityDesc;

  /// No description provided for @saleControlTitle.
  ///
  /// In ar, this message translates to:
  /// **'تحكّم مركزي بالبيع'**
  String get saleControlTitle;

  /// No description provided for @saleControlDesc.
  ///
  /// In ar, this message translates to:
  /// **'فعّل أو عطّل طرق الدفع والحقول المالية دون تعديل الكود — مناسب للسياسات المتغيرة أو أجهزة نقطة بيع مخصصة. المظهر يُضبط منفصل.'**
  String get saleControlDesc;

  /// No description provided for @printSettingsSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ إعدادات الطباعة'**
  String get printSettingsSaved;

  /// No description provided for @printSettingsSaveError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحفظ: {error}'**
  String printSettingsSaveError(Object error);

  /// No description provided for @testCustomerName.
  ///
  /// In ar, this message translates to:
  /// **'عميل تجريبي'**
  String get testCustomerName;

  /// No description provided for @testProductName.
  ///
  /// In ar, this message translates to:
  /// **'صنف 1'**
  String get testProductName;

  /// No description provided for @testEmployee.
  ///
  /// In ar, this message translates to:
  /// **'موظف'**
  String get testEmployee;

  /// No description provided for @testAddress.
  ///
  /// In ar, this message translates to:
  /// **'بغداد، شارع تجريبي'**
  String get testAddress;

  /// No description provided for @printingAndDocsTitle.
  ///
  /// In ar, this message translates to:
  /// **'الطباعة والمستندات'**
  String get printingAndDocsTitle;

  /// No description provided for @saveButton.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get saveButton;

  /// No description provided for @salesReceiptSection.
  ///
  /// In ar, this message translates to:
  /// **'إيصال البيع'**
  String get salesReceiptSection;

  /// No description provided for @defaultPaperSize.
  ///
  /// In ar, this message translates to:
  /// **'حجم الورق الافتراضي'**
  String get defaultPaperSize;

  /// No description provided for @thermal58mm.
  ///
  /// In ar, this message translates to:
  /// **'حراري 58 مم (ضيق)'**
  String get thermal58mm;

  /// No description provided for @thermal80mm.
  ///
  /// In ar, this message translates to:
  /// **'حراري 80 مم (قياسي)'**
  String get thermal80mm;

  /// No description provided for @thermal76x297mm.
  ///
  /// In ar, this message translates to:
  /// **'حراري 76×297 مم (إيصال)'**
  String get thermal76x297mm;

  /// No description provided for @showTransactionBarcodeTitle.
  ///
  /// In ar, this message translates to:
  /// **'إظهار باركود رقم العملية'**
  String get showTransactionBarcodeTitle;

  /// No description provided for @transactionBarcodeDesc.
  ///
  /// In ar, this message translates to:
  /// **'CODE128 — يقرأه الماسح الضوئي بسرعة'**
  String get transactionBarcodeDesc;

  /// No description provided for @showQrCodeTitle.
  ///
  /// In ar, this message translates to:
  /// **'إظهار رمز QR'**
  String get showQrCodeTitle;

  /// No description provided for @qrCodeDesc.
  ///
  /// In ar, this message translates to:
  /// **'ملخص نصي للعميل — يُوصى به للضريبة والمراجعة'**
  String get qrCodeDesc;

  /// No description provided for @qrBuyerAddressTitle.
  ///
  /// In ar, this message translates to:
  /// **'QR لعنوان المشتري (خرائط)'**
  String get qrBuyerAddressTitle;

  /// No description provided for @qrBuyerAddressDesc.
  ///
  /// In ar, this message translates to:
  /// **'عند التفعيل يظهر حقل «عنوان المشتري» في البيع ويُطبَع QR يفتح الموقع على Google Maps'**
  String get qrBuyerAddressDesc;

  /// No description provided for @headerLineLabel.
  ///
  /// In ar, this message translates to:
  /// **'سطر فوق عنوان «إيصال بيع» (اسم المتجر)'**
  String get headerLineLabel;

  /// No description provided for @footerLineLabel.
  ///
  /// In ar, this message translates to:
  /// **'تذييل إضافي (هاتف، شروط، شكر)'**
  String get footerLineLabel;

  /// No description provided for @barcodeLabelsSection.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات الباركود والملصقات'**
  String get barcodeLabelsSection;

  /// No description provided for @storeDataTitle.
  ///
  /// In ar, this message translates to:
  /// **'بيانات المتجر'**
  String get storeDataTitle;

  /// No description provided for @storeDataDesc.
  ///
  /// In ar, this message translates to:
  /// **'من الإعدادات — لاحقاً يمكن ربط اسم المتجر تلقائياً بالإيصال'**
  String get storeDataDesc;

  /// No description provided for @storeDataHint.
  ///
  /// In ar, this message translates to:
  /// **'استخدم حقل «اسم المتجر» أعلاه أو بطاقة بيانات المتجر من الإعدادات'**
  String get storeDataHint;

  /// No description provided for @previewReceiptButton.
  ///
  /// In ar, this message translates to:
  /// **'معاينة إيصال تجريبي'**
  String get previewReceiptButton;

  /// No description provided for @saveSettingsButton.
  ///
  /// In ar, this message translates to:
  /// **'حفظ الإعدادات في قاعدة البيانات'**
  String get saveSettingsButton;

  /// No description provided for @printSettingsDesc.
  ///
  /// In ar, this message translates to:
  /// **'البيانات تُخزَّن في جدول print_settings وتُطبَّق تلقائياً عند طباعة إيصال البيع بعد كل عملية.'**
  String get printSettingsDesc;

  /// No description provided for @professionalPrintCenter.
  ///
  /// In ar, this message translates to:
  /// **'مركز الطباعة الاحترافي'**
  String get professionalPrintCenter;

  /// No description provided for @printCenterDesc.
  ///
  /// In ar, this message translates to:
  /// **'ضبط أحجام الحرارية وA4، محتوى الإيصال، والربط مع المخزون — كل ذلك محفوظ محلياً.'**
  String get printCenterDesc;

  /// No description provided for @close.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get close;

  /// No description provided for @loading.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ التحميل...'**
  String get loading;

  /// No description provided for @actions.
  ///
  /// In ar, this message translates to:
  /// **'إجراءات'**
  String get actions;

  /// No description provided for @confirm.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get confirm;

  /// No description provided for @yes.
  ///
  /// In ar, this message translates to:
  /// **'نعم'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In ar, this message translates to:
  /// **'لا'**
  String get no;

  /// No description provided for @next.
  ///
  /// In ar, this message translates to:
  /// **'التالي'**
  String get next;

  /// No description provided for @total.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get total;

  /// No description provided for @count.
  ///
  /// In ar, this message translates to:
  /// **'العدد'**
  String get count;

  /// No description provided for @status.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get status;

  /// No description provided for @date.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get date;

  /// No description provided for @amount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ'**
  String get amount;

  /// No description provided for @number.
  ///
  /// In ar, this message translates to:
  /// **'رقم'**
  String get number;

  /// No description provided for @details.
  ///
  /// In ar, this message translates to:
  /// **'التفاصيل'**
  String get details;

  /// No description provided for @name.
  ///
  /// In ar, this message translates to:
  /// **'الاسم'**
  String get name;

  /// No description provided for @email.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get email;

  /// No description provided for @notes.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظات'**
  String get notes;

  /// No description provided for @add.
  ///
  /// In ar, this message translates to:
  /// **'إضافة'**
  String get add;

  /// No description provided for @remove.
  ///
  /// In ar, this message translates to:
  /// **'إزالة'**
  String get remove;

  /// No description provided for @show.
  ///
  /// In ar, this message translates to:
  /// **'إظهار'**
  String get show;

  /// No description provided for @hide.
  ///
  /// In ar, this message translates to:
  /// **'إخفاء'**
  String get hide;

  /// No description provided for @filter.
  ///
  /// In ar, this message translates to:
  /// **'تصفية'**
  String get filter;

  /// No description provided for @sort.
  ///
  /// In ar, this message translates to:
  /// **'ترتيب'**
  String get sort;

  /// No description provided for @refresh.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get refresh;

  /// No description provided for @export.
  ///
  /// In ar, this message translates to:
  /// **'تصدير'**
  String get export;

  /// No description provided for @print.
  ///
  /// In ar, this message translates to:
  /// **'طباعة'**
  String get print;

  /// No description provided for @copy.
  ///
  /// In ar, this message translates to:
  /// **'نسخ'**
  String get copy;

  /// No description provided for @active.
  ///
  /// In ar, this message translates to:
  /// **'نشط'**
  String get active;

  /// No description provided for @inactive.
  ///
  /// In ar, this message translates to:
  /// **'غير نشط'**
  String get inactive;

  /// No description provided for @pending.
  ///
  /// In ar, this message translates to:
  /// **'معلق'**
  String get pending;

  /// No description provided for @completed.
  ///
  /// In ar, this message translates to:
  /// **'مكتمل'**
  String get completed;

  /// No description provided for @cancelled.
  ///
  /// In ar, this message translates to:
  /// **'ملغي'**
  String get cancelled;

  /// No description provided for @paid.
  ///
  /// In ar, this message translates to:
  /// **'مدفوع'**
  String get paid;

  /// No description provided for @unpaid.
  ///
  /// In ar, this message translates to:
  /// **'غير مدفوع'**
  String get unpaid;

  /// No description provided for @cash.
  ///
  /// In ar, this message translates to:
  /// **'نقداً'**
  String get cash;

  /// No description provided for @credit.
  ///
  /// In ar, this message translates to:
  /// **'آجل'**
  String get credit;

  /// No description provided for @installment.
  ///
  /// In ar, this message translates to:
  /// **'تقسيط'**
  String get installment;

  /// No description provided for @delivery.
  ///
  /// In ar, this message translates to:
  /// **'توصيل'**
  String get delivery;

  /// No description provided for @customersTitle.
  ///
  /// In ar, this message translates to:
  /// **'العملاء'**
  String get customersTitle;

  /// No description provided for @customersManagement.
  ///
  /// In ar, this message translates to:
  /// **'إدارة العملاء الكاملة'**
  String get customersManagement;

  /// No description provided for @addCustomer.
  ///
  /// In ar, this message translates to:
  /// **'إضافة عميل'**
  String get addCustomer;

  /// No description provided for @addNewCustomer.
  ///
  /// In ar, this message translates to:
  /// **'إضافة عميل جديد'**
  String get addNewCustomer;

  /// No description provided for @editCustomer.
  ///
  /// In ar, this message translates to:
  /// **'تعديل بيانات العميل'**
  String get editCustomer;

  /// No description provided for @deleteCustomer.
  ///
  /// In ar, this message translates to:
  /// **'حذف عميل'**
  String get deleteCustomer;

  /// No description provided for @confirmDeleteCustomer.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد حذف \"{name}\"؟'**
  String confirmDeleteCustomer(Object name);

  /// No description provided for @customerNameHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل اسم العميل'**
  String get customerNameHint;

  /// No description provided for @phoneHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل رقم الهاتف'**
  String get phoneHint;

  /// No description provided for @emailHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل البريد الإلكتروني'**
  String get emailHint;

  /// No description provided for @addressLabel.
  ///
  /// In ar, this message translates to:
  /// **'العنوان'**
  String get addressLabel;

  /// No description provided for @addressHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل العنوان'**
  String get addressHint;

  /// No description provided for @totalCustomers.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي العملاء'**
  String get totalCustomers;

  /// No description provided for @customerCount.
  ///
  /// In ar, this message translates to:
  /// **'العملاء: {count}'**
  String customerCount(Object count);

  /// No description provided for @noCustomersYet.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد عملاء بعد'**
  String get noCustomersYet;

  /// No description provided for @addFirstCustomer.
  ///
  /// In ar, this message translates to:
  /// **'إضافة أول عميل'**
  String get addFirstCustomer;

  /// No description provided for @loyaltyPoints.
  ///
  /// In ar, this message translates to:
  /// **'نقاط الولاء'**
  String get loyaltyPoints;

  /// No description provided for @customerSince.
  ///
  /// In ar, this message translates to:
  /// **'عميل منذ'**
  String get customerSince;

  /// No description provided for @lastActivity.
  ///
  /// In ar, this message translates to:
  /// **'آخر نشاط'**
  String get lastActivity;

  /// No description provided for @totalPurchases.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المشتريات'**
  String get totalPurchases;

  /// No description provided for @contactAdded.
  ///
  /// In ar, this message translates to:
  /// **'تمت إضافة جهة الاتصال'**
  String get contactAdded;

  /// No description provided for @contactDeleted.
  ///
  /// In ar, this message translates to:
  /// **'تم حذف جهة الاتصال'**
  String get contactDeleted;

  /// No description provided for @contactUpdated.
  ///
  /// In ar, this message translates to:
  /// **'تم تحديث جهة الاتصال'**
  String get contactUpdated;

  /// No description provided for @addContact.
  ///
  /// In ar, this message translates to:
  /// **'إضافة جهة اتصال'**
  String get addContact;

  /// No description provided for @deleteContact.
  ///
  /// In ar, this message translates to:
  /// **'حذف جهة اتصال'**
  String get deleteContact;

  /// No description provided for @confirmDeleteContact.
  ///
  /// In ar, this message translates to:
  /// **'حذف \"{name}\" من النظام؟'**
  String confirmDeleteContact(Object name);

  /// No description provided for @contactType.
  ///
  /// In ar, this message translates to:
  /// **'نوع جهة الاتصال'**
  String get contactType;

  /// No description provided for @primaryContact.
  ///
  /// In ar, this message translates to:
  /// **'جهة اتصال أساسية'**
  String get primaryContact;

  /// No description provided for @secondaryContact.
  ///
  /// In ar, this message translates to:
  /// **'جهة اتصال ثانوية'**
  String get secondaryContact;

  /// No description provided for @financialDetails.
  ///
  /// In ar, this message translates to:
  /// **'التفاصيل المالية'**
  String get financialDetails;

  /// No description provided for @fullDebtScreen.
  ///
  /// In ar, this message translates to:
  /// **'شاشة الديون الكاملة (تسديد وتفاصيل)'**
  String get fullDebtScreen;

  /// No description provided for @creditSales.
  ///
  /// In ar, this message translates to:
  /// **'مبيعات بالأجل (دين)'**
  String get creditSales;

  /// No description provided for @creditSalesDesc.
  ///
  /// In ar, this message translates to:
  /// **'كل فاتورة مرتبطة بإيصال البيع — اضغط لعرض التفاصيل'**
  String get creditSalesDesc;

  /// No description provided for @noCreditInvoices.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير «آجل» مربوطة بهذا العميل. استخدم البيع بالدين مع اختيار العميل من'**
  String get noCreditInvoices;

  /// No description provided for @installments.
  ///
  /// In ar, this message translates to:
  /// **'التقسيط'**
  String get installments;

  /// No description provided for @installmentSales.
  ///
  /// In ar, this message translates to:
  /// **'مبيعات التقسيط'**
  String get installmentSales;

  /// No description provided for @installmentSalesDesc.
  ///
  /// In ar, this message translates to:
  /// **'فواتير ذات خطط تقسيط — اضغط لعرض تفاصيل الخطة'**
  String get installmentSalesDesc;

  /// No description provided for @noInstallmentInvoices.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير تقسيط مربوطة بهذا العميل.'**
  String get noInstallmentInvoices;

  /// No description provided for @totalDebt.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الدين'**
  String get totalDebt;

  /// No description provided for @totalPaid.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المدفوع'**
  String get totalPaid;

  /// No description provided for @remainingBalance.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد المتبقي'**
  String get remainingBalance;

  /// No description provided for @settleDebt.
  ///
  /// In ar, this message translates to:
  /// **'تسديد الدين'**
  String get settleDebt;

  /// No description provided for @debtHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل الديون'**
  String get debtHistory;

  /// No description provided for @paymentHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل المدفوعات'**
  String get paymentHistory;

  /// No description provided for @saleReceipt.
  ///
  /// In ar, this message translates to:
  /// **'إيصال البيع'**
  String get saleReceipt;

  /// No description provided for @viewDetails.
  ///
  /// In ar, this message translates to:
  /// **'عرض التفاصيل'**
  String get viewDetails;

  /// No description provided for @amountDue.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المستحق'**
  String get amountDue;

  /// No description provided for @amountPaid.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المدفوع'**
  String get amountPaid;

  /// No description provided for @dueDate.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الاستحقاق'**
  String get dueDate;

  /// No description provided for @paymentDate.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الدفع'**
  String get paymentDate;

  /// No description provided for @paymentMethod.
  ///
  /// In ar, this message translates to:
  /// **'طريقة الدفع'**
  String get paymentMethod;

  /// No description provided for @remaining.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي'**
  String get remaining;

  /// No description provided for @settled.
  ///
  /// In ar, this message translates to:
  /// **'مسدّد'**
  String get settled;

  /// No description provided for @overdue.
  ///
  /// In ar, this message translates to:
  /// **'متأخر'**
  String get overdue;

  /// No description provided for @dueSoon.
  ///
  /// In ar, this message translates to:
  /// **'قريب الاستحقاق'**
  String get dueSoon;

  /// No description provided for @customerForm.
  ///
  /// In ar, this message translates to:
  /// **'نموذج العميل'**
  String get customerForm;

  /// No description provided for @saveCustomer.
  ///
  /// In ar, this message translates to:
  /// **'حفظ العميل'**
  String get saveCustomer;

  /// No description provided for @updateCustomer.
  ///
  /// In ar, this message translates to:
  /// **'تحديث العميل'**
  String get updateCustomer;

  /// No description provided for @customerSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ العميل بنجاح'**
  String get customerSaved;

  /// No description provided for @customerUpdated.
  ///
  /// In ar, this message translates to:
  /// **'تم تحديث العميل بنجاح'**
  String get customerUpdated;

  /// No description provided for @customerDeleted.
  ///
  /// In ar, this message translates to:
  /// **'تم حذف العميل بنجاح'**
  String get customerDeleted;

  /// No description provided for @failedToSave.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحفظ: {error}'**
  String failedToSave(Object error);

  /// No description provided for @phoneRequired.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهاتف مطلوب'**
  String get phoneRequired;

  /// No description provided for @emailInvalid.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني غير صالح'**
  String get emailInvalid;

  /// No description provided for @duplicatePhone.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهاتف هذا موجود بالفعل'**
  String get duplicatePhone;

  /// No description provided for @duplicateEmail.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني هذا موجود بالفعل'**
  String get duplicateEmail;

  /// No description provided for @addAnotherPhone.
  ///
  /// In ar, this message translates to:
  /// **'إضافة رقم آخر'**
  String get addAnotherPhone;

  /// No description provided for @loyaltyPointsLabel.
  ///
  /// In ar, this message translates to:
  /// **'نقاط الولاء'**
  String get loyaltyPointsLabel;

  /// No description provided for @customerType.
  ///
  /// In ar, this message translates to:
  /// **'نوع العميل'**
  String get customerType;

  /// No description provided for @retail.
  ///
  /// In ar, this message translates to:
  /// **'تجزئة'**
  String get retail;

  /// No description provided for @wholesale.
  ///
  /// In ar, this message translates to:
  /// **'جملة'**
  String get wholesale;

  /// No description provided for @lastUpdateNow.
  ///
  /// In ar, this message translates to:
  /// **'آخر تحديث: الآن تقريباً — F5'**
  String get lastUpdateNow;

  /// No description provided for @lastUpdateHours.
  ///
  /// In ar, this message translates to:
  /// **'آخر تحديث: منذ {hours} ساعة تقريباً — F5'**
  String lastUpdateHours(Object hours);

  /// No description provided for @lastUpdateMinutes.
  ///
  /// In ar, this message translates to:
  /// **'آخر تحديث: منذ {minutes} دقيقة — F5'**
  String lastUpdateMinutes(Object minutes);

  /// No description provided for @totalCustomersCount.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي العملاء: {total} · معروض: {displayed}'**
  String totalCustomersCount(Object displayed, Object total);

  /// No description provided for @closePanelEsc.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق اللوحة (Esc)'**
  String get closePanelEsc;

  /// No description provided for @salesByCash.
  ///
  /// In ar, this message translates to:
  /// **'مبيعات نقدية'**
  String get salesByCash;

  /// No description provided for @salesByCredit.
  ///
  /// In ar, this message translates to:
  /// **'مبيعات آجلة'**
  String get salesByCredit;

  /// No description provided for @totalSales.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المبيعات'**
  String get totalSales;

  /// No description provided for @currentBalance.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد الحالي'**
  String get currentBalance;

  /// No description provided for @reportsTitle.
  ///
  /// In ar, this message translates to:
  /// **'التقارير'**
  String get reportsTitle;

  /// No description provided for @reportsSections.
  ///
  /// In ar, this message translates to:
  /// **'أقسام التقارير'**
  String get reportsSections;

  /// No description provided for @defaultPeriod.
  ///
  /// In ar, this message translates to:
  /// **'الفترة الافتراضية عند فتح التقارير'**
  String get defaultPeriod;

  /// No description provided for @exportToExcel.
  ///
  /// In ar, this message translates to:
  /// **'تصدير (نسخ لـ Excel)'**
  String get exportToExcel;

  /// No description provided for @printReport.
  ///
  /// In ar, this message translates to:
  /// **'طباعة تقرير فترة'**
  String get printReport;

  /// No description provided for @salesOverview.
  ///
  /// In ar, this message translates to:
  /// **'نظرة عامة على المبيعات'**
  String get salesOverview;

  /// No description provided for @financialGauges.
  ///
  /// In ar, this message translates to:
  /// **'مؤشرات أداء رئيسية'**
  String get financialGauges;

  /// No description provided for @gaugesConsistent.
  ///
  /// In ar, this message translates to:
  /// **'متسقة مع نسب المخطط الدائري والجدول'**
  String get gaugesConsistent;

  /// No description provided for @gaugesRelative.
  ///
  /// In ar, this message translates to:
  /// **'توزيع نسبي يوضح أين تذهب كل وحدة إيراد'**
  String get gaugesRelative;

  /// No description provided for @reportSettings.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات التقارير'**
  String get reportSettings;

  /// No description provided for @reportPreferences.
  ///
  /// In ar, this message translates to:
  /// **'فترة افتراضية وتفضيلات'**
  String get reportPreferences;

  /// No description provided for @periodApplied.
  ///
  /// In ar, this message translates to:
  /// **'عند الحفظ تُحدَّث الفترة الحالية وتُخزَّن للمرّة القادمة'**
  String get periodApplied;

  /// No description provided for @currentPeriod.
  ///
  /// In ar, this message translates to:
  /// **'الفترة المختارة:'**
  String get currentPeriod;

  /// No description provided for @yesterday.
  ///
  /// In ar, this message translates to:
  /// **'أمس'**
  String get yesterday;

  /// No description provided for @thisWeek.
  ///
  /// In ar, this message translates to:
  /// **'هذا الأسبوع'**
  String get thisWeek;

  /// No description provided for @thisMonth.
  ///
  /// In ar, this message translates to:
  /// **'هذا الشهر'**
  String get thisMonth;

  /// No description provided for @thisYear.
  ///
  /// In ar, this message translates to:
  /// **'هذا العام'**
  String get thisYear;

  /// No description provided for @lastQuarter.
  ///
  /// In ar, this message translates to:
  /// **'آخر ربع سنة'**
  String get lastQuarter;

  /// No description provided for @dailyTrend.
  ///
  /// In ar, this message translates to:
  /// **'اتجاه يومي'**
  String get dailyTrend;

  /// No description provided for @weekly.
  ///
  /// In ar, this message translates to:
  /// **'أسبوعي'**
  String get weekly;

  /// No description provided for @monthly.
  ///
  /// In ar, this message translates to:
  /// **'شهري'**
  String get monthly;

  /// No description provided for @quarterly.
  ///
  /// In ar, this message translates to:
  /// **'ربع سنوي'**
  String get quarterly;

  /// No description provided for @yearly.
  ///
  /// In ar, this message translates to:
  /// **'سنوي'**
  String get yearly;

  /// No description provided for @custom.
  ///
  /// In ar, this message translates to:
  /// **'مخصص'**
  String get custom;

  /// No description provided for @noData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات'**
  String get noData;

  /// No description provided for @noDataPeriod.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات في هذه الفترة'**
  String get noDataPeriod;

  /// No description provided for @noDailyData.
  ///
  /// In ar, this message translates to:
  /// **'لا بيانات يومية في هذه الفترة'**
  String get noDailyData;

  /// No description provided for @noTrendData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات اتجاه عبر الزمن لعرضها'**
  String get noTrendData;

  /// No description provided for @noMetricsData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات لعرض المقاييس'**
  String get noMetricsData;

  /// No description provided for @tryDateRange.
  ///
  /// In ar, this message translates to:
  /// **'جرّب تغيير نطاق التاريخ أو الفلتر'**
  String get tryDateRange;

  /// No description provided for @filterNone.
  ///
  /// In ar, this message translates to:
  /// **'لا نتائج'**
  String get filterNone;

  /// No description provided for @clearSearch.
  ///
  /// In ar, this message translates to:
  /// **'امسح البحث (×) أو انتقل لتبويب «الكل» أو غيّر التبويب أعلاه'**
  String get clearSearch;

  /// No description provided for @searchDescriptionCategory.
  ///
  /// In ar, this message translates to:
  /// **'بحث (وصف أو فئة)'**
  String get searchDescriptionCategory;

  /// No description provided for @searchCustomerProductPlan.
  ///
  /// In ar, this message translates to:
  /// **'بحث: عميل، منتج، رقم خطة، رقم فاتورة...'**
  String get searchCustomerProductPlan;

  /// No description provided for @salesInvoices.
  ///
  /// In ar, this message translates to:
  /// **'الفواتير'**
  String get salesInvoices;

  /// No description provided for @salesOnly.
  ///
  /// In ar, this message translates to:
  /// **'مبيعات (غير مرتجع)'**
  String get salesOnly;

  /// No description provided for @dailySales.
  ///
  /// In ar, this message translates to:
  /// **'مبيعات يومية ضمن الفترة'**
  String get dailySales;

  /// No description provided for @totalRevenue.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الإيراد'**
  String get totalRevenue;

  /// No description provided for @totalSalesCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد الفواتير'**
  String get totalSalesCount;

  /// No description provided for @totalReturns.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المرتجعات'**
  String get totalReturns;

  /// No description provided for @totalExpenses.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المصروفات'**
  String get totalExpenses;

  /// No description provided for @netSales.
  ///
  /// In ar, this message translates to:
  /// **'صافي المبيعات'**
  String get netSales;

  /// No description provided for @netAfterExpenses.
  ///
  /// In ar, this message translates to:
  /// **'صافي بعد المصروفات'**
  String get netAfterExpenses;

  /// No description provided for @netApprox.
  ///
  /// In ar, this message translates to:
  /// **'صافي تقريبي'**
  String get netApprox;

  /// No description provided for @netApproxDesc.
  ///
  /// In ar, this message translates to:
  /// **'صافي تقريبي (بيع − مرتجع)'**
  String get netApproxDesc;

  /// No description provided for @netSalesPeriod.
  ///
  /// In ar, this message translates to:
  /// **'صافي مبيعات الفترة'**
  String get netSalesPeriod;

  /// No description provided for @salesVsExpenses.
  ///
  /// In ar, this message translates to:
  /// **'المبيعات مقابل المصروفات — اتجاه يومي'**
  String get salesVsExpenses;

  /// No description provided for @paymentTypeTrend.
  ///
  /// In ar, this message translates to:
  /// **'اتجاه أنواع الدفع عبر الزمن'**
  String get paymentTypeTrend;

  /// No description provided for @categoryStacked.
  ///
  /// In ar, this message translates to:
  /// **'اتجاه الفئات المكدّس عبر الزمن'**
  String get categoryStacked;

  /// No description provided for @employeeSalesTrend.
  ///
  /// In ar, this message translates to:
  /// **'اتجاه مبيعات الموظفين عبر الزمن'**
  String get employeeSalesTrend;

  /// No description provided for @salesByPaymentType.
  ///
  /// In ar, this message translates to:
  /// **'توزيع المبيعات حسب نوع الدفع'**
  String get salesByPaymentType;

  /// No description provided for @salesByCategory.
  ///
  /// In ar, this message translates to:
  /// **'توزيع المبيعات حسب الفئة'**
  String get salesByCategory;

  /// No description provided for @salesByCustomer.
  ///
  /// In ar, this message translates to:
  /// **'توزيع المبيعات على العملاء'**
  String get salesByCustomer;

  /// No description provided for @salesByEmployee.
  ///
  /// In ar, this message translates to:
  /// **'توزيع المبيعات على الموظفين'**
  String get salesByEmployee;

  /// No description provided for @topProducts.
  ///
  /// In ar, this message translates to:
  /// **'أكثر الأصناف مبيعاً'**
  String get topProducts;

  /// No description provided for @topProductsByRevenue.
  ///
  /// In ar, this message translates to:
  /// **'أكثر الأصناف مبيعاً (حسب إيراد البنود)'**
  String get topProductsByRevenue;

  /// No description provided for @topCustomers.
  ///
  /// In ar, this message translates to:
  /// **'أكثر المشترين'**
  String get topCustomers;

  /// No description provided for @topCustomersByPurchase.
  ///
  /// In ar, this message translates to:
  /// **'أكثر العملاء شراءً (حسب اسم الفاتورة)'**
  String get topCustomersByPurchase;

  /// No description provided for @topEmployees.
  ///
  /// In ar, this message translates to:
  /// **'الموظفون'**
  String get topEmployees;

  /// No description provided for @topEmployeesBySales.
  ///
  /// In ar, this message translates to:
  /// **'ترتيب حسب إجمالي المبيعات المسجّلة على الفواتير'**
  String get topEmployeesBySales;

  /// No description provided for @topCategories.
  ///
  /// In ar, this message translates to:
  /// **'أعلى الفئات إيراداً'**
  String get topCategories;

  /// No description provided for @topCategory.
  ///
  /// In ar, this message translates to:
  /// **'أعلى فئة: {name}'**
  String topCategory(Object name);

  /// No description provided for @moreItems.
  ///
  /// In ar, this message translates to:
  /// **'آخرون'**
  String get moreItems;

  /// No description provided for @reportAccuracyNote.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظات الدقّة'**
  String get reportAccuracyNote;

  /// No description provided for @marginAccuracyDesc.
  ///
  /// In ar, this message translates to:
  /// **'نسبة تغطية التكلفة — كلما ارتفعت زادت الدقة'**
  String get marginAccuracyDesc;

  /// No description provided for @fixedCostRatio.
  ///
  /// In ar, this message translates to:
  /// **'نسبة السطور ذات التكلفة المثبّتة من الإجمالي'**
  String get fixedCostRatio;

  /// No description provided for @costFixedAtSale.
  ///
  /// In ar, this message translates to:
  /// **'مثبّتة وقت البيع: {amount}'**
  String costFixedAtSale(Object amount);

  /// No description provided for @noCostZeros.
  ///
  /// In ar, this message translates to:
  /// **'بدون تكلفة (تُعامَل 0): {count}'**
  String noCostZeros(Object count);

  /// No description provided for @expenseAnalysis.
  ///
  /// In ar, this message translates to:
  /// **'تحليلات'**
  String get expenseAnalysis;

  /// No description provided for @expenseBreakdown.
  ///
  /// In ar, this message translates to:
  /// **'تحليلات المصروفات ضمن الفترة'**
  String get expenseBreakdown;

  /// No description provided for @topExpenses.
  ///
  /// In ar, this message translates to:
  /// **'أدنى 10 منتجات ربحاً (مراجعة تسعير)'**
  String get topExpenses;

  /// No description provided for @lowMarginProducts.
  ///
  /// In ar, this message translates to:
  /// **'منتجات هامشها منخفض أو سالب'**
  String get lowMarginProducts;

  /// No description provided for @lowMarginDesc.
  ///
  /// In ar, this message translates to:
  /// **'منتجات هامشها منخفض أو سالب — قد تحتاج مراجعة السعر أو التكلفة'**
  String get lowMarginDesc;

  /// No description provided for @customerBalances.
  ///
  /// In ar, this message translates to:
  /// **'أرصدة العملاء'**
  String get customerBalances;

  /// No description provided for @customerBalancesDesc.
  ///
  /// In ar, this message translates to:
  /// **'أرصدة مسجّلة في سجل العملاء'**
  String get customerBalancesDesc;

  /// No description provided for @installmentPlans.
  ///
  /// In ar, this message translates to:
  /// **'خطط التقسيط'**
  String get installmentPlans;

  /// No description provided for @installmentPlansDesc.
  ///
  /// In ar, this message translates to:
  /// **'خطط أقساط (فواتير ضمن الفترة)'**
  String get installmentPlansDesc;

  /// No description provided for @activePlans.
  ///
  /// In ar, this message translates to:
  /// **'خطط نشطة'**
  String get activePlans;

  /// No description provided for @noInstallmentPlans.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد خطط تقسيط'**
  String get noInstallmentPlans;

  /// No description provided for @noInstallmentSearch.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد خطط ضمن البحث أو التصفية الحالية'**
  String get noInstallmentSearch;

  /// No description provided for @salesFlowItems.
  ///
  /// In ar, this message translates to:
  /// **'فواتير ومبيعات (قيود مرتبطة بفاتورة)'**
  String get salesFlowItems;

  /// No description provided for @salesInvoicesReturns.
  ///
  /// In ar, this message translates to:
  /// **'فواتير / مرتجعات'**
  String get salesInvoicesReturns;

  /// No description provided for @filteredPeriod.
  ///
  /// In ar, this message translates to:
  /// **'الفترة: {from} → {to}'**
  String filteredPeriod(Object from, Object to);

  /// No description provided for @filteredPlansCount.
  ///
  /// In ar, this message translates to:
  /// **'القائمة: {filtered} من {total} خطة'**
  String filteredPlansCount(Object filtered, Object total);

  /// No description provided for @employeePerformance.
  ///
  /// In ar, this message translates to:
  /// **'جدول — أداء التسجيل حسب اسم الموظف على الفاتورة'**
  String get employeePerformance;

  /// No description provided for @employeePerformanceDesc.
  ///
  /// In ar, this message translates to:
  /// **'فواتير مسجّلة باسم الموظف (حقل الفاتورة)'**
  String get employeePerformanceDesc;

  /// No description provided for @loyaltySummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص نقاط وخصومات الولاء'**
  String get loyaltySummary;

  /// No description provided for @loyaltyGranted.
  ///
  /// In ar, this message translates to:
  /// **'نقاط ممنوحة (مجموع النقاط المسجّلة على الفواتير)'**
  String get loyaltyGranted;

  /// No description provided for @loyaltyRedeemed.
  ///
  /// In ar, this message translates to:
  /// **'نقاط ممنوحة (مجموع النقاط المسجّلة على الفواتير)'**
  String get loyaltyRedeemed;

  /// No description provided for @loyaltyDiscounts.
  ///
  /// In ar, this message translates to:
  /// **'خصومات ولاء على الفواتير'**
  String get loyaltyDiscounts;

  /// No description provided for @bestSales.
  ///
  /// In ar, this message translates to:
  /// **'تحليل وهامش'**
  String get bestSales;

  /// No description provided for @bestSalesDesc.
  ///
  /// In ar, this message translates to:
  /// **'تحليلات تفاصيل البضاعة والهامش والصافي'**
  String get bestSalesDesc;

  /// No description provided for @backToHome.
  ///
  /// In ar, this message translates to:
  /// **'العودة للرئيسية'**
  String get backToHome;

  /// No description provided for @selectEmployee.
  ///
  /// In ar, this message translates to:
  /// **'اختر موظفاً'**
  String get selectEmployee;

  /// No description provided for @selectCustomer.
  ///
  /// In ar, this message translates to:
  /// **'اختر عميلاً مسجّلاً'**
  String get selectCustomer;

  /// No description provided for @selectCustomerFromList.
  ///
  /// In ar, this message translates to:
  /// **'اختيار عميل من القائمة'**
  String get selectCustomerFromList;

  /// No description provided for @updateButton.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get updateButton;

  /// No description provided for @refreshButton.
  ///
  /// In ar, this message translates to:
  /// **'تحديث (F5)'**
  String get refreshButton;

  /// No description provided for @refreshData.
  ///
  /// In ar, this message translates to:
  /// **'تحديث البيانات'**
  String get refreshData;

  /// No description provided for @noItemsRecorded.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أصناف مسجّلة في الفاتورة'**
  String get noItemsRecorded;

  /// No description provided for @salesOnlySection.
  ///
  /// In ar, this message translates to:
  /// **'هذا القسم يعرض المبيعات فقط: نقدي/دين/تقسيط/توصيل'**
  String get salesOnlySection;

  /// No description provided for @thankYou.
  ///
  /// In ar, this message translates to:
  /// **'شكرًا لاستخدام Maarey'**
  String get thankYou;

  /// No description provided for @cashTitle.
  ///
  /// In ar, this message translates to:
  /// **'الصندوق'**
  String get cashTitle;

  /// No description provided for @cashDrawer.
  ///
  /// In ar, this message translates to:
  /// **'الصندوق'**
  String get cashDrawer;

  /// No description provided for @openShift.
  ///
  /// In ar, this message translates to:
  /// **'فتح الوردية'**
  String get openShift;

  /// No description provided for @closeShift.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق الوردية'**
  String get closeShift;

  /// No description provided for @shiftDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل الوردية'**
  String get shiftDetails;

  /// No description provided for @shiftIdentity.
  ///
  /// In ar, this message translates to:
  /// **'هوية الوردية والجلسة'**
  String get shiftIdentity;

  /// No description provided for @openTime.
  ///
  /// In ar, this message translates to:
  /// **'وقت الفتح'**
  String get openTime;

  /// No description provided for @closeTime.
  ///
  /// In ar, this message translates to:
  /// **'وقت الإغلاق'**
  String get closeTime;

  /// No description provided for @declaredOnOpen.
  ///
  /// In ar, this message translates to:
  /// **'النقد المُعلَن عند الفتح (الجرد)'**
  String get declaredOnOpen;

  /// No description provided for @declaredAfterWithdrawal.
  ///
  /// In ar, this message translates to:
  /// **'النقد المُعلَن في الصندوق بعد السحب'**
  String get declaredAfterWithdrawal;

  /// No description provided for @systemBalanceOpen.
  ///
  /// In ar, this message translates to:
  /// **'رصيد النظام عند فتح الوردية'**
  String get systemBalanceOpen;

  /// No description provided for @systemBalanceClose.
  ///
  /// In ar, this message translates to:
  /// **'رصيد النظام عند الإغلاق'**
  String get systemBalanceClose;

  /// No description provided for @withdrawnOnClose.
  ///
  /// In ar, this message translates to:
  /// **'المسحوب عند الإغلاق'**
  String get withdrawnOnClose;

  /// No description provided for @pendingDeclared.
  ///
  /// In ar, this message translates to:
  /// **'المُعلَن متبقيًّا في الصندوق'**
  String get pendingDeclared;

  /// No description provided for @shiftMovements.
  ///
  /// In ar, this message translates to:
  /// **'الحركات'**
  String get shiftMovements;

  /// No description provided for @totalMovements.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي ما يظهر من حركات في الصندوق لهذه المجموعة: {count} حركة'**
  String totalMovements(Object count);

  /// No description provided for @inflow.
  ///
  /// In ar, this message translates to:
  /// **'وارد'**
  String get inflow;

  /// No description provided for @outflow.
  ///
  /// In ar, this message translates to:
  /// **'صادر'**
  String get outflow;

  /// No description provided for @inflowLabel.
  ///
  /// In ar, this message translates to:
  /// **'وارد (إدخال)'**
  String get inflowLabel;

  /// No description provided for @outflowLabel.
  ///
  /// In ar, this message translates to:
  /// **'صادر (إخراج)'**
  String get outflowLabel;

  /// No description provided for @inflowLineByLine.
  ///
  /// In ar, this message translates to:
  /// **'الوارد — سطر بسطر'**
  String get inflowLineByLine;

  /// No description provided for @outflowLineByLine.
  ///
  /// In ar, this message translates to:
  /// **'الصادر — سطر بسطر'**
  String get outflowLineByLine;

  /// No description provided for @manualEntry.
  ///
  /// In ar, this message translates to:
  /// **'قيد يدوي'**
  String get manualEntry;

  /// No description provided for @manualDeposit.
  ///
  /// In ar, this message translates to:
  /// **'إيداع يدوي'**
  String get manualDeposit;

  /// No description provided for @manualWithdrawal.
  ///
  /// In ar, this message translates to:
  /// **'سحب يدوي'**
  String get manualWithdrawal;

  /// No description provided for @affectsCashbox.
  ///
  /// In ar, this message translates to:
  /// **'أثر على الصندوق'**
  String get affectsCashbox;

  /// No description provided for @cashSales.
  ///
  /// In ar, this message translates to:
  /// **'بيع نقدي'**
  String get cashSales;

  /// No description provided for @creditSalesLabel.
  ///
  /// In ar, this message translates to:
  /// **'دين'**
  String get creditSalesLabel;

  /// No description provided for @noOutflowMovements.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد حركات صادر في هذه المجموعة'**
  String get noOutflowMovements;

  /// No description provided for @noInflowMovements.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد حركات وارد في هذه المجموعة'**
  String get noInflowMovements;

  /// No description provided for @noLinkedMovements.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد في هذه المجموعة حركات مرتبطة برقم فاتورة'**
  String get noLinkedMovements;

  /// No description provided for @otherMovements.
  ///
  /// In ar, this message translates to:
  /// **'حركات أخرى'**
  String get otherMovements;

  /// No description provided for @movement.
  ///
  /// In ar, this message translates to:
  /// **'حركة'**
  String get movement;

  /// No description provided for @printReceipt.
  ///
  /// In ar, this message translates to:
  /// **'طباعة إيصال'**
  String get printReceipt;

  /// No description provided for @depositEntry.
  ///
  /// In ar, this message translates to:
  /// **'إيداع'**
  String get depositEntry;

  /// No description provided for @withdrawalEntry.
  ///
  /// In ar, this message translates to:
  /// **'سحب'**
  String get withdrawalEntry;

  /// No description provided for @cashSummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الصندوق'**
  String get cashSummary;

  /// No description provided for @summaryInflowOutflow.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الوارد والصادر (هذه القائمة)'**
  String get summaryInflowOutflow;

  /// No description provided for @loyaltyRange.
  ///
  /// In ar, this message translates to:
  /// **'ولاء (ضمن الفترة)'**
  String get loyaltyRange;

  /// No description provided for @noShift.
  ///
  /// In ar, this message translates to:
  /// **'بدون وردية · {count} حركة'**
  String noShift(Object count);

  /// No description provided for @invoiceAttached.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة مرفقة'**
  String get invoiceAttached;

  /// No description provided for @linkedInvoice.
  ///
  /// In ar, this message translates to:
  /// **'الفاتورة المرتبطة'**
  String get linkedInvoice;

  /// No description provided for @expensesTitle.
  ///
  /// In ar, this message translates to:
  /// **'المصروفات'**
  String get expensesTitle;

  /// No description provided for @addExpense.
  ///
  /// In ar, this message translates to:
  /// **'إضافة مصروف'**
  String get addExpense;

  /// No description provided for @editExpense.
  ///
  /// In ar, this message translates to:
  /// **'تعديل مصروف'**
  String get editExpense;

  /// No description provided for @deleteExpense.
  ///
  /// In ar, this message translates to:
  /// **'حذف المصروف؟'**
  String get deleteExpense;

  /// No description provided for @confirmDeleteExpense.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد حذف هذا المصروف؟ لا يمكن التراجع'**
  String get confirmDeleteExpense;

  /// No description provided for @expenseCategory.
  ///
  /// In ar, this message translates to:
  /// **'الفئة *'**
  String get expenseCategory;

  /// No description provided for @expenseDescription.
  ///
  /// In ar, this message translates to:
  /// **'الوصف'**
  String get expenseDescription;

  /// No description provided for @expenseAmount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ (Fdj)'**
  String get expenseAmount;

  /// No description provided for @expenseDate.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get expenseDate;

  /// No description provided for @expenseStatus.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get expenseStatus;

  /// No description provided for @expensePaid.
  ///
  /// In ar, this message translates to:
  /// **'مدفوع'**
  String get expensePaid;

  /// No description provided for @expenseUnpaid.
  ///
  /// In ar, this message translates to:
  /// **'غير مدفوع'**
  String get expenseUnpaid;

  /// No description provided for @expenseReceipt.
  ///
  /// In ar, this message translates to:
  /// **'إيصال مصروف'**
  String get expenseReceipt;

  /// No description provided for @expenseReport.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة تقرير المصروفات'**
  String get expenseReport;

  /// No description provided for @printExpenseReport.
  ///
  /// In ar, this message translates to:
  /// **'طباعة تقرير مصروفات'**
  String get printExpenseReport;

  /// No description provided for @expensesWithinPeriod.
  ///
  /// In ar, this message translates to:
  /// **'المصروفات ضمن الفترة'**
  String get expensesWithinPeriod;

  /// No description provided for @allCategories.
  ///
  /// In ar, this message translates to:
  /// **'كل الفئات'**
  String get allCategories;

  /// No description provided for @selectCategory.
  ///
  /// In ar, this message translates to:
  /// **'اختر فئة المصروف'**
  String get selectCategory;

  /// No description provided for @selectOtherCategory.
  ///
  /// In ar, this message translates to:
  /// **'اختيار فئة أخرى'**
  String get selectOtherCategory;

  /// No description provided for @categoryOptions.
  ///
  /// In ar, this message translates to:
  /// **'خيارات القسم'**
  String get categoryOptions;

  /// No description provided for @showCategoryDescription.
  ///
  /// In ar, this message translates to:
  /// **'عرض وصف القسم'**
  String get showCategoryDescription;

  /// No description provided for @copyCategoryName.
  ///
  /// In ar, this message translates to:
  /// **'نسخ اسم القسم'**
  String get copyCategoryName;

  /// No description provided for @categoryCopied.
  ///
  /// In ar, this message translates to:
  /// **'تم نسخ اسم القسم: {name}'**
  String categoryCopied(Object name);

  /// No description provided for @todayExpense.
  ///
  /// In ar, this message translates to:
  /// **'مصروف اليوم'**
  String get todayExpense;

  /// No description provided for @monthlyRecurring.
  ///
  /// In ar, this message translates to:
  /// **'مصروف شهري متكرر'**
  String get monthlyRecurring;

  /// No description provided for @recurringDay.
  ///
  /// In ar, this message translates to:
  /// **'تكرار شهري'**
  String get recurringDay;

  /// No description provided for @selectMonthDay.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأيام (1–365)'**
  String get selectMonthDay;

  /// No description provided for @duplicateRecurring.
  ///
  /// In ar, this message translates to:
  /// **'تكرار شهري'**
  String get duplicateRecurring;

  /// No description provided for @expenseSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم تسجيل المصروف بنجاح'**
  String get expenseSaved;

  /// No description provided for @expenseUpdated.
  ///
  /// In ar, this message translates to:
  /// **'تم تحديث المصروف بنجاح'**
  String get expenseUpdated;

  /// No description provided for @expenseSaveError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحفظ: {error}'**
  String expenseSaveError(Object error);

  /// No description provided for @attachmentOptional.
  ///
  /// In ar, this message translates to:
  /// **'إرفاق صورة الفاتورة (اختياري)'**
  String get attachmentOptional;

  /// No description provided for @imageAttached.
  ///
  /// In ar, this message translates to:
  /// **'تم إرفاق صورة الفاتورة'**
  String get imageAttached;

  /// No description provided for @imageError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر اختيار الصورة'**
  String get imageError;

  /// No description provided for @noExpensesPeriod.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مصروفات ضمن هذه الفترة'**
  String get noExpensesPeriod;

  /// No description provided for @noCategoryData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات.'**
  String get noCategoryData;

  /// No description provided for @selectCategoryAmount.
  ///
  /// In ar, this message translates to:
  /// **'يرجى اختيار فئة وإدخال مبلغ صحيح.'**
  String get selectCategoryAmount;

  /// No description provided for @installmentsTitle.
  ///
  /// In ar, this message translates to:
  /// **'الأقساط'**
  String get installmentsTitle;

  /// No description provided for @addInstallmentPlan.
  ///
  /// In ar, this message translates to:
  /// **'إضافة خطة تقسيط'**
  String get addInstallmentPlan;

  /// No description provided for @planDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل خطة التقسيط'**
  String get planDetails;

  /// No description provided for @installmentSchedule.
  ///
  /// In ar, this message translates to:
  /// **'جدول الأقساط'**
  String get installmentSchedule;

  /// No description provided for @installmentSettings.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات تقسيط'**
  String get installmentSettings;

  /// No description provided for @paymentSchedule.
  ///
  /// In ar, this message translates to:
  /// **'الجدولة وتواريخ الاستحقاق'**
  String get paymentSchedule;

  /// No description provided for @dueDates.
  ///
  /// In ar, this message translates to:
  /// **'الاستحقاق'**
  String get dueDates;

  /// No description provided for @monthlyPaymentLabel.
  ///
  /// In ar, this message translates to:
  /// **'القسط الشهري المقترح'**
  String get monthlyPaymentLabel;

  /// No description provided for @interestRateLabel.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الفائدة'**
  String get interestRateLabel;

  /// No description provided for @downPaymentLabel.
  ///
  /// In ar, this message translates to:
  /// **'المقدّم'**
  String get downPaymentLabel;

  /// No description provided for @downPaymentRequired.
  ///
  /// In ar, this message translates to:
  /// **'إلزام مقدّم دفع لفاتورة التقسيط'**
  String get downPaymentRequired;

  /// No description provided for @advanceAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المموّل'**
  String get advanceAmountLabel;

  /// No description provided for @minAdvancePercentLabel.
  ///
  /// In ar, this message translates to:
  /// **'أقل نسبة مقدّم من إجمالي الفاتورة (%)'**
  String get minAdvancePercentLabel;

  /// No description provided for @minAdvancePercentDesc.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 10 تعني ألا يقل المقدّم عن 10٪ من الإجمالي'**
  String get minAdvancePercentDesc;

  /// No description provided for @useCalendarMonthsLabel.
  ///
  /// In ar, this message translates to:
  /// **'استخدام أشهر تقويمية لتواريخ الاستحقاق'**
  String get useCalendarMonthsLabel;

  /// No description provided for @useCalendarMonthsDesc.
  ///
  /// In ar, this message translates to:
  /// **'مفعّل: إضافة شهر تقويمي من تاريخ المرجع. معطّل: تقريب 30 يوماً لكل فترة.'**
  String get useCalendarMonthsDesc;

  /// No description provided for @referenceDateLabel.
  ///
  /// In ar, this message translates to:
  /// **'مرجع الجدولة (بداية العدّ)'**
  String get referenceDateLabel;

  /// No description provided for @fromInvoiceDateLabel.
  ///
  /// In ar, this message translates to:
  /// **'من تاريخ الفاتورة'**
  String get fromInvoiceDateLabel;

  /// No description provided for @fromSessionOpenLabel.
  ///
  /// In ar, this message translates to:
  /// **'من فتح الجلسة في النظام'**
  String get fromSessionOpenLabel;

  /// No description provided for @linkCustomerLabel.
  ///
  /// In ar, this message translates to:
  /// **'ربط العميل'**
  String get linkCustomerLabel;

  /// No description provided for @selectRegisteredCustomer.
  ///
  /// In ar, this message translates to:
  /// **'اختر عميلاً مسجّلاً'**
  String get selectRegisteredCustomer;

  /// No description provided for @customerBalanceLabel.
  ///
  /// In ar, this message translates to:
  /// **'رصيد العميل المسجّل: {amount}'**
  String customerBalanceLabel(Object amount);

  /// No description provided for @planCreatedAtLabel.
  ///
  /// In ar, this message translates to:
  /// **'تم الإنشاء: {date}'**
  String planCreatedAtLabel(Object date);

  /// No description provided for @totalInstallmentsLabel.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأقساط'**
  String get totalInstallmentsLabel;

  /// No description provided for @remainingInstallmentsLabel.
  ///
  /// In ar, this message translates to:
  /// **'عدد أقساط المتبقي'**
  String get remainingInstallmentsLabel;

  /// No description provided for @paidAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'المدفوع'**
  String get paidAmountLabel;

  /// No description provided for @remainingAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي'**
  String get remainingAmountLabel;

  /// No description provided for @nextInstallmentLabel.
  ///
  /// In ar, this message translates to:
  /// **'القسط التالي'**
  String get nextInstallmentLabel;

  /// No description provided for @nextDueLabel.
  ///
  /// In ar, this message translates to:
  /// **'القسط التالي: {amount} — {date}'**
  String nextDueLabel(Object amount, Object date);

  /// No description provided for @firstDueLabel.
  ///
  /// In ar, this message translates to:
  /// **'أول استحقاق: {date}'**
  String firstDueLabel(Object date);

  /// No description provided for @installmentPaidLabel.
  ///
  /// In ar, this message translates to:
  /// **'سُدد: {date}'**
  String installmentPaidLabel(Object date);

  /// No description provided for @installmentPendingLabel.
  ///
  /// In ar, this message translates to:
  /// **'المعلق'**
  String get installmentPendingLabel;

  /// No description provided for @installmentOverdueLabel.
  ///
  /// In ar, this message translates to:
  /// **'متأخرة'**
  String get installmentOverdueLabel;

  /// No description provided for @installmentCompletedLabel.
  ///
  /// In ar, this message translates to:
  /// **'مكتملة'**
  String get installmentCompletedLabel;

  /// No description provided for @settleInstallmentLabel.
  ///
  /// In ar, this message translates to:
  /// **'تسديد قسط'**
  String get settleInstallmentLabel;

  /// No description provided for @settleInstallmentDesc.
  ///
  /// In ar, this message translates to:
  /// **'يجب تسديد قيمة القسط كاملة ({amount})'**
  String settleInstallmentDesc(Object amount);

  /// No description provided for @cantRescheduleLabel.
  ///
  /// In ar, this message translates to:
  /// **'لا يمكن إعادة جدولة الأقساط بعد تسديد قسط من هذه الخطة'**
  String get cantRescheduleLabel;

  /// No description provided for @planAlreadyExistsLabel.
  ///
  /// In ar, this message translates to:
  /// **'الخطة مسجّلة بالفعل وتظهر تحت «خطط التقسيط»'**
  String get planAlreadyExistsLabel;

  /// No description provided for @planCreatedLabel.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ الجدول وربط العميل'**
  String get planCreatedLabel;

  /// No description provided for @scheduleSavedLabel.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ جدول الأقساط'**
  String get scheduleSavedLabel;

  /// No description provided for @planLoadErrorLabel.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل خطة التقسيط'**
  String get planLoadErrorLabel;

  /// No description provided for @paymentRecordErrorLabel.
  ///
  /// In ar, this message translates to:
  /// **'تعذر التسجيل (قد يكون القسط مدفوعاً)'**
  String get paymentRecordErrorLabel;

  /// No description provided for @planIdLabel.
  ///
  /// In ar, this message translates to:
  /// **'خطة #{id}'**
  String planIdLabel(Object id);

  /// No description provided for @installmentNumberLabel.
  ///
  /// In ar, this message translates to:
  /// **'القسط #{index}'**
  String installmentNumberLabel(Object index);

  /// No description provided for @planMonthsLabel.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأشهر: {count}'**
  String planMonthsLabel(Object count);

  /// No description provided for @planSuggestedMonthlyLabel.
  ///
  /// In ar, this message translates to:
  /// **'القسط الشهري المقترح: {amount}'**
  String planSuggestedMonthlyLabel(Object amount);

  /// No description provided for @planFinancedAtSaleLabel.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المموّل: {amount}'**
  String planFinancedAtSaleLabel(Object amount);

  /// No description provided for @planInterestAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'قيمة الفائدة: {amount}'**
  String planInterestAmountLabel(Object amount);

  /// No description provided for @planProgressLabel.
  ///
  /// In ar, this message translates to:
  /// **'تقدّم السداد: {paid} / {total}'**
  String planProgressLabel(Object paid, Object total);

  /// No description provided for @noRemainingAfterAdvanceLabel.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد مبلغ متبقٍ للتقسيط بعد المقدم'**
  String get noRemainingAfterAdvanceLabel;

  /// No description provided for @calendarScheduleLabel.
  ///
  /// In ar, this message translates to:
  /// **'جدولة: شهر تقويمي × {step} لكل قسط من المرجع'**
  String calendarScheduleLabel(Object step);

  /// No description provided for @roundScheduleLabel.
  ///
  /// In ar, this message translates to:
  /// **'جدولة: تقريب 30 يوماً × {step} لكل قسط من المرجع'**
  String roundScheduleLabel(Object step);

  /// No description provided for @dueDayLabel.
  ///
  /// In ar, this message translates to:
  /// **'يُستحق يوم'**
  String get dueDayLabel;

  /// No description provided for @dueDayDesc.
  ///
  /// In ar, this message translates to:
  /// **'يحدده البائع من التقويم (اتفاق)'**
  String get dueDayDesc;

  /// No description provided for @installmentSettingsSavedLabel.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ إعدادات التقسيط'**
  String get installmentSettingsSavedLabel;

  /// No description provided for @requiredInstallmentsLabel.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأقساط يجب أن يكون 1 على الأقل'**
  String get requiredInstallmentsLabel;

  /// No description provided for @validAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'قيمة غير صالحة'**
  String get validAmountLabel;

  /// No description provided for @debtCollectionLabel.
  ///
  /// In ar, this message translates to:
  /// **'تحصيل دين'**
  String get debtCollectionLabel;

  /// No description provided for @supplierPaymentLabel.
  ///
  /// In ar, this message translates to:
  /// **'دفع مورد'**
  String get supplierPaymentLabel;

  /// No description provided for @salaryLabel.
  ///
  /// In ar, this message translates to:
  /// **'رواتب'**
  String get salaryLabel;

  /// No description provided for @rentLabel.
  ///
  /// In ar, this message translates to:
  /// **'إيجار'**
  String get rentLabel;

  /// No description provided for @waterLabel.
  ///
  /// In ar, this message translates to:
  /// **'ماء'**
  String get waterLabel;

  /// No description provided for @electricityLabel.
  ///
  /// In ar, this message translates to:
  /// **'كهرباء'**
  String get electricityLabel;

  /// No description provided for @otherLabel.
  ///
  /// In ar, this message translates to:
  /// **'آخرون'**
  String get otherLabel;

  /// No description provided for @updateAction.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get updateAction;

  /// No description provided for @saveAction.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get saveAction;

  /// No description provided for @printAction.
  ///
  /// In ar, this message translates to:
  /// **'طباعة'**
  String get printAction;

  /// No description provided for @retryAction.
  ///
  /// In ar, this message translates to:
  /// **'إعادة المحاولة'**
  String get retryAction;

  /// No description provided for @reloadFromDb.
  ///
  /// In ar, this message translates to:
  /// **'إعادة التحميل من القاعدة'**
  String get reloadFromDb;

  /// No description provided for @amountLabel.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ'**
  String get amountLabel;

  /// No description provided for @employeeLabel.
  ///
  /// In ar, this message translates to:
  /// **'الموظف'**
  String get employeeLabel;

  /// No description provided for @paidLabel.
  ///
  /// In ar, this message translates to:
  /// **'المدفوع'**
  String get paidLabel;

  /// No description provided for @remainingLabel.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي'**
  String get remainingLabel;

  /// No description provided for @salesTitle.
  ///
  /// In ar, this message translates to:
  /// **'المبيعات'**
  String get salesTitle;

  /// No description provided for @installmentSettingsTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات تقسيط'**
  String get installmentSettingsTitle;

  /// No description provided for @createPlan.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء خطة'**
  String get createPlan;

  /// No description provided for @accuracyNotes.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظات الدقّة'**
  String get accuracyNotes;

  /// No description provided for @addEntry.
  ///
  /// In ar, this message translates to:
  /// **'إضافة القيد'**
  String get addEntry;

  /// No description provided for @advanceAndTerms.
  ///
  /// In ar, this message translates to:
  /// **'المقدّم وشروط البيع'**
  String get advanceAndTerms;

  /// No description provided for @advanceFirstPayment.
  ///
  /// In ar, this message translates to:
  /// **'مقدم / دفعة أولى'**
  String get advanceFirstPayment;

  /// No description provided for @advancePayment.
  ///
  /// In ar, this message translates to:
  /// **'المقدّم'**
  String get advancePayment;

  /// No description provided for @advancePercentExample.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 10 تعني ألا يقل المقدّم عن 10٪ من الإجمالي.'**
  String get advancePercentExample;

  /// No description provided for @advancePercentRange.
  ///
  /// In ar, this message translates to:
  /// **'نسبة المقدّم يجب أن تكون بين 0 و 100'**
  String get advancePercentRange;

  /// No description provided for @affectedCashBox.
  ///
  /// In ar, this message translates to:
  /// **'أثر على الصندوق'**
  String get affectedCashBox;

  /// No description provided for @amountAddedAtOpen.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المُضاف عند الفتح'**
  String get amountAddedAtOpen;

  /// No description provided for @amountIQD.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ (Fdj)'**
  String get amountIQD;

  /// No description provided for @analysisAndMargin.
  ///
  /// In ar, this message translates to:
  /// **'تحليل وهامش'**
  String get analysisAndMargin;

  /// No description provided for @analytics.
  ///
  /// In ar, this message translates to:
  /// **'تحليلات'**
  String get analytics;

  /// No description provided for @apply.
  ///
  /// In ar, this message translates to:
  /// **'تطبيق'**
  String get apply;

  /// No description provided for @approxNet.
  ///
  /// In ar, this message translates to:
  /// **'صافي تقريبي (بيع − مرتجع)'**
  String get approxNet;

  /// No description provided for @attachInvoiceImageOptional.
  ///
  /// In ar, this message translates to:
  /// **'إرفاق صورة الفاتورة (اختياري)'**
  String get attachInvoiceImageOptional;

  /// No description provided for @balance.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد'**
  String get balance;

  /// No description provided for @beneficiary.
  ///
  /// In ar, this message translates to:
  /// **'المستفيد'**
  String get beneficiary;

  /// No description provided for @bottom10ProfitProducts.
  ///
  /// In ar, this message translates to:
  /// **'أدنى 10 منتجات ربحاً (مراجعة تسعير)'**
  String get bottom10ProfitProducts;

  /// No description provided for @calendarMonthsExplanation.
  ///
  /// In ar, this message translates to:
  /// **'مفعّل: إضافة شهر تقويمي من تاريخ المرجع. معطّل: تقريب 30 يوماً لكل فترة.'**
  String get calendarMonthsExplanation;

  /// No description provided for @cannotRescheduleAfterPayment.
  ///
  /// In ar, this message translates to:
  /// **'لا يمكن إعادة جدولة الأقساط بعد تسديد قسط من هذه الخطة.'**
  String get cannotRescheduleAfterPayment;

  /// No description provided for @cashBox.
  ///
  /// In ar, this message translates to:
  /// **'الصندوق'**
  String get cashBox;

  /// No description provided for @cashSale.
  ///
  /// In ar, this message translates to:
  /// **'بيع'**
  String get cashSale;

  /// No description provided for @category.
  ///
  /// In ar, this message translates to:
  /// **'الفئة'**
  String get category;

  /// No description provided for @categoryRequired.
  ///
  /// In ar, this message translates to:
  /// **'الفئة *'**
  String get categoryRequired;

  /// No description provided for @change.
  ///
  /// In ar, this message translates to:
  /// **'تغيير'**
  String get change;

  /// No description provided for @changeOrRemoveAnytime.
  ///
  /// In ar, this message translates to:
  /// **'يمكنك تغييرها أو إزالتها في أي وقت.'**
  String get changeOrRemoveAnytime;

  /// No description provided for @choose.
  ///
  /// In ar, this message translates to:
  /// **'اختيار'**
  String get choose;

  /// No description provided for @chooseOtherCategory.
  ///
  /// In ar, this message translates to:
  /// **'اختيار فئة أخرى'**
  String get chooseOtherCategory;

  /// No description provided for @clearSearchOrChangeTab.
  ///
  /// In ar, this message translates to:
  /// **'امسح البحث (×) أو انتقل لتبويب «الكل» أو غيّر التبويب أعلاه.'**
  String get clearSearchOrChangeTab;

  /// No description provided for @closeForm.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق النموذج؟'**
  String get closeForm;

  /// No description provided for @closeFormConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد إغلاق النموذج؟ البيانات لن تُحفظ'**
  String get closeFormConfirm;

  /// No description provided for @cogs.
  ///
  /// In ar, this message translates to:
  /// **'تكلفة البضاعة المباعة (COGS)'**
  String get cogs;

  /// No description provided for @controlAdvanceRequirements.
  ///
  /// In ar, this message translates to:
  /// **'التحكم في إلزامية المقدّم وأقل نسبة مسموحة من إجمالي الفاتورة.'**
  String get controlAdvanceRequirements;

  /// No description provided for @copySectionName.
  ///
  /// In ar, this message translates to:
  /// **'نسخ اسم القسم'**
  String get copySectionName;

  /// No description provided for @cost.
  ///
  /// In ar, this message translates to:
  /// **'تكلفة'**
  String get cost;

  /// No description provided for @countByEntryType.
  ///
  /// In ar, this message translates to:
  /// **'تعداد حسب نوع القيد'**
  String get countByEntryType;

  /// No description provided for @customer.
  ///
  /// In ar, this message translates to:
  /// **'العميل'**
  String get customer;

  /// No description provided for @customerBalanceList.
  ///
  /// In ar, this message translates to:
  /// **'قائمة العملاء (رصيد دائن على المحل)'**
  String get customerBalanceList;

  /// No description provided for @daily.
  ///
  /// In ar, this message translates to:
  /// **'يومي'**
  String get daily;

  /// No description provided for @dailySalesInRange.
  ///
  /// In ar, this message translates to:
  /// **'مبيعات يومية ضمن الفترة'**
  String get dailySalesInRange;

  /// No description provided for @dashboardTitle.
  ///
  /// In ar, this message translates to:
  /// **'لوحة تنفيذية'**
  String get dashboardTitle;

  /// No description provided for @dateRange.
  ///
  /// In ar, this message translates to:
  /// **'نطاق الفترة'**
  String get dateRange;

  /// No description provided for @dayCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأيام (1–365)'**
  String get dayCount;

  /// No description provided for @debtorCustomerCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد العملاء المدينين'**
  String get debtorCustomerCount;

  /// No description provided for @debts.
  ///
  /// In ar, this message translates to:
  /// **'الديون'**
  String get debts;

  /// No description provided for @declaredCashAfterWithdrawal.
  ///
  /// In ar, this message translates to:
  /// **'النقد المُعلَن في الصندوق بعد السحب'**
  String get declaredCashAfterWithdrawal;

  /// No description provided for @declaredCashAtOpen.
  ///
  /// In ar, this message translates to:
  /// **'النقد المُعلَن عند الفتح (الجرد)'**
  String get declaredCashAtOpen;

  /// No description provided for @defaultInstallmentCountRange.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأقساط الافتراضي بين 1 و 120'**
  String get defaultInstallmentCountRange;

  /// No description provided for @defaultInstallmentInterestRate.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الفائدة الافتراضية في بيع التقسيط (%)'**
  String get defaultInstallmentInterestRate;

  /// No description provided for @defaultInterestRange.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الفائدة الافتراضية في البيع بين 0 و 100'**
  String get defaultInterestRange;

  /// No description provided for @defaultPeriodAndPreferences.
  ///
  /// In ar, this message translates to:
  /// **'فترة افتراضية وتفضيلات'**
  String get defaultPeriodAndPreferences;

  /// No description provided for @defaultRemainingInstallments.
  ///
  /// In ar, this message translates to:
  /// **'عدد أقساط المتبقي (افتراضي عند إنشاء الخطة)'**
  String get defaultRemainingInstallments;

  /// No description provided for @defaultReportPeriod.
  ///
  /// In ar, this message translates to:
  /// **'الفترة الافتراضية عند فتح التقارير'**
  String get defaultReportPeriod;

  /// No description provided for @deleteExpenseConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد حذف هذا المصروف؟ لا يمكن التراجع.'**
  String get deleteExpenseConfirm;

  /// No description provided for @descriptionOptional.
  ///
  /// In ar, this message translates to:
  /// **'الوصف (اختياري)'**
  String get descriptionOptional;

  /// No description provided for @dueDay.
  ///
  /// In ar, this message translates to:
  /// **'يُستحق يوم'**
  String get dueDay;

  /// No description provided for @employeeBeneficiary.
  ///
  /// In ar, this message translates to:
  /// **'الموظف (المستفيد)'**
  String get employeeBeneficiary;

  /// No description provided for @employeeRecorder.
  ///
  /// In ar, this message translates to:
  /// **'الموظف / المسجّل'**
  String get employeeRecorder;

  /// No description provided for @employees.
  ///
  /// In ar, this message translates to:
  /// **'الموظفون'**
  String get employees;

  /// No description provided for @enterAmountGreaterThanZero.
  ///
  /// In ar, this message translates to:
  /// **'أدخل مبلغاً أكبر من صفر'**
  String get enterAmountGreaterThanZero;

  /// No description provided for @enterInstallmentCount.
  ///
  /// In ar, this message translates to:
  /// **'أدخل عدد الأقساط'**
  String get enterInstallmentCount;

  /// No description provided for @enterMovementDescription.
  ///
  /// In ar, this message translates to:
  /// **'أدخل وصفاً للحركة'**
  String get enterMovementDescription;

  /// No description provided for @entry.
  ///
  /// In ar, this message translates to:
  /// **'إدخال'**
  String get entry;

  /// No description provided for @everyMonth.
  ///
  /// In ar, this message translates to:
  /// **'من كل شهر'**
  String get everyMonth;

  /// No description provided for @exit.
  ///
  /// In ar, this message translates to:
  /// **'إخراج'**
  String get exit;

  /// No description provided for @expenseCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد المصروفات'**
  String get expenseCount;

  /// No description provided for @expenseReason.
  ///
  /// In ar, this message translates to:
  /// **'سبب الصرف (يُطبع مع الإيصال)'**
  String get expenseReason;

  /// No description provided for @expenseReportInvoice.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة تقرير المصروفات'**
  String get expenseReportInvoice;

  /// No description provided for @expenses.
  ///
  /// In ar, this message translates to:
  /// **'مصروفات'**
  String get expenses;

  /// No description provided for @exportExcel.
  ///
  /// In ar, this message translates to:
  /// **'تصدير (نسخ Excel)'**
  String get exportExcel;

  /// No description provided for @failedToLoadInstallmentPlan.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل خطة التقسيط.'**
  String get failedToLoadInstallmentPlan;

  /// No description provided for @firstDueReferenceDate.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ مرجع أول قسط (عند فتح شاشة الخطة)'**
  String get firstDueReferenceDate;

  /// No description provided for @fullTransparency.
  ///
  /// In ar, this message translates to:
  /// **'شفافية كاملة — هذه هي القواعد المعتمدة'**
  String get fullTransparency;

  /// No description provided for @futureFeatures.
  ///
  /// In ar, this message translates to:
  /// **'مستقبلاً: تصدير PDF/Excel، جدولة تقارير، وصلاحيات عرض حسب الدور.'**
  String get futureFeatures;

  /// No description provided for @grossMargin.
  ///
  /// In ar, this message translates to:
  /// **'الهامش الإجمالي'**
  String get grossMargin;

  /// No description provided for @history.
  ///
  /// In ar, this message translates to:
  /// **'السجل'**
  String get history;

  /// No description provided for @howMarginCalculated.
  ///
  /// In ar, this message translates to:
  /// **'كيف يُحسب الهامش؟'**
  String get howMarginCalculated;

  /// No description provided for @imageSelectionFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر اختيار الصورة.'**
  String get imageSelectionFailed;

  /// No description provided for @inbound.
  ///
  /// In ar, this message translates to:
  /// **'وارد'**
  String get inbound;

  /// No description provided for @inboundEntry.
  ///
  /// In ar, this message translates to:
  /// **'الوارد (إدخال)'**
  String get inboundEntry;

  /// No description provided for @inboundLineByLine.
  ///
  /// In ar, this message translates to:
  /// **'الوارد — سطر بسطر'**
  String get inboundLineByLine;

  /// No description provided for @inboundOutboundSummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الوارد والصادر (هذه القائمة)'**
  String get inboundOutboundSummary;

  /// No description provided for @inboundTotal.
  ///
  /// In ar, this message translates to:
  /// **'الوارد'**
  String get inboundTotal;

  /// No description provided for @indicatorsAndPeriod.
  ///
  /// In ar, this message translates to:
  /// **'مؤشرات وفترة'**
  String get indicatorsAndPeriod;

  /// No description provided for @installmentPeriodMethod.
  ///
  /// In ar, this message translates to:
  /// **'فترة الأقساط، طريقة احتساب الشهر، ومرجع أول تاريخ استحقاق.'**
  String get installmentPeriodMethod;

  /// No description provided for @installmentPeriodRange.
  ///
  /// In ar, this message translates to:
  /// **'الفترة بين الأقساط: بين 1 و 24 شهراً'**
  String get installmentPeriodRange;

  /// No description provided for @installmentPlanDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل خطة التقسيط'**
  String get installmentPlanDetails;

  /// No description provided for @installmentPlansInPeriod.
  ///
  /// In ar, this message translates to:
  /// **'خطط أقساط (فواتير ضمن الفترة)'**
  String get installmentPlansInPeriod;

  /// No description provided for @installmentScheduleSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ جدول الأقساط'**
  String get installmentScheduleSaved;

  /// No description provided for @interestInfoAtSale.
  ///
  /// In ar, this message translates to:
  /// **'معلومات الفائدة (عند البيع)'**
  String get interestInfoAtSale;

  /// No description provided for @invalidValue.
  ///
  /// In ar, this message translates to:
  /// **'قيمة غير صالحة'**
  String get invalidValue;

  /// No description provided for @inventoryAndCashbox.
  ///
  /// In ar, this message translates to:
  /// **'الجرد والصندوق (سجل النظام)'**
  String get inventoryAndCashbox;

  /// No description provided for @inventoryWithdrawn.
  ///
  /// In ar, this message translates to:
  /// **'البضاعة المسحوبة من المخزون'**
  String get inventoryWithdrawn;

  /// No description provided for @invoiceCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد الفواتير'**
  String get invoiceCount;

  /// No description provided for @invoiceImageAttached.
  ///
  /// In ar, this message translates to:
  /// **'تم إرفاق صورة الفاتورة'**
  String get invoiceImageAttached;

  /// No description provided for @invoiceSummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الفاتورة'**
  String get invoiceSummary;

  /// No description provided for @invoicesAndSales.
  ///
  /// In ar, this message translates to:
  /// **'فواتير ومبيعات (قيود مرتبطة بفاتورة)'**
  String get invoicesAndSales;

  /// No description provided for @invoicesInMovements.
  ///
  /// In ar, this message translates to:
  /// **'الفواتير في هذه الحركات'**
  String get invoicesInMovements;

  /// No description provided for @invoicesReturns.
  ///
  /// In ar, this message translates to:
  /// **'فواتير / مرتجعات'**
  String get invoicesReturns;

  /// No description provided for @isExpensePrepaid.
  ///
  /// In ar, this message translates to:
  /// **'هل المصروف مدفوع مسبقاً؟'**
  String get isExpensePrepaid;

  /// No description provided for @item.
  ///
  /// In ar, this message translates to:
  /// **'الصنف'**
  String get item;

  /// No description provided for @itemLabel.
  ///
  /// In ar, this message translates to:
  /// **'صنف'**
  String get itemLabel;

  /// No description provided for @itemsSoldWithStock.
  ///
  /// In ar, this message translates to:
  /// **'الكميات المباعة من الفاتورة مع رصيد المخزون الحالي للمنتج المرتبط.'**
  String get itemsSoldWithStock;

  /// No description provided for @kpiPieDescription.
  ///
  /// In ar, this message translates to:
  /// **'بيتزا موحّدة للمؤشرات المالية الأساسية — مبيعات/مرتجعات/صافي'**
  String get kpiPieDescription;

  /// No description provided for @loadingInvoiceItems.
  ///
  /// In ar, this message translates to:
  /// **'جاري تحميل أصناف الفاتورة…'**
  String get loadingInvoiceItems;

  /// No description provided for @loyaltyInRange.
  ///
  /// In ar, this message translates to:
  /// **'ولاء (ضمن الفترة)'**
  String get loyaltyInRange;

  /// No description provided for @mainPerformanceIndicators.
  ///
  /// In ar, this message translates to:
  /// **'مؤشرات أداء رئيسية (Gauges)'**
  String get mainPerformanceIndicators;

  /// No description provided for @manualDepositReceipt.
  ///
  /// In ar, this message translates to:
  /// **'وصل الإيداع اليدوي (مجموع قيود الإيداع)'**
  String get manualDepositReceipt;

  /// No description provided for @manualDepositWithdrawalGroup.
  ///
  /// In ar, this message translates to:
  /// **'إيداع يدوي وسحب يدوي (هذه المجموعة)'**
  String get manualDepositWithdrawalGroup;

  /// No description provided for @manualDepositWithdrawalInShift.
  ///
  /// In ar, this message translates to:
  /// **'إيداع يدوي وسحب يدوي خلال الوردية'**
  String get manualDepositWithdrawalInShift;

  /// No description provided for @manualWithdrawalReceipt.
  ///
  /// In ar, this message translates to:
  /// **'وصل السحب اليدوي (مجموع قيود السحب)'**
  String get manualWithdrawalReceipt;

  /// No description provided for @margin.
  ///
  /// In ar, this message translates to:
  /// **'هامش'**
  String get margin;

  /// No description provided for @marginDataQuality.
  ///
  /// In ar, this message translates to:
  /// **'جودة بيانات الهامش (Coverage)'**
  String get marginDataQuality;

  /// No description provided for @marginPercent.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الهامش %'**
  String get marginPercent;

  /// No description provided for @minOneInstallment.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأقساط يجب أن يكون 1 على الأقل'**
  String get minOneInstallment;

  /// No description provided for @minimumAdvancePercent.
  ///
  /// In ar, this message translates to:
  /// **'أقل نسبة مقدّم من إجمالي الفاتورة (%)'**
  String get minimumAdvancePercent;

  /// No description provided for @miscExpenses.
  ///
  /// In ar, this message translates to:
  /// **'مصاريف متنوعة'**
  String get miscExpenses;

  /// No description provided for @monthlyRecurringExpense.
  ///
  /// In ar, this message translates to:
  /// **'مصروف شهري متكرر'**
  String get monthlyRecurringExpense;

  /// No description provided for @monthlyRepeat.
  ///
  /// In ar, this message translates to:
  /// **'تكرار شهري'**
  String get monthlyRepeat;

  /// No description provided for @more.
  ///
  /// In ar, this message translates to:
  /// **'المزيد'**
  String get more;

  /// No description provided for @movementsWithoutShift.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل الحركات (بدون وردية)'**
  String get movementsWithoutShift;

  /// No description provided for @netProfit.
  ///
  /// In ar, this message translates to:
  /// **'الصافي (هامش − مصروفات)'**
  String get netProfit;

  /// No description provided for @noComment.
  ///
  /// In ar, this message translates to:
  /// **'بدون تعليق - يُنصح بإضافة سبب الصرف.'**
  String get noComment;

  /// No description provided for @noDailyDataInPeriod.
  ///
  /// In ar, this message translates to:
  /// **'لا بيانات يومية في هذه الفترة'**
  String get noDailyDataInPeriod;

  /// No description provided for @noDataAvailable.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات'**
  String get noDataAvailable;

  /// No description provided for @noExpensesInPeriod.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مصروفات ضمن هذه الفترة'**
  String get noExpensesInPeriod;

  /// No description provided for @noInboundMovements.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد حركات وارد في هذه المجموعة.'**
  String get noInboundMovements;

  /// No description provided for @noInvoiceLinkedMovements.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد في هذه المجموعة حركات مرتبطة برقم فاتورة.'**
  String get noInvoiceLinkedMovements;

  /// No description provided for @noItemsInPeriod.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بنود في هذه الفترة.'**
  String get noItemsInPeriod;

  /// No description provided for @noLinkUseInvoiceName.
  ///
  /// In ar, this message translates to:
  /// **'بدون ربط — الاعتماد على الاسم من الفاتورة'**
  String get noLinkUseInvoiceName;

  /// No description provided for @noMovementsInGroup.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد حركات في هذه المجموعة.'**
  String get noMovementsInGroup;

  /// No description provided for @noOutboundMovements.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد حركات صادر في هذه المجموعة.'**
  String get noOutboundMovements;

  /// No description provided for @noPlansInCurrentFilter.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد خطط ضمن البحث أو التصفية الحالية'**
  String get noPlansInCurrentFilter;

  /// No description provided for @noSalesInPeriod.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مبيعات في هذه الفترة'**
  String get noSalesInPeriod;

  /// No description provided for @okay.
  ///
  /// In ar, this message translates to:
  /// **'حسنًا'**
  String get okay;

  /// No description provided for @open.
  ///
  /// In ar, this message translates to:
  /// **'مفتوحة'**
  String get open;

  /// No description provided for @openSection.
  ///
  /// In ar, this message translates to:
  /// **'فتح القسم'**
  String get openSection;

  /// No description provided for @option.
  ///
  /// In ar, this message translates to:
  /// **'الخيار'**
  String get option;

  /// No description provided for @optional.
  ///
  /// In ar, this message translates to:
  /// **'(اختياري)'**
  String get optional;

  /// No description provided for @others.
  ///
  /// In ar, this message translates to:
  /// **'آخرون'**
  String get others;

  /// No description provided for @outbound.
  ///
  /// In ar, this message translates to:
  /// **'صادر'**
  String get outbound;

  /// No description provided for @outboundExit.
  ///
  /// In ar, this message translates to:
  /// **'الصادر (إخراج)'**
  String get outboundExit;

  /// No description provided for @outboundLineByLine.
  ///
  /// In ar, this message translates to:
  /// **'الصادر — سطر بسطر'**
  String get outboundLineByLine;

  /// No description provided for @outboundTotal.
  ///
  /// In ar, this message translates to:
  /// **'الصادر'**
  String get outboundTotal;

  /// No description provided for @overdueInstallmentWarning.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه: يوجد قسط متأخر'**
  String get overdueInstallmentWarning;

  /// No description provided for @ownerOrProperty.
  ///
  /// In ar, this message translates to:
  /// **'اسم المالك أو العقار'**
  String get ownerOrProperty;

  /// No description provided for @paidCappedAtTotal.
  ///
  /// In ar, this message translates to:
  /// **'يُقصى «المدفوع» على إجمالي الخطة عند التعارض.'**
  String get paidCappedAtTotal;

  /// No description provided for @paidRemaining.
  ///
  /// In ar, this message translates to:
  /// **'المدفوع / المتبقي'**
  String get paidRemaining;

  /// No description provided for @payInstallment.
  ///
  /// In ar, this message translates to:
  /// **'تسديد قسط'**
  String get payInstallment;

  /// No description provided for @paymentProgress.
  ///
  /// In ar, this message translates to:
  /// **'تقدّم السداد'**
  String get paymentProgress;

  /// No description provided for @paymentType.
  ///
  /// In ar, this message translates to:
  /// **'نوع الدفع'**
  String get paymentType;

  /// No description provided for @paymentTypeRatio.
  ///
  /// In ar, this message translates to:
  /// **'نسبة كل نوع دفع من المبيعات'**
  String get paymentTypeRatio;

  /// No description provided for @paymentTypesAndReturns.
  ///
  /// In ar, this message translates to:
  /// **'أنواع الدفع والمرتجعات'**
  String get paymentTypesAndReturns;

  /// No description provided for @paymentTypesTrendOverTime.
  ///
  /// In ar, this message translates to:
  /// **'اتجاه أنواع الدفع عبر الزمن'**
  String get paymentTypesTrendOverTime;

  /// No description provided for @pendingLabel.
  ///
  /// In ar, this message translates to:
  /// **'المعلق'**
  String get pendingLabel;

  /// No description provided for @percentage.
  ///
  /// In ar, this message translates to:
  /// **'النسبة'**
  String get percentage;

  /// No description provided for @periodBetweenDueDates.
  ///
  /// In ar, this message translates to:
  /// **'فترة بين كل استحقاق وآخر (بالأشهر)'**
  String get periodBetweenDueDates;

  /// No description provided for @periodExplanation.
  ///
  /// In ar, this message translates to:
  /// **'1 = قسط شهري، 2 = كل شهرين، وهكذا.'**
  String get periodExplanation;

  /// No description provided for @periodNetSales.
  ///
  /// In ar, this message translates to:
  /// **'صافي مبيعات الفترة'**
  String get periodNetSales;

  /// No description provided for @periodPlans.
  ///
  /// In ar, this message translates to:
  /// **'خطط الفترة'**
  String get periodPlans;

  /// No description provided for @periodRevenue.
  ///
  /// In ar, this message translates to:
  /// **'إيراد الفترة'**
  String get periodRevenue;

  /// No description provided for @plan.
  ///
  /// In ar, this message translates to:
  /// **'الخطة'**
  String get plan;

  /// No description provided for @planAutoCreatedAfterSave.
  ///
  /// In ar, this message translates to:
  /// **'بعد حفظ فاتورة تقسيط تُنشأ الخطة تلقائياً وتظهر هنا.'**
  String get planAutoCreatedAfterSave;

  /// No description provided for @preferRegisteredCustomer.
  ///
  /// In ar, this message translates to:
  /// **'يُفضّل اختيار عميل مسجّل لتسهيل المتابعة والتقارير.'**
  String get preferRegisteredCustomer;

  /// No description provided for @printPeriodReport.
  ///
  /// In ar, this message translates to:
  /// **'طباعة تقرير فترة'**
  String get printPeriodReport;

  /// No description provided for @productsAndEstimatedMargin.
  ///
  /// In ar, this message translates to:
  /// **'منتجات وهامش تقديري'**
  String get productsAndEstimatedMargin;

  /// No description provided for @propertyOrEntity.
  ///
  /// In ar, this message translates to:
  /// **'اسم العقار / الجهة'**
  String get propertyOrEntity;

  /// No description provided for @recordingPerformance.
  ///
  /// In ar, this message translates to:
  /// **'أداء التسجيل'**
  String get recordingPerformance;

  /// No description provided for @recurring.
  ///
  /// In ar, this message translates to:
  /// **'متكرر'**
  String get recurring;

  /// No description provided for @registeredCustomer.
  ///
  /// In ar, this message translates to:
  /// **'عميل مسجّل'**
  String get registeredCustomer;

  /// No description provided for @remainingInstallmentsCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد أقساط المتبقي'**
  String get remainingInstallmentsCount;

  /// No description provided for @reportSections.
  ///
  /// In ar, this message translates to:
  /// **'أقسام التقارير'**
  String get reportSections;

  /// No description provided for @requireAdvanceForInstallment.
  ///
  /// In ar, this message translates to:
  /// **'إلزام مقدّم دفع لفاتورة التقسيط'**
  String get requireAdvanceForInstallment;

  /// No description provided for @returnCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد المرتجعات'**
  String get returnCount;

  /// No description provided for @returnItem.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع'**
  String get returnItem;

  /// No description provided for @returns.
  ///
  /// In ar, this message translates to:
  /// **'المرتجعات'**
  String get returns;

  /// No description provided for @revenueComposition.
  ///
  /// In ar, this message translates to:
  /// **'تركيب الإيراد: تكلفة + هامش'**
  String get revenueComposition;

  /// No description provided for @revenueTrend.
  ///
  /// In ar, this message translates to:
  /// **'اتجاه الإيراد: تكلفة + هامش + مصروفات يومياً'**
  String get revenueTrend;

  /// No description provided for @salaries.
  ///
  /// In ar, this message translates to:
  /// **'رواتب'**
  String get salaries;

  /// No description provided for @sale.
  ///
  /// In ar, this message translates to:
  /// **'بيع'**
  String get sale;

  /// No description provided for @saleScreenInstallmentCard.
  ///
  /// In ar, this message translates to:
  /// **'شاشة البيع وبطاقة التقسيط'**
  String get saleScreenInstallmentCard;

  /// No description provided for @sales.
  ///
  /// In ar, this message translates to:
  /// **'مبيعات'**
  String get sales;

  /// No description provided for @salesNotMixedWithReceipts.
  ///
  /// In ar, this message translates to:
  /// **'حتى لا تختلط المبيعات مع السندات'**
  String get salesNotMixedWithReceipts;

  /// No description provided for @salesVsExpensesDailyTrend.
  ///
  /// In ar, this message translates to:
  /// **'المبيعات مقابل المصروفات — اتجاه يومي'**
  String get salesVsExpensesDailyTrend;

  /// No description provided for @saveAndApply.
  ///
  /// In ar, this message translates to:
  /// **'حفظ وتطبيق'**
  String get saveAndApply;

  /// No description provided for @saveScheduleChanges.
  ///
  /// In ar, this message translates to:
  /// **'حفظ التعديلات على الجدول'**
  String get saveScheduleChanges;

  /// No description provided for @saving.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ الحفظ...'**
  String get saving;

  /// No description provided for @scheduleReference.
  ///
  /// In ar, this message translates to:
  /// **'مرجع الجدولة (بداية العدّ)'**
  String get scheduleReference;

  /// No description provided for @schedulingAndDueDates.
  ///
  /// In ar, this message translates to:
  /// **'الجدولة وتواريخ الاستحقاق'**
  String get schedulingAndDueDates;

  /// No description provided for @searchByNameOrPhone.
  ///
  /// In ar, this message translates to:
  /// **'ابحث بالاسم أو اسم المستخدم أو الهاتف'**
  String get searchByNameOrPhone;

  /// No description provided for @searchByNameOrPhoneOrNumber.
  ///
  /// In ar, this message translates to:
  /// **'ابحث بالاسم أو الهاتف أو الرقم…'**
  String get searchByNameOrPhoneOrNumber;

  /// No description provided for @searchDescriptionOrCategory.
  ///
  /// In ar, this message translates to:
  /// **'بحث (وصف أو فئة)'**
  String get searchDescriptionOrCategory;

  /// No description provided for @searchPlaceholder.
  ///
  /// In ar, this message translates to:
  /// **'بحث: عميل، منتج، رقم خطة، رقم فاتورة…'**
  String get searchPlaceholder;

  /// No description provided for @sectionOptions.
  ///
  /// In ar, this message translates to:
  /// **'خيارات القسم'**
  String get sectionOptions;

  /// No description provided for @selectCategoryAndAmount.
  ///
  /// In ar, this message translates to:
  /// **'يرجى اختيار فئة وإدخال مبلغ صحيح.'**
  String get selectCategoryAndAmount;

  /// No description provided for @selectEmployeeTitle.
  ///
  /// In ar, this message translates to:
  /// **'اختيار موظف'**
  String get selectEmployeeTitle;

  /// No description provided for @selectExpenseCategory.
  ///
  /// In ar, this message translates to:
  /// **'اختر فئة المصروف'**
  String get selectExpenseCategory;

  /// No description provided for @selectPeriodForReport.
  ///
  /// In ar, this message translates to:
  /// **'اختر الفترة الزمنية للفاتورة:'**
  String get selectPeriodForReport;

  /// No description provided for @selectedPeriod.
  ///
  /// In ar, this message translates to:
  /// **'الفترة المختارة:'**
  String get selectedPeriod;

  /// No description provided for @sellerChosenFromCalendar.
  ///
  /// In ar, this message translates to:
  /// **'يحدده البائع من التقويم (اتفاق)'**
  String get sellerChosenFromCalendar;

  /// No description provided for @serviceInvoiceNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم فاتورة الخدمة'**
  String get serviceInvoiceNumber;

  /// No description provided for @sessionOpenedBy.
  ///
  /// In ar, this message translates to:
  /// **'من فتح الجلسة في النظام'**
  String get sessionOpenedBy;

  /// No description provided for @setupInstallmentSchedule.
  ///
  /// In ar, this message translates to:
  /// **'ضبط جدول الأقساط'**
  String get setupInstallmentSchedule;

  /// No description provided for @showCalculatorCard.
  ///
  /// In ar, this message translates to:
  /// **'عرض بطاقة الحاسبة، والقيم الافتراضية للأقساط والفائدة.'**
  String get showCalculatorCard;

  /// No description provided for @showInstallmentCardInSale.
  ///
  /// In ar, this message translates to:
  /// **'إظهار بطاقة «مخطط التقسيط» في شاشة البيع'**
  String get showInstallmentCardInSale;

  /// No description provided for @stay.
  ///
  /// In ar, this message translates to:
  /// **'البقاء'**
  String get stay;

  /// No description provided for @systemBalanceAtClose.
  ///
  /// In ar, this message translates to:
  /// **'رصيد النظام عند الإغلاق'**
  String get systemBalanceAtClose;

  /// No description provided for @systemBalanceAtOpen.
  ///
  /// In ar, this message translates to:
  /// **'رصيد النظام عند فتح الوردية'**
  String get systemBalanceAtOpen;

  /// No description provided for @tableCopiedToClipboard.
  ///
  /// In ar, this message translates to:
  /// **'تم نسخ الجدول إلى الحافظة (لصق في Excel).'**
  String get tableCopiedToClipboard;

  /// No description provided for @tapForFullDetails.
  ///
  /// In ar, this message translates to:
  /// **'اضغط للتفاصيل الكاملة والجدول'**
  String get tapForFullDetails;

  /// No description provided for @taxType.
  ///
  /// In ar, this message translates to:
  /// **'نوع الضريبة'**
  String get taxType;

  /// No description provided for @taxTypeExample.
  ///
  /// In ar, this message translates to:
  /// **'مثال: ضريبة الدخل، ضريبة القيمة المضافة'**
  String get taxTypeExample;

  /// No description provided for @taxes.
  ///
  /// In ar, this message translates to:
  /// **'ضرائب'**
  String get taxes;

  /// No description provided for @thankYouForUsing.
  ///
  /// In ar, this message translates to:
  /// **'شكرًا لاستخدام Maarey'**
  String get thankYouForUsing;

  /// No description provided for @today.
  ///
  /// In ar, this message translates to:
  /// **'اليوم'**
  String get today;

  /// No description provided for @todayExpenses.
  ///
  /// In ar, this message translates to:
  /// **'مصروف اليوم'**
  String get todayExpenses;

  /// No description provided for @top10ProfitProducts.
  ///
  /// In ar, this message translates to:
  /// **'أعلى 10 منتجات ربحاً'**
  String get top10ProfitProducts;

  /// No description provided for @topBuyers.
  ///
  /// In ar, this message translates to:
  /// **'أكثر المشترين'**
  String get topBuyers;

  /// No description provided for @topCustomersBySpending.
  ///
  /// In ar, this message translates to:
  /// **'أعلى العملاء إنفاقاً'**
  String get topCustomersBySpending;

  /// No description provided for @topItemsByRevenue.
  ///
  /// In ar, this message translates to:
  /// **'أكثر الأصناف مبيعاً (حسب إيراد البنود)'**
  String get topItemsByRevenue;

  /// No description provided for @totalExpensesInPeriod.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المصروفات ضمن الفترة'**
  String get totalExpensesInPeriod;

  /// No description provided for @totalPlanValue.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي قيمة الخطط'**
  String get totalPlanValue;

  /// No description provided for @totalRecordedDebts.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الديون المسجّلة'**
  String get totalRecordedDebts;

  /// No description provided for @transactionCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد العمليات'**
  String get transactionCount;

  /// No description provided for @tryChangingDateRange.
  ///
  /// In ar, this message translates to:
  /// **'جرّب تغيير نطاق التاريخ أو الفلتر'**
  String get tryChangingDateRange;

  /// No description provided for @unlinked.
  ///
  /// In ar, this message translates to:
  /// **'غير مرتبط'**
  String get unlinked;

  /// No description provided for @usefulForUtilityBills.
  ///
  /// In ar, this message translates to:
  /// **'مفيد لفواتير الماء/الكهرباء/الضرائب.'**
  String get usefulForUtilityBills;

  /// No description provided for @viewSectionDescription.
  ///
  /// In ar, this message translates to:
  /// **'عرض وصف القسم'**
  String get viewSectionDescription;

  /// No description provided for @warning.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه'**
  String get warning;

  /// No description provided for @withdrawnAtClose.
  ///
  /// In ar, this message translates to:
  /// **'المسحوب عند الإغلاق'**
  String get withdrawnAtClose;

  /// No description provided for @withoutName.
  ///
  /// In ar, this message translates to:
  /// **'بدون اسم'**
  String get withoutName;

  /// No description provided for @yesDeduction.
  ///
  /// In ar, this message translates to:
  /// **'نعم (خصم)'**
  String get yesDeduction;

  /// No description provided for @deleteExpenseLabel.
  ///
  /// In ar, this message translates to:
  /// **'حذف المصروف؟'**
  String get deleteExpenseLabel;

  /// No description provided for @planNotFound.
  ///
  /// In ar, this message translates to:
  /// **'الخطة غير موجودة'**
  String get planNotFound;

  /// No description provided for @weekLabel.
  ///
  /// In ar, this message translates to:
  /// **'هذا الأسبوع'**
  String get weekLabel;

  /// No description provided for @monthLabel.
  ///
  /// In ar, this message translates to:
  /// **'هذا الشهر'**
  String get monthLabel;

  /// No description provided for @yearLabel.
  ///
  /// In ar, this message translates to:
  /// **'هذا العام'**
  String get yearLabel;

  /// No description provided for @allCategoriesLabel.
  ///
  /// In ar, this message translates to:
  /// **'كل الفئات'**
  String get allCategoriesLabel;

  /// No description provided for @noSearchResults.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد نتائج.'**
  String get noSearchResults;

  /// No description provided for @clearSearchLabel.
  ///
  /// In ar, this message translates to:
  /// **'مسح البحث'**
  String get clearSearchLabel;

  /// No description provided for @selectInvoiceCategory.
  ///
  /// In ar, this message translates to:
  /// **'اختر فئة المصروف'**
  String get selectInvoiceCategory;

  /// No description provided for @cashBoxLabel.
  ///
  /// In ar, this message translates to:
  /// **'الصندوق'**
  String get cashBoxLabel;

  /// No description provided for @manualEntryLabel.
  ///
  /// In ar, this message translates to:
  /// **'قيد يدوي'**
  String get manualEntryLabel;

  /// No description provided for @depositLabel.
  ///
  /// In ar, this message translates to:
  /// **'إيداع'**
  String get depositLabel;

  /// No description provided for @withdrawalLabel.
  ///
  /// In ar, this message translates to:
  /// **'سحب'**
  String get withdrawalLabel;

  /// No description provided for @currentBalanceLabel.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد الحالي'**
  String get currentBalanceLabel;

  /// No description provided for @unpaidLabel.
  ///
  /// In ar, this message translates to:
  /// **'غير مدفوع'**
  String get unpaidLabel;

  /// No description provided for @recurringLabel.
  ///
  /// In ar, this message translates to:
  /// **'متكرر'**
  String get recurringLabel;

  /// No description provided for @installmentPaymentLabel.
  ///
  /// In ar, this message translates to:
  /// **'تسديد قسط'**
  String get installmentPaymentLabel;

  /// No description provided for @customerLabel2.
  ///
  /// In ar, this message translates to:
  /// **'العميل'**
  String get customerLabel2;

  /// No description provided for @percentageLabel.
  ///
  /// In ar, this message translates to:
  /// **'النسبة'**
  String get percentageLabel;

  /// No description provided for @revenueLabel.
  ///
  /// In ar, this message translates to:
  /// **'الإيراد'**
  String get revenueLabel;

  /// No description provided for @salesLabel.
  ///
  /// In ar, this message translates to:
  /// **'المبيعات'**
  String get salesLabel;

  /// No description provided for @othersLabel.
  ///
  /// In ar, this message translates to:
  /// **'آخرون'**
  String get othersLabel;

  /// No description provided for @withoutNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'بدون اسم'**
  String get withoutNameLabel;

  /// No description provided for @paidLabel2.
  ///
  /// In ar, this message translates to:
  /// **'مدفوع'**
  String get paidLabel2;

  /// No description provided for @pendingLabel2.
  ///
  /// In ar, this message translates to:
  /// **'معلق'**
  String get pendingLabel2;

  /// No description provided for @openLabel.
  ///
  /// In ar, this message translates to:
  /// **'مفتوحة'**
  String get openLabel;

  /// No description provided for @costLabel.
  ///
  /// In ar, this message translates to:
  /// **'التكلفة'**
  String get costLabel;

  /// No description provided for @marginLabel.
  ///
  /// In ar, this message translates to:
  /// **'الهامش'**
  String get marginLabel;

  /// No description provided for @itemLabel2.
  ///
  /// In ar, this message translates to:
  /// **'الصنف'**
  String get itemLabel2;

  /// No description provided for @productLabel.
  ///
  /// In ar, this message translates to:
  /// **'المنتج'**
  String get productLabel;

  /// No description provided for @planLabel.
  ///
  /// In ar, this message translates to:
  /// **'الخطة'**
  String get planLabel;

  /// No description provided for @returnCountLabel.
  ///
  /// In ar, this message translates to:
  /// **'عدد المرتجعات'**
  String get returnCountLabel;

  /// No description provided for @optionLabel.
  ///
  /// In ar, this message translates to:
  /// **'الخيار'**
  String get optionLabel;

  /// No description provided for @inboundLabel.
  ///
  /// In ar, this message translates to:
  /// **'الوارد'**
  String get inboundLabel;

  /// No description provided for @outboundLabel.
  ///
  /// In ar, this message translates to:
  /// **'الصادر'**
  String get outboundLabel;

  /// No description provided for @cashboxLabel.
  ///
  /// In ar, this message translates to:
  /// **'الصندوق'**
  String get cashboxLabel;

  /// No description provided for @dailyLabel.
  ///
  /// In ar, this message translates to:
  /// **'يومي'**
  String get dailyLabel;

  /// No description provided for @weeklyLabel.
  ///
  /// In ar, this message translates to:
  /// **'أسبوعي'**
  String get weeklyLabel;

  /// No description provided for @monthlyLabel.
  ///
  /// In ar, this message translates to:
  /// **'شهري'**
  String get monthlyLabel;

  /// No description provided for @yearlyLabel.
  ///
  /// In ar, this message translates to:
  /// **'سنوي'**
  String get yearlyLabel;

  /// No description provided for @customLabel.
  ///
  /// In ar, this message translates to:
  /// **'مخصص'**
  String get customLabel;

  /// No description provided for @pageLabel.
  ///
  /// In ar, this message translates to:
  /// **'صفحة'**
  String get pageLabel;

  /// No description provided for @createdLabel.
  ///
  /// In ar, this message translates to:
  /// **'تم الإنشاء:'**
  String get createdLabel;

  /// No description provided for @totalAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get totalAmountLabel;

  /// No description provided for @overdueLabel.
  ///
  /// In ar, this message translates to:
  /// **'متأخرة'**
  String get overdueLabel;

  /// No description provided for @invoiceLabel.
  ///
  /// In ar, this message translates to:
  /// **'الفاتورة'**
  String get invoiceLabel;

  /// No description provided for @scheduleLabel.
  ///
  /// In ar, this message translates to:
  /// **'الجدول'**
  String get scheduleLabel;

  /// No description provided for @cancelLabel2.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get cancelLabel2;

  /// No description provided for @confirmLabel.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get confirmLabel;

  /// No description provided for @addLabel.
  ///
  /// In ar, this message translates to:
  /// **'إضافة'**
  String get addLabel;

  /// No description provided for @editLabel.
  ///
  /// In ar, this message translates to:
  /// **'تعديل'**
  String get editLabel;

  /// No description provided for @deleteLabel.
  ///
  /// In ar, this message translates to:
  /// **'حذف'**
  String get deleteLabel;

  /// No description provided for @filterLabel.
  ///
  /// In ar, this message translates to:
  /// **'تصفية'**
  String get filterLabel;

  /// No description provided for @exportLabel.
  ///
  /// In ar, this message translates to:
  /// **'تصدير'**
  String get exportLabel;

  /// No description provided for @printLabel.
  ///
  /// In ar, this message translates to:
  /// **'طباعة'**
  String get printLabel;

  /// No description provided for @yesLabel.
  ///
  /// In ar, this message translates to:
  /// **'نعم'**
  String get yesLabel;

  /// No description provided for @noLabel.
  ///
  /// In ar, this message translates to:
  /// **'لا'**
  String get noLabel;

  /// No description provided for @priceLabel.
  ///
  /// In ar, this message translates to:
  /// **'السعر'**
  String get priceLabel;

  /// No description provided for @noPriceLabel.
  ///
  /// In ar, this message translates to:
  /// **'بدون سعر'**
  String get noPriceLabel;

  /// No description provided for @okLabel.
  ///
  /// In ar, this message translates to:
  /// **'حسنًا'**
  String get okLabel;

  /// No description provided for @backLabel.
  ///
  /// In ar, this message translates to:
  /// **'رجوع'**
  String get backLabel;

  /// No description provided for @nextLabel.
  ///
  /// In ar, this message translates to:
  /// **'التالي'**
  String get nextLabel;

  /// No description provided for @doneLabel.
  ///
  /// In ar, this message translates to:
  /// **'تم'**
  String get doneLabel;

  /// No description provided for @closeLabel.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get closeLabel;

  /// No description provided for @openLabel2.
  ///
  /// In ar, this message translates to:
  /// **'فتح'**
  String get openLabel2;

  /// No description provided for @loadingLabel.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ التحميل...'**
  String get loadingLabel;

  /// No description provided for @errorLabel.
  ///
  /// In ar, this message translates to:
  /// **'خطأ'**
  String get errorLabel;

  /// No description provided for @warningLabel.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه'**
  String get warningLabel;

  /// No description provided for @successLabel.
  ///
  /// In ar, this message translates to:
  /// **'نجاح'**
  String get successLabel;

  /// No description provided for @infoLabel.
  ///
  /// In ar, this message translates to:
  /// **'معلومات'**
  String get infoLabel;

  /// No description provided for @whFailedToLoad.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل المستودعات: {error}'**
  String whFailedToLoad(Object error);

  /// No description provided for @whEditsSavedSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ التعديلات بنجاح'**
  String get whEditsSavedSuccess;

  /// No description provided for @whCreatedSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم إنشاء المستودع بنجاح'**
  String get whCreatedSuccess;

  /// No description provided for @whCodeLabel.
  ///
  /// In ar, this message translates to:
  /// **'الكود: {code}'**
  String whCodeLabel(Object code);

  /// No description provided for @whDeleteTitle.
  ///
  /// In ar, this message translates to:
  /// **'حذف المستودع'**
  String get whDeleteTitle;

  /// No description provided for @whDeleteConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هل أنت متأكد من حذف المستودع «{name}»؟'**
  String whDeleteConfirm(Object name);

  /// No description provided for @whDeleteAction.
  ///
  /// In ar, this message translates to:
  /// **'حذف'**
  String get whDeleteAction;

  /// No description provided for @whDeleteFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر حذف المستودع (قد يكون مرتبطا بحركات): {error}'**
  String whDeleteFailed(Object error);

  /// No description provided for @whDeactivateTitle.
  ///
  /// In ar, this message translates to:
  /// **'تعطيل المستودع'**
  String get whDeactivateTitle;

  /// No description provided for @whDeactivateContent.
  ///
  /// In ar, this message translates to:
  /// **'لن يُستخدم هذا المستودع في عمليات البيع والشراء حتى يُفعَّل من جديد.'**
  String get whDeactivateContent;

  /// No description provided for @whActivate.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل'**
  String get whActivate;

  /// No description provided for @whDeactivateAction.
  ///
  /// In ar, this message translates to:
  /// **'تعطيل'**
  String get whDeactivateAction;

  /// No description provided for @whStatusUpdateFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحديث الحالة: {error}'**
  String whStatusUpdateFailed(Object error);

  /// No description provided for @whScreenTitle.
  ///
  /// In ar, this message translates to:
  /// **'المستودعات'**
  String get whScreenTitle;

  /// No description provided for @whNewWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'مستودع جديد'**
  String get whNewWarehouse;

  /// No description provided for @whTotalValue.
  ///
  /// In ar, this message translates to:
  /// **'القيمة الإجمالية'**
  String get whTotalValue;

  /// No description provided for @whTotalItems.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الأصناف'**
  String get whTotalItems;

  /// No description provided for @whSearchHint.
  ///
  /// In ar, this message translates to:
  /// **'بحث بالاسم أو الكود...'**
  String get whSearchHint;

  /// No description provided for @whClearSearch.
  ///
  /// In ar, this message translates to:
  /// **'مسح'**
  String get whClearSearch;

  /// No description provided for @whNoWarehousesYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مستودعات بعد'**
  String get whNoWarehousesYet;

  /// No description provided for @whCreateFirst.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء أول مستودع'**
  String get whCreateFirst;

  /// No description provided for @whDefaultChip.
  ///
  /// In ar, this message translates to:
  /// **'افتراضي'**
  String get whDefaultChip;

  /// No description provided for @whActiveChip.
  ///
  /// In ar, this message translates to:
  /// **'نشط'**
  String get whActiveChip;

  /// No description provided for @whInactiveChip.
  ///
  /// In ar, this message translates to:
  /// **'معطّل'**
  String get whInactiveChip;

  /// No description provided for @whItemsCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأصناف'**
  String get whItemsCount;

  /// No description provided for @whEditAction.
  ///
  /// In ar, this message translates to:
  /// **'تعديل'**
  String get whEditAction;

  /// No description provided for @whViewStock.
  ///
  /// In ar, this message translates to:
  /// **'عرض المخزون'**
  String get whViewStock;

  /// No description provided for @whNameDuplicateError.
  ///
  /// In ar, this message translates to:
  /// **'يوجد مستودع بهذا الاسم مسبقاً'**
  String get whNameDuplicateError;

  /// No description provided for @whCodeDuplicateError.
  ///
  /// In ar, this message translates to:
  /// **'الكود مستخدم مسبقاً'**
  String get whCodeDuplicateError;

  /// No description provided for @whSetDefaultTitle.
  ///
  /// In ar, this message translates to:
  /// **'تعيين افتراضي'**
  String get whSetDefaultTitle;

  /// No description provided for @whSetDefaultContent.
  ///
  /// In ar, this message translates to:
  /// **'سيتم إزالة الافتراضي من المستودع الحالي وتحديد هذا المستودع كافتراضي.'**
  String get whSetDefaultContent;

  /// No description provided for @whConfirmAction.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get whConfirmAction;

  /// No description provided for @whCloseFormTitle.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق النموذج'**
  String get whCloseFormTitle;

  /// No description provided for @whCloseFormContent.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد إغلاق النموذج؟ البيانات لن تُحفظ'**
  String get whCloseFormContent;

  /// No description provided for @whCloseAction.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get whCloseAction;

  /// No description provided for @whSelectBranchError.
  ///
  /// In ar, this message translates to:
  /// **'اختر فرعاً'**
  String get whSelectBranchError;

  /// No description provided for @whAutoDefaultFirst.
  ///
  /// In ar, this message translates to:
  /// **'تم تعيينه افتراضياً تلقائياً لأنه المستودع الأول'**
  String get whAutoDefaultFirst;

  /// No description provided for @whSaveFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر حفظ المستودع: {error}'**
  String whSaveFailed(Object error);

  /// No description provided for @whRequiredField.
  ///
  /// In ar, this message translates to:
  /// **'مطلوب'**
  String get whRequiredField;

  /// No description provided for @whScanWarehouseCode.
  ///
  /// In ar, this message translates to:
  /// **'مسح كود المستودع'**
  String get whScanWarehouseCode;

  /// No description provided for @whEditWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'تعديل المستودع'**
  String get whEditWarehouse;

  /// No description provided for @whWarehouseNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم المستودع'**
  String get whWarehouseNameLabel;

  /// No description provided for @whWarehouseNameHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: مستودع الرئيسي، مستودع الفرع الشمالي'**
  String get whWarehouseNameHint;

  /// No description provided for @whWarehouseCodeLabel.
  ///
  /// In ar, this message translates to:
  /// **'كود المستودع'**
  String get whWarehouseCodeLabel;

  /// No description provided for @whWarehouseCodeHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: WH-001'**
  String get whWarehouseCodeHint;

  /// No description provided for @whLocationLabel.
  ///
  /// In ar, this message translates to:
  /// **'الموقع'**
  String get whLocationLabel;

  /// No description provided for @whLocationHint.
  ///
  /// In ar, this message translates to:
  /// **'العنوان أو وصف الموقع'**
  String get whLocationHint;

  /// No description provided for @whBranchLabel.
  ///
  /// In ar, this message translates to:
  /// **'الفرع'**
  String get whBranchLabel;

  /// No description provided for @whActiveWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'مستودع نشط'**
  String get whActiveWarehouse;

  /// No description provided for @whInactiveWarning.
  ///
  /// In ar, this message translates to:
  /// **'المستودع المعطّل لن يظهر في عمليات البيع والشراء'**
  String get whInactiveWarning;

  /// No description provided for @whSaving.
  ///
  /// In ar, this message translates to:
  /// **'جاري الحفظ...'**
  String get whSaving;

  /// No description provided for @whCreating.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ الإنشاء...'**
  String get whCreating;

  /// No description provided for @whSaveEdits.
  ///
  /// In ar, this message translates to:
  /// **'حفظ التعديلات'**
  String get whSaveEdits;

  /// No description provided for @whCreateWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء المستودع'**
  String get whCreateWarehouse;

  /// No description provided for @whChooseBranch.
  ///
  /// In ar, this message translates to:
  /// **'اختر الفرع'**
  String get whChooseBranch;

  /// No description provided for @whBranchSearchHint.
  ///
  /// In ar, this message translates to:
  /// **'بحث بالاسم أو رمز الفرع...'**
  String get whBranchSearchHint;

  /// No description provided for @whStockTitle.
  ///
  /// In ar, this message translates to:
  /// **'مخزون {name}'**
  String whStockTitle(Object name);

  /// No description provided for @whNoStockInWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد كميات في هذا المستودع'**
  String get whNoStockInWarehouse;

  /// No description provided for @whStockOut.
  ///
  /// In ar, this message translates to:
  /// **'نفد'**
  String get whStockOut;

  /// No description provided for @whStockLow.
  ///
  /// In ar, this message translates to:
  /// **'منخفض'**
  String get whStockLow;

  /// No description provided for @whStockInStock.
  ///
  /// In ar, this message translates to:
  /// **'في المخزون'**
  String get whStockInStock;

  /// No description provided for @ipAllCategories.
  ///
  /// In ar, this message translates to:
  /// **'جميع التصنيفات'**
  String get ipAllCategories;

  /// No description provided for @ipAllBrands.
  ///
  /// In ar, this message translates to:
  /// **'جميع الماركات'**
  String get ipAllBrands;

  /// No description provided for @ipAllStatus.
  ///
  /// In ar, this message translates to:
  /// **'الكل'**
  String get ipAllStatus;

  /// No description provided for @ipProductManagement.
  ///
  /// In ar, this message translates to:
  /// **'إدارة المنتجات'**
  String get ipProductManagement;

  /// No description provided for @ipSettingsTooltip.
  ///
  /// In ar, this message translates to:
  /// **'الإعدادات'**
  String get ipSettingsTooltip;

  /// No description provided for @ipMoreTooltip.
  ///
  /// In ar, this message translates to:
  /// **'المزيد'**
  String get ipMoreTooltip;

  /// No description provided for @ipPrintBarcodes.
  ///
  /// In ar, this message translates to:
  /// **'طباعة ملصقات باركود'**
  String get ipPrintBarcodes;

  /// No description provided for @ipProductSavedSnackbar.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ المنتج وتحديث القائمة'**
  String get ipProductSavedSnackbar;

  /// No description provided for @ipNewProductBtn.
  ///
  /// In ar, this message translates to:
  /// **'+ منتج جديد'**
  String get ipNewProductBtn;

  /// No description provided for @ipStatusActive.
  ///
  /// In ar, this message translates to:
  /// **'نشط'**
  String get ipStatusActive;

  /// No description provided for @ipStatusLowStock.
  ///
  /// In ar, this message translates to:
  /// **'مخزون منخفض'**
  String get ipStatusLowStock;

  /// No description provided for @ipStatusOutOfStock.
  ///
  /// In ar, this message translates to:
  /// **'نفذ من المخزون'**
  String get ipStatusOutOfStock;

  /// No description provided for @ipStatusInactive.
  ///
  /// In ar, this message translates to:
  /// **'معطّل'**
  String get ipStatusInactive;

  /// No description provided for @ipSearchAndMatch.
  ///
  /// In ar, this message translates to:
  /// **'بحث ومطابقة'**
  String get ipSearchAndMatch;

  /// No description provided for @ipCategoryFilter.
  ///
  /// In ar, this message translates to:
  /// **'التصنيف'**
  String get ipCategoryFilter;

  /// No description provided for @ipBrandFilter.
  ///
  /// In ar, this message translates to:
  /// **'الماركة'**
  String get ipBrandFilter;

  /// No description provided for @ipAdvancedSearch.
  ///
  /// In ar, this message translates to:
  /// **'بحث متقدم'**
  String get ipAdvancedSearch;

  /// No description provided for @ipClearFilterCount.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء الفلتر ({count})'**
  String ipClearFilterCount(Object count);

  /// No description provided for @ipClearFilter.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء الفلتر'**
  String get ipClearFilter;

  /// No description provided for @ipSearchAction.
  ///
  /// In ar, this message translates to:
  /// **'بحث'**
  String get ipSearchAction;

  /// No description provided for @ipKeywordSearch.
  ///
  /// In ar, this message translates to:
  /// **'البحث بكلمة مفتاحية'**
  String get ipKeywordSearch;

  /// No description provided for @ipKeywordHint.
  ///
  /// In ar, this message translates to:
  /// **'ادخل الاسم أو الكود أو الباركود'**
  String get ipKeywordHint;

  /// No description provided for @ipBarcodeFilter.
  ///
  /// In ar, this message translates to:
  /// **'باركود'**
  String get ipBarcodeFilter;

  /// No description provided for @ipScanOrType.
  ///
  /// In ar, this message translates to:
  /// **'مسح أو الكتابة'**
  String get ipScanOrType;

  /// No description provided for @ipProductCode.
  ///
  /// In ar, this message translates to:
  /// **'كود المنتج'**
  String get ipProductCode;

  /// No description provided for @ipSalePriceRange.
  ///
  /// In ar, this message translates to:
  /// **'نطاق سعر البيع (دينار)'**
  String get ipSalePriceRange;

  /// No description provided for @ipPriceTo.
  ///
  /// In ar, this message translates to:
  /// **'إلى'**
  String get ipPriceTo;

  /// No description provided for @ipPriceFrom.
  ///
  /// In ar, this message translates to:
  /// **'من'**
  String get ipPriceFrom;

  /// No description provided for @ipStatusFilter.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get ipStatusFilter;

  /// No description provided for @ipResultsName.
  ///
  /// In ar, this message translates to:
  /// **'الاسم'**
  String get ipResultsName;

  /// No description provided for @ipResultsPrice.
  ///
  /// In ar, this message translates to:
  /// **'السعر'**
  String get ipResultsPrice;

  /// No description provided for @ipResultsQty.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get ipResultsQty;

  /// No description provided for @ipResultsAddedDate.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الإضافة'**
  String get ipResultsAddedDate;

  /// No description provided for @ipSortLabel.
  ///
  /// In ar, this message translates to:
  /// **'الفرز'**
  String get ipSortLabel;

  /// No description provided for @ipSortAsc.
  ///
  /// In ar, this message translates to:
  /// **'تصاعدي'**
  String get ipSortAsc;

  /// No description provided for @ipSortDesc.
  ///
  /// In ar, this message translates to:
  /// **'تنازلي'**
  String get ipSortDesc;

  /// No description provided for @ipNoProductsYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد منتجات بعد'**
  String get ipNoProductsYet;

  /// No description provided for @ipNoProductsMatch.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد منتجات تطابق بحثك'**
  String get ipNoProductsMatch;

  /// No description provided for @ipAddFirstHint.
  ///
  /// In ar, this message translates to:
  /// **'ابدأ بإضافة أول صنف إلى المخزون.'**
  String get ipAddFirstHint;

  /// No description provided for @ipTryChangeSearch.
  ///
  /// In ar, this message translates to:
  /// **'جرّب تغيير كلمات البحث أو إلغاء الفلتر.'**
  String get ipTryChangeSearch;

  /// No description provided for @ipAddFirstBtn.
  ///
  /// In ar, this message translates to:
  /// **'+ إضافة أول منتج'**
  String get ipAddFirstBtn;

  /// No description provided for @ipUnpinFromHome.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء التثبيت من الرئيسية'**
  String get ipUnpinFromHome;

  /// No description provided for @ipPinToHome.
  ///
  /// In ar, this message translates to:
  /// **'تثبيت في الرئيسية'**
  String get ipPinToHome;

  /// No description provided for @ipPrintBarcode.
  ///
  /// In ar, this message translates to:
  /// **'طباعة باركود'**
  String get ipPrintBarcode;

  /// No description provided for @ipDeactivate.
  ///
  /// In ar, this message translates to:
  /// **'تعطيل'**
  String get ipDeactivate;

  /// No description provided for @ipActivate.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل'**
  String get ipActivate;

  /// No description provided for @ipDeleteProduct.
  ///
  /// In ar, this message translates to:
  /// **'حذف'**
  String get ipDeleteProduct;

  /// No description provided for @ipNotTracked.
  ///
  /// In ar, this message translates to:
  /// **'غير متتبّع'**
  String get ipNotTracked;

  /// No description provided for @ipDeleteProductTitle.
  ///
  /// In ar, this message translates to:
  /// **'حذف المنتج'**
  String get ipDeleteProductTitle;

  /// No description provided for @ipDeleteProductContent.
  ///
  /// In ar, this message translates to:
  /// **'سيتم إخفاء المنتج من القوائم (حذف منطقي) بدون كسر الفواتير المرتبطة.'**
  String get ipDeleteProductContent;

  /// No description provided for @ipProductType.
  ///
  /// In ar, this message translates to:
  /// **'منتج'**
  String get ipProductType;

  /// No description provided for @ipTechnicalService.
  ///
  /// In ar, this message translates to:
  /// **'خدمة فنية'**
  String get ipTechnicalService;

  /// No description provided for @ipAvailableQty.
  ///
  /// In ar, this message translates to:
  /// **'الكمية المتاحة: {qty}'**
  String ipAvailableQty(Object qty);

  /// No description provided for @ipOutOfStock.
  ///
  /// In ar, this message translates to:
  /// **'نفذ'**
  String get ipOutOfStock;

  /// No description provided for @ipProductOptions.
  ///
  /// In ar, this message translates to:
  /// **'خيارات المنتج'**
  String get ipProductOptions;

  /// No description provided for @ipShowingResults.
  ///
  /// In ar, this message translates to:
  /// **'عرض {shown} من أصل {matched} منتج{extra}'**
  String ipShowingResults(Object extra, Object matched, Object shown);

  /// No description provided for @ipExtraCatalogInfo.
  ///
  /// In ar, this message translates to:
  /// **' · إجمالي النشط: {total}'**
  String ipExtraCatalogInfo(Object total);

  /// No description provided for @addProductTitle.
  ///
  /// In ar, this message translates to:
  /// **'إضافة منتج جديد'**
  String get addProductTitle;

  /// No description provided for @apUnsavedChanges.
  ///
  /// In ar, this message translates to:
  /// **'تغييرات غير محفوظة'**
  String get apUnsavedChanges;

  /// No description provided for @apUnsavedConfirm.
  ///
  /// In ar, this message translates to:
  /// **'لم تقم بحفظ المنتج. هل تريد الحفظ قبل المغادرة؟'**
  String get apUnsavedConfirm;

  /// No description provided for @apLeaveWithoutSaving.
  ///
  /// In ar, this message translates to:
  /// **'مغادرة بدون حفظ'**
  String get apLeaveWithoutSaving;

  /// No description provided for @apSaveProduct.
  ///
  /// In ar, this message translates to:
  /// **'حفظ المنتج'**
  String get apSaveProduct;

  /// No description provided for @apColorSizeTitle.
  ///
  /// In ar, this message translates to:
  /// **'الألوان والمقاسات'**
  String get apColorSizeTitle;

  /// No description provided for @apDone.
  ///
  /// In ar, this message translates to:
  /// **'تم'**
  String get apDone;

  /// No description provided for @apLoadFormFailed.
  ///
  /// In ar, this message translates to:
  /// **'فشل تحميل بيانات نموذج المنتج'**
  String get apLoadFormFailed;

  /// No description provided for @apLoadFormFailedDetail.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل بيانات النموذج. سيعمل الحقل بالوضع اليدوي.\\n{error}'**
  String apLoadFormFailedDetail(Object error);

  /// No description provided for @apImagePickFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر اختيار الصورة: {error}'**
  String apImagePickFailed(Object error);

  /// No description provided for @apPercentDiscountMax.
  ///
  /// In ar, this message translates to:
  /// **'خصم النسبة المئوية لا يمكن أن يتعدّى 100٪.'**
  String get apPercentDiscountMax;

  /// No description provided for @apBarcodeRequired.
  ///
  /// In ar, this message translates to:
  /// **'حقل الباركود إلزامي حسب الإعدادات.'**
  String get apBarcodeRequired;

  /// No description provided for @apSupplierRequired.
  ///
  /// In ar, this message translates to:
  /// **'حقل المورد إلزامي حسب الإعدادات.'**
  String get apSupplierRequired;

  /// No description provided for @apWarehouseRequired.
  ///
  /// In ar, this message translates to:
  /// **'اختيار المخزن إلزامي حسب الإعدادات.'**
  String get apWarehouseRequired;

  /// No description provided for @apImageRequired.
  ///
  /// In ar, this message translates to:
  /// **'صورة المنتج إلزامية حسب الإعدادات.'**
  String get apImageRequired;

  /// No description provided for @apMfgDateFormatError.
  ///
  /// In ar, this message translates to:
  /// **'صيغة تاريخ الإنتاج غير صحيحة. استخدم يوم/شهر/سنة (مثال 15/01/2026).'**
  String get apMfgDateFormatError;

  /// No description provided for @apExpDateFormatError.
  ///
  /// In ar, this message translates to:
  /// **'صيغة تاريخ الانتهاء غير صحيحة. استخدم يوم/شهر/سنة (مثال 15/01/2026).'**
  String get apExpDateFormatError;

  /// No description provided for @apExpDateAfterMfg.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الانتهاء يجب أن يكون بعد أو يساوي تاريخ الإنتاج.'**
  String get apExpDateAfterMfg;

  /// No description provided for @apConversionFactorGt0.
  ///
  /// In ar, this message translates to:
  /// **'عامل التحويل يجب أن يكون أكبر من 0 لكل وحدة إضافية.'**
  String get apConversionFactorGt0;

  /// No description provided for @apAddAtLeastOneColor.
  ///
  /// In ar, this message translates to:
  /// **'أضف لوناً واحداً على الأقل.'**
  String get apAddAtLeastOneColor;

  /// No description provided for @apColorNameRequired.
  ///
  /// In ar, this message translates to:
  /// **'اسم اللون مطلوب.'**
  String get apColorNameRequired;

  /// No description provided for @apAddAtLeastOneSize.
  ///
  /// In ar, this message translates to:
  /// **'أضف مقاساً واحداً على الأقل لكل لون.'**
  String get apAddAtLeastOneSize;

  /// No description provided for @apSizeRequired.
  ///
  /// In ar, this message translates to:
  /// **'حقل المقاس مطلوب.'**
  String get apSizeRequired;

  /// No description provided for @apDuplicateSize.
  ///
  /// In ar, this message translates to:
  /// **'المقاس \"{size}\" مكرر داخل اللون \"{color}\".'**
  String apDuplicateSize(Object color, Object size);

  /// No description provided for @apQtyMustBeNonNeg.
  ///
  /// In ar, this message translates to:
  /// **'الكمية يجب أن تكون رقماً صحيحاً أكبر أو يساوي 0.'**
  String get apQtyMustBeNonNeg;

  /// No description provided for @apDuplicateBarcodeVariants.
  ///
  /// In ar, this message translates to:
  /// **'يوجد باركود مكرر داخل المتغيرات.'**
  String get apDuplicateBarcodeVariants;

  /// No description provided for @apBarcodeUsedByOther.
  ///
  /// In ar, this message translates to:
  /// **'هذا الباركود مستخدم لمنتج آخر.'**
  String get apBarcodeUsedByOther;

  /// No description provided for @apVariantBarcodeTaken.
  ///
  /// In ar, this message translates to:
  /// **'باركود المتغير مستخدم مسبقاً.'**
  String get apVariantBarcodeTaken;

  /// No description provided for @apDuplicateSizeInColor.
  ///
  /// In ar, this message translates to:
  /// **'المقاس مكرر داخل نفس اللون.'**
  String get apDuplicateSizeInColor;

  /// No description provided for @apQtyMustBeGe0.
  ///
  /// In ar, this message translates to:
  /// **'الكمية يجب أن تكون أكبر أو تساوي 0.'**
  String get apQtyMustBeGe0;

  /// No description provided for @apBarcodeAlreadyUsed.
  ///
  /// In ar, this message translates to:
  /// **'الباركود مستخدم مسبقاً.'**
  String get apBarcodeAlreadyUsed;

  /// No description provided for @apSaveFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر حفظ المنتج: {error}'**
  String apSaveFailed(Object error);

  /// No description provided for @apProductSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ المنتج. يمكنك إدخال منتج جديد.'**
  String get apProductSaved;

  /// No description provided for @apChooseColorTitle.
  ///
  /// In ar, this message translates to:
  /// **'اختيار لون'**
  String get apChooseColorTitle;

  /// No description provided for @apChooseColorSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'اختر لوناً يمثّل هذا الخيار (اختياري).'**
  String get apChooseColorSubtitle;

  /// No description provided for @apApplyUniformQty.
  ///
  /// In ar, this message translates to:
  /// **'تطبيق كمية موحدة'**
  String get apApplyUniformQty;

  /// No description provided for @apEnterQtyHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل كمية (0 أو أكثر)'**
  String get apEnterQtyHint;

  /// No description provided for @apSizeLabel.
  ///
  /// In ar, this message translates to:
  /// **'المقاس'**
  String get apSizeLabel;

  /// No description provided for @apChooseSizeTooltip.
  ///
  /// In ar, this message translates to:
  /// **'اختيار مقاس'**
  String get apChooseSizeTooltip;

  /// No description provided for @apQtyLabel.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get apQtyLabel;

  /// No description provided for @apBarcodeOptional.
  ///
  /// In ar, this message translates to:
  /// **'الباركود (اختياري)'**
  String get apBarcodeOptional;

  /// No description provided for @apDeleteAction.
  ///
  /// In ar, this message translates to:
  /// **'حذف'**
  String get apDeleteAction;

  /// No description provided for @apColorNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم اللون'**
  String get apColorNameLabel;

  /// No description provided for @apColorPickerTooltip.
  ///
  /// In ar, this message translates to:
  /// **'اختيار لون (HEX)'**
  String get apColorPickerTooltip;

  /// No description provided for @apDeleteColorTooltip.
  ///
  /// In ar, this message translates to:
  /// **'حذف اللون'**
  String get apDeleteColorTooltip;

  /// No description provided for @apSizesAndQuantities.
  ///
  /// In ar, this message translates to:
  /// **'المقاسات والكميات'**
  String get apSizesAndQuantities;

  /// No description provided for @apNoSizesYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مقاسات بعد. أضف مقاساً واحداً على الأقل.'**
  String get apNoSizesYet;

  /// No description provided for @apAddSizeBtn.
  ///
  /// In ar, this message translates to:
  /// **'إضافة مقاس'**
  String get apAddSizeBtn;

  /// No description provided for @apColorTotal.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي اللون: {count}'**
  String apColorTotal(Object count);

  /// No description provided for @apAddNewColor.
  ///
  /// In ar, this message translates to:
  /// **'إضافة لون جديد'**
  String get apAddNewColor;

  /// No description provided for @apApplyQtyAllSizes.
  ///
  /// In ar, this message translates to:
  /// **'تطبيق كمية موحدة على كل المقاسات'**
  String get apApplyQtyAllSizes;

  /// No description provided for @apNoColorsYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد ألوان بعد. أضف لوناً للبدء.'**
  String get apNoColorsYet;

  /// No description provided for @apProductCodeHint.
  ///
  /// In ar, this message translates to:
  /// **'رمز المنتج: {code}'**
  String apProductCodeHint(Object code);

  /// No description provided for @apCancelTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get apCancelTooltip;

  /// No description provided for @apSavingLabel.
  ///
  /// In ar, this message translates to:
  /// **'جاري الحفظ…'**
  String get apSavingLabel;

  /// No description provided for @apSaveAndAddNew.
  ///
  /// In ar, this message translates to:
  /// **'حفظ وإضافة جديد'**
  String get apSaveAndAddNew;

  /// No description provided for @apProductData.
  ///
  /// In ar, this message translates to:
  /// **'بيانات المنتج'**
  String get apProductData;

  /// No description provided for @apProductNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم المنتج'**
  String get apProductNameLabel;

  /// No description provided for @apNameRequired.
  ///
  /// In ar, this message translates to:
  /// **'الاسم مطلوب'**
  String get apNameRequired;

  /// No description provided for @apDescriptionLabel.
  ///
  /// In ar, this message translates to:
  /// **'الوصف'**
  String get apDescriptionLabel;

  /// No description provided for @apProductImage.
  ///
  /// In ar, this message translates to:
  /// **'صورة المنتج'**
  String get apProductImage;

  /// No description provided for @apCategoryLabel.
  ///
  /// In ar, this message translates to:
  /// **'التصنيف'**
  String get apCategoryLabel;

  /// No description provided for @apCategoryHint.
  ///
  /// In ar, this message translates to:
  /// **'اكتب أو اختر من القائمة'**
  String get apCategoryHint;

  /// No description provided for @apBrandLabel.
  ///
  /// In ar, this message translates to:
  /// **'الماركة'**
  String get apBrandLabel;

  /// No description provided for @apBrandHint.
  ///
  /// In ar, this message translates to:
  /// **'اكتب أو اختر من القائمة'**
  String get apBrandHint;

  /// No description provided for @apGradeLabel.
  ///
  /// In ar, this message translates to:
  /// **'الرتبة / درجة الجودة'**
  String get apGradeLabel;

  /// No description provided for @apGradeHint.
  ///
  /// In ar, this message translates to:
  /// **'اختر الدرجة (اختياري)'**
  String get apGradeHint;

  /// No description provided for @apNoCategory.
  ///
  /// In ar, this message translates to:
  /// **'— بدون تصنيف —'**
  String get apNoCategory;

  /// No description provided for @apGradeA.
  ///
  /// In ar, this message translates to:
  /// **'درجة A — ممتاز'**
  String get apGradeA;

  /// No description provided for @apGradeB.
  ///
  /// In ar, this message translates to:
  /// **'درجة B — جيد جداً'**
  String get apGradeB;

  /// No description provided for @apGradeC.
  ///
  /// In ar, this message translates to:
  /// **'درجة C — جيد'**
  String get apGradeC;

  /// No description provided for @apGradeFirst.
  ///
  /// In ar, this message translates to:
  /// **'درجة أولى'**
  String get apGradeFirst;

  /// No description provided for @apGradeSecond.
  ///
  /// In ar, this message translates to:
  /// **'درجة ثانية'**
  String get apGradeSecond;

  /// No description provided for @apGradeThird.
  ///
  /// In ar, this message translates to:
  /// **'درجة ثالثة'**
  String get apGradeThird;

  /// No description provided for @apCommercial.
  ///
  /// In ar, this message translates to:
  /// **'صنف تجاري'**
  String get apCommercial;

  /// No description provided for @apEconomical.
  ///
  /// In ar, this message translates to:
  /// **'صنف اقتصادي'**
  String get apEconomical;

  /// No description provided for @apWarehouseLabel.
  ///
  /// In ar, this message translates to:
  /// **'المخزن'**
  String get apWarehouseLabel;

  /// No description provided for @apNoWarehousesInDb.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مستودعات في قاعدة البيانات'**
  String get apNoWarehousesInDb;

  /// No description provided for @apChooseWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'اختر المخزن'**
  String get apChooseWarehouse;

  /// No description provided for @apNoWarehouseLink.
  ///
  /// In ar, this message translates to:
  /// **'— بدون ربط بمخزن —'**
  String get apNoWarehouseLink;

  /// No description provided for @apStockBaseType.
  ///
  /// In ar, this message translates to:
  /// **'نوع المخزون الأساسي'**
  String get apStockBaseType;

  /// No description provided for @apStockTypePiece.
  ///
  /// In ar, this message translates to:
  /// **'عدد (قطعة كأساس)'**
  String get apStockTypePiece;

  /// No description provided for @apStockTypeWeight.
  ///
  /// In ar, this message translates to:
  /// **'وزن (كيلوغرام كأساس)'**
  String get apStockTypeWeight;

  /// No description provided for @apStockTypeClothing.
  ///
  /// In ar, this message translates to:
  /// **'ملابس (ألوان ومقاسات)'**
  String get apStockTypeClothing;

  /// No description provided for @apEditColorsSizes.
  ///
  /// In ar, this message translates to:
  /// **'تعديل الألوان والمقاسات'**
  String get apEditColorsSizes;

  /// No description provided for @apSupplierInfo.
  ///
  /// In ar, this message translates to:
  /// **'معلومات المورد'**
  String get apSupplierInfo;

  /// No description provided for @apSupplierLabel.
  ///
  /// In ar, this message translates to:
  /// **'المورد'**
  String get apSupplierLabel;

  /// No description provided for @apSupplierHint.
  ///
  /// In ar, this message translates to:
  /// **'اكتب أو اختر من السجل'**
  String get apSupplierHint;

  /// No description provided for @apSupplierCodeOptional.
  ///
  /// In ar, this message translates to:
  /// **'كود المورد (اختياري)'**
  String get apSupplierCodeOptional;

  /// No description provided for @apExtraUnitsOptional.
  ///
  /// In ar, this message translates to:
  /// **'وحدات بيع إضافية (اختياري)'**
  String get apExtraUnitsOptional;

  /// No description provided for @apExtraUnitsDesc.
  ///
  /// In ar, this message translates to:
  /// **'مثال: كرتون، طبقة، كيلوغرام… لكل وحدة باركود اختياري وعامل تحويل إلى أساس المخزون.'**
  String get apExtraUnitsDesc;

  /// No description provided for @apAddUnit.
  ///
  /// In ar, this message translates to:
  /// **'إضافة وحدة'**
  String get apAddUnit;

  /// No description provided for @apNoExtraUnits.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد وحدات إضافية بعد.'**
  String get apNoExtraUnits;

  /// No description provided for @apUnitNumber.
  ///
  /// In ar, this message translates to:
  /// **'وحدة #{number}'**
  String apUnitNumber(Object number);

  /// No description provided for @apUnitNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم الوحدة'**
  String get apUnitNameLabel;

  /// No description provided for @apSymbolLabel.
  ///
  /// In ar, this message translates to:
  /// **'رمز'**
  String get apSymbolLabel;

  /// No description provided for @apConversionFactor.
  ///
  /// In ar, this message translates to:
  /// **'عامل التحويل إلى الأساس'**
  String get apConversionFactor;

  /// No description provided for @apBarcodeOptionalLabel.
  ///
  /// In ar, this message translates to:
  /// **'باركود (اختياري)'**
  String get apBarcodeOptionalLabel;

  /// No description provided for @apBarcodeEan13.
  ///
  /// In ar, this message translates to:
  /// **'الباركود (EAN-13)'**
  String get apBarcodeEan13;

  /// No description provided for @apBarcodeCode128.
  ///
  /// In ar, this message translates to:
  /// **'الباركود (Code 128)'**
  String get apBarcodeCode128;

  /// No description provided for @apBarcodeValue.
  ///
  /// In ar, this message translates to:
  /// **'قيمة الباركود'**
  String get apBarcodeValue;

  /// No description provided for @apCaptureFromCamera.
  ///
  /// In ar, this message translates to:
  /// **'التاطق من الكاميرا'**
  String get apCaptureFromCamera;

  /// No description provided for @apReadFromScanner.
  ///
  /// In ar, this message translates to:
  /// **'قراءة من جهاز قارئ الباركود'**
  String get apReadFromScanner;

  /// No description provided for @apScanProductBarcode.
  ///
  /// In ar, this message translates to:
  /// **'قراءة باركود المنتج'**
  String get apScanProductBarcode;

  /// No description provided for @apGenerateNewBarcode.
  ///
  /// In ar, this message translates to:
  /// **'توليد باركود رقمي جديد'**
  String get apGenerateNewBarcode;

  /// No description provided for @apWeightPriceNote.
  ///
  /// In ar, this message translates to:
  /// **'يُحسب لكل كيلوغرام واحد (أساس المخزون بالوزن).'**
  String get apWeightPriceNote;

  /// No description provided for @apPricingSection.
  ///
  /// In ar, this message translates to:
  /// **'التسعير'**
  String get apPricingSection;

  /// No description provided for @apPurchasePriceLabel.
  ///
  /// In ar, this message translates to:
  /// **'سعر الشراء'**
  String get apPurchasePriceLabel;

  /// No description provided for @apSuggestedFromCost.
  ///
  /// In ar, this message translates to:
  /// **'اقتراح من سعر الشراء'**
  String get apSuggestedFromCost;

  /// No description provided for @apSellPriceLabel.
  ///
  /// In ar, this message translates to:
  /// **'سعر البيع'**
  String get apSellPriceLabel;

  /// No description provided for @apSellBelowBuyWarning.
  ///
  /// In ar, this message translates to:
  /// **'تحذير: سعر البيع أقل من سعر الشراء (يمكن الإكمال).'**
  String get apSellBelowBuyWarning;

  /// No description provided for @apTaxSection.
  ///
  /// In ar, this message translates to:
  /// **'الضريبة'**
  String get apTaxSection;

  /// No description provided for @apTaxExempt.
  ///
  /// In ar, this message translates to:
  /// **'معفى'**
  String get apTaxExempt;

  /// No description provided for @apCustomTax.
  ///
  /// In ar, this message translates to:
  /// **'مخصص'**
  String get apCustomTax;

  /// No description provided for @apTaxExemptFull.
  ///
  /// In ar, this message translates to:
  /// **'معفى من الضريبة'**
  String get apTaxExemptFull;

  /// No description provided for @apTax5.
  ///
  /// In ar, this message translates to:
  /// **'ضريبة 5٪'**
  String get apTax5;

  /// No description provided for @apTax10.
  ///
  /// In ar, this message translates to:
  /// **'ضريبة 10٪'**
  String get apTax10;

  /// No description provided for @apTax15.
  ///
  /// In ar, this message translates to:
  /// **'ضريبة 15٪'**
  String get apTax15;

  /// No description provided for @apCustomRate.
  ///
  /// In ar, this message translates to:
  /// **'نسبة مخصصة'**
  String get apCustomRate;

  /// No description provided for @apTaxPercentLabel.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الضريبة %'**
  String get apTaxPercentLabel;

  /// No description provided for @apSellIncludingTax.
  ///
  /// In ar, this message translates to:
  /// **'البيع شاملاً الضريبة (تقريبي): {amount}'**
  String apSellIncludingTax(Object amount);

  /// No description provided for @apDiscountType.
  ///
  /// In ar, this message translates to:
  /// **'نوع الخصم'**
  String get apDiscountType;

  /// No description provided for @apPercentDiscount.
  ///
  /// In ar, this message translates to:
  /// **'نسبة مئوية (٪)'**
  String get apPercentDiscount;

  /// No description provided for @apFixedAmountDiscount.
  ///
  /// In ar, this message translates to:
  /// **'عمولة / مبلغ (Fdj)'**
  String get apFixedAmountDiscount;

  /// No description provided for @apDiscountValue.
  ///
  /// In ar, this message translates to:
  /// **'قيمة الخصم'**
  String get apDiscountValue;

  /// No description provided for @apExampleNumber.
  ///
  /// In ar, this message translates to:
  /// **'مثال: {number}'**
  String apExampleNumber(Object number);

  /// No description provided for @apMinSellPrice.
  ///
  /// In ar, this message translates to:
  /// **'أقل سعر بيع'**
  String get apMinSellPrice;

  /// No description provided for @apOptionalLabel.
  ///
  /// In ar, this message translates to:
  /// **'اختياري'**
  String get apOptionalLabel;

  /// No description provided for @apProfitMargin.
  ///
  /// In ar, this message translates to:
  /// **'هامش الربح (سعر البيع مقابل الشراء)'**
  String get apProfitMargin;

  /// No description provided for @apInventorySection.
  ///
  /// In ar, this message translates to:
  /// **'إدارة المخزون'**
  String get apInventorySection;

  /// No description provided for @apTrackInventory.
  ///
  /// In ar, this message translates to:
  /// **'تتبع المخزون'**
  String get apTrackInventory;

  /// No description provided for @apTrackInventoryOff.
  ///
  /// In ar, this message translates to:
  /// **'عند الإيقاف لا تُسجَّل كميات لهذا المنتج'**
  String get apTrackInventoryOff;

  /// No description provided for @apWeightSales.
  ///
  /// In ar, this message translates to:
  /// **'بالكيلوغرام — يدعم الكسور (0.25، 0.5، 1.5…)'**
  String get apWeightSales;

  /// No description provided for @apWeightThreshold.
  ///
  /// In ar, this message translates to:
  /// **'بالكيلوغرام (مثال: 1 = تنبيه عند أقل من 1 كغ)'**
  String get apWeightThreshold;

  /// No description provided for @apStockQty.
  ///
  /// In ar, this message translates to:
  /// **'الكمية في المخزون'**
  String get apStockQty;

  /// No description provided for @apAlertThreshold.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه عند أقل من'**
  String get apAlertThreshold;

  /// No description provided for @apVariantsStockInfo.
  ///
  /// In ar, this message translates to:
  /// **'المخزون يُدار عبر الألوان والمقاسات. الإجمالي الحالي: {total}'**
  String apVariantsStockInfo(Object total);

  /// No description provided for @apNetWeightLabel.
  ///
  /// In ar, this message translates to:
  /// **'الوزن الصافي (غرام) — اختياري'**
  String get apNetWeightLabel;

  /// No description provided for @apNetWeightHint.
  ///
  /// In ar, this message translates to:
  /// **'يُملأ تلقائياً من باركود GS1 أو الوزن المدمج'**
  String get apNetWeightHint;

  /// No description provided for @apMfgDateLabel.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الإنتاج — اختياري'**
  String get apMfgDateLabel;

  /// No description provided for @apPickFromCalendar.
  ///
  /// In ar, this message translates to:
  /// **'اختر من التقويم'**
  String get apPickFromCalendar;

  /// No description provided for @apDateFormat.
  ///
  /// In ar, this message translates to:
  /// **'يوم/شهر/سنة'**
  String get apDateFormat;

  /// No description provided for @apExpDateLabel.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الانتهاء — اختياري'**
  String get apExpDateLabel;

  /// No description provided for @apExpiryAlertDays.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه قبل انتهاء الصلاحية (عدد الأيام)'**
  String get apExpiryAlertDays;

  /// No description provided for @apExpiryAlertHint.
  ///
  /// In ar, this message translates to:
  /// **'عند تسجيل تاريخ انتهاء: 1–365 (فارغ = الافتراضي من الإعدادات)'**
  String get apExpiryAlertHint;

  /// No description provided for @apExpiryAlertNote.
  ///
  /// In ar, this message translates to:
  /// **'يُستخدم مع «تاريخ الانتهاء» فقط؛ يظهر التنبيه في لوحة الإشعارات خلال هذه المدة قبل التاريخ.'**
  String get apExpiryAlertNote;

  /// No description provided for @apInternalNotes.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظات داخلية'**
  String get apInternalNotes;

  /// No description provided for @apInternalNotesHint.
  ///
  /// In ar, this message translates to:
  /// **'لا تظهر للعميل — للفريق فقط'**
  String get apInternalNotesHint;

  /// No description provided for @apTags.
  ///
  /// In ar, this message translates to:
  /// **'وسوم'**
  String get apTags;

  /// No description provided for @apTagsHint.
  ///
  /// In ar, this message translates to:
  /// **'مفصولة بفواصل أو مسافات — للبحث والتصفية'**
  String get apTagsHint;

  /// No description provided for @apChooseFromList.
  ///
  /// In ar, this message translates to:
  /// **'اختر من القائمة'**
  String get apChooseFromList;

  /// No description provided for @apImageSelected.
  ///
  /// In ar, this message translates to:
  /// **'تم اختيار صورة (معاينة على الويب غير متاحة)'**
  String get apImageSelected;

  /// No description provided for @apTapToAddImage.
  ///
  /// In ar, this message translates to:
  /// **'اضغط لإضافة صورة من المعرض'**
  String get apTapToAddImage;

  /// No description provided for @apManualEditActive.
  ///
  /// In ar, this message translates to:
  /// **'التعديل اليدوي نشط — لن يُحدَّث سعر البيع تلقائياً عند تغيير التكلفة.'**
  String get apManualEditActive;

  /// No description provided for @apRelinkToCost.
  ///
  /// In ar, this message translates to:
  /// **' إعادة الربط بتكلفة الشراء'**
  String get apRelinkToCost;

  /// No description provided for @peVariantSummary.
  ///
  /// In ar, this message translates to:
  /// **'ألوان: {colors} • مقاسات: {sizes} • إجمالي: {total}'**
  String peVariantSummary(Object colors, Object sizes, Object total);

  /// No description provided for @peDuplicateSizeInColor.
  ///
  /// In ar, this message translates to:
  /// **'المقاس \"{size}\" مكرر داخل اللون \"{colorName}\".'**
  String peDuplicateSizeInColor(Object colorName, Object size);

  /// No description provided for @peGrandTotal.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي: {total}'**
  String peGrandTotal(Object total);

  /// No description provided for @peUnitFactor.
  ///
  /// In ar, this message translates to:
  /// **'{unitName} — عامل {factor}'**
  String peUnitFactor(Object factor, Object unitName);

  /// No description provided for @peColorSizeInventoryHint.
  ///
  /// In ar, this message translates to:
  /// **'المخزون يُدار عبر الألوان والمقاسات. الإجمالي الحالي: {total}'**
  String peColorSizeInventoryHint(Object total);

  /// No description provided for @aiBaseForInstallments.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ بعد المقدّم (أساس التقسيط)'**
  String get aiBaseForInstallments;

  /// No description provided for @aiProductsTab.
  ///
  /// In ar, this message translates to:
  /// **'المنتجات'**
  String get aiProductsTab;

  /// No description provided for @aiNoItemsWithBarcode.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أصناف بعد.\nامسح الباركود أعلاه أو أضف من البحث في الشاشة الرئيسية.\nابحث عن منتج أو امسح الباركود للإضافة.'**
  String get aiNoItemsWithBarcode;

  /// No description provided for @aiNoItemsWithoutBarcode.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أصناف بعد.\nأضف منتجات من البحث في الشاشة الرئيسية.\nابحث عن منتج أو امسح الباركود للإضافة.'**
  String get aiNoItemsWithoutBarcode;

  /// No description provided for @aiMaxDiscountHint.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأقصى المسموح حالياً: {percent}٪ — يُحسب من أدنى سعر لكل صنف.'**
  String aiMaxDiscountHint(Object percent);

  /// No description provided for @aiNumbersResultHint.
  ///
  /// In ar, this message translates to:
  /// **'نتيجة الأرقام والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.'**
  String get aiNumbersResultHint;

  /// No description provided for @aiNumbersResultWithDiscountHint.
  ///
  /// In ar, this message translates to:
  /// **'نتيجة الأرقام بعد الخصم والضريبة، والدفعة الأولى إن وُجدت، قبل الانتقال لبيانات العميل.'**
  String get aiNumbersResultWithDiscountHint;

  /// No description provided for @aiPriceDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل السعر'**
  String get aiPriceDetails;

  /// No description provided for @aiAmountBreakdown.
  ///
  /// In ar, this message translates to:
  /// **'تفصيل المبالغ'**
  String get aiAmountBreakdown;

  /// No description provided for @aiLoyaltyDiscountLabel.
  ///
  /// In ar, this message translates to:
  /// **'خصم الولاء: -{amount} Fdj'**
  String aiLoyaltyDiscountLabel(Object amount);

  /// No description provided for @aiSelectPaymentMethod.
  ///
  /// In ar, this message translates to:
  /// **'اختر {methods}، ثم أكمل بيانات العميل والحقول المرتبطة بنوع الدفع.'**
  String aiSelectPaymentMethod(Object methods);

  /// No description provided for @aiRequiredForDebtInstallment.
  ///
  /// In ar, this message translates to:
  /// **'مطلوب للدين/التقسيط'**
  String get aiRequiredForDebtInstallment;

  /// No description provided for @aiQRMapHint.
  ///
  /// In ar, this message translates to:
  /// **'يُطبَع QR يفتح الخرائط عند المسح'**
  String get aiQRMapHint;

  /// No description provided for @aiDeliveryHint.
  ///
  /// In ar, this message translates to:
  /// **'للتوصيل: أدخل اسم العميل وعنوان التوصيل (كلاهما مطلوب). يظهر اقتراح للاسم من قاعدة العملاء أثناء الكتابة.'**
  String get aiDeliveryHint;

  /// No description provided for @aiDebtInstallmentHint.
  ///
  /// In ar, this message translates to:
  /// **'مهم: للدين والتقسيط اضغط على اسم العميل من القائمة المقترحة لربط البيع ببطاقته (لا يكفي كتابة الاسم يدوياً إن لم يُطابق سجلاً واحداً بالضبط).'**
  String get aiDebtInstallmentHint;

  /// No description provided for @aiHideDetails.
  ///
  /// In ar, this message translates to:
  /// **'إخفاء التفاصيل'**
  String get aiHideDetails;

  /// No description provided for @aiPriceDetailsAndDiscount.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل السعر والخصم'**
  String get aiPriceDetailsAndDiscount;

  /// No description provided for @aiItemPriceSummary.
  ///
  /// In ar, this message translates to:
  /// **'سعر {price} · أدنى {min}'**
  String aiItemPriceSummary(Object min, Object price);

  /// No description provided for @aiItemGrossTotal.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي: {total}'**
  String aiItemGrossTotal(Object total);

  /// No description provided for @aiSellPricePerUnit.
  ///
  /// In ar, this message translates to:
  /// **'سعر البيع (للوحدة)'**
  String get aiSellPricePerUnit;

  /// No description provided for @aiInvoiceLineBeforeDiscount.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي السطر قبل خصم الفاتورة'**
  String get aiInvoiceLineBeforeDiscount;

  /// No description provided for @aiInvoiceLineDiscountShare.
  ///
  /// In ar, this message translates to:
  /// **'حصة خصم الفاتورة لهذا السطر'**
  String get aiInvoiceLineDiscountShare;

  /// No description provided for @aiInvoiceLineAfterDiscount.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي بعد خصم الفاتورة (لهذا السطر)'**
  String get aiInvoiceLineAfterDiscount;

  /// No description provided for @aiPercentDiscountDistribution.
  ///
  /// In ar, this message translates to:
  /// **'يُوزَّع خصم النسبة على الأسطر بحسب مساهمة كل سطر في إجمالي البنود.'**
  String get aiPercentDiscountDistribution;

  /// No description provided for @aiCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get aiCancel;

  /// No description provided for @aiEnterValidQuantity.
  ///
  /// In ar, this message translates to:
  /// **'أدخل عدداً صحيحاً 1 فما فوق'**
  String get aiEnterValidQuantity;

  /// No description provided for @aiInstallmentMinDownPaymentError.
  ///
  /// In ar, this message translates to:
  /// **'بيع التقسيط: المقدّم يجب ألا يقل عن {percent}% من إجمالي الفاتورة (يُقارب {amount}). عدّل حقل المقدّم أو راجع «الأقساط → إعدادات تقسيط».'**
  String aiInstallmentMinDownPaymentError(Object amount, Object percent);

  /// No description provided for @aiDebtCapExceededInvoice.
  ///
  /// In ar, this message translates to:
  /// **'حد الدين للفاتورة: المتبقي ({remaining}) يتجاوز السقف {cap}. عدّل الإجمالي أو المبلغ الواصل أو «الديون → إعدادات الدين».'**
  String aiDebtCapExceededInvoice(Object cap, Object remaining);

  /// No description provided for @aiDebtCapExceededCustomer.
  ///
  /// In ar, this message translates to:
  /// **'حد الدين للعميل: مجموع المتبقي الحالي ≈ {existing}، والفاتورة تضيف {invoice} (يتجاوز {cap}). اربط العميل من القائمة، أو خفّض المبلغ، أو راجع إعدادات الديون.'**
  String aiDebtCapExceededCustomer(Object cap, Object existing, Object invoice);

  /// No description provided for @aiInvoiceSaveFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر حفظ الفاتورة — {error}. راجع الأصناف والإجمالي قبل إعادة المحاولة.'**
  String aiInvoiceSaveFailed(Object error);

  /// No description provided for @aiServiceOrderCloseFailed.
  ///
  /// In ar, this message translates to:
  /// **'فشل إغلاق تذكرة الصيانة المرتبطة {orderId}'**
  String aiServiceOrderCloseFailed(Object orderId);

  /// No description provided for @aiServiceOrderUpdateWarning.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه: حُفظت الفاتورة ولكن تعذر تلقائياً تحديث حالة تذكرة الصيانة. يرجى مراجعتها يدوياً.'**
  String get aiServiceOrderUpdateWarning;

  /// No description provided for @aiReturnScreenTitle.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة #{id}'**
  String aiReturnScreenTitle(Object id);

  /// No description provided for @aiOpenReturnScreen.
  ///
  /// In ar, this message translates to:
  /// **'فتح شاشة المرتجع (منتجات فقط)؟\nالإجمالي الأصلي: {total}'**
  String aiOpenReturnScreen(Object total);

  /// No description provided for @aiLoadingColorsSizes.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ تحميل الألوان والمقاسات…'**
  String get aiLoadingColorsSizes;

  /// No description provided for @aiAvailableQuantity.
  ///
  /// In ar, this message translates to:
  /// **'المتاح: {qty}'**
  String aiAvailableQuantity(Object qty);

  /// No description provided for @aiCurrentlySelected.
  ///
  /// In ar, this message translates to:
  /// **'المحدد حالياً'**
  String get aiCurrentlySelected;

  /// No description provided for @aiUnitPiece.
  ///
  /// In ar, this message translates to:
  /// **'قطعة'**
  String get aiUnitPiece;

  /// No description provided for @aiParkedSalesHint.
  ///
  /// In ar, this message translates to:
  /// **'يُحفظ محلياً على هذا الجهاز. يمكنك استئناف البيع لاحقاً من «الفواتير ← معلّقة مؤقتاً».'**
  String get aiParkedSalesHint;

  /// No description provided for @aiScanToAdd.
  ///
  /// In ar, this message translates to:
  /// **'امسح — سيتم الإضافة تلقائيًا'**
  String get aiScanToAdd;

  /// No description provided for @apTrackStock.
  ///
  /// In ar, this message translates to:
  /// **'يحسب الكمية والتنبيه منخفض'**
  String get apTrackStock;

  /// No description provided for @apNoTrackDesc.
  ///
  /// In ar, this message translates to:
  /// **'الكمية تُصبح 0 ولا تظهر تنبيهات مخزون'**
  String get apNoTrackDesc;

  /// No description provided for @ipStatusDisabled.
  ///
  /// In ar, this message translates to:
  /// **'معطّل'**
  String get ipStatusDisabled;

  /// No description provided for @addFirstProduct.
  ///
  /// In ar, this message translates to:
  /// **'+ إضافة أول منتج'**
  String get addFirstProduct;

  /// No description provided for @apLoadTemplateFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل بيانات النموذج. سيعمل الحقل بالوضع اليدوي.\n{error}'**
  String apLoadTemplateFailed(Object error);

  /// No description provided for @apVariantSummaryLine.
  ///
  /// In ar, this message translates to:
  /// **'ألوان: {colors} • مقاسات: {sizes} • إجمالي: {total}'**
  String apVariantSummaryLine(Object colors, Object sizes, Object total);

  /// No description provided for @apMarginHint.
  ///
  /// In ar, this message translates to:
  /// **'هامش {percent}٠ على التكلفة؛ أقل سعر = {min}'**
  String apMarginHint(Object min, Object percent);

  /// No description provided for @apMarginPctValue.
  ///
  /// In ar, this message translates to:
  /// **'{value}٠'**
  String apMarginPctValue(Object value);

  /// No description provided for @apTrackDisabledHint.
  ///
  /// In ar, this message translates to:
  /// **'عند الإيقاف لا تُسجَّل كميات لهذا المنتج'**
  String get apTrackDisabledHint;

  /// No description provided for @apOptionalHintIQD.
  ///
  /// In ar, this message translates to:
  /// **'اختياري — {amount}'**
  String apOptionalHintIQD(Object amount);

  /// No description provided for @apMinSellPriceHintIQD.
  ///
  /// In ar, this message translates to:
  /// **'أدنى سعر بيع — {amount}'**
  String apMinSellPriceHintIQD(Object amount);

  /// No description provided for @csStatusIndebted.
  ///
  /// In ar, this message translates to:
  /// **'مديون'**
  String get csStatusIndebted;

  /// No description provided for @csStatusCreditor.
  ///
  /// In ar, this message translates to:
  /// **'دائن'**
  String get csStatusCreditor;

  /// No description provided for @csStatusDistinguished.
  ///
  /// In ar, this message translates to:
  /// **'مميز'**
  String get csStatusDistinguished;

  /// No description provided for @csClearFilter.
  ///
  /// In ar, this message translates to:
  /// **'مسح التصفية'**
  String get csClearFilter;

  /// No description provided for @csIndebtedPlural.
  ///
  /// In ar, this message translates to:
  /// **'مديونون'**
  String get csIndebtedPlural;

  /// No description provided for @csCreditorPlural.
  ///
  /// In ar, this message translates to:
  /// **'دائنون'**
  String get csCreditorPlural;

  /// No description provided for @csDistinguishedPlural.
  ///
  /// In ar, this message translates to:
  /// **'مميزون'**
  String get csDistinguishedPlural;

  /// No description provided for @csNoDues.
  ///
  /// In ar, this message translates to:
  /// **'لا ديون'**
  String get csNoDues;

  /// No description provided for @csDebtPrefix.
  ///
  /// In ar, this message translates to:
  /// **'دين'**
  String get csDebtPrefix;

  /// No description provided for @csCreditPrefix.
  ///
  /// In ar, this message translates to:
  /// **'دائن'**
  String get csCreditPrefix;

  /// No description provided for @csDeleteCustomer.
  ///
  /// In ar, this message translates to:
  /// **'حذف عميل'**
  String get csDeleteCustomer;

  /// No description provided for @csDeleteCustomerConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد حذف «{name}»؟'**
  String csDeleteCustomerConfirm(Object name);

  /// No description provided for @csDeleteFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحذف: {error}'**
  String csDeleteFailed(Object error);

  /// No description provided for @csDeleteSelectedCustomers.
  ///
  /// In ar, this message translates to:
  /// **'حذف العملاء المحددين'**
  String get csDeleteSelectedCustomers;

  /// No description provided for @csDeleteSelectedConfirm.
  ///
  /// In ar, this message translates to:
  /// **'سيتم حذف {count} عميل. هل أنت متأكد؟'**
  String csDeleteSelectedConfirm(Object count);

  /// No description provided for @csAlertsTooltip.
  ///
  /// In ar, this message translates to:
  /// **'التنبيهات: متأخرات، فواتير آجل، مخزون وأقساط'**
  String get csAlertsTooltip;

  /// No description provided for @csRefreshFromCloud.
  ///
  /// In ar, this message translates to:
  /// **'تحديث القائمة من السحابة والمزامنة — F5'**
  String get csRefreshFromCloud;

  /// No description provided for @csLastUpdatedNow.
  ///
  /// In ar, this message translates to:
  /// **'آخر تحديث: الآن تقريباً — F5'**
  String get csLastUpdatedNow;

  /// No description provided for @csLastUpdatedMinutesAgo.
  ///
  /// In ar, this message translates to:
  /// **'آخر تحديث: منذ {minutes} دقيقة — F5'**
  String csLastUpdatedMinutesAgo(Object minutes);

  /// No description provided for @csLastUpdatedHoursAgo.
  ///
  /// In ar, this message translates to:
  /// **'آخر تحديث: منذ {hours} ساعة تقريباً — F5'**
  String csLastUpdatedHoursAgo(Object hours);

  /// No description provided for @csTotalShowing.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي: {total} · معروض: {shown}'**
  String csTotalShowing(Object shown, Object total);

  /// No description provided for @csTotalCustomersShowing.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي العملاء: {total} | معروض: {shown}'**
  String csTotalCustomersShowing(Object shown, Object total);

  /// No description provided for @csSelectedCount.
  ///
  /// In ar, this message translates to:
  /// **'محدد: {selected} / {total}'**
  String csSelectedCount(Object selected, Object total);

  /// No description provided for @csSelectedCountPage.
  ///
  /// In ar, this message translates to:
  /// **'محدد: {selected} — المعروض في الصفحة: {total}'**
  String csSelectedCountPage(Object selected, Object total);

  /// No description provided for @csDeleteSelectedTooltip.
  ///
  /// In ar, this message translates to:
  /// **'حذف المحدد'**
  String get csDeleteSelectedTooltip;

  /// No description provided for @csDeleteSelectedLabel.
  ///
  /// In ar, this message translates to:
  /// **'حذف المحدد'**
  String get csDeleteSelectedLabel;

  /// No description provided for @csAddCustomer.
  ///
  /// In ar, this message translates to:
  /// **'إضافة عميل'**
  String get csAddCustomer;

  /// No description provided for @csSearchFilter.
  ///
  /// In ar, this message translates to:
  /// **'بحث وتصفية'**
  String get csSearchFilter;

  /// No description provided for @csSearchDescription.
  ///
  /// In ar, this message translates to:
  /// **'ابحث بالاسم أو الهاتف أو البريد. مبيعات الدين والتقسيط تُربط بالعميل من شاشة البيع.'**
  String get csSearchDescription;

  /// No description provided for @csSearchInputHint.
  ///
  /// In ar, this message translates to:
  /// **'ابحث بالاسم أو رقم الهاتف أو البريد…'**
  String get csSearchInputHint;

  /// No description provided for @csSearchApplyHint.
  ///
  /// In ar, this message translates to:
  /// **'الإدخال يُطبَّق تلقائياً خلال جزء ثانٍ — Enter أو زر التطبيق لتحسين الوضوح. اختصار: Ctrl+F'**
  String get csSearchApplyHint;

  /// No description provided for @csSortLabel.
  ///
  /// In ar, this message translates to:
  /// **'ترتيب العرض'**
  String get csSortLabel;

  /// No description provided for @csSortNameAZ.
  ///
  /// In ar, this message translates to:
  /// **'الاسم (أ-ي)'**
  String get csSortNameAZ;

  /// No description provided for @csSortNameZA.
  ///
  /// In ar, this message translates to:
  /// **'الاسم (ي-أ)'**
  String get csSortNameZA;

  /// No description provided for @csSortMostPurchased.
  ///
  /// In ar, this message translates to:
  /// **'الأكثر شراءً'**
  String get csSortMostPurchased;

  /// No description provided for @csSortLargestDebts.
  ///
  /// In ar, this message translates to:
  /// **'الديون الأكبر'**
  String get csSortLargestDebts;

  /// No description provided for @csSortNewest.
  ///
  /// In ar, this message translates to:
  /// **'الأحدث تسجيلاً'**
  String get csSortNewest;

  /// No description provided for @csSearch.
  ///
  /// In ar, this message translates to:
  /// **'البحث'**
  String get csSearch;

  /// No description provided for @csClearTooltip.
  ///
  /// In ar, this message translates to:
  /// **'مسح'**
  String get csClearTooltip;

  /// No description provided for @csApplySearchLabel.
  ///
  /// In ar, this message translates to:
  /// **'تطبيق البحث'**
  String get csApplySearchLabel;

  /// No description provided for @csNoCustomersYet.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد عملاء بعد'**
  String get csNoCustomersYet;

  /// No description provided for @csNoMatchingCustomers.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد عملاء يطابقون البحث أو التصفية'**
  String get csNoMatchingCustomers;

  /// No description provided for @csColName.
  ///
  /// In ar, this message translates to:
  /// **'العميل'**
  String get csColName;

  /// No description provided for @csColPhone.
  ///
  /// In ar, this message translates to:
  /// **'الهاتف'**
  String get csColPhone;

  /// No description provided for @csColTotalPurchases.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المشتريات'**
  String get csColTotalPurchases;

  /// No description provided for @csColDueBalance.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد المستحق'**
  String get csColDueBalance;

  /// No description provided for @csColStatus.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get csColStatus;

  /// No description provided for @csDebtsLabel.
  ///
  /// In ar, this message translates to:
  /// **'ديون ×{count}'**
  String csDebtsLabel(Object count);

  /// No description provided for @csOpenDebtsTooltip.
  ///
  /// In ar, this message translates to:
  /// **'فتح ديون الآجل المرتبطة'**
  String get csOpenDebtsTooltip;

  /// No description provided for @csInstallmentsLabel.
  ///
  /// In ar, this message translates to:
  /// **'تقسيط ×{count}'**
  String csInstallmentsLabel(Object count);

  /// No description provided for @csOpenInstallmentsTooltip.
  ///
  /// In ar, this message translates to:
  /// **'فتح خطط التقسيط'**
  String get csOpenInstallmentsTooltip;

  /// No description provided for @csCallLabel.
  ///
  /// In ar, this message translates to:
  /// **'اتصال'**
  String get csCallLabel;

  /// No description provided for @csCallTooltip.
  ///
  /// In ar, this message translates to:
  /// **'اتصال بـ {phone}'**
  String csCallTooltip(Object phone);

  /// No description provided for @csCustomerInfo.
  ///
  /// In ar, this message translates to:
  /// **'{id} · ولاء {loyalty} · {date}'**
  String csCustomerInfo(Object date, Object id, Object loyalty);

  /// No description provided for @csMoreTooltip.
  ///
  /// In ar, this message translates to:
  /// **'المزيد'**
  String get csMoreTooltip;

  /// No description provided for @csEditData.
  ///
  /// In ar, this message translates to:
  /// **'تعديل البيانات'**
  String get csEditData;

  /// No description provided for @csCall.
  ///
  /// In ar, this message translates to:
  /// **'اتصال'**
  String get csCall;

  /// No description provided for @csSortTooltip.
  ///
  /// In ar, this message translates to:
  /// **'البحث'**
  String get csSortTooltip;

  /// No description provided for @cfLoadFailedAfterAdd.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل بيانات العميل بعد الإضافة'**
  String get cfLoadFailedAfterAdd;

  /// No description provided for @cfLoadFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل بيانات العميل'**
  String get cfLoadFailed;

  /// No description provided for @cfTitleEdit.
  ///
  /// In ar, this message translates to:
  /// **'تعديل بيانات العميل'**
  String get cfTitleEdit;

  /// No description provided for @cfFillBasic.
  ///
  /// In ar, this message translates to:
  /// **'املأ البيانات الأساسية. يمكن ترك الحقول الاختيارية فارغة.'**
  String get cfFillBasic;

  /// No description provided for @cfNameHint.
  ///
  /// In ar, this message translates to:
  /// **'الاسم الكامل كما يظهر في الفواتير'**
  String get cfNameHint;

  /// No description provided for @cfPhoneHint.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهاتف (اختياري)'**
  String get cfPhoneHint;

  /// No description provided for @cfPhone2Hint.
  ///
  /// In ar, this message translates to:
  /// **'رقم هاتف إضافي'**
  String get cfPhone2Hint;

  /// No description provided for @cfPhonePrimaryExample.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 07701234567 — لا يُكرَّر لعميل آخر (يُميّز الأسماء المتشابهة)'**
  String get cfPhonePrimaryExample;

  /// No description provided for @cfPhone2Example.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 07801234567'**
  String get cfPhone2Example;

  /// No description provided for @cfDeleteNumber.
  ///
  /// In ar, this message translates to:
  /// **'حذف الرقم'**
  String get cfDeleteNumber;

  /// No description provided for @cfAddAnotherNumber.
  ///
  /// In ar, this message translates to:
  /// **'إضافة رقم آخر'**
  String get cfAddAnotherNumber;

  /// No description provided for @cfAddressHint.
  ///
  /// In ar, this message translates to:
  /// **'العنوان (اختياري)'**
  String get cfAddressHint;

  /// No description provided for @cfAddressExample.
  ///
  /// In ar, this message translates to:
  /// **'المدينة، المنطقة'**
  String get cfAddressExample;

  /// No description provided for @cfEmailHint.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني (اختياري)'**
  String get cfEmailHint;

  /// No description provided for @cfNotesHint.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظات (اختياري)'**
  String get cfNotesHint;

  /// No description provided for @cfNotesDescription.
  ///
  /// In ar, this message translates to:
  /// **'تفضيلات العميل، ملاحظات داخلية…'**
  String get cfNotesDescription;

  /// No description provided for @cfSaveFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحفظ: {error}'**
  String cfSaveFailed(Object error);

  /// No description provided for @cfRegisteredSince.
  ///
  /// In ar, this message translates to:
  /// **'مسجّل منذ {date}'**
  String cfRegisteredSince(Object date);

  /// No description provided for @ctDeleteContact.
  ///
  /// In ar, this message translates to:
  /// **'حذف جهة الاتصال'**
  String get ctDeleteContact;

  /// No description provided for @ctIndebted.
  ///
  /// In ar, this message translates to:
  /// **'مديون'**
  String get ctIndebted;

  /// No description provided for @ctCreditor.
  ///
  /// In ar, this message translates to:
  /// **'دائن'**
  String get ctCreditor;

  /// No description provided for @ctTitle.
  ///
  /// In ar, this message translates to:
  /// **'جهات اتصال العملاء'**
  String get ctTitle;

  /// No description provided for @ctRefresh.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get ctRefresh;

  /// No description provided for @ctNewCustomer.
  ///
  /// In ar, this message translates to:
  /// **'عميل جديد'**
  String get ctNewCustomer;

  /// No description provided for @ctSort.
  ///
  /// In ar, this message translates to:
  /// **'ترتيب'**
  String get ctSort;

  /// No description provided for @ctSortNameAZ.
  ///
  /// In ar, this message translates to:
  /// **'الاسم (أ-ي)'**
  String get ctSortNameAZ;

  /// No description provided for @ctSortBalanceSize.
  ///
  /// In ar, this message translates to:
  /// **'حجم الرصيد'**
  String get ctSortBalanceSize;

  /// No description provided for @ctSearchHint.
  ///
  /// In ar, this message translates to:
  /// **'بحث بالاسم أو الهاتف أو البريد'**
  String get ctSearchHint;

  /// No description provided for @ctSearchExample.
  ///
  /// In ar, this message translates to:
  /// **'مثال: محمد، 077…، name@…'**
  String get ctSearchExample;

  /// No description provided for @ctIdSearchLabel.
  ///
  /// In ar, this message translates to:
  /// **'رقم المعرف / الكود'**
  String get ctIdSearchLabel;

  /// No description provided for @ctIdSearchExample.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 12 أو 000012'**
  String get ctIdSearchExample;

  /// No description provided for @ctApplySearch.
  ///
  /// In ar, this message translates to:
  /// **'تطبيق البحث'**
  String get ctApplySearch;

  /// No description provided for @ctClearFilter.
  ///
  /// In ar, this message translates to:
  /// **'مسح التصفية'**
  String get ctClearFilter;

  /// No description provided for @ctDebtOverdueLabel.
  ///
  /// In ar, this message translates to:
  /// **'عليهم دين أو آجل'**
  String get ctDebtOverdueLabel;

  /// No description provided for @ctDebtOverdueDescription.
  ///
  /// In ar, this message translates to:
  /// **'فواتير بيع آجل غير مرتجعة، أو رصيد مدين على الحساب — للاتصال بخصوص الدين.'**
  String get ctDebtOverdueDescription;

  /// No description provided for @ctInstallmentsLabel.
  ///
  /// In ar, this message translates to:
  /// **'عليهم أقساط'**
  String get ctInstallmentsLabel;

  /// No description provided for @ctInstallmentsDescription.
  ///
  /// In ar, this message translates to:
  /// **'لديهم خطة تقسيط مسجّلة — للاتصال بخصوص الأقساط.'**
  String get ctInstallmentsDescription;

  /// No description provided for @ctNoContactsYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد جهات اتصال بعد'**
  String get ctNoContactsYet;

  /// No description provided for @ctNoResults.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد نتائج مطابقة. غيّر البحث أو أضف عميلاً.'**
  String get ctNoResults;

  /// No description provided for @ctColBalance.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد'**
  String get ctColBalance;

  /// No description provided for @ctColCustomer.
  ///
  /// In ar, this message translates to:
  /// **'العميل'**
  String get ctColCustomer;

  /// No description provided for @ctColStatus.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get ctColStatus;

  /// No description provided for @ctColBalanceHeader.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد'**
  String get ctColBalanceHeader;

  /// No description provided for @ctColEmail.
  ///
  /// In ar, this message translates to:
  /// **'البريد'**
  String get ctColEmail;

  /// No description provided for @ctColPhone.
  ///
  /// In ar, this message translates to:
  /// **'الهاتف'**
  String get ctColPhone;

  /// No description provided for @ctColCustomerHeader.
  ///
  /// In ar, this message translates to:
  /// **'العميل'**
  String get ctColCustomerHeader;

  /// No description provided for @ctEditData.
  ///
  /// In ar, this message translates to:
  /// **'تعديل البيانات'**
  String get ctEditData;

  /// No description provided for @ctDeleteConfirm.
  ///
  /// In ar, this message translates to:
  /// **'حذف «{name}» من النظام؟'**
  String ctDeleteConfirm(Object name);

  /// No description provided for @ctDeleteFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحذف: {error}'**
  String ctDeleteFailed(Object error);

  /// No description provided for @ctShowing.
  ///
  /// In ar, this message translates to:
  /// **'المعروض: {count}'**
  String ctShowing(Object count);

  /// No description provided for @ctCreditSaleLabel.
  ///
  /// In ar, this message translates to:
  /// **'بيع آجل ×{count}'**
  String ctCreditSaleLabel(Object count);

  /// No description provided for @ctInstallmentLabel.
  ///
  /// In ar, this message translates to:
  /// **'تقسيط ×{count}'**
  String ctInstallmentLabel(Object count);

  /// No description provided for @lsSaveSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ إعدادات الولاء'**
  String get lsSaveSuccess;

  /// No description provided for @lsSaveFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحفظ: {error}'**
  String lsSaveFailed(Object error);

  /// No description provided for @lsTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات ولاء العملاء'**
  String get lsTitle;

  /// No description provided for @lsSave.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get lsSave;

  /// No description provided for @lsWhyNotSpoilTitle.
  ///
  /// In ar, this message translates to:
  /// **'لماذا لا «يُفسد» الأرباح؟'**
  String get lsWhyNotSpoilTitle;

  /// No description provided for @lsWhyNotSpoilBody.
  ///
  /// In ar, this message translates to:
  /// **'النقاط منحة تسويقية: تُسجَّل كخصم ولاء منفصل عن هامش البضاعة. منح النقاط لا يغيّر تكلفة الشراء؛ الاستبدال يقلّل ما يدفعه العميل نقداً وفق قواعدك.'**
  String get lsWhyNotSpoilBody;

  /// No description provided for @lsEnablePoints.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل برنامج النقاط'**
  String get lsEnablePoints;

  /// No description provided for @lsEnablePointsSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'عند الإيقاف تُحفظ الفواتير دون جمع أو استبدال'**
  String get lsEnablePointsSubtitle;

  /// No description provided for @lsPointsPerThousand.
  ///
  /// In ar, this message translates to:
  /// **'نقاط لكل 1000 Fdj من صافي الفاتورة المؤهّل'**
  String get lsPointsPerThousand;

  /// No description provided for @lsRedemptionValue.
  ///
  /// In ar, this message translates to:
  /// **'قيمة الخصم بالدينار لكل نقطة عند الاستبدال'**
  String get lsRedemptionValue;

  /// No description provided for @lsMinRedemption.
  ///
  /// In ar, this message translates to:
  /// **'أقل عدد نقاط لعملية استبدال واحدة (0 = بدون حد)'**
  String get lsMinRedemption;

  /// No description provided for @lsMaxRedemptionPercent.
  ///
  /// In ar, this message translates to:
  /// **'أقصى % من صافي الفاتورة يُغطّى بالنقاط'**
  String get lsMaxRedemptionPercent;

  /// No description provided for @lsAwardWhenTitle.
  ///
  /// In ar, this message translates to:
  /// **'متى تُمنح النقاط؟'**
  String get lsAwardWhenTitle;

  /// No description provided for @lsAwardCashSale.
  ///
  /// In ar, this message translates to:
  /// **'البيع النقدي'**
  String get lsAwardCashSale;

  /// No description provided for @lsAwardDelivery.
  ///
  /// In ar, this message translates to:
  /// **'التوصيل'**
  String get lsAwardDelivery;

  /// No description provided for @lsAwardInstallment.
  ///
  /// In ar, this message translates to:
  /// **'التقسيط'**
  String get lsAwardInstallment;

  /// No description provided for @lsAwardCreditWithAdvance.
  ///
  /// In ar, this message translates to:
  /// **'البيع الآجل عند وجود مقدّم دفع'**
  String get lsAwardCreditWithAdvance;

  /// No description provided for @llLoadFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر التحميل: {error}'**
  String llLoadFailed(Object error);

  /// No description provided for @llGranted.
  ///
  /// In ar, this message translates to:
  /// **'منح'**
  String get llGranted;

  /// No description provided for @llRedeemed.
  ///
  /// In ar, this message translates to:
  /// **'استبدال'**
  String get llRedeemed;

  /// No description provided for @llTitle.
  ///
  /// In ar, this message translates to:
  /// **'سجل نقاط الولاء'**
  String get llTitle;

  /// No description provided for @llRefresh.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get llRefresh;

  /// No description provided for @llNoData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد حركات بعد — فعّل الولاء من الإعدادات وسجّل مبيعات مرتبطة بعملاء.'**
  String get llNoData;

  /// No description provided for @llCustomerId.
  ///
  /// In ar, this message translates to:
  /// **'عميل #{id}'**
  String llCustomerId(Object id);

  /// No description provided for @llBalance.
  ///
  /// In ar, this message translates to:
  /// **'رصيد {balance}'**
  String llBalance(Object balance);

  /// No description provided for @svAddReceipt.
  ///
  /// In ar, this message translates to:
  /// **'إذن إضافة مخزن'**
  String get svAddReceipt;

  /// No description provided for @svDispenseReceipt.
  ///
  /// In ar, this message translates to:
  /// **'إذن صرف مخزن'**
  String get svDispenseReceipt;

  /// No description provided for @svTransferBetween.
  ///
  /// In ar, this message translates to:
  /// **'نقل بين مخازن'**
  String get svTransferBetween;

  /// No description provided for @svStocktaking.
  ///
  /// In ar, this message translates to:
  /// **'جرد مخزن'**
  String get svStocktaking;

  /// No description provided for @svSource.
  ///
  /// In ar, this message translates to:
  /// **'مورد'**
  String get svSource;

  /// No description provided for @svBranchShop.
  ///
  /// In ar, this message translates to:
  /// **'فرع/محل آخر'**
  String get svBranchShop;

  /// No description provided for @svMobileSupplier.
  ///
  /// In ar, this message translates to:
  /// **'مورد متنقل'**
  String get svMobileSupplier;

  /// No description provided for @svManual.
  ///
  /// In ar, this message translates to:
  /// **'يدوي'**
  String get svManual;

  /// No description provided for @svMainSupplier.
  ///
  /// In ar, this message translates to:
  /// **'مورد رئيسي'**
  String get svMainSupplier;

  /// No description provided for @svSupplier1.
  ///
  /// In ar, this message translates to:
  /// **'مورد 1'**
  String get svSupplier1;

  /// No description provided for @svSupplier2.
  ///
  /// In ar, this message translates to:
  /// **'مورد 2'**
  String get svSupplier2;

  /// No description provided for @svNoActiveWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد مخزن نشط — أضف مخزناً أولاً'**
  String get svNoActiveWarehouse;

  /// No description provided for @svStocktakingDisabled.
  ///
  /// In ar, this message translates to:
  /// **'حفظ «جرد مخزن» غير مفعّل بعد'**
  String get svStocktakingDisabled;

  /// No description provided for @svUnnamedItem.
  ///
  /// In ar, this message translates to:
  /// **'بند بلا اسم'**
  String get svUnnamedItem;

  /// No description provided for @svEnterMatchingItems.
  ///
  /// In ar, this message translates to:
  /// **'أدخل بنوداً بكميات وأسماء مطابقة لمنتجات مسجّلة'**
  String get svEnterMatchingItems;

  /// No description provided for @svWarning.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه'**
  String get svWarning;

  /// No description provided for @svCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get svCancel;

  /// No description provided for @svContinue.
  ///
  /// In ar, this message translates to:
  /// **'متابعة'**
  String get svContinue;

  /// No description provided for @svPleaseFillSourceName.
  ///
  /// In ar, this message translates to:
  /// **'يرجى تعبئة اسم مصدر الإذن الوارد'**
  String get svPleaseFillSourceName;

  /// No description provided for @svVoucherDocument.
  ///
  /// In ar, this message translates to:
  /// **'سند مخزوني'**
  String get svVoucherDocument;

  /// No description provided for @svSaving.
  ///
  /// In ar, this message translates to:
  /// **'جاري الحفظ…'**
  String get svSaving;

  /// No description provided for @svConfirm.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get svConfirm;

  /// No description provided for @svWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'المخزن'**
  String get svWarehouse;

  /// No description provided for @svNoActiveWarehouseAdd.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد مخزن نشط. أضف مخزناً من «المخازن».'**
  String get svNoActiveWarehouseAdd;

  /// No description provided for @svReceivingWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'المخزن المستقبل'**
  String get svReceivingWarehouse;

  /// No description provided for @svFromWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'من مخزن'**
  String get svFromWarehouse;

  /// No description provided for @svWarehouses.
  ///
  /// In ar, this message translates to:
  /// **'المخازن'**
  String get svWarehouses;

  /// No description provided for @svToWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'إلى مخزن'**
  String get svToWarehouse;

  /// No description provided for @svChoose.
  ///
  /// In ar, this message translates to:
  /// **'اختر'**
  String get svChoose;

  /// No description provided for @svVoucherData.
  ///
  /// In ar, this message translates to:
  /// **'بيانات الإذن المخزني'**
  String get svVoucherData;

  /// No description provided for @svVoucherType.
  ///
  /// In ar, this message translates to:
  /// **'نوع الأذن'**
  String get svVoucherType;

  /// No description provided for @svDate.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get svDate;

  /// No description provided for @svSourceData.
  ///
  /// In ar, this message translates to:
  /// **'بيانات المصدر'**
  String get svSourceData;

  /// No description provided for @svSourceType.
  ///
  /// In ar, this message translates to:
  /// **'نوع المصدر'**
  String get svSourceType;

  /// No description provided for @svSourceRefOptional.
  ///
  /// In ar, this message translates to:
  /// **'مرجع المصدر (ID اختياري)'**
  String get svSourceRefOptional;

  /// No description provided for @svSourceRefExample.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 15'**
  String get svSourceRefExample;

  /// No description provided for @svSourceName.
  ///
  /// In ar, this message translates to:
  /// **'اسم المصدر'**
  String get svSourceName;

  /// No description provided for @svSupplierName.
  ///
  /// In ar, this message translates to:
  /// **'اسم المورد'**
  String get svSupplierName;

  /// No description provided for @svSourceEntityName.
  ///
  /// In ar, this message translates to:
  /// **'اسم الجهة المصدر'**
  String get svSourceEntityName;

  /// No description provided for @svReferenceSettings.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات المرجع'**
  String get svReferenceSettings;

  /// No description provided for @svReference.
  ///
  /// In ar, this message translates to:
  /// **'المرجع'**
  String get svReference;

  /// No description provided for @svReferenceHint.
  ///
  /// In ar, this message translates to:
  /// **'رقم المرجع...'**
  String get svReferenceHint;

  /// No description provided for @svOtherInfo.
  ///
  /// In ar, this message translates to:
  /// **'معلومات أخرى'**
  String get svOtherInfo;

  /// No description provided for @svSupplier.
  ///
  /// In ar, this message translates to:
  /// **'المورد'**
  String get svSupplier;

  /// No description provided for @svNotes.
  ///
  /// In ar, this message translates to:
  /// **'الملاحظات'**
  String get svNotes;

  /// No description provided for @svAutoSupplierReceipt.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء وصل مورد تلقائي وربطه بالسند'**
  String get svAutoSupplierReceipt;

  /// No description provided for @svAutoSupplierReceiptDesc.
  ///
  /// In ar, this message translates to:
  /// **'يسجّل وصلاً في الذمم بنفس مبلغ السند ثم يربطه به.'**
  String get svAutoSupplierReceiptDesc;

  /// No description provided for @svAutoReturnRecord.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل مرتجع المورد تلقائيًا في الذمم'**
  String get svAutoReturnRecord;

  /// No description provided for @svAutoReturnRecordDesc.
  ///
  /// In ar, this message translates to:
  /// **'يسجّل دفعة مورد بدون صندوق لتخفيض الذمة عند صرف بضاعة كمردود.'**
  String get svAutoReturnRecordDesc;

  /// No description provided for @svTotal.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get svTotal;

  /// No description provided for @svQuantity.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get svQuantity;

  /// No description provided for @svUnitPrice.
  ///
  /// In ar, this message translates to:
  /// **'سعر الوحدة'**
  String get svUnitPrice;

  /// No description provided for @svItems.
  ///
  /// In ar, this message translates to:
  /// **'البنود'**
  String get svItems;

  /// No description provided for @svAddItem.
  ///
  /// In ar, this message translates to:
  /// **'إضافة بند'**
  String get svAddItem;

  /// No description provided for @svDeleteItem.
  ///
  /// In ar, this message translates to:
  /// **'حذف البند'**
  String get svDeleteItem;

  /// No description provided for @svItemQuantity.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get svItemQuantity;

  /// No description provided for @svItemUnitPrice.
  ///
  /// In ar, this message translates to:
  /// **'سعر الوحدة'**
  String get svItemUnitPrice;

  /// No description provided for @svChooseProduct.
  ///
  /// In ar, this message translates to:
  /// **'اختر منتجاً'**
  String get svChooseProduct;

  /// No description provided for @svManualSelection.
  ///
  /// In ar, this message translates to:
  /// **'اختيار يدوي'**
  String get svManualSelection;

  /// No description provided for @svManualItemName.
  ///
  /// In ar, this message translates to:
  /// **'اسم البند اليدوي'**
  String get svManualItemName;

  /// No description provided for @svFromReceipt.
  ///
  /// In ar, this message translates to:
  /// **'من إذن وارد #{number}'**
  String svFromReceipt(Object number);

  /// No description provided for @svSupplierReturnNote.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع مورد عبر سند صرف #{number}'**
  String svSupplierReturnNote(Object number);

  /// No description provided for @svProductsNotFound.
  ///
  /// In ar, this message translates to:
  /// **'لم تُعثر على منتجات بالأسماء: {names}'**
  String svProductsNotFound(Object names);

  /// No description provided for @svItemsSkipped.
  ///
  /// In ar, this message translates to:
  /// **'بنود تُجاهل لعدم مطابقة الاسم: {names}\nالمتابعة تحفظ {count} بنداً فقط.'**
  String svItemsSkipped(Object count, Object names);

  /// No description provided for @svVoucherSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ السند #{id} ({number})'**
  String svVoucherSaved(Object id, Object number);

  /// No description provided for @usRoleAdmin.
  ///
  /// In ar, this message translates to:
  /// **'مدير'**
  String get usRoleAdmin;

  /// No description provided for @usRoleEmployee.
  ///
  /// In ar, this message translates to:
  /// **'موظف'**
  String get usRoleEmployee;

  /// No description provided for @usNoPermission.
  ///
  /// In ar, this message translates to:
  /// **'لا صلاحية — المدير فقط يضيف أو يعدّل المستخدمين'**
  String get usNoPermission;

  /// No description provided for @usCannotDisableSelf.
  ///
  /// In ar, this message translates to:
  /// **'لا يمكن تعطيل حسابك وأنت مسجّل الدخول'**
  String get usCannotDisableSelf;

  /// No description provided for @usDisableUserTitle.
  ///
  /// In ar, this message translates to:
  /// **'تعطيل المستخدم'**
  String get usDisableUserTitle;

  /// No description provided for @usDisableUserDesc.
  ///
  /// In ar, this message translates to:
  /// **'سيتم إيقاف الحساب ولن يستطيع تسجيل الدخول.'**
  String get usDisableUserDesc;

  /// No description provided for @usCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get usCancel;

  /// No description provided for @usDisable.
  ///
  /// In ar, this message translates to:
  /// **'تعطيل'**
  String get usDisable;

  /// No description provided for @usDisabled.
  ///
  /// In ar, this message translates to:
  /// **'تم التعطيل'**
  String get usDisabled;

  /// No description provided for @usTitle.
  ///
  /// In ar, this message translates to:
  /// **'المستخدمون'**
  String get usTitle;

  /// No description provided for @usRefresh.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get usRefresh;

  /// No description provided for @usNewUser.
  ///
  /// In ar, this message translates to:
  /// **'مستخدم جديد'**
  String get usNewUser;

  /// No description provided for @usNoActiveUsers.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد مستخدمون نشطون'**
  String get usNoActiveUsers;

  /// No description provided for @usNoActiveUsersHintAdmin.
  ///
  /// In ar, this message translates to:
  /// **'اضغط على زر الإضافة لإنشاء مستخدم جديد'**
  String get usNoActiveUsersHintAdmin;

  /// No description provided for @usNoActiveUsersHintManager.
  ///
  /// In ar, this message translates to:
  /// **'سجّل دخول المدير لإضافة مستخدمين'**
  String get usNoActiveUsersHintManager;

  /// No description provided for @usIdCard.
  ///
  /// In ar, this message translates to:
  /// **'بطاقة الهوية'**
  String get usIdCard;

  /// No description provided for @usEdit.
  ///
  /// In ar, this message translates to:
  /// **'تعديل'**
  String get usEdit;

  /// No description provided for @usDisableButton.
  ///
  /// In ar, this message translates to:
  /// **'تعطيل'**
  String get usDisableButton;

  /// No description provided for @ufPhoneFormatHint.
  ///
  /// In ar, this message translates to:
  /// **'استخدم صيغة هاتف عراقي (مثال: 07XXXXXXXXX)'**
  String get ufPhoneFormatHint;

  /// No description provided for @ufEmailRequired.
  ///
  /// In ar, this message translates to:
  /// **'البريد مطلوب (يُستخدم كاسم دخول)'**
  String get ufEmailRequired;

  /// No description provided for @ufEmailAlreadyRegistered.
  ///
  /// In ar, this message translates to:
  /// **'هذا البريد مسجّل مسبقاً'**
  String get ufEmailAlreadyRegistered;

  /// No description provided for @ufPasswordMinLength.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور 6 أحرف على الأقل'**
  String get ufPasswordMinLength;

  /// No description provided for @ufPasswordMismatch.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد كلمة المرور غير مطابق'**
  String get ufPasswordMismatch;

  /// No description provided for @ufEmailTaken.
  ///
  /// In ar, this message translates to:
  /// **'هذا البريد مسجّل لمستخدم آخر'**
  String get ufEmailTaken;

  /// No description provided for @ufInvalidPasswordOrMismatch.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور غير صالحة أو التأكيد غير مطابق'**
  String get ufInvalidPasswordOrMismatch;

  /// No description provided for @ufTitleEdit.
  ///
  /// In ar, this message translates to:
  /// **'تعديل مستخدم'**
  String get ufTitleEdit;

  /// No description provided for @ufTitleNew.
  ///
  /// In ar, this message translates to:
  /// **'مستخدم جديد'**
  String get ufTitleNew;

  /// No description provided for @ufAccountData.
  ///
  /// In ar, this message translates to:
  /// **'بيانات الحساب'**
  String get ufAccountData;

  /// No description provided for @ufAccountDataDesc.
  ///
  /// In ar, this message translates to:
  /// **'البريد يُستخدم كاسم دخول. الهاتف بصيغة عراقية شائعة (07…).'**
  String get ufAccountDataDesc;

  /// No description provided for @ufFullName.
  ///
  /// In ar, this message translates to:
  /// **'الاسم الكامل'**
  String get ufFullName;

  /// No description provided for @ufRequired.
  ///
  /// In ar, this message translates to:
  /// **'مطلوب'**
  String get ufRequired;

  /// No description provided for @ufRole.
  ///
  /// In ar, this message translates to:
  /// **'الدور الوظيفي'**
  String get ufRole;

  /// No description provided for @ufRoleHint.
  ///
  /// In ar, this message translates to:
  /// **'كاشير، مخزن، …'**
  String get ufRoleHint;

  /// No description provided for @ufEmailLogin.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني (اسم الدخول)'**
  String get ufEmailLogin;

  /// No description provided for @ufPhoneIraq.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهاتف (العراق)'**
  String get ufPhoneIraq;

  /// No description provided for @ufPhoneIraqHint.
  ///
  /// In ar, this message translates to:
  /// **'أرقام عراقية شائعة تبدأ بـ 07'**
  String get ufPhoneIraqHint;

  /// No description provided for @ufPhone2Optional.
  ///
  /// In ar, this message translates to:
  /// **'هاتف ثانٍ (اختياري)'**
  String get ufPhone2Optional;

  /// No description provided for @ufPhone2Hint.
  ///
  /// In ar, this message translates to:
  /// **'إن وُجد'**
  String get ufPhone2Hint;

  /// No description provided for @ufPermissionPassword.
  ///
  /// In ar, this message translates to:
  /// **'الصلاحية وكلمة المرور'**
  String get ufPermissionPassword;

  /// No description provided for @ufAccountType.
  ///
  /// In ar, this message translates to:
  /// **'نوع الحساب'**
  String get ufAccountType;

  /// No description provided for @ufAccountEmployee.
  ///
  /// In ar, this message translates to:
  /// **'موظف (صلاحيات مفصّلة)'**
  String get ufAccountEmployee;

  /// No description provided for @ufAccountAdmin.
  ///
  /// In ar, this message translates to:
  /// **'مدير (كل الصلاحيات)'**
  String get ufAccountAdmin;

  /// No description provided for @ufAdminNote.
  ///
  /// In ar, this message translates to:
  /// **'حساب المدير يتجاوز القيود التفصيلية ويُطبَّق عليه السماح الكامل في النظام.'**
  String get ufAdminNote;

  /// No description provided for @ufNewPasswordOptional.
  ///
  /// In ar, this message translates to:
  /// **'كلمة مرور جديدة (اختياري)'**
  String get ufNewPasswordOptional;

  /// No description provided for @ufPassword.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور'**
  String get ufPassword;

  /// No description provided for @ufConfirmNewPassword.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد كلمة المرور الجديدة'**
  String get ufConfirmNewPassword;

  /// No description provided for @ufConfirmPassword.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد كلمة المرور'**
  String get ufConfirmPassword;

  /// No description provided for @ufDetailedPermissions.
  ///
  /// In ar, this message translates to:
  /// **'الصلاحيات التفصيلية'**
  String get ufDetailedPermissions;

  /// No description provided for @ufDetailedPermissionsDesc.
  ///
  /// In ar, this message translates to:
  /// **'فعّل ما يحق لهذا الموظف الوصول إليه. يُحفظ في قاعدة البيانات لكل مستخدم.'**
  String get ufDetailedPermissionsDesc;

  /// No description provided for @ufSaving.
  ///
  /// In ar, this message translates to:
  /// **'جاري الحفظ…'**
  String get ufSaving;

  /// No description provided for @ufSave.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get ufSave;

  /// No description provided for @ufCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get ufCancel;

  /// No description provided for @ufSaveFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحفظ: {error}'**
  String ufSaveFailed(Object error);

  /// No description provided for @eiRegenerateShiftCode.
  ///
  /// In ar, this message translates to:
  /// **'تجديد رمز الوردية'**
  String get eiRegenerateShiftCode;

  /// No description provided for @eiRegenerateShiftCodeDesc.
  ///
  /// In ar, this message translates to:
  /// **'سيتم إنشاء رمز جديد. يجب طباعة/تحديث بطاقة الهوية وإعادة توزيعها.'**
  String get eiRegenerateShiftCodeDesc;

  /// No description provided for @eiCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get eiCancel;

  /// No description provided for @eiConfirm.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get eiConfirm;

  /// No description provided for @eiShiftCodeRenewed.
  ///
  /// In ar, this message translates to:
  /// **'تم تجديد رمز الوردية.'**
  String get eiShiftCodeRenewed;

  /// No description provided for @eiTitle.
  ///
  /// In ar, this message translates to:
  /// **'هويات الموظفين'**
  String get eiTitle;

  /// No description provided for @eiNoActiveUsers.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد مستخدمون نشطون في قاعدة البيانات.'**
  String get eiNoActiveUsers;

  /// No description provided for @swTimeZero.
  ///
  /// In ar, this message translates to:
  /// **'0 د'**
  String get swTimeZero;

  /// No description provided for @swTimeHoursMinutes.
  ///
  /// In ar, this message translates to:
  /// **'{hours} س {minutes} د'**
  String swTimeHoursMinutes(Object hours, Object minutes);

  /// No description provided for @swTimeHoursOnly.
  ///
  /// In ar, this message translates to:
  /// **'{hours} س'**
  String swTimeHoursOnly(Object hours);

  /// No description provided for @swTimeMinutesOnly.
  ///
  /// In ar, this message translates to:
  /// **'{minutes} د'**
  String swTimeMinutesOnly(Object minutes);

  /// No description provided for @swHintCompact.
  ///
  /// In ar, this message translates to:
  /// **'عرض يومي مرتب؛ افتح اليوم لرؤية تفاصيل الورديات.'**
  String get swHintCompact;

  /// No description provided for @swHintFull.
  ///
  /// In ar, this message translates to:
  /// **'سبع خانات (السبت → الجمعة): المحور 00:00–24:00 بأرقام لاتينية؛ كل شريط فترة وردية (الاسم والوقت داخل الشريط).'**
  String get swHintFull;

  /// No description provided for @swNoShifts.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد ورديات'**
  String get swNoShifts;

  /// No description provided for @swShiftSingular.
  ///
  /// In ar, this message translates to:
  /// **'وردية'**
  String get swShiftSingular;

  /// No description provided for @swShiftPlural.
  ///
  /// In ar, this message translates to:
  /// **'ورديات'**
  String get swShiftPlural;

  /// No description provided for @swTitle.
  ///
  /// In ar, this message translates to:
  /// **'ورديات الموظفين — أسبوع'**
  String get swTitle;

  /// No description provided for @swWeekTotalTime.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الوقت خلال الأسبوع'**
  String get swWeekTotalTime;

  /// No description provided for @swNextWeek.
  ///
  /// In ar, this message translates to:
  /// **'الأسبوع التالي'**
  String get swNextWeek;

  /// No description provided for @swThisWeek.
  ///
  /// In ar, this message translates to:
  /// **'هذا الأسبوع'**
  String get swThisWeek;

  /// No description provided for @swPrevWeek.
  ///
  /// In ar, this message translates to:
  /// **'الأسبوع السابق'**
  String get swPrevWeek;

  /// No description provided for @rpSaleReceipt.
  ///
  /// In ar, this message translates to:
  /// **'إيصال بيع'**
  String get rpSaleReceipt;

  /// No description provided for @rpOperationNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم العملية: {id}'**
  String rpOperationNumber(Object id);

  /// No description provided for @rpDateTime.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ: {date}'**
  String rpDateTime(Object date);

  /// No description provided for @rpCustomer.
  ///
  /// In ar, this message translates to:
  /// **'العميل'**
  String get rpCustomer;

  /// No description provided for @rpCustomerWithValue.
  ///
  /// In ar, this message translates to:
  /// **'العميل: {name}'**
  String rpCustomerWithValue(Object name);

  /// No description provided for @rpDeliveryReceipt.
  ///
  /// In ar, this message translates to:
  /// **'إيصال توصيل — تفاصيل الموقع عبر الرمز أسفل الإيصال'**
  String get rpDeliveryReceipt;

  /// No description provided for @rpPaymentMethod.
  ///
  /// In ar, this message translates to:
  /// **'طريقة الدفع: {method}'**
  String rpPaymentMethod(Object method);

  /// No description provided for @rpEmployee.
  ///
  /// In ar, this message translates to:
  /// **'الموظف: {name}'**
  String rpEmployee(Object name);

  /// No description provided for @rpItems.
  ///
  /// In ar, this message translates to:
  /// **'الأصناف:'**
  String get rpItems;

  /// No description provided for @rpBeforeDiscount.
  ///
  /// In ar, this message translates to:
  /// **'قبل الخصم: {amount} franc djiboutien'**
  String rpBeforeDiscount(Object amount);

  /// No description provided for @rpDiscount.
  ///
  /// In ar, this message translates to:
  /// **'الخصم: {amount} Fdj'**
  String rpDiscount(Object amount);

  /// No description provided for @rpTax.
  ///
  /// In ar, this message translates to:
  /// **'الضريبة: {amount} Fdj'**
  String rpTax(Object amount);

  /// No description provided for @rpLoyaltyDiscount.
  ///
  /// In ar, this message translates to:
  /// **'خصم ولاء: {amount} Fdj'**
  String rpLoyaltyDiscount(Object amount);

  /// No description provided for @rpTotal.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي: {amount} Fdj'**
  String rpTotal(Object amount);

  /// No description provided for @rpBarcode.
  ///
  /// In ar, this message translates to:
  /// **'رمز الشريط: {code}'**
  String rpBarcode(Object code);

  /// No description provided for @rpItemLine.
  ///
  /// In ar, this message translates to:
  /// **'• {name}  |  العدد: {qty}  |  {total}'**
  String rpItemLine(Object name, Object qty, Object total);

  /// No description provided for @rpMoreItems.
  ///
  /// In ar, this message translates to:
  /// **'… و{count} صنفاً آخر (التفاصيل في النظام)'**
  String rpMoreItems(Object count);

  /// No description provided for @rpDeliveryShort.
  ///
  /// In ar, this message translates to:
  /// **'إيصال توصيل — رمز الموقع أسفل الإيصال'**
  String get rpDeliveryShort;

  /// No description provided for @rpPaymentShort.
  ///
  /// In ar, this message translates to:
  /// **'الدفع: {method}'**
  String rpPaymentShort(Object method);

  /// No description provided for @rpCash.
  ///
  /// In ar, this message translates to:
  /// **'نقدي'**
  String get rpCash;

  /// No description provided for @rpCredit.
  ///
  /// In ar, this message translates to:
  /// **'دين'**
  String get rpCredit;

  /// No description provided for @rpInstallment.
  ///
  /// In ar, this message translates to:
  /// **'تقسيط'**
  String get rpInstallment;

  /// No description provided for @rpDeliveryType.
  ///
  /// In ar, this message translates to:
  /// **'توصيل'**
  String get rpDeliveryType;

  /// No description provided for @rpCreditCollection.
  ///
  /// In ar, this message translates to:
  /// **'تحصيل دين'**
  String get rpCreditCollection;

  /// No description provided for @rpInstallmentPayment.
  ///
  /// In ar, this message translates to:
  /// **'تسديد قسط'**
  String get rpInstallmentPayment;

  /// No description provided for @rpSupplierPayment.
  ///
  /// In ar, this message translates to:
  /// **'دفع مورد'**
  String get rpSupplierPayment;

  /// No description provided for @rpCreditSummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص البيع بالدين'**
  String get rpCreditSummary;

  /// No description provided for @rpInvoiceTotal.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي على الفاتورة: {amount} Fdj'**
  String rpInvoiceTotal(Object amount);

  /// No description provided for @rpAmountPaid.
  ///
  /// In ar, this message translates to:
  /// **'الواصل (المدفوع الآن): {amount} Fdj'**
  String rpAmountPaid(Object amount);

  /// No description provided for @rpRemaining.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي على الحساب: {amount} Fdj'**
  String rpRemaining(Object amount);

  /// No description provided for @rpInstallmentSummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص التقسيط (سعر البيع والفائدة)'**
  String get rpInstallmentSummary;

  /// No description provided for @rpSalePriceTotal.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الفاتورة (سعر البيع): {amount} Fdj'**
  String rpSalePriceTotal(Object amount);

  /// No description provided for @rpAdvancePayment.
  ///
  /// In ar, this message translates to:
  /// **'المقدّم / الدفعة الأولى: {amount} Fdj'**
  String rpAdvancePayment(Object amount);

  /// No description provided for @rpFinancedAmount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ بعد المقدّم (أساس الفائدة): {amount} Fdj'**
  String rpFinancedAmount(Object amount);

  /// No description provided for @rpInterestRate.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الفائدة: {rate}٪'**
  String rpInterestRate(Object rate);

  /// No description provided for @rpInterestValue.
  ///
  /// In ar, this message translates to:
  /// **'قيمة الفائدة: {amount} Fdj'**
  String rpInterestValue(Object amount);

  /// No description provided for @rpTotalWithInterest.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي مع الفائدة: {amount} Fdj'**
  String rpTotalWithInterest(Object amount);

  /// No description provided for @rpPlannedMonths.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأشهر المخططة: {count}'**
  String rpPlannedMonths(Object count);

  /// No description provided for @rpSuggestedMonthly.
  ///
  /// In ar, this message translates to:
  /// **'القسط الشهري المقترح: {amount} Fdj'**
  String rpSuggestedMonthly(Object amount);

  /// No description provided for @rpInvoiceDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل الفاتورة'**
  String get rpInvoiceDetails;

  /// No description provided for @rpScanToOpen.
  ///
  /// In ar, this message translates to:
  /// **'امسح لفتح التفاصيل في التطبيق'**
  String get rpScanToOpen;

  /// No description provided for @rpReceiptTextSummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الإيصال كنص'**
  String get rpReceiptTextSummary;

  /// No description provided for @rpDebtorProfile.
  ///
  /// In ar, this message translates to:
  /// **'ملف العميل المدين'**
  String get rpDebtorProfile;

  /// No description provided for @rpDebtDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل الدين'**
  String get rpDebtDetails;

  /// No description provided for @rpReceiptSummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الإيصال'**
  String get rpReceiptSummary;

  /// No description provided for @rpInstallmentPlan.
  ///
  /// In ar, this message translates to:
  /// **'خطة التقسيط'**
  String get rpInstallmentPlan;

  /// No description provided for @rpInstallmentSchedule.
  ///
  /// In ar, this message translates to:
  /// **'جدول الأقساط ومواعيد الاستحقاق'**
  String get rpInstallmentSchedule;

  /// No description provided for @rpDeliveryMap.
  ///
  /// In ar, this message translates to:
  /// **'خريطة التوصيل'**
  String get rpDeliveryMap;

  /// No description provided for @rpOpenInGoogleMaps.
  ///
  /// In ar, this message translates to:
  /// **'فتح في خرائط Google'**
  String get rpOpenInGoogleMaps;

  /// No description provided for @rpDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل'**
  String get rpDetails;

  /// No description provided for @rpVoucherDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل السند'**
  String get rpVoucherDetails;

  /// No description provided for @rpScanToOpenVoucher.
  ///
  /// In ar, this message translates to:
  /// **'امسح لفتح تفاصيل السند في التطبيق'**
  String get rpScanToOpenVoucher;

  /// No description provided for @rpReturnItems.
  ///
  /// In ar, this message translates to:
  /// **'استرجاع المواد'**
  String get rpReturnItems;

  /// No description provided for @rpBuyerAddressQr.
  ///
  /// In ar, this message translates to:
  /// **'QR عنوان المشتري'**
  String get rpBuyerAddressQr;

  /// No description provided for @rpScanToOpenMap.
  ///
  /// In ar, this message translates to:
  /// **'امسح لفتح الموقع على الخرائط'**
  String get rpScanToOpenMap;

  /// No description provided for @rpOpNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم العملية'**
  String get rpOpNumber;

  /// No description provided for @rpDateTimeFull.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ والوقت: {date}'**
  String rpDateTimeFull(Object date);

  /// No description provided for @rpDeliveryNote.
  ///
  /// In ar, this message translates to:
  /// **'إيصال توصيل — تفاصيل الموقع عبر الرمز في أسفل الصفحة.'**
  String get rpDeliveryNote;

  /// No description provided for @rpAddress.
  ///
  /// In ar, this message translates to:
  /// **'العنوان: {address}'**
  String rpAddress(Object address);

  /// No description provided for @rpItem.
  ///
  /// In ar, this message translates to:
  /// **'الصنف'**
  String get rpItem;

  /// No description provided for @rpQuantity.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get rpQuantity;

  /// No description provided for @rpPrice.
  ///
  /// In ar, this message translates to:
  /// **'السعر'**
  String get rpPrice;

  /// No description provided for @rpSubtotal.
  ///
  /// In ar, this message translates to:
  /// **'المجموع'**
  String get rpSubtotal;

  /// No description provided for @rpSubtotalBeforeDiscount.
  ///
  /// In ar, this message translates to:
  /// **'المجموع قبل الخصم: {amount} Fdj'**
  String rpSubtotalBeforeDiscount(Object amount);

  /// No description provided for @rpPercentDiscount.
  ///
  /// In ar, this message translates to:
  /// **'خصم {percent}٪: {amount} Fdj'**
  String rpPercentDiscount(Object amount, Object percent);

  /// No description provided for @rpFinalTotal.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي النهائي: {amount} Fdj'**
  String rpFinalTotal(Object amount);

  /// No description provided for @rpInstallmentTable.
  ///
  /// In ar, this message translates to:
  /// **'جدول الأقساط (حسب تاريخ الاستحقاق)'**
  String get rpInstallmentTable;

  /// No description provided for @rpDueDate.
  ///
  /// In ar, this message translates to:
  /// **'الاستحقاق'**
  String get rpDueDate;

  /// No description provided for @rpAmount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ'**
  String get rpAmount;

  /// No description provided for @rpStatus.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get rpStatus;

  /// No description provided for @rpPaidDate.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ التسديد'**
  String get rpPaidDate;

  /// No description provided for @rpPaid.
  ///
  /// In ar, this message translates to:
  /// **'مسدد'**
  String get rpPaid;

  /// No description provided for @rpDue.
  ///
  /// In ar, this message translates to:
  /// **'مستحق'**
  String get rpDue;

  /// No description provided for @rpInstallmentReceipt.
  ///
  /// In ar, this message translates to:
  /// **'إيصال تسديد قسط'**
  String get rpInstallmentReceipt;

  /// No description provided for @rpInstallmentPlanRef.
  ///
  /// In ar, this message translates to:
  /// **'خطة التقسيط: #{id}'**
  String rpInstallmentPlanRef(Object id);

  /// No description provided for @rpOriginalInvoice.
  ///
  /// In ar, this message translates to:
  /// **'الفاتورة الأصلية: #{id}'**
  String rpOriginalInvoice(Object id);

  /// No description provided for @rpReceiptVoucher.
  ///
  /// In ar, this message translates to:
  /// **'سند القبض (قائمة الفواتير): #{id}'**
  String rpReceiptVoucher(Object id);

  /// No description provided for @rpPaidInstallments.
  ///
  /// In ar, this message translates to:
  /// **'الأقساط المسددة (بالترتيب الزمني للتسديد)'**
  String get rpPaidInstallments;

  /// No description provided for @rpNoPaidInstallments.
  ///
  /// In ar, this message translates to:
  /// **'— لا توجد أقساط مسددة بعد —'**
  String get rpNoPaidInstallments;

  /// No description provided for @rpRemainingInstallments.
  ///
  /// In ar, this message translates to:
  /// **'الأقساط المتبقية ومواعيد الاستحقاق'**
  String get rpRemainingInstallments;

  /// No description provided for @rpAllInstallmentsPaid.
  ///
  /// In ar, this message translates to:
  /// **'اكتمل سداد جميع الأقساط لهذه الخطة.'**
  String get rpAllInstallmentsPaid;

  /// No description provided for @rpScanToOpenInvoice.
  ///
  /// In ar, this message translates to:
  /// **'امسح لفتح تفاصيل الفاتورة والأصناف في التطبيق'**
  String get rpScanToOpenInvoice;

  /// No description provided for @rpPlanRef.
  ///
  /// In ar, this message translates to:
  /// **'مرجع الخطة'**
  String get rpPlanRef;

  /// No description provided for @rpDebtPaymentReceipt.
  ///
  /// In ar, this message translates to:
  /// **'إيصال تسديد دين آجل'**
  String get rpDebtPaymentReceipt;

  /// No description provided for @rpDebtDetailsAndPayments.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل الدين والدفعات'**
  String get rpDebtDetailsAndPayments;

  /// No description provided for @rpScanToOpenDebtVoucher.
  ///
  /// In ar, this message translates to:
  /// **'امسح لفتح تفاصيل سند التحصيل في التطبيق'**
  String get rpScanToOpenDebtVoucher;

  /// No description provided for @rpPaymentRef.
  ///
  /// In ar, this message translates to:
  /// **'مرجع العملية'**
  String get rpPaymentRef;

  /// No description provided for @rpRegisteredInCustomers.
  ///
  /// In ar, this message translates to:
  /// **'مسجّل في العملاء: #{id}'**
  String rpRegisteredInCustomers(Object id);

  /// No description provided for @rpRecordedBy.
  ///
  /// In ar, this message translates to:
  /// **'سجّل العملية: {name}'**
  String rpRecordedBy(Object name);

  /// No description provided for @rpAmountPaidInThis.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المُسدَّد في هذه العملية: {amount} Fdj'**
  String rpAmountPaidInThis(Object amount);

  /// No description provided for @rpDebtBefore.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الدين قبل التسديد: {amount} Fdj'**
  String rpDebtBefore(Object amount);

  /// No description provided for @rpDebtAfter.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي بعد التسديد: {amount} Fdj'**
  String rpDebtAfter(Object amount);

  /// No description provided for @rpAutoDistribute.
  ///
  /// In ar, this message translates to:
  /// **'تُوزَّع الدفعات تلقائياً على فواتير الآجل من الأقدم إلى الأحدث.'**
  String get rpAutoDistribute;

  /// No description provided for @rpPaymentRecord.
  ///
  /// In ar, this message translates to:
  /// **'سجل الدفعة: #{id}'**
  String rpPaymentRecord(Object id);

  /// No description provided for @rpAllDebtPaid.
  ///
  /// In ar, this message translates to:
  /// **'اكتمل سداد دين الآجل لهذا العميل.'**
  String get rpAllDebtPaid;

  /// No description provided for @rpSupplierPaymentReceipt.
  ///
  /// In ar, this message translates to:
  /// **'إيصال دفع مورد'**
  String get rpSupplierPaymentReceipt;

  /// No description provided for @rpPaidAmount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المدفوع: {amount} Fdj'**
  String rpPaidAmount(Object amount);

  /// No description provided for @rpPayableBefore.
  ///
  /// In ar, this message translates to:
  /// **'الذمة قبل الدفعة: {amount} Fdj'**
  String rpPayableBefore(Object amount);

  /// No description provided for @rpPayableAfter.
  ///
  /// In ar, this message translates to:
  /// **'الذمة بعد الدفعة: {amount} Fdj'**
  String rpPayableAfter(Object amount);

  /// No description provided for @rpDeductedFromCash.
  ///
  /// In ar, this message translates to:
  /// **'تم خصم المبلغ من الصندوق.'**
  String get rpDeductedFromCash;

  /// No description provided for @rpNotDeductedFromCash.
  ///
  /// In ar, this message translates to:
  /// **'لم يُخصم من الصندوق (دفع خارج النظام أو بنكي).'**
  String get rpNotDeductedFromCash;

  /// No description provided for @rpNote.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظة: {text}'**
  String rpNote(Object text);

  /// No description provided for @rpVoucherRecord.
  ///
  /// In ar, this message translates to:
  /// **'سجل الدفعة: #{id}'**
  String rpVoucherRecord(Object id);

  /// No description provided for @rpInvoiceVoucher.
  ///
  /// In ar, this message translates to:
  /// **'سند القائمة (فواتير): #{id}'**
  String rpInvoiceVoucher(Object id);

  /// No description provided for @rpClose.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get rpClose;

  /// No description provided for @rpSaleReceiptTitle.
  ///
  /// In ar, this message translates to:
  /// **'إيصال البيع'**
  String get rpSaleReceiptTitle;

  /// No description provided for @rpFullInvoiceDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل الفاتورة كاملة'**
  String get rpFullInvoiceDetails;

  /// No description provided for @rpNoPrinter.
  ///
  /// In ar, this message translates to:
  /// **'لم يتم العثور على طابعة متصلة بالجهاز. يرجى مراجعة توصيل الطابعة.'**
  String get rpNoPrinter;

  /// No description provided for @rpNoPrinterFound.
  ///
  /// In ar, this message translates to:
  /// **'لم يتم العثور على أي طابعة متصلة بالجهاز. يرجى توصيل طابعة للمتابعة.'**
  String get rpNoPrinterFound;

  /// No description provided for @rpPrintError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تشغيل الطباعة المباشرة. يرجى مراجعة إعدادات جهاز الطباعة لديك.'**
  String get rpPrintError;

  /// No description provided for @rpInstallmentDetail.
  ///
  /// In ar, this message translates to:
  /// **'القسط رقم {number} ({amount} Fdj) مستحق في {date}'**
  String rpInstallmentDetail(Object amount, Object date, Object number);

  /// No description provided for @rpInstallmentLine.
  ///
  /// In ar, this message translates to:
  /// **'القسط {number} — {amount} Fdj — استحق {date} — سُدد {paidStatus}'**
  String rpInstallmentLine(
    Object amount,
    Object date,
    Object number,
    Object paidStatus,
  );

  /// No description provided for @rpDebtPaymentReceiptTitle.
  ///
  /// In ar, this message translates to:
  /// **'تسديد دين آجل — {name}'**
  String rpDebtPaymentReceiptTitle(Object name);

  /// No description provided for @rpSupplierDefaultName.
  ///
  /// In ar, this message translates to:
  /// **'مورد'**
  String get rpSupplierDefaultName;

  /// No description provided for @rpCustomerDefaultName.
  ///
  /// In ar, this message translates to:
  /// **'عميل'**
  String get rpCustomerDefaultName;

  /// No description provided for @rpRemainingInstallmentsReminder.
  ///
  /// In ar, this message translates to:
  /// **'الأقساط المتبقية (تذكير بالمواعيد)'**
  String get rpRemainingInstallmentsReminder;

  /// No description provided for @rpReceiptItemsAmount.
  ///
  /// In ar, this message translates to:
  /// **'{amount} Fdj'**
  String rpReceiptItemsAmount(Object amount);

  /// No description provided for @rpInvoicePlanRef.
  ///
  /// In ar, this message translates to:
  /// **'خطة تقسيط #{id}'**
  String rpInvoicePlanRef(Object id);

  /// No description provided for @rpMonthCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأشهر: {count}'**
  String rpMonthCount(Object count);

  /// No description provided for @rpTodayIndicator.
  ///
  /// In ar, this message translates to:
  /// **'  (عملية اليوم)'**
  String get rpTodayIndicator;

  /// No description provided for @anHideAlert.
  ///
  /// In ar, this message translates to:
  /// **'إخفاء التنبيه'**
  String get anHideAlert;

  /// No description provided for @anHideConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هذا تنبيه مهم. هل تريد تأكيد إخفائه من القائمة؟'**
  String get anHideConfirm;

  /// No description provided for @anCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get anCancel;

  /// No description provided for @anConfirm.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get anConfirm;

  /// No description provided for @anNotifications.
  ///
  /// In ar, this message translates to:
  /// **'التنبيهات'**
  String get anNotifications;

  /// No description provided for @anRefresh.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get anRefresh;

  /// No description provided for @anMarkAllRead.
  ///
  /// In ar, this message translates to:
  /// **'تعليم الكل مقروءاً'**
  String get anMarkAllRead;

  /// No description provided for @anRefreshError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر التحديث: {error}'**
  String anRefreshError(Object error);

  /// No description provided for @anEmpty.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد تنبيهات حالياً'**
  String get anEmpty;

  /// No description provided for @anHiddenNotifications.
  ///
  /// In ar, this message translates to:
  /// **'الإشعارات المخفية'**
  String get anHiddenNotifications;

  /// No description provided for @anShow.
  ///
  /// In ar, this message translates to:
  /// **'إظهار'**
  String get anShow;

  /// No description provided for @anHide.
  ///
  /// In ar, this message translates to:
  /// **'إخفاء'**
  String get anHide;

  /// No description provided for @nnInvoices.
  ///
  /// In ar, this message translates to:
  /// **'الفواتير'**
  String get nnInvoices;

  /// No description provided for @nnProducts.
  ///
  /// In ar, this message translates to:
  /// **'المنتجات'**
  String get nnProducts;

  /// No description provided for @nnInstallments.
  ///
  /// In ar, this message translates to:
  /// **'الأقساط'**
  String get nnInstallments;

  /// No description provided for @nnDebts.
  ///
  /// In ar, this message translates to:
  /// **'الديون'**
  String get nnDebts;

  /// No description provided for @nnReports.
  ///
  /// In ar, this message translates to:
  /// **'التقارير'**
  String get nnReports;

  /// No description provided for @nnCash.
  ///
  /// In ar, this message translates to:
  /// **'الصندوق'**
  String get nnCash;

  /// No description provided for @npInstallmentDue.
  ///
  /// In ar, this message translates to:
  /// **'قسط مستحق'**
  String get npInstallmentDue;

  /// No description provided for @npInstallmentLate.
  ///
  /// In ar, this message translates to:
  /// **'قسط متأخر'**
  String get npInstallmentLate;

  /// No description provided for @npStock.
  ///
  /// In ar, this message translates to:
  /// **'مخزون'**
  String get npStock;

  /// No description provided for @npNegativeSale.
  ///
  /// In ar, this message translates to:
  /// **'بيع سالب'**
  String get npNegativeSale;

  /// No description provided for @npExpiryHint.
  ///
  /// In ar, this message translates to:
  /// **'همس الصلاحية'**
  String get npExpiryHint;

  /// No description provided for @npDeferredSave.
  ///
  /// In ar, this message translates to:
  /// **'أجل الحفظ'**
  String get npDeferredSave;

  /// No description provided for @npReturn.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع'**
  String get npReturn;

  /// No description provided for @npSummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص'**
  String get npSummary;

  /// No description provided for @npCash.
  ///
  /// In ar, this message translates to:
  /// **'صندوق'**
  String get npCash;

  /// No description provided for @npCustomerDebt.
  ///
  /// In ar, this message translates to:
  /// **'دين عميل'**
  String get npCustomerDebt;

  /// No description provided for @npDebtAge.
  ///
  /// In ar, this message translates to:
  /// **'عمر دين'**
  String get npDebtAge;

  /// No description provided for @npCustomerCap.
  ///
  /// In ar, this message translates to:
  /// **'سقف عميل'**
  String get npCustomerCap;

  /// No description provided for @npInvoiceCap.
  ///
  /// In ar, this message translates to:
  /// **'سقف فاتورة'**
  String get npInvoiceCap;

  /// No description provided for @npFinancedSale.
  ///
  /// In ar, this message translates to:
  /// **'بيع مموّل'**
  String get npFinancedSale;

  /// No description provided for @npSystem.
  ///
  /// In ar, this message translates to:
  /// **'النظام'**
  String get npSystem;

  /// No description provided for @npNow.
  ///
  /// In ar, this message translates to:
  /// **'الآن'**
  String get npNow;

  /// No description provided for @npMinuteAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ دقيقة'**
  String get npMinuteAgo;

  /// No description provided for @npTwoMinutesAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ دقيقتين'**
  String get npTwoMinutesAgo;

  /// No description provided for @npMinutesAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ {count} دقيقة'**
  String npMinutesAgo(Object count);

  /// No description provided for @npHourAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ ساعة تقريباً'**
  String get npHourAgo;

  /// No description provided for @npTwoHoursAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ ساعتين'**
  String get npTwoHoursAgo;

  /// No description provided for @npHoursAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ {count} ساعة'**
  String npHoursAgo(Object count);

  /// No description provided for @npYesterday.
  ///
  /// In ar, this message translates to:
  /// **'أمس {time}'**
  String npYesterday(Object time);

  /// No description provided for @npTwoDaysAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ يومين'**
  String get npTwoDaysAgo;

  /// No description provided for @npDaysAgo.
  ///
  /// In ar, this message translates to:
  /// **'منذ {count} أيام'**
  String npDaysAgo(Object count);

  /// No description provided for @npSaleInvoiceLine.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة بيع #{id} — {date}'**
  String npSaleInvoiceLine(Object date, Object id);

  /// No description provided for @npSeller.
  ///
  /// In ar, this message translates to:
  /// **'البائع: {name}'**
  String npSeller(Object name);

  /// No description provided for @npCustomer.
  ///
  /// In ar, this message translates to:
  /// **'العميل: {name}'**
  String npCustomer(Object name);

  /// No description provided for @npItem.
  ///
  /// In ar, this message translates to:
  /// **'صنف'**
  String get npItem;

  /// No description provided for @npItemId.
  ///
  /// In ar, this message translates to:
  /// **' — مُعرّف #{id}'**
  String npItemId(Object id);

  /// No description provided for @npSoldInInvoice.
  ///
  /// In ar, this message translates to:
  /// **'  مُباع في الفاتورة: {qty} — الرصيد قبل: {before} → بعد: {after}'**
  String npSoldInInvoice(Object after, Object before, Object qty);

  /// No description provided for @npNegativeSaleTitle.
  ///
  /// In ar, this message translates to:
  /// **'بيع أدى إلى رصيد سالب'**
  String get npNegativeSaleTitle;

  /// No description provided for @npShift.
  ///
  /// In ar, this message translates to:
  /// **'وردية'**
  String get npShift;

  /// No description provided for @npCreditSaleSaved.
  ///
  /// In ar, this message translates to:
  /// **'بيع بالتقسيط — فاتورة محفوظة'**
  String get npCreditSaleSaved;

  /// No description provided for @npCreditSaleRegistered.
  ///
  /// In ar, this message translates to:
  /// **'بيع بالتقسيط — تم التسجيل'**
  String get npCreditSaleRegistered;

  /// No description provided for @npCreditSaleTitle.
  ///
  /// In ar, this message translates to:
  /// **'بيع بالدين (آجل) — تم التسجيل'**
  String get npCreditSaleTitle;

  /// No description provided for @npRegisteredAt.
  ///
  /// In ar, this message translates to:
  /// **'مكان التسجيل: شاشة «بيع جديد» (نقطة البيع)'**
  String get npRegisteredAt;

  /// No description provided for @npInvoiceLine.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة #{id} — {date}'**
  String npInvoiceLine(Object date, Object id);

  /// No description provided for @npTotalLine.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي: {total} Fdj — الواصل: {advance} Fdj — المتبقي: {remaining} Fdj'**
  String npTotalLine(Object advance, Object remaining, Object total);

  /// No description provided for @npInstallmentPlanError.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه: تعذّر إنشاء خطة التقسيط تلقائياً — راجع «الأقساط» واربط الفاتورة بخطة.'**
  String get npInstallmentPlanError;

  /// No description provided for @npInstallmentPlanRef.
  ///
  /// In ar, this message translates to:
  /// **'خطة التقسيط: #{id}'**
  String npInstallmentPlanRef(Object id);

  /// No description provided for @npPlannedMonths.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأشهر المخطط: {count}'**
  String npPlannedMonths(Object count);

  /// No description provided for @npMonthlyEstimate.
  ///
  /// In ar, this message translates to:
  /// **'قسط شهري تقريبي: {amount} Fdj'**
  String npMonthlyEstimate(Object amount);

  /// No description provided for @npFinancedFromSale.
  ///
  /// In ar, this message translates to:
  /// **'الممول من البيع: {amount} Fdj'**
  String npFinancedFromSale(Object amount);

  /// No description provided for @npTotalWithInterest.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي مع الفائدة (إن وُجدت): {amount} Fdj'**
  String npTotalWithInterest(Object amount);

  /// No description provided for @npItemLine.
  ///
  /// In ar, this message translates to:
  /// **'• {name} — #{pid} — {qty} — {total} Fdj'**
  String npItemLine(Object name, Object pid, Object qty, Object total);

  /// No description provided for @npMoreItemsInInvoice.
  ///
  /// In ar, this message translates to:
  /// **'… وباقي الأسطر في الفاتورة.'**
  String get npMoreItemsInInvoice;

  /// No description provided for @npLateInstallmentTitle.
  ///
  /// In ar, this message translates to:
  /// **'قسط متأخر — تذكير'**
  String get npLateInstallmentTitle;

  /// No description provided for @npLateInstallmentBody.
  ///
  /// In ar, this message translates to:
  /// **'{name}{planRef} — مستحق {date}'**
  String npLateInstallmentBody(Object date, Object name, Object planRef);

  /// No description provided for @npCustomerLabel.
  ///
  /// In ar, this message translates to:
  /// **'عميل'**
  String get npCustomerLabel;

  /// No description provided for @npPlanRef.
  ///
  /// In ar, this message translates to:
  /// **' — خطة #{id}'**
  String npPlanRef(Object id);

  /// No description provided for @npUpcomingTitle.
  ///
  /// In ar, this message translates to:
  /// **'قسط قريب الاستحقاق — تذكير'**
  String get npUpcomingTitle;

  /// No description provided for @npUpcomingBody.
  ///
  /// In ar, this message translates to:
  /// **'{name}{planRef} — {date}'**
  String npUpcomingBody(Object date, Object name, Object planRef);

  /// No description provided for @npCustomerDebtTitle.
  ///
  /// In ar, this message translates to:
  /// **'دين على عميل'**
  String get npCustomerDebtTitle;

  /// No description provided for @npCustomerDebtBody.
  ///
  /// In ar, this message translates to:
  /// **'{name}{extra} — المتبقي {balance} Fdj (آجل غير المقسّط).'**
  String npCustomerDebtBody(Object balance, Object extra, Object name);

  /// No description provided for @npDebtAgeTitle.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة آجل — تحذير عمر'**
  String get npDebtAgeTitle;

  /// No description provided for @npDebtAgeBody.
  ///
  /// In ar, this message translates to:
  /// **'حسب إعدادات الدين ({days} يوماً): فاتورة #{id} — {customer} — منذ {date} ({age} {ageWord}).'**
  String npDebtAgeBody(
    Object age,
    Object ageWord,
    Object customer,
    Object date,
    Object days,
    Object id,
  );

  /// No description provided for @npDay.
  ///
  /// In ar, this message translates to:
  /// **'يوماً'**
  String get npDay;

  /// No description provided for @npDays.
  ///
  /// In ar, this message translates to:
  /// **'أياماً'**
  String get npDays;

  /// No description provided for @npCustomerCapTitle.
  ///
  /// In ar, this message translates to:
  /// **'تجاوز سقف الدين للعميل'**
  String get npCustomerCapTitle;

  /// No description provided for @npCustomerCapBody.
  ///
  /// In ar, this message translates to:
  /// **'حسب إعدادات الدين: مجموع الآجل المفتوح لـ «{name}» {amount} Fdj (السقف {cap} Fdj).'**
  String npCustomerCapBody(Object amount, Object cap, Object name);

  /// No description provided for @npCustomerCapBodyNoCard.
  ///
  /// In ar, this message translates to:
  /// **'حسب إعدادات الدين (بدون بطاقة عميل): «{name}» — {amount} Fdj (السقف {cap} Fdj).'**
  String npCustomerCapBodyNoCard(Object amount, Object cap, Object name);

  /// No description provided for @npInvoiceCapTitle.
  ///
  /// In ar, this message translates to:
  /// **'تجاوز سقف فاتورة آجل'**
  String get npInvoiceCapTitle;

  /// No description provided for @npInvoiceCapBody.
  ///
  /// In ar, this message translates to:
  /// **'حسب إعدادات الدين: فاتورة #{id} — {customer} — المتبقي {remaining} Fdj (السقف {cap} Fdj) — تاريخ {date}.'**
  String npInvoiceCapBody(
    Object cap,
    Object customer,
    Object date,
    Object id,
    Object remaining,
  );

  /// No description provided for @npWithoutName.
  ///
  /// In ar, this message translates to:
  /// **'بدون اسم'**
  String get npWithoutName;

  /// No description provided for @npProductLabel.
  ///
  /// In ar, this message translates to:
  /// **'منتج'**
  String get npProductLabel;

  /// No description provided for @npNegativeStockTitle.
  ///
  /// In ar, this message translates to:
  /// **'رصيد سالب في المخزون'**
  String get npNegativeStockTitle;

  /// No description provided for @npNegativeStockBody.
  ///
  /// In ar, this message translates to:
  /// **'«{name}» — الكمية الحالية {qty} (أي بيع زائد نحو {over} {unitWord}).'**
  String npNegativeStockBody(
    Object name,
    Object over,
    Object qty,
    Object unitWord,
  );

  /// No description provided for @npOutOfStockTitle.
  ///
  /// In ar, this message translates to:
  /// **'منتج منفد'**
  String get npOutOfStockTitle;

  /// No description provided for @npOutOfStockBody.
  ///
  /// In ar, this message translates to:
  /// **'«{name}» — المخزون صفر.'**
  String npOutOfStockBody(Object name);

  /// No description provided for @npLowStockTitle.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه مخزون منخفض'**
  String get npLowStockTitle;

  /// No description provided for @npLowStockBody.
  ///
  /// In ar, this message translates to:
  /// **'«{name}» — الكمية {qty} (الحد {threshold}).'**
  String npLowStockBody(Object name, Object qty, Object threshold);

  /// No description provided for @npUnit.
  ///
  /// In ar, this message translates to:
  /// **'وحدة'**
  String get npUnit;

  /// No description provided for @npUnits.
  ///
  /// In ar, this message translates to:
  /// **'وحدات'**
  String get npUnits;

  /// No description provided for @npExpiredTitle.
  ///
  /// In ar, this message translates to:
  /// **'انتهى أجل ما على العبوة'**
  String get npExpiredTitle;

  /// No description provided for @npExpiredBody.
  ///
  /// In ar, this message translates to:
  /// **'«{name}» — تجاوز التاريخ المدوَّن ({date}). راجع العرض أو الإتلاف حسب سياسة المتجر.'**
  String npExpiredBody(Object date, Object name);

  /// No description provided for @npLastDay.
  ///
  /// In ar, this message translates to:
  /// **'اليوم آخرُ الأيام المسماة للحفظ'**
  String get npLastDay;

  /// No description provided for @npDaysRemaining.
  ///
  /// In ar, this message translates to:
  /// **'بقي {count} على أجل الانتهاء'**
  String npDaysRemaining(Object count);

  /// No description provided for @npNearExpiryTitle.
  ///
  /// In ar, this message translates to:
  /// **'في أفق الصلاحية'**
  String get npNearExpiryTitle;

  /// No description provided for @npNearExpiryBody.
  ///
  /// In ar, this message translates to:
  /// **'«{name}» — ينتهي أجل الحفظ عند {date} ({period}).'**
  String npNearExpiryBody(Object date, Object name, Object period);

  /// No description provided for @npReturnTitle.
  ///
  /// In ar, this message translates to:
  /// **'تم تسجيل مرتجع'**
  String get npReturnTitle;

  /// No description provided for @npReturnBody.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة مرتجعة #{id}{orig} — {customer} — {count} صنف — {total} Fdj'**
  String npReturnBody(
    Object count,
    Object customer,
    Object id,
    Object orig,
    Object total,
  );

  /// No description provided for @npOrigRef.
  ///
  /// In ar, this message translates to:
  /// **' ← أصل #{id}'**
  String npOrigRef(Object id);

  /// No description provided for @npDailySummaryTitle.
  ///
  /// In ar, this message translates to:
  /// **'ملخص مبيعات اليوم'**
  String get npDailySummaryTitle;

  /// No description provided for @npDailySummaryBody.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي فواتير البيع (بدون مرتجعات) لهذا اليوم: {total} Fdj'**
  String npDailySummaryBody(Object total);

  /// No description provided for @npLoggerNotifyFail.
  ///
  /// In ar, this message translates to:
  /// **'فشل تحديث قائمة الإشعارات'**
  String get npLoggerNotifyFail;

  /// No description provided for @npRefreshHidden.
  ///
  /// In ar, this message translates to:
  /// **'الإشعارات المخفية'**
  String get npRefreshHidden;

  /// No description provided for @npShow.
  ///
  /// In ar, this message translates to:
  /// **'إظهار'**
  String get npShow;

  /// No description provided for @npHide.
  ///
  /// In ar, this message translates to:
  /// **'إخفاء'**
  String get npHide;

  /// No description provided for @spTitle.
  ///
  /// In ar, this message translates to:
  /// **'خطط الاشتراك'**
  String get spTitle;

  /// No description provided for @spSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'اختر الخطة المناسبة لنشاطك'**
  String get spSubtitle;

  /// No description provided for @spJwtDescription.
  ///
  /// In ar, this message translates to:
  /// **'البطاقات أدناه للمقارنة والأسعار فقط. بعد الدفع تستلم رمزاً موقّعاً (JWT) — الصقه في حقل التفعيل أسفل البطاقات مباشرة.'**
  String get spJwtDescription;

  /// No description provided for @spLegacyDescription.
  ///
  /// In ar, this message translates to:
  /// **'البطاقة الأولى: تجربة تلقائية 15 يوماً (جهازان). البطاقات التالية خطط مدفوعة — بعد الدفع تُدخل المفتاح في الحقل الموحّد أسفل الصفحة.'**
  String get spLegacyDescription;

  /// No description provided for @spHowToSubscribe.
  ///
  /// In ar, this message translates to:
  /// **'كيفية الاشتراك'**
  String get spHowToSubscribe;

  /// No description provided for @spHowJwtStep1.
  ///
  /// In ar, this message translates to:
  /// **'١. تواصل مع فريق Maarey عبر الطرق أدناه'**
  String get spHowJwtStep1;

  /// No description provided for @spHowJwtStep2.
  ///
  /// In ar, this message translates to:
  /// **'٢. أكمل الدفع للخطة التي تريدها'**
  String get spHowJwtStep2;

  /// No description provided for @spHowJwtStep3.
  ///
  /// In ar, this message translates to:
  /// **'٣. استلم رمز التفعيل الكامل (JWT) من الإدارة'**
  String get spHowJwtStep3;

  /// No description provided for @spHowJwtStep4.
  ///
  /// In ar, this message translates to:
  /// **'٤. الصق الرمز في الحقل الموحّد أسفل بطاقات الخطط — الخطة وحد الأجهزة يُستنتجان من الرمز'**
  String get spHowJwtStep4;

  /// No description provided for @spHowLegacyStep1.
  ///
  /// In ar, this message translates to:
  /// **'١. تواصل مع فريق Maarey عبر الطرق أدناه'**
  String get spHowLegacyStep1;

  /// No description provided for @spHowLegacyStep2.
  ///
  /// In ar, this message translates to:
  /// **'٢. أخبرنا بالخطة التي تريدها وأكمل الدفع'**
  String get spHowLegacyStep2;

  /// No description provided for @spHowLegacyStep3.
  ///
  /// In ar, this message translates to:
  /// **'٣. استلم مفتاح الترخيص من الإدارة'**
  String get spHowLegacyStep3;

  /// No description provided for @spHowLegacyStep4.
  ///
  /// In ar, this message translates to:
  /// **'٤. الصق المفتاح في الحقل الموحّد أسفل بطاقات الخطط ثم اضغط «تفعيل المفتاح»'**
  String get spHowLegacyStep4;

  /// No description provided for @spContactWhatsApp.
  ///
  /// In ar, this message translates to:
  /// **'واتساب / هاتف'**
  String get spContactWhatsApp;

  /// No description provided for @spContactEmail.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get spContactEmail;

  /// No description provided for @spContinue.
  ///
  /// In ar, this message translates to:
  /// **'متابعة'**
  String get spContinue;

  /// No description provided for @spErrorPasteTokenFirst.
  ///
  /// In ar, this message translates to:
  /// **'الصق رمز الترخيص أولاً'**
  String get spErrorPasteTokenFirst;

  /// No description provided for @spActivateTokenTitle.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل رمز الترخيص'**
  String get spActivateTokenTitle;

  /// No description provided for @spActivateTokenDesc.
  ///
  /// In ar, this message translates to:
  /// **'الصق الرمز الكامل الذي أرسلته الإدارة. الخطة وحد الأجهزة يُستنتجان من داخل الرمز وليس من شكل البطاقة.'**
  String get spActivateTokenDesc;

  /// No description provided for @spTokenHint.
  ///
  /// In ar, this message translates to:
  /// **'الصق رمز التفعيل هنا'**
  String get spTokenHint;

  /// No description provided for @spActivateTokenButton.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل الرمز'**
  String get spActivateTokenButton;

  /// No description provided for @spErrorPasteKeyFirst.
  ///
  /// In ar, this message translates to:
  /// **'الصق مفتاح الترخيص أو رمز التفعيل أولاً'**
  String get spErrorPasteKeyFirst;

  /// No description provided for @spActivateKeyTitle.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل المفتاح'**
  String get spActivateKeyTitle;

  /// No description provided for @spActivateKeyDesc.
  ///
  /// In ar, this message translates to:
  /// **'الصق مفتاح الترخيص الذي استلمته بعد الدفع، أو رمز JWT إن وُجد. الخطط أعلاه للعرض والمقارنة فقط.'**
  String get spActivateKeyDesc;

  /// No description provided for @spKeyHint.
  ///
  /// In ar, this message translates to:
  /// **'الصق مفتاح الترخيص أو رمز التفعيل'**
  String get spKeyHint;

  /// No description provided for @spActivateKeyButton.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل المفتاح'**
  String get spActivateKeyButton;

  /// No description provided for @spFree.
  ///
  /// In ar, this message translates to:
  /// **'مجاناً'**
  String get spFree;

  /// No description provided for @sp15Days.
  ///
  /// In ar, this message translates to:
  /// **'15 يوماً'**
  String get sp15Days;

  /// No description provided for @spMonthly.
  ///
  /// In ar, this message translates to:
  /// **'شهرياً'**
  String get spMonthly;

  /// No description provided for @spCurrentTrial.
  ///
  /// In ar, this message translates to:
  /// **'تجربتك الحالية'**
  String get spCurrentTrial;

  /// No description provided for @spCurrentPlan.
  ///
  /// In ar, this message translates to:
  /// **'خطتك الحالية'**
  String get spCurrentPlan;

  /// No description provided for @spTrialAutoDescription.
  ///
  /// In ar, this message translates to:
  /// **'التجربة تبدأ تلقائياً — لا مفتاح. عند الترقية استلم الرمز من الإدارة والصقه في الحقل الموحّد أسفل البطاقات.'**
  String get spTrialAutoDescription;

  /// No description provided for @spJwtCardDescription.
  ///
  /// In ar, this message translates to:
  /// **'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق رمز التفعيل (JWT) في الحقل الموحّد أسفل البطاقات مباشرة.'**
  String get spJwtCardDescription;

  /// No description provided for @spLegacyCardDescription.
  ///
  /// In ar, this message translates to:
  /// **'هذه البطاقة للعرض والمقارنة فقط. بعد الدفع الصق مفتاح الترخيص في الحقل الموحّد أسفل البطاقات.'**
  String get spLegacyCardDescription;

  /// No description provided for @spMostPopular.
  ///
  /// In ar, this message translates to:
  /// **'الأكثر طلباً'**
  String get spMostPopular;

  /// No description provided for @spCopiedPhone.
  ///
  /// In ar, this message translates to:
  /// **'تم نسخ الرقم'**
  String get spCopiedPhone;

  /// No description provided for @spCopiedEmail.
  ///
  /// In ar, this message translates to:
  /// **'تم نسخ البريد'**
  String get spCopiedEmail;

  /// No description provided for @spCopy.
  ///
  /// In ar, this message translates to:
  /// **'نسخ'**
  String get spCopy;

  /// No description provided for @spTrialName.
  ///
  /// In ar, this message translates to:
  /// **'التجربة المجانية'**
  String get spTrialName;

  /// No description provided for @spBasicName.
  ///
  /// In ar, this message translates to:
  /// **'الأساسية'**
  String get spBasicName;

  /// No description provided for @spProName.
  ///
  /// In ar, this message translates to:
  /// **'الاحترافية'**
  String get spProName;

  /// No description provided for @spUnlimitedName.
  ///
  /// In ar, this message translates to:
  /// **'غير المحدودة'**
  String get spUnlimitedName;

  /// No description provided for @spDevicesUnlimited.
  ///
  /// In ar, this message translates to:
  /// **'أجهزة غير محدودة'**
  String get spDevicesUnlimited;

  /// No description provided for @spDevicesCount.
  ///
  /// In ar, this message translates to:
  /// **'{count} أجهزة'**
  String spDevicesCount(Object count);

  /// No description provided for @spPlanPriceFree.
  ///
  /// In ar, this message translates to:
  /// **'مجاناً — 15 يوماً'**
  String get spPlanPriceFree;

  /// No description provided for @spPlanPriceMonthly.
  ///
  /// In ar, this message translates to:
  /// **'{price} Fdj / شهر'**
  String spPlanPriceMonthly(Object price);

  /// No description provided for @spTrialFeature1.
  ///
  /// In ar, this message translates to:
  /// **'15 يوماً من أول استخدام (أو من أول تسجيل للحساب السحابي)'**
  String get spTrialFeature1;

  /// No description provided for @spTrialFeature2.
  ///
  /// In ar, this message translates to:
  /// **'جهازان على نفس الحساب'**
  String get spTrialFeature2;

  /// No description provided for @spTrialFeature3.
  ///
  /// In ar, this message translates to:
  /// **'بعدها اختر خطة مدفوعة وفعّل المفتاح الذي ترسله الإدارة'**
  String get spTrialFeature3;

  /// No description provided for @spBasicFeature1.
  ///
  /// In ar, this message translates to:
  /// **'جهازان على نفس الحساب'**
  String get spBasicFeature1;

  /// No description provided for @spBasicFeature2.
  ///
  /// In ar, this message translates to:
  /// **'جميع ميزات المخزون والفواتير'**
  String get spBasicFeature2;

  /// No description provided for @spBasicFeature3.
  ///
  /// In ar, this message translates to:
  /// **'التقارير والتحليلات'**
  String get spBasicFeature3;

  /// No description provided for @spBasicFeature4.
  ///
  /// In ar, this message translates to:
  /// **'دعم فني'**
  String get spBasicFeature4;

  /// No description provided for @spProFeature1.
  ///
  /// In ar, this message translates to:
  /// **'3 أجهزة على نفس الحساب'**
  String get spProFeature1;

  /// No description provided for @spProFeature2.
  ///
  /// In ar, this message translates to:
  /// **'جميع ميزات الخطة الأساسية'**
  String get spProFeature2;

  /// No description provided for @spProFeature3.
  ///
  /// In ar, this message translates to:
  /// **'أوامر الشراء وإدارة الموردين'**
  String get spProFeature3;

  /// No description provided for @spProFeature4.
  ///
  /// In ar, this message translates to:
  /// **'تقارير متقدمة'**
  String get spProFeature4;

  /// No description provided for @spProFeature5.
  ///
  /// In ar, this message translates to:
  /// **'أولوية في الدعم الفني'**
  String get spProFeature5;

  /// No description provided for @spUnlimitedFeature1.
  ///
  /// In ar, this message translates to:
  /// **'أجهزة غير محدودة على حساب واحد'**
  String get spUnlimitedFeature1;

  /// No description provided for @spUnlimitedFeature2.
  ///
  /// In ar, this message translates to:
  /// **'جميع ميزات الخطة الاحترافية'**
  String get spUnlimitedFeature2;

  /// No description provided for @spUnlimitedFeature3.
  ///
  /// In ar, this message translates to:
  /// **'متعدد الفروع'**
  String get spUnlimitedFeature3;

  /// No description provided for @spUnlimitedFeature4.
  ///
  /// In ar, this message translates to:
  /// **'أولوية قصوى في الدعم'**
  String get spUnlimitedFeature4;

  /// No description provided for @devToolsOpen.
  ///
  /// In ar, this message translates to:
  /// **'فتح أدوات الاختبار…'**
  String get devToolsOpen;

  /// No description provided for @bulkImportTitle.
  ///
  /// In ar, this message translates to:
  /// **'استيراد المنتجات من CSV'**
  String get bulkImportTitle;

  /// No description provided for @bulkImportSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'قم باستيراد منتجاتك من ملف CSV بسرعة'**
  String get bulkImportSubtitle;

  /// No description provided for @bulkImportTemplate.
  ///
  /// In ar, this message translates to:
  /// **'تحميل نموذج CSV'**
  String get bulkImportTemplate;

  /// No description provided for @bulkImportTemplateDesc.
  ///
  /// In ar, this message translates to:
  /// **'حمّل النموذج المملوء مسبقاً ثم أعد ملؤه ببيانات منتجاتك'**
  String get bulkImportTemplateDesc;

  /// No description provided for @bulkImportPickFile.
  ///
  /// In ar, this message translates to:
  /// **'اختيار ملف CSV'**
  String get bulkImportPickFile;

  /// No description provided for @bulkImportPickFileDesc.
  ///
  /// In ar, this message translates to:
  /// **'اختر ملف CSV من جهازك'**
  String get bulkImportPickFileDesc;

  /// No description provided for @bulkImportPreview.
  ///
  /// In ar, this message translates to:
  /// **'معاينة البيانات'**
  String get bulkImportPreview;

  /// No description provided for @bulkImportStartImport.
  ///
  /// In ar, this message translates to:
  /// **'بدء الاستيراد'**
  String get bulkImportStartImport;

  /// No description provided for @bulkImportImporting.
  ///
  /// In ar, this message translates to:
  /// **'جاري الاستيراد...'**
  String get bulkImportImporting;

  /// No description provided for @bulkImportSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم استيراد المنتجات بنجاح'**
  String get bulkImportSuccess;

  /// No description provided for @bulkImportPartial.
  ///
  /// In ar, this message translates to:
  /// **'تم استيراد {success} من {total} — فشل {failed}'**
  String bulkImportPartial(Object failed, Object success, Object total);

  /// No description provided for @bulkImportFailed.
  ///
  /// In ar, this message translates to:
  /// **'فشل الاستيراد'**
  String get bulkImportFailed;

  /// No description provided for @bulkImportNoFile.
  ///
  /// In ar, this message translates to:
  /// **'لم يتم اختيار ملف'**
  String get bulkImportNoFile;

  /// No description provided for @bulkImportInvalidFormat.
  ///
  /// In ar, this message translates to:
  /// **'صيغة الملف غير صحيحة'**
  String get bulkImportInvalidFormat;

  /// No description provided for @bulkImportColName.
  ///
  /// In ar, this message translates to:
  /// **'اسم المنتج'**
  String get bulkImportColName;

  /// No description provided for @bulkImportColBarcode.
  ///
  /// In ar, this message translates to:
  /// **'الباركود'**
  String get bulkImportColBarcode;

  /// No description provided for @bulkImportColBuyPrice.
  ///
  /// In ar, this message translates to:
  /// **'سعر الشراء'**
  String get bulkImportColBuyPrice;

  /// No description provided for @bulkImportColSellPrice.
  ///
  /// In ar, this message translates to:
  /// **'سعر البيع'**
  String get bulkImportColSellPrice;

  /// No description provided for @bulkImportColQty.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get bulkImportColQty;

  /// No description provided for @bulkImportColCategory.
  ///
  /// In ar, this message translates to:
  /// **'الفئة'**
  String get bulkImportColCategory;

  /// No description provided for @bulkImportColLowStock.
  ///
  /// In ar, this message translates to:
  /// **'حد التنبيه'**
  String get bulkImportColLowStock;

  /// No description provided for @bulkImportColDescription.
  ///
  /// In ar, this message translates to:
  /// **'الوصف'**
  String get bulkImportColDescription;

  /// No description provided for @bulkImportColSupplier.
  ///
  /// In ar, this message translates to:
  /// **'المورد'**
  String get bulkImportColSupplier;

  /// No description provided for @bulkImportColTaxPercent.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الضريبة'**
  String get bulkImportColTaxPercent;

  /// No description provided for @bulkImportColSaleUnit.
  ///
  /// In ar, this message translates to:
  /// **'وحدة البيع'**
  String get bulkImportColSaleUnit;

  /// No description provided for @bulkImportRowsFound.
  ///
  /// In ar, this message translates to:
  /// **'تم العثور على {count} صفوف'**
  String bulkImportRowsFound(Object count);

  /// No description provided for @bulkImportErrorsFound.
  ///
  /// In ar, this message translates to:
  /// **'يوجد {count} أخطاء — صححها قبل الاستيراد'**
  String bulkImportErrorsFound(Object count);

  /// No description provided for @bulkImportRowError.
  ///
  /// In ar, this message translates to:
  /// **'صف {row}: {error}'**
  String bulkImportRowError(Object error, Object row);

  /// No description provided for @bulkImportRequiredField.
  ///
  /// In ar, this message translates to:
  /// **'حقل مطلوب'**
  String get bulkImportRequiredField;

  /// No description provided for @bulkImportInvalidNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم غير صحيح'**
  String get bulkImportInvalidNumber;

  /// No description provided for @bulkImportImportAll.
  ///
  /// In ar, this message translates to:
  /// **'استيراد الكل'**
  String get bulkImportImportAll;

  /// No description provided for @bulkImportCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get bulkImportCancel;

  /// No description provided for @bulkImportColumnName.
  ///
  /// In ar, this message translates to:
  /// **'العمود'**
  String get bulkImportColumnName;

  /// No description provided for @bulkImportColumnSample.
  ///
  /// In ar, this message translates to:
  /// **'مثال'**
  String get bulkImportColumnSample;

  /// No description provided for @bulkImportColumnStatus.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get bulkImportColumnStatus;

  /// No description provided for @bulkImportRequired.
  ///
  /// In ar, this message translates to:
  /// **'مطلوب'**
  String get bulkImportRequired;

  /// No description provided for @bulkImportOptional.
  ///
  /// In ar, this message translates to:
  /// **'اختياري'**
  String get bulkImportOptional;

  /// No description provided for @bulkImportBackToImport.
  ///
  /// In ar, this message translates to:
  /// **'العودة للاستيراد'**
  String get bulkImportBackToImport;

  /// No description provided for @bulkImportAddMore.
  ///
  /// In ar, this message translates to:
  /// **'إضافة المزيد'**
  String get bulkImportAddMore;

  /// No description provided for @bulkImportSampleName.
  ///
  /// In ar, this message translates to:
  /// **'شيبس ليز'**
  String get bulkImportSampleName;

  /// No description provided for @bulkImportSampleBarcode.
  ///
  /// In ar, this message translates to:
  /// **'6281100123456'**
  String get bulkImportSampleBarcode;

  /// No description provided for @bulkImportSampleBuy.
  ///
  /// In ar, this message translates to:
  /// **'800'**
  String get bulkImportSampleBuy;

  /// No description provided for @bulkImportSampleSell.
  ///
  /// In ar, this message translates to:
  /// **'1000'**
  String get bulkImportSampleSell;

  /// No description provided for @bulkImportSampleQty.
  ///
  /// In ar, this message translates to:
  /// **'50'**
  String get bulkImportSampleQty;

  /// No description provided for @bulkImportSampleCategory.
  ///
  /// In ar, this message translates to:
  /// **'وجبات خفيفة'**
  String get bulkImportSampleCategory;

  /// No description provided for @bulkImportSampleLowStock.
  ///
  /// In ar, this message translates to:
  /// **'10'**
  String get bulkImportSampleLowStock;

  /// No description provided for @bulkImportSampleDesc.
  ///
  /// In ar, this message translates to:
  /// **'شيبس بطاطس بالملح'**
  String get bulkImportSampleDesc;

  /// No description provided for @bulkImportSampleSupplier.
  ///
  /// In ar, this message translates to:
  /// **'شركة الأمل'**
  String get bulkImportSampleSupplier;

  /// No description provided for @bulkImportSampleTax.
  ///
  /// In ar, this message translates to:
  /// **'0'**
  String get bulkImportSampleTax;

  /// No description provided for @bulkImportSampleUnit.
  ///
  /// In ar, this message translates to:
  /// **'قطعة'**
  String get bulkImportSampleUnit;

  /// No description provided for @ipBulkImport.
  ///
  /// In ar, this message translates to:
  /// **'استيراد منتجات بالجملة'**
  String get ipBulkImport;

  /// No description provided for @syncNothingToSync.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد تغييرات للمزامنة'**
  String get syncNothingToSync;

  /// No description provided for @syncCompletedPush.
  ///
  /// In ar, this message translates to:
  /// **'تم رفع البيانات إلى السحابة'**
  String get syncCompletedPush;

  /// No description provided for @syncCompletedPull.
  ///
  /// In ar, this message translates to:
  /// **'تم سحب البيانات من السحابة'**
  String get syncCompletedPull;

  /// No description provided for @syncNotLoggedIn.
  ///
  /// In ar, this message translates to:
  /// **'يجب تسجيل الدخول أولاً للمزامنة'**
  String get syncNotLoggedIn;

  /// No description provided for @olTitle.
  ///
  /// In ar, this message translates to:
  /// **'بحث عن منتج'**
  String get olTitle;

  /// No description provided for @olScanHint.
  ///
  /// In ar, this message translates to:
  /// **'امسح الباركود أو اكتب اسم المنتج'**
  String get olScanHint;

  /// No description provided for @olSearching.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ البحث…'**
  String get olSearching;

  /// No description provided for @olFoundInLocal.
  ///
  /// In ar, this message translates to:
  /// **'وجد في قاعدة البيانات المحلية'**
  String get olFoundInLocal;

  /// No description provided for @olNotFound.
  ///
  /// In ar, this message translates to:
  /// **'لم يُعثر على المنتج محلياً'**
  String get olNotFound;

  /// No description provided for @olSearchingOnline.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ البحث عبر الإنترنت…'**
  String get olSearchingOnline;

  /// No description provided for @olOnlineFound.
  ///
  /// In ar, this message translates to:
  /// **'وجد في الدليل الدولي'**
  String get olOnlineFound;

  /// No description provided for @olOnlineNotFound.
  ///
  /// In ar, this message translates to:
  /// **'المنتج غير موجود في الدليل الدولي'**
  String get olOnlineNotFound;

  /// No description provided for @olUseThisProduct.
  ///
  /// In ar, this message translates to:
  /// **'استخدم هذا المنتج'**
  String get olUseThisProduct;

  /// No description provided for @olNoResults.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد نتائج'**
  String get olNoResults;

  /// No description provided for @olProductImage.
  ///
  /// In ar, this message translates to:
  /// **'صورة المنتج'**
  String get olProductImage;

  /// No description provided for @olBrand.
  ///
  /// In ar, this message translates to:
  /// **'العلامة التجارية'**
  String get olBrand;

  /// No description provided for @olCategory.
  ///
  /// In ar, this message translates to:
  /// **'الفئة'**
  String get olCategory;

  /// No description provided for @olQuantity.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get olQuantity;

  /// No description provided for @olAddToProducts.
  ///
  /// In ar, this message translates to:
  /// **'إضافة إلى المنتجات'**
  String get olAddToProducts;

  /// No description provided for @olAutoFilled.
  ///
  /// In ar, this message translates to:
  /// **'تم ملء الحقول تلقائياً من الدليل الدولي'**
  String get olAutoFilled;

  /// No description provided for @signupAcceptTermsFirst.
  ///
  /// In ar, this message translates to:
  /// **'يجب الموافقة على الشروط والأحكام أولاً'**
  String get signupAcceptTermsFirst;

  /// No description provided for @signupAccountCreated.
  ///
  /// In ar, this message translates to:
  /// **'تم إنشاء الحساب بنجاح! يرجى تسجيل الدخول.'**
  String get signupAccountCreated;

  /// No description provided for @signupGoogleSoon.
  ///
  /// In ar, this message translates to:
  /// **'سيتم تفعيل ميزة Google Sign-In قريباً'**
  String get signupGoogleSoon;

  /// No description provided for @signupBrandSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'نظام إدارة الأعمال'**
  String get signupBrandSubtitle;

  /// No description provided for @signupGetStarted.
  ///
  /// In ar, this message translates to:
  /// **'ابدأ الآن'**
  String get signupGetStarted;

  /// No description provided for @signupCreateAccount.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب جديد'**
  String get signupCreateAccount;

  /// No description provided for @signupFullNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'الاسم التجاري / الاسم الكامل'**
  String get signupFullNameLabel;

  /// No description provided for @signupFullNameHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: مؤسسة البصرة للتجارة'**
  String get signupFullNameHint;

  /// No description provided for @signupNameRequired.
  ///
  /// In ar, this message translates to:
  /// **'الاسم مطلوب'**
  String get signupNameRequired;

  /// No description provided for @signupNameMinLength.
  ///
  /// In ar, this message translates to:
  /// **'يجب أن يكون 3 أحرف على الأقل'**
  String get signupNameMinLength;

  /// No description provided for @signupEmailLabel.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get signupEmailLabel;

  /// No description provided for @signupEmailRequired.
  ///
  /// In ar, this message translates to:
  /// **'البريد مطلوب'**
  String get signupEmailRequired;

  /// No description provided for @signupEmailInvalid.
  ///
  /// In ar, this message translates to:
  /// **'صيغة البريد غير صحيحة'**
  String get signupEmailInvalid;

  /// No description provided for @signupPhoneLabel.
  ///
  /// In ar, this message translates to:
  /// **'رقم الجوال'**
  String get signupPhoneLabel;

  /// No description provided for @signupPhoneHintIraq.
  ///
  /// In ar, this message translates to:
  /// **'07701234567'**
  String get signupPhoneHintIraq;

  /// No description provided for @signupPhoneHintOther.
  ///
  /// In ar, this message translates to:
  /// **'أدخل الرقم'**
  String get signupPhoneHintOther;

  /// No description provided for @signupPhoneRequired.
  ///
  /// In ar, this message translates to:
  /// **'رقم الجوال مطلوب'**
  String get signupPhoneRequired;

  /// No description provided for @signupPhoneIraqInvalid.
  ///
  /// In ar, this message translates to:
  /// **'رقم عراقي: 11 رقماً يبدأ بـ 07'**
  String get signupPhoneIraqInvalid;

  /// No description provided for @signupPhoneInvalid.
  ///
  /// In ar, this message translates to:
  /// **'رقم غير صحيح'**
  String get signupPhoneInvalid;

  /// No description provided for @signupPasswordLabel.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور'**
  String get signupPasswordLabel;

  /// No description provided for @signupPasswordHint.
  ///
  /// In ar, this message translates to:
  /// **'8 أحرف على الأقل'**
  String get signupPasswordHint;

  /// No description provided for @signupPasswordRequired.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور مطلوبة'**
  String get signupPasswordRequired;

  /// No description provided for @signupPasswordMinLength.
  ///
  /// In ar, this message translates to:
  /// **'8 أحرف على الأقل'**
  String get signupPasswordMinLength;

  /// No description provided for @signupConfirmPasswordLabel.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد كلمة المرور'**
  String get signupConfirmPasswordLabel;

  /// No description provided for @signupConfirmPasswordHint.
  ///
  /// In ar, this message translates to:
  /// **'أعد إدخال كلمة المرور'**
  String get signupConfirmPasswordHint;

  /// No description provided for @signupConfirmPasswordRequired.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد كلمة المرور مطلوب'**
  String get signupConfirmPasswordRequired;

  /// No description provided for @signupPasswordsMismatch.
  ///
  /// In ar, this message translates to:
  /// **'كلمتا المرور غير متطابقتين'**
  String get signupPasswordsMismatch;

  /// No description provided for @signupCaptchaTitle.
  ///
  /// In ar, this message translates to:
  /// **'التحقق من الهوية — أجب على السؤال البسيط'**
  String get signupCaptchaTitle;

  /// No description provided for @signupCaptchaChange.
  ///
  /// In ar, this message translates to:
  /// **'تغيير'**
  String get signupCaptchaChange;

  /// No description provided for @signupCaptchaHint.
  ///
  /// In ar, this message translates to:
  /// **'الجواب'**
  String get signupCaptchaHint;

  /// No description provided for @signupCaptchaAnswerRequired.
  ///
  /// In ar, this message translates to:
  /// **'أدخل الجواب'**
  String get signupCaptchaAnswerRequired;

  /// No description provided for @signupCaptchaWrong.
  ///
  /// In ar, this message translates to:
  /// **'إجابة غير صحيحة'**
  String get signupCaptchaWrong;

  /// No description provided for @signupCreateButton.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء الحساب'**
  String get signupCreateButton;

  /// No description provided for @signupHasAccount.
  ///
  /// In ar, this message translates to:
  /// **'لديك حساب بالفعل؟'**
  String get signupHasAccount;

  /// No description provided for @signupLoginLink.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الدخول'**
  String get signupLoginLink;

  /// No description provided for @signupGoogleButton.
  ///
  /// In ar, this message translates to:
  /// **'التسجيل عبر Google'**
  String get signupGoogleButton;

  /// No description provided for @signupOrDivider.
  ///
  /// In ar, this message translates to:
  /// **'أو التسجيل بالبيانات'**
  String get signupOrDivider;

  /// No description provided for @signupTermsPrefix.
  ///
  /// In ar, this message translates to:
  /// **'أوافق على '**
  String get signupTermsPrefix;

  /// No description provided for @signupTermsOfUse.
  ///
  /// In ar, this message translates to:
  /// **'شروط الاستخدام'**
  String get signupTermsOfUse;

  /// No description provided for @signupAnd.
  ///
  /// In ar, this message translates to:
  /// **'  و  '**
  String get signupAnd;

  /// No description provided for @signupPrivacyPolicy.
  ///
  /// In ar, this message translates to:
  /// **'سياسة الخصوصية'**
  String get signupPrivacyPolicy;

  /// No description provided for @signupTermsSuffix.
  ///
  /// In ar, this message translates to:
  /// **' الخاصة بـ Maarey.'**
  String get signupTermsSuffix;

  /// No description provided for @licEnterKey.
  ///
  /// In ar, this message translates to:
  /// **'أدخل مفتاح الترخيص'**
  String get licEnterKey;

  /// No description provided for @licStoreSystem.
  ///
  /// In ar, this message translates to:
  /// **'نظام إدارة المتاجر'**
  String get licStoreSystem;

  /// No description provided for @licActivation.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل الترخيص'**
  String get licActivation;

  /// No description provided for @licEnterKeyToContinue.
  ///
  /// In ar, this message translates to:
  /// **'أدخل مفتاح الترخيص للمتابعة'**
  String get licEnterKeyToContinue;

  /// No description provided for @licKeyHint.
  ///
  /// In ar, this message translates to:
  /// **'MAAREY-XXXX-XXXX-XXXX أو JWT'**
  String get licKeyHint;

  /// No description provided for @licActivate.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل'**
  String get licActivate;

  /// No description provided for @licContactSupport.
  ///
  /// In ar, this message translates to:
  /// **'للحصول على مفتاح ترخيص، تواصل مع فريق Maarey.'**
  String get licContactSupport;

  /// No description provided for @licAllRightsReserved.
  ///
  /// In ar, this message translates to:
  /// **'Maarey v2.0 — جميع الحقوق محفوظة'**
  String get licAllRightsReserved;

  /// No description provided for @licTimeConflict.
  ///
  /// In ar, this message translates to:
  /// **'تعارض في إعدادات الوقت'**
  String get licTimeConflict;

  /// No description provided for @licSuspended.
  ///
  /// In ar, this message translates to:
  /// **'الترخيص موقوف'**
  String get licSuspended;

  /// No description provided for @licDeviceLimitExceeded.
  ///
  /// In ar, this message translates to:
  /// **'تجاوز حد الأجهزة'**
  String get licDeviceLimitExceeded;

  /// No description provided for @licExpired.
  ///
  /// In ar, this message translates to:
  /// **'انتهى الاشتراك'**
  String get licExpired;

  /// No description provided for @licTimeConflictMsg.
  ///
  /// In ar, this message translates to:
  /// **'تم اكتشاف تعارض في إعدادات الوقت. تواصل مع الدعم للمساعدة في إعادة التحقق.'**
  String get licTimeConflictMsg;

  /// No description provided for @licAccountSuspended.
  ///
  /// In ar, this message translates to:
  /// **'تم إيقاف حسابك. تواصل مع الدعم الفني.'**
  String get licAccountSuspended;

  /// No description provided for @licSubscriptionEnded.
  ///
  /// In ar, this message translates to:
  /// **'انتهى اشتراكك. جدّد للمتابعة.'**
  String get licSubscriptionEnded;

  /// No description provided for @licCurrentPlan.
  ///
  /// In ar, this message translates to:
  /// **'خطتك الحالية'**
  String get licCurrentPlan;

  /// No description provided for @licRegisteredDevices.
  ///
  /// In ar, this message translates to:
  /// **'الأجهزة المسجّلة'**
  String get licRegisteredDevices;

  /// No description provided for @licSubscriptionExpiry.
  ///
  /// In ar, this message translates to:
  /// **'انتهاء الاشتراك'**
  String get licSubscriptionExpiry;

  /// No description provided for @licTrialExpiry.
  ///
  /// In ar, this message translates to:
  /// **'انتهاء التجربة'**
  String get licTrialExpiry;

  /// No description provided for @licUpgradePlan.
  ///
  /// In ar, this message translates to:
  /// **'ترقية الخطة لإضافة أجهزة'**
  String get licUpgradePlan;

  /// No description provided for @licRenewSubscription.
  ///
  /// In ar, this message translates to:
  /// **'تجديد الاشتراك'**
  String get licRenewSubscription;

  /// No description provided for @licComparePlans.
  ///
  /// In ar, this message translates to:
  /// **'مقارنة خطط الاشتراك'**
  String get licComparePlans;

  /// No description provided for @licEnterNewKey.
  ///
  /// In ar, this message translates to:
  /// **'إدخال مفتاح جديد'**
  String get licEnterNewKey;

  /// No description provided for @licVerifyAgain.
  ///
  /// In ar, this message translates to:
  /// **'إعادة التحقق'**
  String get licVerifyAgain;

  /// No description provided for @licUseAnotherKey.
  ///
  /// In ar, this message translates to:
  /// **'استخدام مفتاح آخر'**
  String get licUseAnotherKey;

  /// No description provided for @cashInvoicesSales.
  ///
  /// In ar, this message translates to:
  /// **'فواتير ومبيعات (قيود مرتبطة بفاتورة)'**
  String get cashInvoicesSales;

  /// No description provided for @cashManualDeposit.
  ///
  /// In ar, this message translates to:
  /// **'إيداع يدوي'**
  String get cashManualDeposit;

  /// No description provided for @cashManualWithdrawal.
  ///
  /// In ar, this message translates to:
  /// **'سحب يدوي'**
  String get cashManualWithdrawal;

  /// No description provided for @cashOtherMovements.
  ///
  /// In ar, this message translates to:
  /// **'حركات أخرى'**
  String get cashOtherMovements;

  /// No description provided for @cashLinkedInvoice.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة #'**
  String get cashLinkedInvoice;

  /// No description provided for @cashInflow.
  ///
  /// In ar, this message translates to:
  /// **'وارد'**
  String get cashInflow;

  /// No description provided for @cashOutflow.
  ///
  /// In ar, this message translates to:
  /// **'صادر'**
  String get cashOutflow;

  /// No description provided for @cashNoLinkedEntries.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد في هذه المجموعة حركات مرتبطة برقم فاتورة.'**
  String get cashNoLinkedEntries;

  /// No description provided for @cashInvoiceIdsShown.
  ///
  /// In ar, this message translates to:
  /// **'أرقام الفواتير الظاهرة في القيود:'**
  String get cashInvoiceIdsShown;

  /// No description provided for @cashShiftDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل الوردية #'**
  String get cashShiftDetails;

  /// No description provided for @cashShiftEmployee.
  ///
  /// In ar, this message translates to:
  /// **'موظف الوردية (البطاقة)'**
  String get cashShiftEmployee;

  /// No description provided for @cashSummaryTitle.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الصندوق'**
  String get cashSummaryTitle;

  /// No description provided for @cashTotalIn.
  ///
  /// In ar, this message translates to:
  /// **'الوارد الكلي'**
  String get cashTotalIn;

  /// No description provided for @cashTotalOut.
  ///
  /// In ar, this message translates to:
  /// **'الصادر الكلي'**
  String get cashTotalOut;

  /// No description provided for @cashNetFlow.
  ///
  /// In ar, this message translates to:
  /// **'صافي التدفق'**
  String get cashNetFlow;

  /// No description provided for @cashBalanceLabel.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد'**
  String get cashBalanceLabel;

  /// No description provided for @cashDetailsTitle.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل الصندوق'**
  String get cashDetailsTitle;

  /// No description provided for @cashFilterAll.
  ///
  /// In ar, this message translates to:
  /// **'الكل'**
  String get cashFilterAll;

  /// No description provided for @cashDateRange.
  ///
  /// In ar, this message translates to:
  /// **'نطاق التاريخ'**
  String get cashDateRange;

  /// No description provided for @cashFrom.
  ///
  /// In ar, this message translates to:
  /// **'من'**
  String get cashFrom;

  /// No description provided for @cashTo.
  ///
  /// In ar, this message translates to:
  /// **'إلى'**
  String get cashTo;

  /// No description provided for @cashAmount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ'**
  String get cashAmount;

  /// No description provided for @cashDescription.
  ///
  /// In ar, this message translates to:
  /// **'الوصف'**
  String get cashDescription;

  /// No description provided for @cashType.
  ///
  /// In ar, this message translates to:
  /// **'النوع'**
  String get cashType;

  /// No description provided for @cashDate.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get cashDate;

  /// No description provided for @cashReceipt.
  ///
  /// In ar, this message translates to:
  /// **'إيصال'**
  String get cashReceipt;

  /// No description provided for @cashPayment.
  ///
  /// In ar, this message translates to:
  /// **'دفعة'**
  String get cashPayment;

  /// No description provided for @cashDeposit.
  ///
  /// In ar, this message translates to:
  /// **'إيداع'**
  String get cashDeposit;

  /// No description provided for @cashWithdrawal.
  ///
  /// In ar, this message translates to:
  /// **'سحب'**
  String get cashWithdrawal;

  /// No description provided for @cashTransfer.
  ///
  /// In ar, this message translates to:
  /// **'تحويل'**
  String get cashTransfer;

  /// No description provided for @cashRefund.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع'**
  String get cashRefund;

  /// No description provided for @cashOpenShift.
  ///
  /// In ar, this message translates to:
  /// **'فتح وردية'**
  String get cashOpenShift;

  /// No description provided for @cashCloseShift.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق وردية'**
  String get cashCloseShift;

  /// No description provided for @cashShiftHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل الورديات'**
  String get cashShiftHistory;

  /// No description provided for @cashTransactions.
  ///
  /// In ar, this message translates to:
  /// **'المعاملات'**
  String get cashTransactions;

  /// No description provided for @cashNoTransactions.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد معاملات'**
  String get cashNoTransactions;

  /// No description provided for @cashPeriod.
  ///
  /// In ar, this message translates to:
  /// **'الفترة'**
  String get cashPeriod;

  /// No description provided for @cashInvoiceNum.
  ///
  /// In ar, this message translates to:
  /// **'رقم الفاتورة'**
  String get cashInvoiceNum;

  /// No description provided for @cashEmployee.
  ///
  /// In ar, this message translates to:
  /// **'الموظف'**
  String get cashEmployee;

  /// No description provided for @cashNote.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظة'**
  String get cashNote;

  /// No description provided for @cashReceiptNum.
  ///
  /// In ar, this message translates to:
  /// **'رقم الإيصال'**
  String get cashReceiptNum;

  /// No description provided for @cashCustomer.
  ///
  /// In ar, this message translates to:
  /// **'العميل'**
  String get cashCustomer;

  /// No description provided for @debtsTitle.
  ///
  /// In ar, this message translates to:
  /// **'الديون — آجل'**
  String get debtsTitle;

  /// No description provided for @debtsTabInvoices.
  ///
  /// In ar, this message translates to:
  /// **'فواتير'**
  String get debtsTabInvoices;

  /// No description provided for @debtsTabCustomers.
  ///
  /// In ar, this message translates to:
  /// **'عملاء'**
  String get debtsTabCustomers;

  /// No description provided for @debtsTabSuppliers.
  ///
  /// In ar, this message translates to:
  /// **'موردون'**
  String get debtsTabSuppliers;

  /// No description provided for @debtsSettingsTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات الدين'**
  String get debtsSettingsTooltip;

  /// No description provided for @debtsRefreshTooltip.
  ///
  /// In ar, this message translates to:
  /// **'تحديث (F5)'**
  String get debtsRefreshTooltip;

  /// No description provided for @debtsShowingOf.
  ///
  /// In ar, this message translates to:
  /// **'القائمة:'**
  String get debtsShowingOf;

  /// No description provided for @debtsSearchHint.
  ///
  /// In ar, this message translates to:
  /// **'بحث: عميل، رقم فاتورة، معرّف عميل…'**
  String get debtsSearchHint;

  /// No description provided for @debtsClearSearch.
  ///
  /// In ar, this message translates to:
  /// **'مسح البحث'**
  String get debtsClearSearch;

  /// No description provided for @debtsAll.
  ///
  /// In ar, this message translates to:
  /// **'الكل'**
  String get debtsAll;

  /// No description provided for @debtsPending.
  ///
  /// In ar, this message translates to:
  /// **'معلّق'**
  String get debtsPending;

  /// No description provided for @debtsOverdue.
  ///
  /// In ar, this message translates to:
  /// **'متأخر'**
  String get debtsOverdue;

  /// No description provided for @debtsPaid.
  ///
  /// In ar, this message translates to:
  /// **'مدفوع'**
  String get debtsPaid;

  /// No description provided for @debtsPartial.
  ///
  /// In ar, this message translates to:
  /// **'جزئي'**
  String get debtsPartial;

  /// No description provided for @debtsAmount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ'**
  String get debtsAmount;

  /// No description provided for @debtsPaidAmount.
  ///
  /// In ar, this message translates to:
  /// **'المدفوع'**
  String get debtsPaidAmount;

  /// No description provided for @debtsRemaining.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي'**
  String get debtsRemaining;

  /// No description provided for @debtsCustomer.
  ///
  /// In ar, this message translates to:
  /// **'عميل'**
  String get debtsCustomer;

  /// No description provided for @debtsInvoiceNum.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة #'**
  String get debtsInvoiceNum;

  /// No description provided for @debtsDate.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get debtsDate;

  /// No description provided for @debtsDueDate.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الاستحقاق'**
  String get debtsDueDate;

  /// No description provided for @debtsActions.
  ///
  /// In ar, this message translates to:
  /// **'إجراءات'**
  String get debtsActions;

  /// No description provided for @debtsPay.
  ///
  /// In ar, this message translates to:
  /// **'تسديد'**
  String get debtsPay;

  /// No description provided for @debtsDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل'**
  String get debtsDetails;

  /// No description provided for @debtsRecordPayment.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل دفعة'**
  String get debtsRecordPayment;

  /// No description provided for @debtsNoInvoices.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير'**
  String get debtsNoInvoices;

  /// No description provided for @debtsTotalDebt.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الدين'**
  String get debtsTotalDebt;

  /// No description provided for @debtsPaidTotal.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المدفوع'**
  String get debtsPaidTotal;

  /// No description provided for @debtsOutstanding.
  ///
  /// In ar, this message translates to:
  /// **'المستحق'**
  String get debtsOutstanding;

  /// No description provided for @cdInvalidData.
  ///
  /// In ar, this message translates to:
  /// **'بيانات غير صالحة'**
  String get cdInvalidData;

  /// No description provided for @cdRecordPayment.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل دفعة'**
  String get cdRecordPayment;

  /// No description provided for @cdRemainingCurrent.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي الحالي'**
  String get cdRemainingCurrent;

  /// No description provided for @cdAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ (Fdj)'**
  String get cdAmountLabel;

  /// No description provided for @cdAutoDistribute.
  ///
  /// In ar, this message translates to:
  /// **'يُوزَّع تلقائياً على الفواتير من الأقدم إلى الأحدث.'**
  String get cdAutoDistribute;

  /// No description provided for @cdCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get cdCancel;

  /// No description provided for @cdConfirm.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get cdConfirm;

  /// No description provided for @cdEnterValidAmount.
  ///
  /// In ar, this message translates to:
  /// **'أدخل مبلغاً صالحاً'**
  String get cdEnterValidAmount;

  /// No description provided for @cdNoRemaining.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد متبقٍ للتسديد أو المبلغ غير صالح'**
  String get cdNoRemaining;

  /// No description provided for @cdPaymentSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم تسجيل الدفعة بنجاح'**
  String get cdPaymentSuccess;

  /// No description provided for @cdPaymentFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر إكمال التسديد: {error}'**
  String cdPaymentFailed(Object error);

  /// No description provided for @cdInvoiceHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل الفواتير'**
  String get cdInvoiceHistory;

  /// No description provided for @cdPaymentHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل الدفعات'**
  String get cdPaymentHistory;

  /// No description provided for @cdNoPayments.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد دفعات مسجلة'**
  String get cdNoPayments;

  /// No description provided for @cdFullPayment.
  ///
  /// In ar, this message translates to:
  /// **'تسديد كامل'**
  String get cdFullPayment;

  /// No description provided for @cdPartialPayment.
  ///
  /// In ar, this message translates to:
  /// **'تسديد جزئي'**
  String get cdPartialPayment;

  /// No description provided for @cdRemainingBalance.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد المتبقي'**
  String get cdRemainingBalance;

  /// No description provided for @cdDebtBefore.
  ///
  /// In ar, this message translates to:
  /// **'الدين قبل'**
  String get cdDebtBefore;

  /// No description provided for @cdDebtAfter.
  ///
  /// In ar, this message translates to:
  /// **'الدين بعد'**
  String get cdDebtAfter;

  /// No description provided for @cdNoInvoiceLinked.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فاتورة مرتبطة'**
  String get cdNoInvoiceLinked;

  /// No description provided for @cdCustomerLabel.
  ///
  /// In ar, this message translates to:
  /// **'العميل'**
  String get cdCustomerLabel;

  /// No description provided for @cdInvoiceLabel.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة'**
  String get cdInvoiceLabel;

  /// No description provided for @cdClose.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get cdClose;

  /// No description provided for @cdViewInvoice.
  ///
  /// In ar, this message translates to:
  /// **'عرض الفاتورة'**
  String get cdViewInvoice;

  /// No description provided for @cdAmountPaid.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المدفوع'**
  String get cdAmountPaid;

  /// No description provided for @dsTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات الدين'**
  String get dsTitle;

  /// No description provided for @dsReloadTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إعادة التحميل من القاعدة'**
  String get dsReloadTooltip;

  /// No description provided for @dsApplyInfo.
  ///
  /// In ar, this message translates to:
  /// **'تُطبَّق هذه الحدود عند حفظ فاتورة نوعها «دين / آجل». اترك الحقل فارغاً أو 0 لتعطيل السقف.'**
  String get dsApplyInfo;

  /// No description provided for @dsAmountCeilings.
  ///
  /// In ar, this message translates to:
  /// **'سؤف المبالغ'**
  String get dsAmountCeilings;

  /// No description provided for @dsMaxPerCustomer.
  ///
  /// In ar, this message translates to:
  /// **'أقصى مجموع متبقٍ لكل عميل (Fdj)'**
  String get dsMaxPerCustomer;

  /// No description provided for @dsMaxPerInvoice.
  ///
  /// In ar, this message translates to:
  /// **'أقصى متبقٍ لفاتورة دين واحدة (Fdj)'**
  String get dsMaxPerInvoice;

  /// No description provided for @dsWarningDays.
  ///
  /// In ar, this message translates to:
  /// **'أيام التحذير'**
  String get dsWarningDays;

  /// No description provided for @dsSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ إعدادات الدين'**
  String get dsSaved;

  /// No description provided for @dsInvalidDays.
  ///
  /// In ar, this message translates to:
  /// **'أيام التحذير: بين 0 و 36500'**
  String get dsInvalidDays;

  /// No description provided for @dsEnableLimits.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل سقوف الدين'**
  String get dsEnableLimits;

  /// No description provided for @dsMaxDebtPerCustomer.
  ///
  /// In ar, this message translates to:
  /// **'أقصى مجموع متبقٍ لكل عميل (Fdj)'**
  String get dsMaxDebtPerCustomer;

  /// No description provided for @dsMaxDebtPerInvoice.
  ///
  /// In ar, this message translates to:
  /// **'أقصى متبقٍ لفاتورة دين واحدة (Fdj)'**
  String get dsMaxDebtPerInvoice;

  /// No description provided for @dsAutoEnforce.
  ///
  /// In ar, this message translates to:
  /// **'فرض تلقائي للحدود'**
  String get dsAutoEnforce;

  /// No description provided for @dsAutoEnforceHint.
  ///
  /// In ar, this message translates to:
  /// **'منع الحفظ عند تجاوز الحدود'**
  String get dsAutoEnforceHint;

  /// No description provided for @dsReminderDays.
  ///
  /// In ar, this message translates to:
  /// **'أيام التذكير'**
  String get dsReminderDays;

  /// No description provided for @dsReminderHint.
  ///
  /// In ar, this message translates to:
  /// **'أيام قبل تاريخ الاستحقاق لإظهار التذكير'**
  String get dsReminderHint;

  /// No description provided for @dsOverdueThreshold.
  ///
  /// In ar, this message translates to:
  /// **'عتبة التأخر (أيام)'**
  String get dsOverdueThreshold;

  /// No description provided for @dsOverdueHint.
  ///
  /// In ar, this message translates to:
  /// **'أيام بعد الاستحقاق لتصنيف كمتأخر'**
  String get dsOverdueHint;

  /// No description provided for @cashInvoiceNumShort.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة #'**
  String get cashInvoiceNumShort;

  /// No description provided for @cashShiftLoadError.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر تحميل سجل الوردية من قاعدة البيانات؛ يُعرض أدناه ما يظهر في قائمة الصندوق فقط.'**
  String get cashShiftLoadError;

  /// No description provided for @cashTotalMovements.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي ما يظهر من حركات في الصندوق لهذه المجموعة'**
  String get cashTotalMovements;

  /// No description provided for @cashMovementsCount.
  ///
  /// In ar, this message translates to:
  /// **'حركة.'**
  String get cashMovementsCount;

  /// No description provided for @cashMovementStats.
  ///
  /// In ar, this message translates to:
  /// **'أعداد الحركات'**
  String get cashMovementStats;

  /// No description provided for @cashMovementsDeposit.
  ///
  /// In ar, this message translates to:
  /// **'إدخال'**
  String get cashMovementsDeposit;

  /// No description provided for @cashMovementsWithdrawal.
  ///
  /// In ar, this message translates to:
  /// **'إخراج'**
  String get cashMovementsWithdrawal;

  /// No description provided for @cashMovementsManual.
  ///
  /// In ar, this message translates to:
  /// **'يدوية'**
  String get cashMovementsManual;

  /// No description provided for @cashMovementsLinked.
  ///
  /// In ar, this message translates to:
  /// **'مرتبطة بفاتورة'**
  String get cashMovementsLinked;

  /// No description provided for @cashMovementsTimes.
  ///
  /// In ar, this message translates to:
  /// **'حركة'**
  String get cashMovementsTimes;

  /// No description provided for @cashSalesCash.
  ///
  /// In ar, this message translates to:
  /// **'بيع نقدي'**
  String get cashSalesCash;

  /// No description provided for @cashFirstPayment.
  ///
  /// In ar, this message translates to:
  /// **'مقدم / دفعة أولى'**
  String get cashFirstPayment;

  /// No description provided for @cashInstallmentPayment.
  ///
  /// In ar, this message translates to:
  /// **'تسديد قسط'**
  String get cashInstallmentPayment;

  /// No description provided for @cashSupplierPayment.
  ///
  /// In ar, this message translates to:
  /// **'دفع مورد'**
  String get cashSupplierPayment;

  /// No description provided for @cashSupplierPaymentReversal.
  ///
  /// In ar, this message translates to:
  /// **'عكس دفع مورد'**
  String get cashSupplierPaymentReversal;

  /// No description provided for @cashReturn.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع'**
  String get cashReturn;

  /// No description provided for @cashMovement.
  ///
  /// In ar, this message translates to:
  /// **'حركة'**
  String get cashMovement;

  /// No description provided for @cashSummaryInflow.
  ///
  /// In ar, this message translates to:
  /// **'وارد'**
  String get cashSummaryInflow;

  /// No description provided for @cashSummaryOutflow.
  ///
  /// In ar, this message translates to:
  /// **'صادر'**
  String get cashSummaryOutflow;

  /// No description provided for @cashNoShift.
  ///
  /// In ar, this message translates to:
  /// **'بدون وردية'**
  String get cashNoShift;

  /// No description provided for @cashTapDetails.
  ///
  /// In ar, this message translates to:
  /// **'اضغط لعرض التفاصيل'**
  String get cashTapDetails;

  /// No description provided for @cashShiftLabel.
  ///
  /// In ar, this message translates to:
  /// **'وردية '**
  String get cashShiftLabel;

  /// No description provided for @cashMovementsShort.
  ///
  /// In ar, this message translates to:
  /// **' حركة'**
  String get cashMovementsShort;

  /// No description provided for @cashEmployeeLabel.
  ///
  /// In ar, this message translates to:
  /// **'الموظف: '**
  String get cashEmployeeLabel;

  /// No description provided for @cashTapInvoice.
  ///
  /// In ar, this message translates to:
  /// **'اضغط للفاتورة #'**
  String get cashTapInvoice;

  /// No description provided for @cashCashboxInfo.
  ///
  /// In ar, this message translates to:
  /// **'يُسجَّل منفصلاً عن فواتير البيع والأقساط. استخدمه لمصروفات المتجر أو إيداع/سحب بنكي.'**
  String get cashCashboxInfo;

  /// No description provided for @cashCashboxBalanceInfo.
  ///
  /// In ar, this message translates to:
  /// **'مجموع وارد الصندوق من المبيعات النقدية والمقدمات وتسديد الأقساط والإيداع اليدوي — دون إجمالي الفواتير الآجلة بدون مقدم'**
  String get cashCashboxBalanceInfo;

  /// No description provided for @calculatorTitle.
  ///
  /// In ar, this message translates to:
  /// **'الحاسبة'**
  String get calculatorTitle;

  /// No description provided for @calculatorCopyResult.
  ///
  /// In ar, this message translates to:
  /// **'نسخ الناتج'**
  String get calculatorCopyResult;

  /// No description provided for @calculatorClearAll.
  ///
  /// In ar, this message translates to:
  /// **'مسح الكل'**
  String get calculatorClearAll;

  /// No description provided for @debtsGroupByCustomer.
  ///
  /// In ar, this message translates to:
  /// **'تجميع حسب العميل: المنتجات والبائعون وتسديد جزئي من شاشة التفاصيل. QR على الإيصال للعملاء المسجّلين فقط.'**
  String get debtsGroupByCustomer;

  /// No description provided for @debtsSearchHintCustomer.
  ///
  /// In ar, this message translates to:
  /// **'بحث باسم العميل أو المعرف…'**
  String get debtsSearchHintCustomer;

  /// No description provided for @debtsXofYCustomers.
  ///
  /// In ar, this message translates to:
  /// **'من'**
  String get debtsXofYCustomers;

  /// No description provided for @debtsNoCreditRemaining.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد متبقٍ آجل مجمّع بالعملاء'**
  String get debtsNoCreditRemaining;

  /// No description provided for @debtsNoResults.
  ///
  /// In ar, this message translates to:
  /// **'لا نتائج'**
  String get debtsNoResults;

  /// No description provided for @debtsCustomerLabel.
  ///
  /// In ar, this message translates to:
  /// **'عميل'**
  String get debtsCustomerLabel;

  /// No description provided for @debtsRegisteredCustomer.
  ///
  /// In ar, this message translates to:
  /// **'عميل مسجّل #{id}'**
  String debtsRegisteredCustomer(Object id);

  /// No description provided for @debtsNotLinked.
  ///
  /// In ar, this message translates to:
  /// **'غير مربوط بجدول العملاء (بالاسم)'**
  String get debtsNotLinked;

  /// No description provided for @debtsCreditInvoices.
  ///
  /// In ar, this message translates to:
  /// **'{count} فاتورة آجل'**
  String debtsCreditInvoices(Object count);

  /// No description provided for @debtsRemainingLabel.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي'**
  String get debtsRemainingLabel;

  /// No description provided for @debtsCustomerStatement.
  ///
  /// In ar, this message translates to:
  /// **'كشف العميل'**
  String get debtsCustomerStatement;

  /// No description provided for @debtsAgingWarningInfo.
  ///
  /// In ar, this message translates to:
  /// **'التحذير بالعمر يبدأ بعد يوماً من تاريخ الفاتورة.'**
  String get debtsAgingWarningInfo;

  /// No description provided for @debtsAgingDisabled.
  ///
  /// In ar, this message translates to:
  /// **'فعّل «أيام تحذير العمر» من إعدادات الدين لتمييز الفواتير القديمة.'**
  String get debtsAgingDisabled;

  /// No description provided for @debtsInfoBanner.
  ///
  /// In ar, this message translates to:
  /// **'تُحسب الديون من فواتير النوع «دين / آجل». المتبقي = إجمالي الفاتورة − المقدّم. حدود البيع تُضبط من إعدادات الدين.'**
  String get debtsInfoBanner;

  /// No description provided for @debtsTotalRemaining.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المتبقي'**
  String get debtsTotalRemaining;

  /// No description provided for @debtsShowAll.
  ///
  /// In ar, this message translates to:
  /// **'عرض كل الفواتير'**
  String get debtsShowAll;

  /// No description provided for @debtsOpenInvoices.
  ///
  /// In ar, this message translates to:
  /// **'فواتير مفتوحة'**
  String get debtsOpenInvoices;

  /// No description provided for @debtsFilterOpen.
  ///
  /// In ar, this message translates to:
  /// **'تصفية: مفتوحة فقط'**
  String get debtsFilterOpen;

  /// No description provided for @debtsAgingWarning.
  ///
  /// In ar, this message translates to:
  /// **'تحذير عمر'**
  String get debtsAgingWarning;

  /// No description provided for @debtsFilterAging.
  ///
  /// In ar, this message translates to:
  /// **'تصفية: تحذير عمر'**
  String get debtsFilterAging;

  /// No description provided for @debtsStatusClosed.
  ///
  /// In ar, this message translates to:
  /// **'مغلقة'**
  String get debtsStatusClosed;

  /// No description provided for @debtsStatusAging.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه عمر'**
  String get debtsStatusAging;

  /// No description provided for @debtsStatusOpen.
  ///
  /// In ar, this message translates to:
  /// **'مفتوحة'**
  String get debtsStatusOpen;

  /// No description provided for @debtsReceiptLabel.
  ///
  /// In ar, this message translates to:
  /// **'الإيصال'**
  String get debtsReceiptLabel;

  /// No description provided for @debtsViewDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل'**
  String get debtsViewDetails;

  /// No description provided for @debtsDaysSinceInvoice.
  ///
  /// In ar, this message translates to:
  /// **'يوماً'**
  String get debtsDaysSinceInvoice;

  /// No description provided for @debtsAdvanceOf.
  ///
  /// In ar, this message translates to:
  /// **'المقدّم'**
  String get debtsAdvanceOf;

  /// No description provided for @debtsTapForDetails.
  ///
  /// In ar, this message translates to:
  /// **'اضغط لعرض تفاصيل الفاتورة'**
  String get debtsTapForDetails;

  /// No description provided for @debtsNoInvoicesInFilter.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير ضمن البحث أو التصفية الحالية'**
  String get debtsNoInvoicesInFilter;

  /// No description provided for @debtsNoDebtInvoices.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير دين مسجّلة'**
  String get debtsNoDebtInvoices;

  /// No description provided for @debtsClearSearchHint.
  ///
  /// In ar, this message translates to:
  /// **'امسح البحث أو اختر «الكل» في شريط التصفية.'**
  String get debtsClearSearchHint;

  /// No description provided for @debtsNewSaleHint.
  ///
  /// In ar, this message translates to:
  /// **'من «بيع جديد» اختر نوع «دين» ليظهر المبلغ المؤجل هنا.'**
  String get debtsNewSaleHint;

  /// No description provided for @hubInventoryTitle.
  ///
  /// In ar, this message translates to:
  /// **'مركز المخزون'**
  String get hubInventoryTitle;

  /// No description provided for @hubProductsList.
  ///
  /// In ar, this message translates to:
  /// **'قائمة المنتجات'**
  String get hubProductsList;

  /// No description provided for @hubProductsListDesc.
  ///
  /// In ar, this message translates to:
  /// **'بحث، تصفية، وإدارة جميع الأصناف'**
  String get hubProductsListDesc;

  /// No description provided for @hubAddProduct.
  ///
  /// In ar, this message translates to:
  /// **'إضافة منتج جديد'**
  String get hubAddProduct;

  /// No description provided for @hubAddProductDesc.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء صنف جديد في المخزون'**
  String get hubAddProductDesc;

  /// No description provided for @hubQuickUpdate.
  ///
  /// In ar, this message translates to:
  /// **'تحديث منتج موجود'**
  String get hubQuickUpdate;

  /// No description provided for @hubQuickUpdateDesc.
  ///
  /// In ar, this message translates to:
  /// **'بحث، باركود، وتعديل أسعار وكميات دون إنشاء صنف جديد'**
  String get hubQuickUpdateDesc;

  /// No description provided for @hubVouchers.
  ///
  /// In ar, this message translates to:
  /// **'حركات المخزون'**
  String get hubVouchers;

  /// No description provided for @hubVouchersDesc.
  ///
  /// In ar, this message translates to:
  /// **'وارد، صادر، تحويل بين المستودعات'**
  String get hubVouchersDesc;

  /// No description provided for @hubWarehouses.
  ///
  /// In ar, this message translates to:
  /// **'إدارة المستودعات'**
  String get hubWarehouses;

  /// No description provided for @hubWarehousesDesc.
  ///
  /// In ar, this message translates to:
  /// **'إضافة وتعديل المستودعات والمواقع'**
  String get hubWarehousesDesc;

  /// No description provided for @hubPriceLists.
  ///
  /// In ar, this message translates to:
  /// **'قوائم الأسعار'**
  String get hubPriceLists;

  /// No description provided for @hubPriceListsDesc.
  ///
  /// In ar, this message translates to:
  /// **'أسعار مخصصة للعملاء والمجموعات'**
  String get hubPriceListsDesc;

  /// No description provided for @hubStocktaking.
  ///
  /// In ar, this message translates to:
  /// **'الجرد الدوري'**
  String get hubStocktaking;

  /// No description provided for @hubStocktakingDesc.
  ///
  /// In ar, this message translates to:
  /// **'مطابقة المخزون الفعلي بالنظام'**
  String get hubStocktakingDesc;

  /// No description provided for @hubPurchaseOrders.
  ///
  /// In ar, this message translates to:
  /// **'أوامر الشراء'**
  String get hubPurchaseOrders;

  /// No description provided for @hubPurchaseOrdersDesc.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء وتتبع طلبات الشراء من الموردين'**
  String get hubPurchaseOrdersDesc;

  /// No description provided for @hubAnalytics.
  ///
  /// In ar, this message translates to:
  /// **'تحليلات المخزون'**
  String get hubAnalytics;

  /// No description provided for @hubAnalyticsDesc.
  ///
  /// In ar, this message translates to:
  /// **'قيمة المخزون، تنبيهات، الأكثر حركة'**
  String get hubAnalyticsDesc;

  /// No description provided for @hubSettings.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات المخزون'**
  String get hubSettings;

  /// No description provided for @hubSettingsDesc.
  ///
  /// In ar, this message translates to:
  /// **'نوع النشاط، خصائص المنتج، تفعيل الميزات'**
  String get hubSettingsDesc;

  /// No description provided for @hubTenantSelect.
  ///
  /// In ar, this message translates to:
  /// **'اختيار الحساب/المستأجر'**
  String get hubTenantSelect;

  /// No description provided for @hubTenantClose.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get hubTenantClose;

  /// No description provided for @hubCustomizeUnits.
  ///
  /// In ar, this message translates to:
  /// **'تخصيص وحدات المخزون'**
  String get hubCustomizeUnits;

  /// No description provided for @hubCustomizeUnitsDesc.
  ///
  /// In ar, this message translates to:
  /// **'أخفِ أي وحدة لا تحتاجها الآن. يمكنك إرجاعها لاحقاً من نفس المكان'**
  String get hubCustomizeUnitsDesc;

  /// No description provided for @hubCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get hubCancel;

  /// No description provided for @hubSave.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get hubSave;

  /// No description provided for @hubRefresh.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get hubRefresh;

  /// No description provided for @hubCustomize.
  ///
  /// In ar, this message translates to:
  /// **'تخصيص الوحدات'**
  String get hubCustomize;

  /// No description provided for @hubSwitchTenant.
  ///
  /// In ar, this message translates to:
  /// **'تبديل المستأجر'**
  String get hubSwitchTenant;

  /// No description provided for @hubAllHidden.
  ///
  /// In ar, this message translates to:
  /// **'تم إخفاء كل الوحدات أو تعطيلها من الإعدادات'**
  String get hubAllHidden;

  /// No description provided for @hubManageUnits.
  ///
  /// In ar, this message translates to:
  /// **'إدارة الوحدات'**
  String get hubManageUnits;

  /// No description provided for @hubReloadOnReturn.
  ///
  /// In ar, this message translates to:
  /// **'أعد التحميل عند العودة قد تغيرت الإعدادات'**
  String get hubReloadOnReturn;

  /// No description provided for @bsTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات الباركود'**
  String get bsTitle;

  /// No description provided for @bsSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'تهيئة الباركود إعدادات حقيقية في النظام'**
  String get bsSubtitle;

  /// No description provided for @bsTypeTitle.
  ///
  /// In ar, this message translates to:
  /// **'نوع الباركود'**
  String get bsTypeTitle;

  /// No description provided for @bsTypeCode128Desc.
  ///
  /// In ar, this message translates to:
  /// **'باركود مرن يدعم ترميز الأرقام والحروف والرموز، ويُستخدم على نطاق واسع في التوصيل والمستودعات'**
  String get bsTypeCode128Desc;

  /// No description provided for @bsTypeEan13Desc.
  ///
  /// In ar, this message translates to:
  /// **'معيار مكوّن من 13 رقمًا يُستخدم بشكل شائع في قطاع التجزئة، ويشمل رمز الدولة ورمز المصنّع ورمز المنتج'**
  String get bsTypeEan13Desc;

  /// No description provided for @bsTypeLabel.
  ///
  /// In ar, this message translates to:
  /// **'اختر معيار الباركود الذي سيعتمد عليه النظام في إنشاء وقراءة باركود المنتجات'**
  String get bsTypeLabel;

  /// No description provided for @bsWeightEmbedded.
  ///
  /// In ar, this message translates to:
  /// **'باركود متضمن الوزن'**
  String get bsWeightEmbedded;

  /// No description provided for @bsWeightEnabled.
  ///
  /// In ar, this message translates to:
  /// **'مفعّل'**
  String get bsWeightEnabled;

  /// No description provided for @bsWeightDisabled.
  ///
  /// In ar, this message translates to:
  /// **'معطّل'**
  String get bsWeightDisabled;

  /// No description provided for @bsWeightDesc.
  ///
  /// In ar, this message translates to:
  /// **'استخدم الباركود متضمن الوزن ليتمكّن النظام من قراءة وزن المنتج والسعر إذا وُجد مباشرة من الباركود'**
  String get bsWeightDesc;

  /// No description provided for @bsWeightFormat.
  ///
  /// In ar, this message translates to:
  /// **'صيغة الباركود المتضمن'**
  String get bsWeightFormat;

  /// No description provided for @bsWeightFormatDesc.
  ///
  /// In ar, this message translates to:
  /// **'أدخل صيغة الباركود المدمج وفق النموذج، حيث تُمثل أرقام المنتج، وخانات الوزن، وخانات السعر'**
  String get bsWeightFormatDesc;

  /// No description provided for @bsWeightExample.
  ///
  /// In ar, this message translates to:
  /// **'على سبيل المثال، إذا كان الوزن يُعرض بأربع خانات فسيظهر جرامًا، وإذا كان بخمس خانات سيظهر كعشرات الجرامات'**
  String get bsWeightExample;

  /// No description provided for @bsWeightUnit.
  ///
  /// In ar, this message translates to:
  /// **'تقسيم وحدة الوزن'**
  String get bsWeightUnit;

  /// No description provided for @bsWeightUnitExample.
  ///
  /// In ar, this message translates to:
  /// **'مثال'**
  String get bsWeightUnitExample;

  /// No description provided for @bsWeightUnitDesc.
  ///
  /// In ar, this message translates to:
  /// **'أدخل القيمة التي يستخدمها النظام لتحويل وحدة الوزن في الباركود إلى وحدة البيع لديك'**
  String get bsWeightUnitDesc;

  /// No description provided for @bsCurrencyDivision.
  ///
  /// In ar, this message translates to:
  /// **'قسمة العملة'**
  String get bsCurrencyDivision;

  /// No description provided for @bsCurrencyExample.
  ///
  /// In ar, this message translates to:
  /// **'مثال'**
  String get bsCurrencyExample;

  /// No description provided for @bsCurrencyDesc.
  ///
  /// In ar, this message translates to:
  /// **'أدخل القيمة التي يستخدمها النظام لتحويل السعر من الوحدة المضمنة في الباركود إلى وحدتك الأساسية'**
  String get bsCurrencyDesc;

  /// No description provided for @bsFormatLabel.
  ///
  /// In ar, this message translates to:
  /// **'صيغة الباركود المتضمن'**
  String get bsFormatLabel;

  /// No description provided for @bsFormatError.
  ///
  /// In ar, this message translates to:
  /// **'صيغة الباركود المتضمن يجب أن تحتوي فقط على الحروف W و P و D'**
  String get bsFormatError;

  /// No description provided for @bsWeightUnitError.
  ///
  /// In ar, this message translates to:
  /// **'أدخل قيمة صحيحة أكبر من صفر لتقسيم وحدة الوزن'**
  String get bsWeightUnitError;

  /// No description provided for @bsCurrencyDivError.
  ///
  /// In ar, this message translates to:
  /// **'أدخل قيمة صحيحة أكبر من صفر لقسمة العملة'**
  String get bsCurrencyDivError;

  /// No description provided for @bsSaveSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ إعدادات الباركود'**
  String get bsSaveSuccess;

  /// No description provided for @bsSaveError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحفظ'**
  String get bsSaveError;

  /// No description provided for @imTabAll.
  ///
  /// In ar, this message translates to:
  /// **'الكل'**
  String get imTabAll;

  /// No description provided for @imTabDeposit.
  ///
  /// In ar, this message translates to:
  /// **'إيداع'**
  String get imTabDeposit;

  /// No description provided for @imTabWithdrawal.
  ///
  /// In ar, this message translates to:
  /// **'صرف'**
  String get imTabWithdrawal;

  /// No description provided for @imTabTransfer.
  ///
  /// In ar, this message translates to:
  /// **'تحويل'**
  String get imTabTransfer;

  /// No description provided for @imSortNewest.
  ///
  /// In ar, this message translates to:
  /// **'الأحدث'**
  String get imSortNewest;

  /// No description provided for @imSortOldest.
  ///
  /// In ar, this message translates to:
  /// **'الأقدم'**
  String get imSortOldest;

  /// No description provided for @imLoadError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل الحركات'**
  String get imLoadError;

  /// No description provided for @stOpenSessions.
  ///
  /// In ar, this message translates to:
  /// **'جلسات مفتوحة'**
  String get stOpenSessions;

  /// No description provided for @stCompleted.
  ///
  /// In ar, this message translates to:
  /// **'مكتملة'**
  String get stCompleted;

  /// No description provided for @stCloseSessionConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد إقفال جلسة؟'**
  String get stCloseSessionConfirm;

  /// No description provided for @stCategory.
  ///
  /// In ar, this message translates to:
  /// **'صنف'**
  String get stCategory;

  /// No description provided for @stStarted.
  ///
  /// In ar, this message translates to:
  /// **'بدأ'**
  String get stStarted;

  /// No description provided for @stClosed.
  ///
  /// In ar, this message translates to:
  /// **'أُقفل'**
  String get stClosed;

  /// No description provided for @stSystemQty.
  ///
  /// In ar, this message translates to:
  /// **'النظام'**
  String get stSystemQty;

  /// No description provided for @stDifference.
  ///
  /// In ar, this message translates to:
  /// **'فرق'**
  String get stDifference;

  /// No description provided for @stReport.
  ///
  /// In ar, this message translates to:
  /// **'تقرير'**
  String get stReport;

  /// No description provided for @stActualQty.
  ///
  /// In ar, this message translates to:
  /// **'الفعلي'**
  String get stActualQty;

  /// No description provided for @plRetail.
  ///
  /// In ar, this message translates to:
  /// **'قائمة التجزئة'**
  String get plRetail;

  /// No description provided for @plRetailDesc.
  ///
  /// In ar, this message translates to:
  /// **'أسعار بيع التجزئة للعملاء العاديين'**
  String get plRetailDesc;

  /// No description provided for @plWholesale.
  ///
  /// In ar, this message translates to:
  /// **'قائمة الجملة'**
  String get plWholesale;

  /// No description provided for @plWholesaleDesc.
  ///
  /// In ar, this message translates to:
  /// **'أسعار الجملة للموزعين والتجار'**
  String get plWholesaleDesc;

  /// No description provided for @plVIP.
  ///
  /// In ar, this message translates to:
  /// **'قائمة العملاء المميزين'**
  String get plVIP;

  /// No description provided for @plVIPDesc.
  ///
  /// In ar, this message translates to:
  /// **'أسعار خاصة للعملاء الدائمين'**
  String get plVIPDesc;

  /// No description provided for @plDeleteConfirm.
  ///
  /// In ar, this message translates to:
  /// **'هل تريد حذف'**
  String get plDeleteConfirm;

  /// No description provided for @plCategory.
  ///
  /// In ar, this message translates to:
  /// **'صنف'**
  String get plCategory;

  /// No description provided for @plPrices.
  ///
  /// In ar, this message translates to:
  /// **'أسعار'**
  String get plPrices;

  /// No description provided for @plSellPrice.
  ///
  /// In ar, this message translates to:
  /// **'سعر البيع'**
  String get plSellPrice;

  /// No description provided for @rptDashboard.
  ///
  /// In ar, this message translates to:
  /// **'لوحة تنفيذية'**
  String get rptDashboard;

  /// No description provided for @rptDashboardSub.
  ///
  /// In ar, this message translates to:
  /// **'مؤشرات وفترة'**
  String get rptDashboardSub;

  /// No description provided for @rptSalesInvoices.
  ///
  /// In ar, this message translates to:
  /// **'المبيعات والفواتير'**
  String get rptSalesInvoices;

  /// No description provided for @rptSalesInvoicesSub.
  ///
  /// In ar, this message translates to:
  /// **'أنواع الدفع والمرتجعات'**
  String get rptSalesInvoicesSub;

  /// No description provided for @rptCustomers.
  ///
  /// In ar, this message translates to:
  /// **'العملاء'**
  String get rptCustomers;

  /// No description provided for @rptCustomersSub.
  ///
  /// In ar, this message translates to:
  /// **'أكثر المشترين'**
  String get rptCustomersSub;

  /// No description provided for @rptDebts.
  ///
  /// In ar, this message translates to:
  /// **'الديون'**
  String get rptDebts;

  /// No description provided for @rptDebtsSub.
  ///
  /// In ar, this message translates to:
  /// **'أرصدة العملاء'**
  String get rptDebtsSub;

  /// No description provided for @rptInstallments.
  ///
  /// In ar, this message translates to:
  /// **'الأقساط'**
  String get rptInstallments;

  /// No description provided for @rptInstallmentsSub.
  ///
  /// In ar, this message translates to:
  /// **'خطط الفترة'**
  String get rptInstallmentsSub;

  /// No description provided for @rptStaff.
  ///
  /// In ar, this message translates to:
  /// **'الموظفون'**
  String get rptStaff;

  /// No description provided for @rptStaffSub.
  ///
  /// In ar, this message translates to:
  /// **'أداء التسجيل'**
  String get rptStaffSub;

  /// No description provided for @rptAnalyticsMargin.
  ///
  /// In ar, this message translates to:
  /// **'تحليل وهامش'**
  String get rptAnalyticsMargin;

  /// No description provided for @rptAnalyticsMarginSub.
  ///
  /// In ar, this message translates to:
  /// **'منتجات وهامش تقديري'**
  String get rptAnalyticsMarginSub;

  /// No description provided for @rptReportSettings.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات التقارير'**
  String get rptReportSettings;

  /// No description provided for @rptReportSettingsSub.
  ///
  /// In ar, this message translates to:
  /// **'فترة افتراضية وتفضيلات'**
  String get rptReportSettingsSub;

  /// No description provided for @rptNoData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات'**
  String get rptNoData;

  /// No description provided for @rptDateFilter.
  ///
  /// In ar, this message translates to:
  /// **'فلتر التاريخ'**
  String get rptDateFilter;

  /// No description provided for @rptToday.
  ///
  /// In ar, this message translates to:
  /// **'اليوم'**
  String get rptToday;

  /// No description provided for @rptYesterday.
  ///
  /// In ar, this message translates to:
  /// **'أمس'**
  String get rptYesterday;

  /// No description provided for @rptLastWeek.
  ///
  /// In ar, this message translates to:
  /// **'آخر أسبوع'**
  String get rptLastWeek;

  /// No description provided for @rptLastMonth.
  ///
  /// In ar, this message translates to:
  /// **'آخر شهر'**
  String get rptLastMonth;

  /// No description provided for @rptLastQuarter.
  ///
  /// In ar, this message translates to:
  /// **'آخر ربع سنة'**
  String get rptLastQuarter;

  /// No description provided for @rptReset.
  ///
  /// In ar, this message translates to:
  /// **'إعادة ضبط'**
  String get rptReset;

  /// No description provided for @rptApply.
  ///
  /// In ar, this message translates to:
  /// **'تطبيق'**
  String get rptApply;

  /// No description provided for @rptClose.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get rptClose;

  /// No description provided for @rptCopiedSectionName.
  ///
  /// In ar, this message translates to:
  /// **'تم نسخ اسم القسم'**
  String get rptCopiedSectionName;

  /// No description provided for @rptSales.
  ///
  /// In ar, this message translates to:
  /// **'مبيعات'**
  String get rptSales;

  /// No description provided for @rptTotal.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي'**
  String get rptTotal;

  /// No description provided for @rptReturns.
  ///
  /// In ar, this message translates to:
  /// **'مرتجعات'**
  String get rptReturns;

  /// No description provided for @rptCustomer.
  ///
  /// In ar, this message translates to:
  /// **'العميل'**
  String get rptCustomer;

  /// No description provided for @rptStaffLabel.
  ///
  /// In ar, this message translates to:
  /// **'الموظفون'**
  String get rptStaffLabel;

  /// No description provided for @rptOthers.
  ///
  /// In ar, this message translates to:
  /// **'آخرون'**
  String get rptOthers;

  /// No description provided for @rptNoCustomerData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات عملاء في هذه الفترة'**
  String get rptNoCustomerData;

  /// No description provided for @rptNoStaffSales.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مبيعات مسجّلة باسم موظف في هذه الفترة'**
  String get rptNoStaffSales;

  /// No description provided for @rptTopBuyers.
  ///
  /// In ar, this message translates to:
  /// **'أكثر العملاء شراءً حسب اسم الفاتورة'**
  String get rptTopBuyers;

  /// No description provided for @rptSalesByCustomer.
  ///
  /// In ar, this message translates to:
  /// **'توزيع المبيعات على العملاء'**
  String get rptSalesByCustomer;

  /// No description provided for @rptSalesByStaff.
  ///
  /// In ar, this message translates to:
  /// **'توزيع المبيعات على الموظفين'**
  String get rptSalesByStaff;

  /// No description provided for @rptDebtsBalances.
  ///
  /// In ar, this message translates to:
  /// **'جدول أرصدة مسجّلة في سجل العملاء'**
  String get rptDebtsBalances;

  /// No description provided for @rptInstallmentPlans.
  ///
  /// In ar, this message translates to:
  /// **'خطط الأقساط المرتبطة بفواتير الفترة'**
  String get rptInstallmentPlans;

  /// No description provided for @rptDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل الخطط'**
  String get rptDetails;

  /// No description provided for @rptStaffPercentage.
  ///
  /// In ar, this message translates to:
  /// **'نسبة كل موظف من إجمالي المبيعات'**
  String get rptStaffPercentage;

  /// No description provided for @rptConsistentWithPie.
  ///
  /// In ar, this message translates to:
  /// **'متسقة مع نسب المخطط الدائري والجدول'**
  String get rptConsistentWithPie;

  /// No description provided for @rptUnknown.
  ///
  /// In ar, this message translates to:
  /// **'غير معروف'**
  String get rptUnknown;

  /// No description provided for @rptNoName.
  ///
  /// In ar, this message translates to:
  /// **'بدون اسم'**
  String get rptNoName;

  /// No description provided for @rptSelectedPeriod.
  ///
  /// In ar, this message translates to:
  /// **'الفترة المحددة'**
  String get rptSelectedPeriod;

  /// No description provided for @rptApproxNet.
  ///
  /// In ar, this message translates to:
  /// **'تقريبي صافي'**
  String get rptApproxNet;

  /// No description provided for @rptTotalExpenses.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المصروفات'**
  String get rptTotalExpenses;

  /// No description provided for @rptNetAfterExpenses.
  ///
  /// In ar, this message translates to:
  /// **'صافي بعد المصروفات'**
  String get rptNetAfterExpenses;

  /// No description provided for @rptInvoicesReturns.
  ///
  /// In ar, this message translates to:
  /// **'فواتير ومرتجعات'**
  String get rptInvoicesReturns;

  /// No description provided for @rptDailySalesInRange.
  ///
  /// In ar, this message translates to:
  /// **'اتجاه المبيعات اليومي في الفترة'**
  String get rptDailySalesInRange;

  /// No description provided for @rptPiePayments.
  ///
  /// In ar, this message translates to:
  /// **'توزيع أنواع الدفع'**
  String get rptPiePayments;

  /// No description provided for @osDescription.
  ///
  /// In ar, this message translates to:
  /// **'بعد تسجيل الدخول عرض رصيد الصندوق، الجرد، إضافة مال، ثم تمييز موظف الوردية'**
  String get osDescription;

  /// No description provided for @osSessionExpired.
  ///
  /// In ar, this message translates to:
  /// **'الجلسة انتهت في الخلفية أثناء تحميل الشاشة'**
  String get osSessionExpired;

  /// No description provided for @osUnexpectedError.
  ///
  /// In ar, this message translates to:
  /// **'حدث خطأ غير متوقع أثناء التهيئة'**
  String get osUnexpectedError;

  /// No description provided for @osPasswordRequired.
  ///
  /// In ar, this message translates to:
  /// **'عند العودة إلى التطبيق بوردية مفتوحة أصلاً نطلب كلمة مرور موظف الوردية'**
  String get osPasswordRequired;

  /// No description provided for @osShiftEmployee.
  ///
  /// In ar, this message translates to:
  /// **'موظف الوردية'**
  String get osShiftEmployee;

  /// No description provided for @osOpeningBalance.
  ///
  /// In ar, this message translates to:
  /// **'رصيد النظام عند الفتح'**
  String get osOpeningBalance;

  /// No description provided for @osManualCount.
  ///
  /// In ar, this message translates to:
  /// **'الجرد اليدوي الصندوق'**
  String get osManualCount;

  /// No description provided for @osAddedMoney.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المضاف عند الفتح'**
  String get osAddedMoney;

  /// No description provided for @osOpeningShift.
  ///
  /// In ar, this message translates to:
  /// **'فتح وردية'**
  String get osOpeningShift;

  /// No description provided for @osErrorOpening.
  ///
  /// In ar, this message translates to:
  /// **'تعذر فتح الوردية'**
  String get osErrorOpening;

  /// No description provided for @osNoShiftId.
  ///
  /// In ar, this message translates to:
  /// **'تمت العملية بدون رقم وردية صالح حاول مرة أخرى'**
  String get osNoShiftId;

  /// No description provided for @osShiftOpened.
  ///
  /// In ar, this message translates to:
  /// **'تم فتح الوردية'**
  String get osShiftOpened;

  /// No description provided for @osAmountHint.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ الظاهر عند الجرد'**
  String get osAmountHint;

  /// No description provided for @osAmountLabel.
  ///
  /// In ar, this message translates to:
  /// **'اكتب الموجود فعلياً داخل الصندوق الآن'**
  String get osAmountLabel;

  /// No description provided for @osExample.
  ///
  /// In ar, this message translates to:
  /// **'مثال'**
  String get osExample;

  /// No description provided for @osAddMoney.
  ///
  /// In ar, this message translates to:
  /// **'إضافة مال للصندوق'**
  String get osAddMoney;

  /// No description provided for @osAddMoneyDesc.
  ///
  /// In ar, this message translates to:
  /// **'اختياري استخدمه إذا أضفت نقداً قبل بداية البيع'**
  String get osAddMoneyDesc;

  /// No description provided for @osLogout.
  ///
  /// In ar, this message translates to:
  /// **'الخروج من الحساب'**
  String get osLogout;

  /// No description provided for @osReviewBalance.
  ///
  /// In ar, this message translates to:
  /// **'راجع رصيد الصندوق حسب النظام، ثم سجّل الجرد الفعلي قبل بدء العمل'**
  String get osReviewBalance;

  /// No description provided for @osOpeningSystemBalance.
  ///
  /// In ar, this message translates to:
  /// **'رصيد الصندوق حسب النظام'**
  String get osOpeningSystemBalance;

  /// No description provided for @osOpeningLoading.
  ///
  /// In ar, this message translates to:
  /// **'جاري فتح الوردية'**
  String get osOpeningLoading;

  /// No description provided for @osStaffDialogTitle.
  ///
  /// In ar, this message translates to:
  /// **'حوار موظف الوردية'**
  String get osStaffDialogTitle;

  /// No description provided for @osStaffDialogDesc.
  ///
  /// In ar, this message translates to:
  /// **'اختيار مستخدم مسجّل في النظام رمز البطاقة، أو مسح'**
  String get osStaffDialogDesc;

  /// No description provided for @osAllActiveUsers.
  ///
  /// In ar, this message translates to:
  /// **'كل المستخدمين النشطين'**
  String get osAllActiveUsers;

  /// No description provided for @osErrorLoadingUsers.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل مستخدمي الوردية'**
  String get osErrorLoadingUsers;

  /// No description provided for @osInvalidCard.
  ///
  /// In ar, this message translates to:
  /// **'النص المقروء ليس رمز هوية صالحاً'**
  String get osInvalidCard;

  /// No description provided for @osSelectUser.
  ///
  /// In ar, this message translates to:
  /// **'اختر مستخدم الوردية من القائمة أو امسح البطاقة'**
  String get osSelectUser;

  /// No description provided for @osUserNotFound.
  ///
  /// In ar, this message translates to:
  /// **'تعذر العثور على المستخدم المختار اختر مستخدماً آخر'**
  String get osUserNotFound;

  /// No description provided for @osNoLocalPassword.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد كلمة مرور محلية لهذا الحساب عيّن كلمة مرور من إدارة المستخدمين'**
  String get osNoLocalPassword;

  /// No description provided for @osWrongPassword.
  ///
  /// In ar, this message translates to:
  /// **'كلمة مرور الدخول غير صحيحة'**
  String get osWrongPassword;

  /// No description provided for @osSelectEmployee.
  ///
  /// In ar, this message translates to:
  /// **'اختر الموظف المسؤول عن الصندوق في هذه الوردية'**
  String get osSelectEmployee;

  /// No description provided for @osNoActiveUsers.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد مستخدمون نشطون في النظام أضف مستخدماً من إدارة المستخدمين'**
  String get osNoActiveUsers;

  /// No description provided for @osUserLabel.
  ///
  /// In ar, this message translates to:
  /// **'مستخدم الوردية'**
  String get osUserLabel;

  /// No description provided for @osSelectUserHint.
  ///
  /// In ar, this message translates to:
  /// **'اختر مستخدماً'**
  String get osSelectUserHint;

  /// No description provided for @osDisplayName.
  ///
  /// In ar, this message translates to:
  /// **'الاسم الظاهر'**
  String get osDisplayName;

  /// No description provided for @osAutoDetermined.
  ///
  /// In ar, this message translates to:
  /// **'يُحدَّد تلقائياً'**
  String get osAutoDetermined;

  /// No description provided for @osScanDesc.
  ///
  /// In ar, this message translates to:
  /// **'يمكن اختيار المستخدم عبر الكاميرا أو قارئ خارجي، ثم إدخال كلمة المرور للتأكيد'**
  String get osScanDesc;

  /// No description provided for @osScanCamera.
  ///
  /// In ar, this message translates to:
  /// **'مسح بالكاميرا'**
  String get osScanCamera;

  /// No description provided for @osExternalReader.
  ///
  /// In ar, this message translates to:
  /// **'قارئ خارجي'**
  String get osExternalReader;

  /// No description provided for @osPressToScan.
  ///
  /// In ar, this message translates to:
  /// **'اضغط هنا ثم امسح البطاقة'**
  String get osPressToScan;

  /// No description provided for @osInvalidIdCode.
  ///
  /// In ar, this message translates to:
  /// **'النص المقروء ليس رمز هوية صالحاً'**
  String get osInvalidIdCode;

  /// No description provided for @osLoginPassword.
  ///
  /// In ar, this message translates to:
  /// **'كلمة مرور الدخول'**
  String get osLoginPassword;

  /// No description provided for @osSessionEnded.
  ///
  /// In ar, this message translates to:
  /// **'انتهت جلسة المستخدم سجّل الدخول مرة أخرى'**
  String get osSessionEnded;

  /// No description provided for @osCannotBeNegative.
  ///
  /// In ar, this message translates to:
  /// **'لا يمكن أن يكون المبلغ المضاف سالباً'**
  String get osCannotBeNegative;

  /// No description provided for @osErrorStaffDialog.
  ///
  /// In ar, this message translates to:
  /// **'تعذر فتح نافذة اختيار موظف الوردية: {error}'**
  String osErrorStaffDialog(Object error);

  /// No description provided for @osNoStaffSelected.
  ///
  /// In ar, this message translates to:
  /// **'لم يتم اختيار موظف الوردية'**
  String get osNoStaffSelected;

  /// No description provided for @osIncompleteData.
  ///
  /// In ar, this message translates to:
  /// **'بيانات موظف الوردية غير مكتملة اختر الموظف مرة أخرى'**
  String get osIncompleteData;

  /// No description provided for @osPasswordNotStored.
  ///
  /// In ar, this message translates to:
  /// **'لا نخزّن كلمة مرور الدخول التحقق كان في الحوار فقط'**
  String get osPasswordNotStored;

  /// No description provided for @osAutoFixed.
  ///
  /// In ar, this message translates to:
  /// **'تم إصلاح بيانات موظف الوردية تلقائياً على هذا الجهاز يمكنك المتابعة'**
  String get osAutoFixed;

  /// No description provided for @osStaffMissing.
  ///
  /// In ar, this message translates to:
  /// **'موظف الوردية المسجَّل لم يعد موجوداً أغلق الوردية من جهاز آخر أو اتصل بالمدير'**
  String get osStaffMissing;

  /// No description provided for @osAuthRejected.
  ///
  /// In ar, this message translates to:
  /// **'رفض التحقق من موظف الوردية يجب عدم فتح التطبيق على وردية مفتوحة دون إثبات'**
  String get osAuthRejected;

  /// No description provided for @osReturningToLogin.
  ///
  /// In ar, this message translates to:
  /// **'نسجّل خروج الجلسة على هذا الجهاز ونعود لشاشة تسجيل الدخول'**
  String get osReturningToLogin;

  /// No description provided for @osUseExistingShift.
  ///
  /// In ar, this message translates to:
  /// **'العودة للوردية المفتوحة بدلاً من ذلك'**
  String get osUseExistingShift;

  /// No description provided for @sdRecordSupplierReceipt.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل وصل المورد'**
  String get sdRecordSupplierReceipt;

  /// No description provided for @sdRecordSupplierReceiptSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'رقم وتاريخ وصلهم + المبلغ + صورة اختيارية'**
  String get sdRecordSupplierReceiptSubtitle;

  /// No description provided for @sdSupplierPayment.
  ///
  /// In ar, this message translates to:
  /// **'دفعة للمورد'**
  String get sdSupplierPayment;

  /// No description provided for @sdSupplierPaymentSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'اختياري: خصم من الصندوق'**
  String get sdSupplierPaymentSubtitle;

  /// No description provided for @sdSupplierReturn.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع مورد (تخفيض الذمة)'**
  String get sdSupplierReturn;

  /// No description provided for @sdSupplierReturnSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'يسجّل حركة دون الصندوق'**
  String get sdSupplierReturnSubtitle;

  /// No description provided for @sdSupplierReceiptTitle.
  ///
  /// In ar, this message translates to:
  /// **'وصل المورد'**
  String get sdSupplierReceiptTitle;

  /// No description provided for @sdTheirReceiptNo.
  ///
  /// In ar, this message translates to:
  /// **'رقم وصلهم / فاتورتهم'**
  String get sdTheirReceiptNo;

  /// No description provided for @sdTheirReceiptDate.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ وصلهم'**
  String get sdTheirReceiptDate;

  /// No description provided for @sdTheirReceiptDateWith.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ وصلهم: {date}'**
  String sdTheirReceiptDateWith(Object date);

  /// No description provided for @sdAmountFdj.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ (Fdj)'**
  String get sdAmountFdj;

  /// No description provided for @sdInternalNote.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظة داخلية'**
  String get sdInternalNote;

  /// No description provided for @sdPhoto.
  ///
  /// In ar, this message translates to:
  /// **'صورة'**
  String get sdPhoto;

  /// No description provided for @sdGallery.
  ///
  /// In ar, this message translates to:
  /// **'معرض'**
  String get sdGallery;

  /// No description provided for @sdPhotoSelected.
  ///
  /// In ar, this message translates to:
  /// **'صورة: {name}'**
  String sdPhotoSelected(Object name);

  /// No description provided for @sdCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get sdCancel;

  /// No description provided for @sdSave.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get sdSave;

  /// No description provided for @sdEnterValidAmount.
  ///
  /// In ar, this message translates to:
  /// **'أدخل مبلغاً صالحاً'**
  String get sdEnterValidAmount;

  /// No description provided for @sdSaveFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر الحفظ: {error}'**
  String sdSaveFailed(Object error);

  /// No description provided for @sdReceiptRecorded.
  ///
  /// In ar, this message translates to:
  /// **'تم تسجيل وصل المورد'**
  String get sdReceiptRecorded;

  /// No description provided for @sdRecordDiscountFromCash.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل خصم من الصندوق'**
  String get sdRecordDiscountFromCash;

  /// No description provided for @sdDisableCashHint.
  ///
  /// In ar, this message translates to:
  /// **'يعطّله إن دفعت من حساب بنكي أو خارج النظام'**
  String get sdDisableCashHint;

  /// No description provided for @sdConfirm.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get sdConfirm;

  /// No description provided for @sdPaymentRecordedCash.
  ///
  /// In ar, this message translates to:
  /// **'تم تسجيل الدفعة وقيد الصندوق'**
  String get sdPaymentRecordedCash;

  /// No description provided for @sdPaymentRecordedNoCash.
  ///
  /// In ar, this message translates to:
  /// **'تم تسجيل الدفعة (دون صندوق)'**
  String get sdPaymentRecordedNoCash;

  /// No description provided for @sdRecordFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر التسجيل'**
  String get sdRecordFailed;

  /// No description provided for @sdReturnTitle.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع مورد'**
  String get sdReturnTitle;

  /// No description provided for @sdNote.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظة'**
  String get sdNote;

  /// No description provided for @sdReturnCashHint.
  ///
  /// In ar, this message translates to:
  /// **'سيُسجّل هذا المرتجع ضمن ذمم الموردين فقط دون حركة صندوق.'**
  String get sdReturnCashHint;

  /// No description provided for @sdRegister.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل'**
  String get sdRegister;

  /// No description provided for @sdReturnDefaultNote.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع مورد (بدون صندوق)'**
  String get sdReturnDefaultNote;

  /// No description provided for @sdReturnFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر تسجيل المرتجع'**
  String get sdReturnFailed;

  /// No description provided for @sdReturnRecorded.
  ///
  /// In ar, this message translates to:
  /// **'تم تسجيل مرتجع المورد'**
  String get sdReturnRecorded;

  /// No description provided for @sdReversePayment.
  ///
  /// In ar, this message translates to:
  /// **'عكس الدفعة؟'**
  String get sdReversePayment;

  /// No description provided for @sdReverseCashDesc.
  ///
  /// In ar, this message translates to:
  /// **'سيُحذف سجل الدفعة ويُسجَّل في الصندوق إيداع قدره {amount} Fdj'**
  String sdReverseCashDesc(Object amount);

  /// No description provided for @sdReverseNoCashDesc.
  ///
  /// In ar, this message translates to:
  /// **'سيُحذف سجل الدفعة فقط (لم تكن مرتبطة بالصندوق).'**
  String get sdReverseNoCashDesc;

  /// No description provided for @sdConfirmReverse.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد العكس'**
  String get sdConfirmReverse;

  /// No description provided for @sdReverseFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر العكس'**
  String get sdReverseFailed;

  /// No description provided for @sdReversed.
  ///
  /// In ar, this message translates to:
  /// **'تم عكس الدفعة'**
  String get sdReversed;

  /// No description provided for @sdNoActiveWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد مخزن نشط — أضف مخزناً من إعدادات المخازن'**
  String get sdNoActiveWarehouse;

  /// No description provided for @sdTargetWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'المخزن المستهدف'**
  String get sdTargetWarehouse;

  /// No description provided for @sdContinue.
  ///
  /// In ar, this message translates to:
  /// **'متابعة'**
  String get sdContinue;

  /// No description provided for @sdLinkedVoucherCreated.
  ///
  /// In ar, this message translates to:
  /// **'أُنشئ السند وتم الربط'**
  String get sdLinkedVoucherCreated;

  /// No description provided for @sdVoucherCreatedLinkFailed.
  ///
  /// In ar, this message translates to:
  /// **'أُنشئ السند وتعذّر الربط'**
  String get sdVoucherCreatedLinkFailed;

  /// No description provided for @sdCreationFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر الإنشاء: {error}'**
  String sdCreationFailed(Object error);

  /// No description provided for @sdUnlinkVoucher.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء ربط الإذن؟'**
  String get sdUnlinkVoucher;

  /// No description provided for @sdUnlinkVoucherDesc.
  ///
  /// In ar, this message translates to:
  /// **'سيُزال الربط بين وصل المورد وسند المخزون فقط دون حذف السند.'**
  String get sdUnlinkVoucherDesc;

  /// No description provided for @sdUnlinked.
  ///
  /// In ar, this message translates to:
  /// **'تم إلغاء الربط'**
  String get sdUnlinked;

  /// No description provided for @sdLinkToSupplierReceipt.
  ///
  /// In ar, this message translates to:
  /// **'ربط بوصل المورد — إذن وارد'**
  String get sdLinkToSupplierReceipt;

  /// No description provided for @sdEmptyVoucherAutoLink.
  ///
  /// In ar, this message translates to:
  /// **'سند وارد فارغ + ربط تلقائي'**
  String get sdEmptyVoucherAutoLink;

  /// No description provided for @sdLinkInstruction.
  ///
  /// In ar, this message translates to:
  /// **'أو اختر سنداً واردًا مسجّلاً، أو أدخل رقم السند / المعرّف ثم «بحث وربط».'**
  String get sdLinkInstruction;

  /// No description provided for @sdNoVouchersYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أذون وارد في القاعدة بعد — استخدم الحقل أدناه عند توفر السند.'**
  String get sdNoVouchersYet;

  /// No description provided for @sdLatestVouchers.
  ///
  /// In ar, this message translates to:
  /// **'أحدث الأذون'**
  String get sdLatestVouchers;

  /// No description provided for @sdLinked.
  ///
  /// In ar, this message translates to:
  /// **'تم الربط'**
  String get sdLinked;

  /// No description provided for @sdLinkFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر الربط'**
  String get sdLinkFailed;

  /// No description provided for @sdVoucherNoOrId.
  ///
  /// In ar, this message translates to:
  /// **'رقم السند أو معرّفه'**
  String get sdVoucherNoOrId;

  /// No description provided for @sdClose.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق'**
  String get sdClose;

  /// No description provided for @sdVoucherNotFound.
  ///
  /// In ar, this message translates to:
  /// **'لم يُعثر على سند وارد بهذا الرقم'**
  String get sdVoucherNotFound;

  /// No description provided for @sdSearchAndLink.
  ///
  /// In ar, this message translates to:
  /// **'بحث وربط'**
  String get sdSearchAndLink;

  /// No description provided for @sdEditSupplier.
  ///
  /// In ar, this message translates to:
  /// **'تعديل المورد'**
  String get sdEditSupplier;

  /// No description provided for @sdName.
  ///
  /// In ar, this message translates to:
  /// **'الاسم'**
  String get sdName;

  /// No description provided for @sdPhone.
  ///
  /// In ar, this message translates to:
  /// **'الهاتف'**
  String get sdPhone;

  /// No description provided for @sdSupplierDefault.
  ///
  /// In ar, this message translates to:
  /// **'مورد'**
  String get sdSupplierDefault;

  /// No description provided for @sdEditTooltip.
  ///
  /// In ar, this message translates to:
  /// **'تعديل'**
  String get sdEditTooltip;

  /// No description provided for @sdSupplierNotFound.
  ///
  /// In ar, this message translates to:
  /// **'المورد غير موجود'**
  String get sdSupplierNotFound;

  /// No description provided for @sdBalanceOwedToYou.
  ///
  /// In ar, this message translates to:
  /// **'ما علينا لهذا المورد'**
  String get sdBalanceOwedToYou;

  /// No description provided for @sdOverpayment.
  ///
  /// In ar, this message translates to:
  /// **'رصيد لصالحكم (دفعة زائدة / خطأ)'**
  String get sdOverpayment;

  /// No description provided for @sdBalanceWithSupplier.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد مع المورد'**
  String get sdBalanceWithSupplier;

  /// No description provided for @sdNoBillForPayout.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد وصل مورد يغطّي هذه الدفعة — استخدم «عكس الدفعة» بجانب الدفعة لا'**
  String get sdNoBillForPayout;

  /// No description provided for @sdPhoneLabel.
  ///
  /// In ar, this message translates to:
  /// **'هاتف: {phone}'**
  String sdPhoneLabel(Object phone);

  /// No description provided for @sdPaymentWithoutReceipt.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه: دُفع للمورد دون تسجيل وصل بمبلغ مساوٍ. إن كان الدفع بالخطأ،'**
  String get sdPaymentWithoutReceipt;

  /// No description provided for @sdSupplierReturnLabel.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع مورد'**
  String get sdSupplierReturnLabel;

  /// No description provided for @sdSupplierPaymentLabel.
  ///
  /// In ar, this message translates to:
  /// **'دفعة مورد'**
  String get sdSupplierPaymentLabel;

  /// No description provided for @sdSupplierReceiptLabel.
  ///
  /// In ar, this message translates to:
  /// **'وصل مورد'**
  String get sdSupplierReceiptLabel;

  /// No description provided for @sdSupplierReceipts.
  ///
  /// In ar, this message translates to:
  /// **'وصولات المورد'**
  String get sdSupplierReceipts;

  /// No description provided for @sdLinkReceiptInstruction.
  ///
  /// In ar, this message translates to:
  /// **'يمكن ربط كل وصل بإذن مخزني وارد (رقم السند) عند تسجيل الأذون في قاعدة البيانات.'**
  String get sdLinkReceiptInstruction;

  /// No description provided for @sdNoReceiptsYet.
  ///
  /// In ar, this message translates to:
  /// **'لا وصولات بعد.'**
  String get sdNoReceiptsYet;

  /// No description provided for @sdOurPayments.
  ///
  /// In ar, this message translates to:
  /// **'دفعاتنا'**
  String get sdOurPayments;

  /// No description provided for @sdNoPaymentsYet.
  ///
  /// In ar, this message translates to:
  /// **'لا دفعات بعد.'**
  String get sdNoPaymentsYet;

  /// No description provided for @sdRecordLabel.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل'**
  String get sdRecordLabel;

  /// No description provided for @sdBillRef.
  ///
  /// In ar, this message translates to:
  /// **'وصل #{ref}'**
  String sdBillRef(Object ref);

  /// No description provided for @sdBillNoRef.
  ///
  /// In ar, this message translates to:
  /// **'وصل (بدون رقم)'**
  String get sdBillNoRef;

  /// No description provided for @sdUnlinkVoucherTooltip.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء ربط الإذن'**
  String get sdUnlinkVoucherTooltip;

  /// No description provided for @sdLinkVoucherTooltip.
  ///
  /// In ar, this message translates to:
  /// **'ربط بإذن وارد'**
  String get sdLinkVoucherTooltip;

  /// No description provided for @sdLinkedVoucher.
  ///
  /// In ar, this message translates to:
  /// **'إذن وارد: {ref}'**
  String sdLinkedVoucher(Object ref);

  /// No description provided for @sdTheirDate.
  ///
  /// In ar, this message translates to:
  /// **'تاريخهم: {date}'**
  String sdTheirDate(Object date);

  /// No description provided for @sdRecordedDate.
  ///
  /// In ar, this message translates to:
  /// **'سجّلنا: {date}'**
  String sdRecordedDate(Object date);

  /// No description provided for @sdPaymentRef.
  ///
  /// In ar, this message translates to:
  /// **'دفعة #{ref}'**
  String sdPaymentRef(Object ref);

  /// No description provided for @sdReverseTooltip.
  ///
  /// In ar, this message translates to:
  /// **'عكس الدفعة (خطأ / دفعة زائدة)'**
  String get sdReverseTooltip;

  /// No description provided for @sdRecordedInCash.
  ///
  /// In ar, this message translates to:
  /// **'مسجّل في الصندوق'**
  String get sdRecordedInCash;

  /// No description provided for @sdNotInCash.
  ///
  /// In ar, this message translates to:
  /// **'دون صندوق'**
  String get sdNotInCash;

  /// No description provided for @sdInvoiceVoucherRef.
  ///
  /// In ar, this message translates to:
  /// **'سند فواتير #{ref}'**
  String sdInvoiceVoucherRef(Object ref);

  /// No description provided for @sdLinkedVoucherShort.
  ///
  /// In ar, this message translates to:
  /// **'مرتبط بإذن #{ref}'**
  String sdLinkedVoucherShort(Object ref);

  /// No description provided for @sohPending.
  ///
  /// In ar, this message translates to:
  /// **'معلقة'**
  String get sohPending;

  /// No description provided for @sohInProgress.
  ///
  /// In ar, this message translates to:
  /// **'قيد العمل'**
  String get sohInProgress;

  /// No description provided for @sohReadyForDelivery.
  ///
  /// In ar, this message translates to:
  /// **'جاهزة للتسليم'**
  String get sohReadyForDelivery;

  /// No description provided for @sohDelivered.
  ///
  /// In ar, this message translates to:
  /// **'مسلّمة'**
  String get sohDelivered;

  /// No description provided for @sohSinceStart.
  ///
  /// In ar, this message translates to:
  /// **'منذ البدء'**
  String get sohSinceStart;

  /// No description provided for @sohOverdue.
  ///
  /// In ar, this message translates to:
  /// **'متأخر'**
  String get sohOverdue;

  /// No description provided for @sohTimeRemaining.
  ///
  /// In ar, this message translates to:
  /// **'الوقت المتبقي'**
  String get sohTimeRemaining;

  /// No description provided for @sohTryReLogin.
  ///
  /// In ar, this message translates to:
  /// **'جرّب تسجيل الخروج ثم الدخول، أو أعد تشغيل التطبيق.'**
  String get sohTryReLogin;

  /// No description provided for @sohRestartToCompleteInit.
  ///
  /// In ar, this message translates to:
  /// **'أعد تشغيل التطبيق لإكمال تهيئة قاعدة البيانات.'**
  String get sohRestartToCompleteInit;

  /// No description provided for @sohUnexpectedLocalData.
  ///
  /// In ar, this message translates to:
  /// **'بيانات محلية غير متوقعة؛ أعد تشغيل التطبيق. إن تكرّر ذلك، أبلغ الدعم.'**
  String get sohUnexpectedLocalData;

  /// No description provided for @sohDatabaseBusy.
  ///
  /// In ar, this message translates to:
  /// **'قاعدة البيانات مشغولة؛ انتظر ثوانٍ ثم أعد المحاولة.'**
  String get sohDatabaseBusy;

  /// No description provided for @sohPersistentError.
  ///
  /// In ar, this message translates to:
  /// **'إن استمرّت المشكلة، أعد تشغيل التطبيق.'**
  String get sohPersistentError;

  /// No description provided for @sohNewTicketBreadcrumb.
  ///
  /// In ar, this message translates to:
  /// **'تذكرة صيانة جديدة'**
  String get sohNewTicketBreadcrumb;

  /// No description provided for @sohFailedToLoadTickets.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل التذاكر.'**
  String get sohFailedToLoadTickets;

  /// No description provided for @sohDebugDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل تقنية (Debug): {error}'**
  String sohDebugDetails(Object error);

  /// No description provided for @sohRetry.
  ///
  /// In ar, this message translates to:
  /// **'إعادة المحاولة'**
  String get sohRetry;

  /// No description provided for @sohNoTicketsInTab.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد تذاكر في هذا التبويب.'**
  String get sohNoTicketsInTab;

  /// No description provided for @sohNoMatchingResults.
  ///
  /// In ar, this message translates to:
  /// **'لا نتائج مطابقة.'**
  String get sohNoMatchingResults;

  /// No description provided for @sohReturnBadge.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع'**
  String get sohReturnBadge;

  /// No description provided for @sohCreditSaleBadge.
  ///
  /// In ar, this message translates to:
  /// **'بيع آجل'**
  String get sohCreditSaleBadge;

  /// No description provided for @sohInstallmentBadge.
  ///
  /// In ar, this message translates to:
  /// **'تقسيط'**
  String get sohInstallmentBadge;

  /// No description provided for @sohDeliveryBadge.
  ///
  /// In ar, this message translates to:
  /// **'توصيل'**
  String get sohDeliveryBadge;

  /// No description provided for @sohDeadlineOverdue.
  ///
  /// In ar, this message translates to:
  /// **'تجاوز موعد التسليم المتوقع — أكمل العمل أو حدّث الحالة.'**
  String get sohDeadlineOverdue;

  /// No description provided for @sohTicketDetailsBreadcrumb.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل التذكرة'**
  String get sohTicketDetailsBreadcrumb;

  /// No description provided for @sohCustomerDefault.
  ///
  /// In ar, this message translates to:
  /// **'عميل'**
  String get sohCustomerDefault;

  /// No description provided for @sohSerialPlate.
  ///
  /// In ar, this message translates to:
  /// **'سيريال/لوحة: {value}'**
  String sohSerialPlate(Object value);

  /// No description provided for @sohValueLabel.
  ///
  /// In ar, this message translates to:
  /// **'القيمة: {value}'**
  String sohValueLabel(Object value);

  /// No description provided for @sohPaidLabel.
  ///
  /// In ar, this message translates to:
  /// **'مدفوع: {value}'**
  String sohPaidLabel(Object value);

  /// No description provided for @sohDepositLabel.
  ///
  /// In ar, this message translates to:
  /// **'العربون: {value}'**
  String sohDepositLabel(Object value);

  /// No description provided for @sohRemainingLabel.
  ///
  /// In ar, this message translates to:
  /// **'متبقّي: {value}'**
  String sohRemainingLabel(Object value);

  /// No description provided for @sohConvertToInvoiceTooltip.
  ///
  /// In ar, this message translates to:
  /// **'تحويل لفاتورة'**
  String get sohConvertToInvoiceTooltip;

  /// No description provided for @sohItemsSentToSale.
  ///
  /// In ar, this message translates to:
  /// **'تم إرسال البنود إلى شاشة البيع.'**
  String get sohItemsSentToSale;

  /// No description provided for @sohFailedToOpenSale.
  ///
  /// In ar, this message translates to:
  /// **'تعذر فتح البيع — راجع التذكرة أو أعد المحاولة.'**
  String get sohFailedToOpenSale;

  /// No description provided for @sohWorkStarted.
  ///
  /// In ar, this message translates to:
  /// **'تم بدء العمل وبدء احتساب الموعد'**
  String get sohWorkStarted;

  /// No description provided for @sohStartWorkLabel.
  ///
  /// In ar, this message translates to:
  /// **'بدء العمل'**
  String get sohStartWorkLabel;

  /// No description provided for @sohTicketMovedToReady.
  ///
  /// In ar, this message translates to:
  /// **'تم نقل التذكرة إلى جاهزة للتسليم'**
  String get sohTicketMovedToReady;

  /// No description provided for @sohMoveToReady.
  ///
  /// In ar, this message translates to:
  /// **'انتقال إلى جاهز للتسليم'**
  String get sohMoveToReady;

  /// No description provided for @sohReadyForDeliveryLabel.
  ///
  /// In ar, this message translates to:
  /// **'جاهز للتسليم'**
  String get sohReadyForDeliveryLabel;

  /// No description provided for @sohGoToPaymentLabel.
  ///
  /// In ar, this message translates to:
  /// **'الانتقال للدفع'**
  String get sohGoToPaymentLabel;

  /// No description provided for @sohDeliveryRecorded.
  ///
  /// In ar, this message translates to:
  /// **'تم تسجيل التسليم'**
  String get sohDeliveryRecorded;

  /// No description provided for @sohDeliveryFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر التسليم — راجع المبالغ من التفاصيل.'**
  String get sohDeliveryFailed;

  /// No description provided for @sohConfirmDelivery.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد التسليم'**
  String get sohConfirmDelivery;

  /// No description provided for @sohMaintenanceOrdersTitle.
  ///
  /// In ar, this message translates to:
  /// **'طلبات الصيانة'**
  String get sohMaintenanceOrdersTitle;

  /// No description provided for @sohRefreshTooltip.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get sohRefreshTooltip;

  /// No description provided for @sohNewTicketLabel.
  ///
  /// In ar, this message translates to:
  /// **'تذكرة جديدة'**
  String get sohNewTicketLabel;

  /// No description provided for @sohSearchHint.
  ///
  /// In ar, this message translates to:
  /// **'بحث بالعميل أو الجهاز أو السيريال…'**
  String get sohSearchHint;

  /// No description provided for @sohDefaultServiceName.
  ///
  /// In ar, this message translates to:
  /// **'خدمة فنية'**
  String get sohDefaultServiceName;

  /// No description provided for @sohSerialPrefix.
  ///
  /// In ar, this message translates to:
  /// **'س: {value}'**
  String sohSerialPrefix(Object value);

  /// No description provided for @sohSparePartDefault.
  ///
  /// In ar, this message translates to:
  /// **'قطعة غيار'**
  String get sohSparePartDefault;

  /// No description provided for @sohNewSaleBreadcrumb.
  ///
  /// In ar, this message translates to:
  /// **'بيع جديد'**
  String get sohNewSaleBreadcrumb;

  /// No description provided for @psTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات المنتجات'**
  String get psTitle;

  /// No description provided for @psTabSetup.
  ///
  /// In ar, this message translates to:
  /// **'تهيئة المنتجات'**
  String get psTabSetup;

  /// No description provided for @psTabTracking.
  ///
  /// In ar, this message translates to:
  /// **'تتبع المنتجات'**
  String get psTabTracking;

  /// No description provided for @psTabVouchers.
  ///
  /// In ar, this message translates to:
  /// **'الأذون المخزنية'**
  String get psTabVouchers;

  /// No description provided for @psTabDefaults.
  ///
  /// In ar, this message translates to:
  /// **'القيم الافتراضية'**
  String get psTabDefaults;

  /// No description provided for @psSetupTitle.
  ///
  /// In ar, this message translates to:
  /// **'تهيئة المنتجات'**
  String get psSetupTitle;

  /// No description provided for @psSetupDesc.
  ///
  /// In ar, this message translates to:
  /// **'إدارة الترقيم التلقائي، وخيارات التسعير المتقدمة، ونظام الوحدات، والأصناف المجمعة.'**
  String get psSetupDesc;

  /// No description provided for @psNextSkuTitle.
  ///
  /// In ar, this message translates to:
  /// **'الرقم التسلسلي للمنتج التالي'**
  String get psNextSkuTitle;

  /// No description provided for @psNextSkuDecoration.
  ///
  /// In ar, this message translates to:
  /// **'الرقم التالي'**
  String get psNextSkuDecoration;

  /// No description provided for @psNumberingSettings.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات الترقيم'**
  String get psNumberingSettings;

  /// No description provided for @psNextSkuHint.
  ///
  /// In ar, this message translates to:
  /// **'الرقم الذي سيُعرض كتلميح للمعرّف التالي. البادئة تُحفظ في إعدادات الترقيم.'**
  String get psNextSkuHint;

  /// No description provided for @psAdvancedPricingTitle.
  ///
  /// In ar, this message translates to:
  /// **'خيارات التسعير المتقدمة'**
  String get psAdvancedPricingTitle;

  /// No description provided for @psEnabled.
  ///
  /// In ar, this message translates to:
  /// **'مفعّل'**
  String get psEnabled;

  /// No description provided for @psDisabled.
  ///
  /// In ar, this message translates to:
  /// **'معطّل'**
  String get psDisabled;

  /// No description provided for @psAdvancedPricingDesc.
  ///
  /// In ar, this message translates to:
  /// **'عند التفعيل: في «إضافة منتج جديد» يُقترح سعر البيع وأقل سعر من سعر الشراء حسب الهامش أدناه (قابل للتعديل يدوياً قبل الحفظ).'**
  String get psAdvancedPricingDesc;

  /// No description provided for @psCostMarginDecoration.
  ///
  /// In ar, this message translates to:
  /// **'هامش الربح على التكلفة (%)'**
  String get psCostMarginDecoration;

  /// No description provided for @psCostMarginHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: 25'**
  String get psCostMarginHint;

  /// No description provided for @psMinSellPriceDesc.
  ///
  /// In ar, this message translates to:
  /// **'أقل سعر بيع كنسبة من سعر البيع (%)'**
  String get psMinSellPriceDesc;

  /// No description provided for @psMinSellPriceHint.
  ///
  /// In ar, this message translates to:
  /// **'100 = مساوٍ لسعر البيع'**
  String get psMinSellPriceHint;

  /// No description provided for @psSaveSuggestedPrices.
  ///
  /// In ar, this message translates to:
  /// **'حفظ أرقام الاقتراح'**
  String get psSaveSuggestedPrices;

  /// No description provided for @psPricingExample.
  ///
  /// In ar, this message translates to:
  /// **'مثال: تكلفة 10,000 وهامش 25% → سعر بيع مقترح 12,500. نسبة أقل سعر 100% تجعل أقل سعر = سعر البيع.'**
  String get psPricingExample;

  /// No description provided for @psMultiUnitTitle.
  ///
  /// In ar, this message translates to:
  /// **'استخدام وحدات متعددة لكل صنف'**
  String get psMultiUnitTitle;

  /// No description provided for @psManageUnits.
  ///
  /// In ar, this message translates to:
  /// **'إدارة الوحدات'**
  String get psManageUnits;

  /// No description provided for @psMultiUnitDesc.
  ///
  /// In ar, this message translates to:
  /// **'السماح بشراء بوحدة وبيع بوحدة أخرى مع معاملات تحويل من قوالب الوحدات.'**
  String get psMultiUnitDesc;

  /// No description provided for @psDefaultStockDisplayTitle.
  ///
  /// In ar, this message translates to:
  /// **'الوحدة الافتراضية لعرض المخزون'**
  String get psDefaultStockDisplayTitle;

  /// No description provided for @psUnitBase.
  ///
  /// In ar, this message translates to:
  /// **'الوحدة الأساسية لقالب الوحدة'**
  String get psUnitBase;

  /// No description provided for @psUnitBaseDesc.
  ///
  /// In ar, this message translates to:
  /// **'عرض المخزون بوحدة القالب الأساسية.'**
  String get psUnitBaseDesc;

  /// No description provided for @psUnitSale.
  ///
  /// In ar, this message translates to:
  /// **'وحدة البيع'**
  String get psUnitSale;

  /// No description provided for @psUnitSaleDesc.
  ///
  /// In ar, this message translates to:
  /// **'عرض الرصيد بوحدة البيع الافتراضية.'**
  String get psUnitSaleDesc;

  /// No description provided for @psUnitPurchase.
  ///
  /// In ar, this message translates to:
  /// **'وحدة الشراء'**
  String get psUnitPurchase;

  /// No description provided for @psUnitPurchaseDesc.
  ///
  /// In ar, this message translates to:
  /// **'عرض الرصيد بوحدة الشراء الافتراضية.'**
  String get psUnitPurchaseDesc;

  /// No description provided for @psStockDisplayDesc.
  ///
  /// In ar, this message translates to:
  /// **'تحدد كيف يُعرض المخزون في التقارير والجرد عند تفعيل تعدد الوحدات.'**
  String get psStockDisplayDesc;

  /// No description provided for @psBundlesTitle.
  ///
  /// In ar, this message translates to:
  /// **'التجميعات والوحدات المركبة'**
  String get psBundlesTitle;

  /// No description provided for @psBundlesAllowed.
  ///
  /// In ar, this message translates to:
  /// **'مسموح'**
  String get psBundlesAllowed;

  /// No description provided for @psBundlesNotAllowed.
  ///
  /// In ar, this message translates to:
  /// **'غير مسموح'**
  String get psBundlesNotAllowed;

  /// No description provided for @psBundlesDesc.
  ///
  /// In ar, this message translates to:
  /// **'تعريف صنف مركّب من عدة أصناف وخصم المخزون عند التجميع أو البيع (يتطلب تطوير شاشات لاحقاً).'**
  String get psBundlesDesc;

  /// No description provided for @psAddProductPoliciesTitle.
  ///
  /// In ar, this message translates to:
  /// **'سياسات شاشة إضافة المنتج'**
  String get psAddProductPoliciesTitle;

  /// No description provided for @psShowAdvancedPricing.
  ///
  /// In ar, this message translates to:
  /// **'إظهار قسم التسعير المتقدم'**
  String get psShowAdvancedPricing;

  /// No description provided for @psShowAdvancedPricingDesc.
  ///
  /// In ar, this message translates to:
  /// **'يتحكم بإظهار الضريبة والخصم وأقل سعر البيع وهامش الربح.'**
  String get psShowAdvancedPricingDesc;

  /// No description provided for @psShowBarcodeField.
  ///
  /// In ar, this message translates to:
  /// **'إظهار حقل الباركود'**
  String get psShowBarcodeField;

  /// No description provided for @psBarcodeRequired.
  ///
  /// In ar, this message translates to:
  /// **'الباركود إلزامي عند الحفظ'**
  String get psBarcodeRequired;

  /// No description provided for @psShowImageField.
  ///
  /// In ar, this message translates to:
  /// **'إظهار حقل صورة المنتج'**
  String get psShowImageField;

  /// No description provided for @psImageRequired.
  ///
  /// In ar, this message translates to:
  /// **'صورة المنتج إلزامية'**
  String get psImageRequired;

  /// No description provided for @psShowExtraFields.
  ///
  /// In ar, this message translates to:
  /// **'إظهار الحقول الإضافية'**
  String get psShowExtraFields;

  /// No description provided for @psShowExtraFieldsDesc.
  ///
  /// In ar, this message translates to:
  /// **'مثل: ملاحظات داخلية، وسوم، الوزن، وتواريخ الإنتاج/الانتهاء.'**
  String get psShowExtraFieldsDesc;

  /// No description provided for @psSupplierRequired.
  ///
  /// In ar, this message translates to:
  /// **'المورد إلزامي عند الحفظ'**
  String get psSupplierRequired;

  /// No description provided for @psWarehouseRequired.
  ///
  /// In ar, this message translates to:
  /// **'المخزن إلزامي عند الحفظ'**
  String get psWarehouseRequired;

  /// No description provided for @psDefaultTrackingEnabled.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل تتبع المخزون افتراضياً'**
  String get psDefaultTrackingEnabled;

  /// No description provided for @psDefaultTrackingDesc.
  ///
  /// In ar, this message translates to:
  /// **'ينعكس على حالة المفتاح عند فتح شاشة إضافة المنتج.'**
  String get psDefaultTrackingDesc;

  /// No description provided for @psAddProductPoliciesDesc.
  ///
  /// In ar, this message translates to:
  /// **'هذه السياسات تُطبّق مباشرة على شاشة «إضافة منتج جديد» دون التأثير على شاشة البيع.'**
  String get psAddProductPoliciesDesc;

  /// No description provided for @psTrackingTitle.
  ///
  /// In ar, this message translates to:
  /// **'تتبع المنتجات'**
  String get psTrackingTitle;

  /// No description provided for @psTrackingDesc.
  ///
  /// In ar, this message translates to:
  /// **'إعداد طرق التتبع وسلوك النظام عند نفاد الكمية.'**
  String get psTrackingDesc;

  /// No description provided for @psSerialBatchExpiryTitle.
  ///
  /// In ar, this message translates to:
  /// **'تتبع بواسطة الرقم المسلسل، رقم التوصيلة، أو تاريخ الانتهاء'**
  String get psSerialBatchExpiryTitle;

  /// No description provided for @psSerialBatchExpiryDesc.
  ///
  /// In ar, this message translates to:
  /// **'عند التفعيل يمكن تفعيل التتبع لكل منتج على حدة عند الإضافة.'**
  String get psSerialBatchExpiryDesc;

  /// No description provided for @psNegativeStockTitle.
  ///
  /// In ar, this message translates to:
  /// **'المخزون السالب'**
  String get psNegativeStockTitle;

  /// No description provided for @psNegativeStockStop.
  ///
  /// In ar, this message translates to:
  /// **'إيقاف العمليات عند نفاد الكمية لجميع المنتجات'**
  String get psNegativeStockStop;

  /// No description provided for @psNegativeStockStopDesc.
  ///
  /// In ar, this message translates to:
  /// **'منع البيع أو الصرف عند وصول المخزون إلى الصفر.'**
  String get psNegativeStockStopDesc;

  /// No description provided for @psNegativeStockTrackableOnly.
  ///
  /// In ar, this message translates to:
  /// **'السماح فقط للمنتجات القابلة للتتبع بالكميات'**
  String get psNegativeStockTrackableOnly;

  /// No description provided for @psNegativeStockTrackableDesc.
  ///
  /// In ar, this message translates to:
  /// **'يُسمح بالبيع السالب أو الصرف حسب سياسة الصنف.'**
  String get psNegativeStockTrackableDesc;

  /// No description provided for @psNegativeStockDesc.
  ///
  /// In ar, this message translates to:
  /// **'يحدد سلوك النظام عند نفاد المخزون.'**
  String get psNegativeStockDesc;

  /// No description provided for @psShowTotalAvailableTitle.
  ///
  /// In ar, this message translates to:
  /// **'عرض الكمية الإجمالية والمتوفرة'**
  String get psShowTotalAvailableTitle;

  /// No description provided for @psShowTotalAvailableDesc.
  ///
  /// In ar, this message translates to:
  /// **'عرض إجمالي الكمية مقابل المتاح بعد الحجوزات (عند تفعيل الحجز لاحقاً).'**
  String get psShowTotalAvailableDesc;

  /// No description provided for @psVouchersTitle.
  ///
  /// In ar, this message translates to:
  /// **'الأذون المخزنية'**
  String get psVouchersTitle;

  /// No description provided for @psVouchersDesc.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء طلبات مخزنية وترقيم أذون التحويل وربطها بالمبيعات والمشتريات.'**
  String get psVouchersDesc;

  /// No description provided for @psInventoryRequestsTitle.
  ///
  /// In ar, this message translates to:
  /// **'الطلبات المخزنية'**
  String get psInventoryRequestsTitle;

  /// No description provided for @psInventoryRequestsDesc.
  ///
  /// In ar, this message translates to:
  /// **'تمكين الأقسام من رفع طلبات مخزنية لمراجعتها. الصلاحيات تُضبط من أدوار المستخدمين عند توفرها.'**
  String get psInventoryRequestsDesc;

  /// No description provided for @psTransferVoucherNextTitle.
  ///
  /// In ar, this message translates to:
  /// **'الرقم التسلسلي لإذن التحويل المخزني التالي'**
  String get psTransferVoucherNextTitle;

  /// No description provided for @psTransferVoucherNextDecoration.
  ///
  /// In ar, this message translates to:
  /// **'الرقم'**
  String get psTransferVoucherNextDecoration;

  /// No description provided for @psTransferVoucherNextDesc.
  ///
  /// In ar, this message translates to:
  /// **'الرقم التالي المقترح لأذون التحويل.'**
  String get psTransferVoucherNextDesc;

  /// No description provided for @psSalesVoucherTitle.
  ///
  /// In ar, this message translates to:
  /// **'الأذون المخزنية لفواتير المبيعات'**
  String get psSalesVoucherTitle;

  /// No description provided for @psSalesVoucherDesc.
  ///
  /// In ar, this message translates to:
  /// **'عند التفعيل يُنشأ إذن صرف يحتاج اعتماداً قبل خصم المخزون.'**
  String get psSalesVoucherDesc;

  /// No description provided for @psPurchaseVoucherTitle.
  ///
  /// In ar, this message translates to:
  /// **'الأذون المخزنية لفواتير الشراء'**
  String get psPurchaseVoucherTitle;

  /// No description provided for @psPurchaseVoucherDesc.
  ///
  /// In ar, this message translates to:
  /// **'عند التفعيل يُنشأ إذن إدخال يحتاج اعتماداً قبل إضافة المخزون.'**
  String get psPurchaseVoucherDesc;

  /// No description provided for @psDefaultsTitle.
  ///
  /// In ar, this message translates to:
  /// **'القيم الافتراضية للنظام'**
  String get psDefaultsTitle;

  /// No description provided for @psDefaultsDesc.
  ///
  /// In ar, this message translates to:
  /// **'قيم تُقترح تلقائياً للمستودعات والمنتجات والضرائب.'**
  String get psDefaultsDesc;

  /// No description provided for @psDefaultSubAccountTitle.
  ///
  /// In ar, this message translates to:
  /// **'الحساب الفرعي الافتراضي'**
  String get psDefaultSubAccountTitle;

  /// No description provided for @psPleaseChoose.
  ///
  /// In ar, this message translates to:
  /// **'من فضلك اختر'**
  String get psPleaseChoose;

  /// No description provided for @psNone.
  ///
  /// In ar, this message translates to:
  /// **'— بدون —'**
  String get psNone;

  /// No description provided for @psGeneralInventory.
  ///
  /// In ar, this message translates to:
  /// **'مخزون عام'**
  String get psGeneralInventory;

  /// No description provided for @psRawMaterials.
  ///
  /// In ar, this message translates to:
  /// **'مواد خام'**
  String get psRawMaterials;

  /// No description provided for @psCommercial.
  ///
  /// In ar, this message translates to:
  /// **'تجاري'**
  String get psCommercial;

  /// No description provided for @psDefaultSubAccountDesc.
  ///
  /// In ar, this message translates to:
  /// **'يُستخدم كمرجع محاسبي عند ربط المخزون بالحسابات.'**
  String get psDefaultSubAccountDesc;

  /// No description provided for @psDefaultWarehouseTitle.
  ///
  /// In ar, this message translates to:
  /// **'المستودع الافتراضي'**
  String get psDefaultWarehouseTitle;

  /// No description provided for @psManageWarehouses.
  ///
  /// In ar, this message translates to:
  /// **'إدارة المستودعات'**
  String get psManageWarehouses;

  /// No description provided for @psChooseWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'اختر مستودعاً'**
  String get psChooseWarehouse;

  /// No description provided for @psDefaultWarehouseDesc.
  ///
  /// In ar, this message translates to:
  /// **'يُقترح عند إضافة منتجات وحركات مخزون جديدة.'**
  String get psDefaultWarehouseDesc;

  /// No description provided for @psDefaultPriceListTitle.
  ///
  /// In ar, this message translates to:
  /// **'قائمة الأسعار الافتراضية'**
  String get psDefaultPriceListTitle;

  /// No description provided for @psManagePriceLists.
  ///
  /// In ar, this message translates to:
  /// **'إدارة القوائم'**
  String get psManagePriceLists;

  /// No description provided for @psDefaultPriceListDesc.
  ///
  /// In ar, this message translates to:
  /// **'تُستخدم كقائمة أسعار افتراضية للفرع الحالي عند توفر الربط.'**
  String get psDefaultPriceListDesc;

  /// No description provided for @psDefaultTax1Title.
  ///
  /// In ar, this message translates to:
  /// **'الضريبة الافتراضية 1'**
  String get psDefaultTax1Title;

  /// No description provided for @psManageTaxes.
  ///
  /// In ar, this message translates to:
  /// **'إدارة الضرائب'**
  String get psManageTaxes;

  /// No description provided for @psTaxRatesDesc.
  ///
  /// In ar, this message translates to:
  /// **'نِسَب الضريبة تُضبط لكل منتج أو من إعدادات الفاتورة.'**
  String get psTaxRatesDesc;

  /// No description provided for @psDefaultTax1Desc.
  ///
  /// In ar, this message translates to:
  /// **'تُقترح للمنتجات الجديدة ومتوافقة مع حقل الضريبة في المنتج.'**
  String get psDefaultTax1Desc;

  /// No description provided for @psDefaultTax2Title.
  ///
  /// In ar, this message translates to:
  /// **'الضريبة الافتراضية 2'**
  String get psDefaultTax2Title;

  /// No description provided for @psDefaultTax2Desc.
  ///
  /// In ar, this message translates to:
  /// **'للاستخدام المزدوج عند دعم ضريبتين لاحقاً.'**
  String get psDefaultTax2Desc;

  /// No description provided for @psReturnCostMethodTitle.
  ///
  /// In ar, this message translates to:
  /// **'طريقة احتساب تكلفة المرتجعات'**
  String get psReturnCostMethodTitle;

  /// No description provided for @psReturnBySalePrice.
  ///
  /// In ar, this message translates to:
  /// **'حسب سعر البيع'**
  String get psReturnBySalePrice;

  /// No description provided for @psReturnBySalePriceDesc.
  ///
  /// In ar, this message translates to:
  /// **'استخدام سعر البيع من فاتورة المبيعات.'**
  String get psReturnBySalePriceDesc;

  /// No description provided for @psReturnByAvgCost.
  ///
  /// In ar, this message translates to:
  /// **'حسب آخر متوسط للتكلفة'**
  String get psReturnByAvgCost;

  /// No description provided for @psReturnByAvgCostDesc.
  ///
  /// In ar, this message translates to:
  /// **'استخدام متوسط التكلفة عند إنشاء المرتجع.'**
  String get psReturnByAvgCostDesc;

  /// No description provided for @psReturnCostDesc.
  ///
  /// In ar, this message translates to:
  /// **'يُطبَّق عند معالجة مرتجعات المبيعات.'**
  String get psReturnCostDesc;

  /// No description provided for @psBusinessNatureTitle.
  ///
  /// In ar, this message translates to:
  /// **'طبيعة مبيعات النشاط'**
  String get psBusinessNatureTitle;

  /// No description provided for @psNatureProducts.
  ///
  /// In ar, this message translates to:
  /// **'المنتجات فقط'**
  String get psNatureProducts;

  /// No description provided for @psNatureProductsDesc.
  ///
  /// In ar, this message translates to:
  /// **'مناسب للمخزون الفعلي.'**
  String get psNatureProductsDesc;

  /// No description provided for @psNatureServices.
  ///
  /// In ar, this message translates to:
  /// **'الخدمات فقط'**
  String get psNatureServices;

  /// No description provided for @psNatureServicesDesc.
  ///
  /// In ar, this message translates to:
  /// **'أنشطة تعتمد على الوقت أو المشاريع.'**
  String get psNatureServicesDesc;

  /// No description provided for @psNatureBoth.
  ///
  /// In ar, this message translates to:
  /// **'منتجات وخدمات'**
  String get psNatureBoth;

  /// No description provided for @psNatureBothDesc.
  ///
  /// In ar, this message translates to:
  /// **'دمج بين الصنفين في النظام.'**
  String get psNatureBothDesc;

  /// No description provided for @psBusinessNatureDesc.
  ///
  /// In ar, this message translates to:
  /// **'يحدد التركيز الافتراضي في شاشات المخزون والفوترة.'**
  String get psBusinessNatureDesc;

  /// No description provided for @psVoucherPermEnabled.
  ///
  /// In ar, this message translates to:
  /// **'مفعّل'**
  String get psVoucherPermEnabled;

  /// No description provided for @psVoucherPermDisabled.
  ///
  /// In ar, this message translates to:
  /// **'معطّل'**
  String get psVoucherPermDisabled;

  /// No description provided for @psTaxExempt.
  ///
  /// In ar, this message translates to:
  /// **'معفى'**
  String get psTaxExempt;

  /// No description provided for @psCustomTax.
  ///
  /// In ar, this message translates to:
  /// **'مخصص'**
  String get psCustomTax;

  /// No description provided for @psTransferSettingsTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات ترقيم أذون التحويل'**
  String get psTransferSettingsTitle;

  /// No description provided for @psOptionalPrefix.
  ///
  /// In ar, this message translates to:
  /// **'بادئة اختيارية'**
  String get psOptionalPrefix;

  /// No description provided for @psExamplePrefix.
  ///
  /// In ar, this message translates to:
  /// **'مثال: TR-'**
  String get psExamplePrefix;

  /// No description provided for @psCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get psCancel;

  /// No description provided for @psSave.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get psSave;

  /// No description provided for @psSavePrefixHint.
  ///
  /// In ar, this message translates to:
  /// **'الرقم التالي المقترح لأذون التحويل.'**
  String get psSavePrefixHint;

  /// No description provided for @psSerialHint.
  ///
  /// In ar, this message translates to:
  /// **'الرقم الذي سيُعرض كتلميح للمعرّف التالي. البادئة تُحفظ في إعدادات الترقيم.'**
  String get psSerialHint;

  /// No description provided for @psTaxToggleTooltip.
  ///
  /// In ar, this message translates to:
  /// **'عدم التعامل بالضريبة — إيقاف إظهار حقل الضريبة'**
  String get psTaxToggleTooltip;

  /// No description provided for @psShowTaxField.
  ///
  /// In ar, this message translates to:
  /// **'إظهار حقل الضريبة'**
  String get psShowTaxField;

  /// No description provided for @psTaxToggleDesc.
  ///
  /// In ar, this message translates to:
  /// **'في «إضافة منتج جديد». أيقونة المنع تعطّل الضريبة دفعة واحدة.'**
  String get psTaxToggleDesc;

  /// No description provided for @psDiscountToggleTooltip.
  ///
  /// In ar, this message translates to:
  /// **'عدم التعامل بالخصم — إيقاف إظهار حقول الخصم'**
  String get psDiscountToggleTooltip;

  /// No description provided for @psShowDiscountFields.
  ///
  /// In ar, this message translates to:
  /// **'إظهار حقول الخصم'**
  String get psShowDiscountFields;

  /// No description provided for @psDiscountToggleDesc.
  ///
  /// In ar, this message translates to:
  /// **'في «إضافة منتج جديد». أيقونة المنع تعطّل الخصم دفعة واحدة.'**
  String get psDiscountToggleDesc;

  /// No description provided for @sodEditTicket.
  ///
  /// In ar, this message translates to:
  /// **'تعديل تذكرة'**
  String get sodEditTicket;

  /// No description provided for @sodSearchParts.
  ///
  /// In ar, this message translates to:
  /// **'بحث في قطع الغيار…'**
  String get sodSearchParts;

  /// No description provided for @sodProduct.
  ///
  /// In ar, this message translates to:
  /// **'منتج'**
  String get sodProduct;

  /// No description provided for @sodAddPart.
  ///
  /// In ar, this message translates to:
  /// **'إضافة قطعة غيار'**
  String get sodAddPart;

  /// No description provided for @sodPart.
  ///
  /// In ar, this message translates to:
  /// **'قطعة غيار'**
  String get sodPart;

  /// No description provided for @sodQuantity.
  ///
  /// In ar, this message translates to:
  /// **'الكمية'**
  String get sodQuantity;

  /// No description provided for @sodSalePrice.
  ///
  /// In ar, this message translates to:
  /// **'سعر البيع (Fdj)'**
  String get sodSalePrice;

  /// No description provided for @sodCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get sodCancel;

  /// No description provided for @sodAdd.
  ///
  /// In ar, this message translates to:
  /// **'إضافة'**
  String get sodAdd;

  /// No description provided for @sodTechnicalService.
  ///
  /// In ar, this message translates to:
  /// **'خدمة فنية'**
  String get sodTechnicalService;

  /// No description provided for @sodSerialPlate.
  ///
  /// In ar, this message translates to:
  /// **'سيريال/لوحة'**
  String get sodSerialPlate;

  /// No description provided for @sodNewSale.
  ///
  /// In ar, this message translates to:
  /// **'بيع جديد'**
  String get sodNewSale;

  /// No description provided for @sodTicketDetails.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل التذكرة'**
  String get sodTicketDetails;

  /// No description provided for @sodEdit.
  ///
  /// In ar, this message translates to:
  /// **'تعديل'**
  String get sodEdit;

  /// No description provided for @sodUpdate.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get sodUpdate;

  /// No description provided for @sodAddPartShort.
  ///
  /// In ar, this message translates to:
  /// **'إضافة قطعة'**
  String get sodAddPartShort;

  /// No description provided for @sodCustomer.
  ///
  /// In ar, this message translates to:
  /// **'عميل'**
  String get sodCustomer;

  /// No description provided for @sodSerialInfo.
  ///
  /// In ar, this message translates to:
  /// **'سيريال/لوحة'**
  String get sodSerialInfo;

  /// No description provided for @sodConvertToInvoice.
  ///
  /// In ar, this message translates to:
  /// **'تحويل لفاتورة بيع'**
  String get sodConvertToInvoice;

  /// No description provided for @sodParts.
  ///
  /// In ar, this message translates to:
  /// **'قطع الغيار'**
  String get sodParts;

  /// No description provided for @sodNoPartsYet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد قطع غيار بعد.'**
  String get sodNoPartsYet;

  /// No description provided for @sodInvoiceItems.
  ///
  /// In ar, this message translates to:
  /// **'بنود الفاتورة'**
  String get sodInvoiceItems;

  /// No description provided for @sodViewOnly.
  ///
  /// In ar, this message translates to:
  /// **'للعرض فقط'**
  String get sodViewOnly;

  /// No description provided for @sodInvoiceProductsDesc.
  ///
  /// In ar, this message translates to:
  /// **'المنتجات والخدمات المسجّلة في فاتورة البيع المرتبطة.'**
  String get sodInvoiceProductsDesc;

  /// No description provided for @sodPastDue.
  ///
  /// In ar, this message translates to:
  /// **'تجاوز موعد التسليم المتوقع'**
  String get sodPastDue;

  /// No description provided for @sodExpectedDelivery.
  ///
  /// In ar, this message translates to:
  /// **'موعد التسليم المتوقع للزبون'**
  String get sodExpectedDelivery;

  /// No description provided for @sodWorkDurationMin.
  ///
  /// In ar, this message translates to:
  /// **'مدة العمل المتوقعة: \$dm دقيقة'**
  String sodWorkDurationMin(Object minutes);

  /// No description provided for @sodPending.
  ///
  /// In ar, this message translates to:
  /// **'معلقة'**
  String get sodPending;

  /// No description provided for @sodInProgress.
  ///
  /// In ar, this message translates to:
  /// **'قيد العمل'**
  String get sodInProgress;

  /// No description provided for @sodReadyForDelivery.
  ///
  /// In ar, this message translates to:
  /// **'جاهزة للتسليم'**
  String get sodReadyForDelivery;

  /// No description provided for @sodDelivered.
  ///
  /// In ar, this message translates to:
  /// **'مسلّمة'**
  String get sodDelivered;

  /// No description provided for @sodCancelled.
  ///
  /// In ar, this message translates to:
  /// **'ملغاة'**
  String get sodCancelled;

  /// No description provided for @sodFinancialSummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص مالي (بالفلس)'**
  String get sodFinancialSummary;

  /// No description provided for @sodService.
  ///
  /// In ar, this message translates to:
  /// **'الخدمة الفنية'**
  String get sodService;

  /// No description provided for @sodPartsLabel.
  ///
  /// In ar, this message translates to:
  /// **'قطع الغيار'**
  String get sodPartsLabel;

  /// No description provided for @sodTotal.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get sodTotal;

  /// No description provided for @sodPaidAdvance.
  ///
  /// In ar, this message translates to:
  /// **'مدفوع مسبقاً'**
  String get sodPaidAdvance;

  /// No description provided for @sodRemainingOnDelivery.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي عند التسليم'**
  String get sodRemainingOnDelivery;

  /// No description provided for @sodQtyPriceTotal.
  ///
  /// In ar, this message translates to:
  /// **'الكمية: {qty} · سعر: {price} · إجمالي: {total}'**
  String sodQtyPriceTotal(Object price, Object qty, Object total);

  /// No description provided for @sodQtyOnly.
  ///
  /// In ar, this message translates to:
  /// **'الكمية: {qty}'**
  String sodQtyOnly(Object qty);

  /// No description provided for @sodDelete.
  ///
  /// In ar, this message translates to:
  /// **'حذف'**
  String get sodDelete;

  /// No description provided for @sodLoadError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل بيانات التذكرة.'**
  String get sodLoadError;

  /// No description provided for @sodRetry.
  ///
  /// In ar, this message translates to:
  /// **'إعادة المحاولة'**
  String get sodRetry;

  /// No description provided for @settingsImportMeds.
  ///
  /// In ar, this message translates to:
  /// **'استيراد الأدوية'**
  String get settingsImportMeds;

  /// No description provided for @settingsImportMedsDesc.
  ///
  /// In ar, this message translates to:
  /// **'إضافة 157 دواء من ملف الجرد'**
  String get settingsImportMedsDesc;

  /// No description provided for @settingsImportMedsConfirm.
  ///
  /// In ar, this message translates to:
  /// **'سيتم إضافة 157 دواء إلى كتالوج المنتجات. هل تريد المتابعة؟'**
  String get settingsImportMedsConfirm;

  /// No description provided for @settingsImportedCount.
  ///
  /// In ar, this message translates to:
  /// **'تم استيراد {count} دواء بنجاح'**
  String settingsImportedCount(Object count);

  /// No description provided for @settingsImportError.
  ///
  /// In ar, this message translates to:
  /// **'خطأ: {error}'**
  String settingsImportError(Object error);

  /// No description provided for @settingsAppVersion.
  ///
  /// In ar, this message translates to:
  /// **'الإصدار 1.0.0'**
  String get settingsAppVersion;

  /// No description provided for @settingsCopyright.
  ///
  /// In ar, this message translates to:
  /// **'© 2026 Mاري. جميع الحقوق محفوظة.'**
  String get settingsCopyright;

  /// No description provided for @settingsLicenseActive.
  ///
  /// In ar, this message translates to:
  /// **'مفعّل'**
  String get settingsLicenseActive;

  /// No description provided for @settingsLicenseTrial.
  ///
  /// In ar, this message translates to:
  /// **'تجريبية'**
  String get settingsLicenseTrial;

  /// No description provided for @settingsLicenseInactive.
  ///
  /// In ar, this message translates to:
  /// **'غير نشط'**
  String get settingsLicenseInactive;

  /// No description provided for @settingsLicenseDisconnected.
  ///
  /// In ar, this message translates to:
  /// **'غير متصّل'**
  String get settingsLicenseDisconnected;

  /// No description provided for @settingsLicenseNone.
  ///
  /// In ar, this message translates to:
  /// **'بدون ترخيص'**
  String get settingsLicenseNone;

  /// No description provided for @settingsDeviceAllowed.
  ///
  /// In ar, this message translates to:
  /// **'تم السماح للجهاز بالعودة'**
  String get settingsDeviceAllowed;

  /// No description provided for @settingsDeviceCount.
  ///
  /// In ar, this message translates to:
  /// **'{count} أجهزة'**
  String settingsDeviceCount(Object count);

  /// No description provided for @settingsSubscription.
  ///
  /// In ar, this message translates to:
  /// **'الاشتراك'**
  String get settingsSubscription;

  /// No description provided for @settingsSubscriptionExpires.
  ///
  /// In ar, this message translates to:
  /// **'ينتهي الاشتراك في: {date}'**
  String settingsSubscriptionExpires(Object date);

  /// No description provided for @settingsDaysRemaining.
  ///
  /// In ar, this message translates to:
  /// **'متبقٍ تقريباً: {days} يوماً'**
  String settingsDaysRemaining(Object days);

  /// No description provided for @settingsSubscriptionActiveNoExpiry.
  ///
  /// In ar, this message translates to:
  /// **'اشتراك مفعّل بلا تاريخ انتهاء محدد في السحابة.'**
  String get settingsSubscriptionActiveNoExpiry;

  /// No description provided for @settingsLinkedDevices.
  ///
  /// In ar, this message translates to:
  /// **'الأجهزة المرتبطة بالحساب'**
  String get settingsLinkedDevices;

  /// No description provided for @settingsUpdate.
  ///
  /// In ar, this message translates to:
  /// **'تحديث'**
  String get settingsUpdate;

  /// No description provided for @settingsNoDevicesRegistered.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أجهزة مسجّلة بعد.'**
  String get settingsNoDevicesRegistered;

  /// No description provided for @settingsLastActive.
  ///
  /// In ar, this message translates to:
  /// **'آخر نشاط: {date}'**
  String settingsLastActive(Object date);

  /// No description provided for @settingsDisconnectedCannotLogin.
  ///
  /// In ar, this message translates to:
  /// **'مفصول — لا يمكنه الدخول حتى الموافقة'**
  String get settingsDisconnectedCannotLogin;

  /// No description provided for @settingsThisDevice.
  ///
  /// In ar, this message translates to:
  /// **'هذا الجهاز'**
  String get settingsThisDevice;

  /// No description provided for @settingsAllowReturn.
  ///
  /// In ar, this message translates to:
  /// **'سماح بالعودة'**
  String get settingsAllowReturn;

  /// No description provided for @settingsDisconnectDevice.
  ///
  /// In ar, this message translates to:
  /// **'فصل الجهاز'**
  String get settingsDisconnectDevice;

  /// No description provided for @settingsAutoSync.
  ///
  /// In ar, this message translates to:
  /// **'المزامنة التلقائية'**
  String get settingsAutoSync;

  /// No description provided for @settingsAutoSyncDesc.
  ///
  /// In ar, this message translates to:
  /// **'تُرفع من كل جهاز نسخة كاملة من قاعدة البيانات؛ الأحدث في السحابة هي التي تُستورد على الجهاز.'**
  String get settingsAutoSyncDesc;

  /// No description provided for @settingsSyncNow.
  ///
  /// In ar, this message translates to:
  /// **'مزامنة الآن'**
  String get settingsSyncNow;

  /// No description provided for @settingsLastSync.
  ///
  /// In ar, this message translates to:
  /// **'آخر مزامنة: {date}'**
  String settingsLastSync(Object date);

  /// No description provided for @settingsSyncSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تمت المزامنة بنجاح'**
  String get settingsSyncSuccess;

  /// No description provided for @settingsClearCloudProducts.
  ///
  /// In ar, this message translates to:
  /// **'مسح المنتجات من السحابة'**
  String get settingsClearCloudProducts;

  /// No description provided for @settingsClearCloudProductsDesc.
  ///
  /// In ar, this message translates to:
  /// **'سيتم حذف جميع المنتجات من السحابة فقط. الإعدادات والفواتير والعملاء لن تتأثر. تريد المتابعة؟'**
  String get settingsClearCloudProductsDesc;

  /// No description provided for @settingsCleared.
  ///
  /// In ar, this message translates to:
  /// **'تم مسح المنتجات من السحابة. اضغط مزامنة الآن'**
  String get settingsCleared;

  /// No description provided for @settingsClearFailed.
  ///
  /// In ar, this message translates to:
  /// **'فشل المسح: {error}'**
  String settingsClearFailed(Object error);

  /// No description provided for @settingsViewSubscriptionPlans.
  ///
  /// In ar, this message translates to:
  /// **'عرض خطط الاشتراك'**
  String get settingsViewSubscriptionPlans;

  /// No description provided for @settingsSubscriptionPlans.
  ///
  /// In ar, this message translates to:
  /// **'خطط الاشتراك'**
  String get settingsSubscriptionPlans;

  /// No description provided for @settingsThankYou.
  ///
  /// In ar, this message translates to:
  /// **'شكراً لتعاملكم معنا'**
  String get settingsThankYou;

  /// No description provided for @sofTenantError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحديد بيانات المستأجر. أعد فتح التطبيق ثم حاول مرة أخرى.'**
  String get sofTenantError;

  /// No description provided for @sofDbInitError.
  ///
  /// In ar, this message translates to:
  /// **'قاعدة البيانات تحتاج تهيئة/تحديث. أعد فتح التطبيق ثم حاول مرة أخرى.'**
  String get sofDbInitError;

  /// No description provided for @sofUnexpectedError.
  ///
  /// In ar, this message translates to:
  /// **'حدث خطأ غير متوقع أثناء الحفظ.'**
  String get sofUnexpectedError;

  /// No description provided for @sofExpectedWorkDuration.
  ///
  /// In ar, this message translates to:
  /// **'المدة المتوقعة لإنجاز العمل'**
  String get sofExpectedWorkDuration;

  /// No description provided for @sofHours.
  ///
  /// In ar, this message translates to:
  /// **'ساعات'**
  String get sofHours;

  /// No description provided for @sofMinutes.
  ///
  /// In ar, this message translates to:
  /// **'دقائق'**
  String get sofMinutes;

  /// No description provided for @sofCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get sofCancel;

  /// No description provided for @sofDone.
  ///
  /// In ar, this message translates to:
  /// **'تم'**
  String get sofDone;

  /// No description provided for @sofNotSet.
  ///
  /// In ar, this message translates to:
  /// **'لم تُحدَّد — اضغط لاختيار الساعات والدقائق'**
  String get sofNotSet;

  /// No description provided for @sofHoursMinutes.
  ///
  /// In ar, this message translates to:
  /// **'{hours} س {minutes} د — اضغط للتعديل'**
  String sofHoursMinutes(Object hours, Object minutes);

  /// No description provided for @sofHoursOnly.
  ///
  /// In ar, this message translates to:
  /// **'{hours} ساعة — اضغط للتعديل'**
  String sofHoursOnly(Object hours);

  /// No description provided for @sofMinutesOnly.
  ///
  /// In ar, this message translates to:
  /// **'{minutes} دقيقة — اضغط للتعديل'**
  String sofMinutesOnly(Object minutes);

  /// No description provided for @sofTaskNotStarted.
  ///
  /// In ar, this message translates to:
  /// **'بعد «بدء العمل» من قائمة التذاكر يُثبَّت الموعد بدقة من وقت البدء.'**
  String get sofTaskNotStarted;

  /// No description provided for @sofWorkDurationMin.
  ///
  /// In ar, this message translates to:
  /// **'مدة العمل المتوقعة: {minutes} دقيقة'**
  String sofWorkDurationMin(Object minutes);

  /// No description provided for @sofPastDue.
  ///
  /// In ar, this message translates to:
  /// **'تجاوز موعد التسليم المتوقع'**
  String get sofPastDue;

  /// No description provided for @sofExpectedDelivery.
  ///
  /// In ar, this message translates to:
  /// **'موعد التسليم المتوقع (للزبون)'**
  String get sofExpectedDelivery;

  /// No description provided for @sofSearchServices.
  ///
  /// In ar, this message translates to:
  /// **'بحث في الخدمات…'**
  String get sofSearchServices;

  /// No description provided for @sofService.
  ///
  /// In ar, this message translates to:
  /// **'خدمة'**
  String get sofService;

  /// No description provided for @sofEditTicket.
  ///
  /// In ar, this message translates to:
  /// **'تعديل تذكرة'**
  String get sofEditTicket;

  /// No description provided for @sofNewTicket.
  ///
  /// In ar, this message translates to:
  /// **'تذكرة جديدة'**
  String get sofNewTicket;

  /// No description provided for @sofSave.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get sofSave;

  /// No description provided for @sofSaveError.
  ///
  /// In ar, this message translates to:
  /// **'حدث خطأ أثناء الحفظ. حاول مرة أخرى.'**
  String get sofSaveError;

  /// No description provided for @sofAll.
  ///
  /// In ar, this message translates to:
  /// **'الكل'**
  String get sofAll;

  /// No description provided for @sofCustomerName.
  ///
  /// In ar, this message translates to:
  /// **'اسم العميل'**
  String get sofCustomerName;

  /// No description provided for @sofCustomerSearchHint.
  ///
  /// In ar, this message translates to:
  /// **'ابدأ الكتابة للبحث في العملاء'**
  String get sofCustomerSearchHint;

  /// No description provided for @sofCustomerRequired.
  ///
  /// In ar, this message translates to:
  /// **'اسم العميل مطلوب'**
  String get sofCustomerRequired;

  /// No description provided for @sofCustomer.
  ///
  /// In ar, this message translates to:
  /// **'عميل'**
  String get sofCustomer;

  /// No description provided for @sofNewCustomer.
  ///
  /// In ar, this message translates to:
  /// **'عميل جديد'**
  String get sofNewCustomer;

  /// No description provided for @sofDeviceName.
  ///
  /// In ar, this message translates to:
  /// **'اسم الجهاز / السيارة'**
  String get sofDeviceName;

  /// No description provided for @sofDeviceNameRequired.
  ///
  /// In ar, this message translates to:
  /// **'اسم الجهاز مطلوب'**
  String get sofDeviceNameRequired;

  /// No description provided for @sofSerialPlateOptional.
  ///
  /// In ar, this message translates to:
  /// **'رقم تسلسلي / لوحة (اختياري)'**
  String get sofSerialPlateOptional;

  /// No description provided for @sofSerialHint.
  ///
  /// In ar, this message translates to:
  /// **'إن تُرك فارغاً يُولَّد تلقائياً رقم مرجعي داخلي للتذكرة (وليس سيريال الجهاز).'**
  String get sofSerialHint;

  /// No description provided for @sofExpectedDuration.
  ///
  /// In ar, this message translates to:
  /// **'المدة المتوقعة'**
  String get sofExpectedDuration;

  /// No description provided for @sofServiceTitle.
  ///
  /// In ar, this message translates to:
  /// **'الخدمة'**
  String get sofServiceTitle;

  /// No description provided for @sofServiceNotSet.
  ///
  /// In ar, this message translates to:
  /// **'غير محددة (اختياري)'**
  String get sofServiceNotSet;

  /// No description provided for @sofServiceSet.
  ///
  /// In ar, this message translates to:
  /// **'محددة'**
  String get sofServiceSet;

  /// No description provided for @sofSelect.
  ///
  /// In ar, this message translates to:
  /// **'اختيار'**
  String get sofSelect;

  /// No description provided for @sofEstimatedPrice.
  ///
  /// In ar, this message translates to:
  /// **'سعر تقديري (من الخدمة)'**
  String get sofEstimatedPrice;

  /// No description provided for @sofEstimatedPriceHint.
  ///
  /// In ar, this message translates to:
  /// **'يُملأ تلقائياً من سعر الخدمة'**
  String get sofEstimatedPriceHint;

  /// No description provided for @sofAgreedPrice.
  ///
  /// In ar, this message translates to:
  /// **'السعر المتفق عليه (Fdj)'**
  String get sofAgreedPrice;

  /// No description provided for @sofAgreedPriceHint.
  ///
  /// In ar, this message translates to:
  /// **'المكان الوحيد لتعديل السعر'**
  String get sofAgreedPriceHint;

  /// No description provided for @sofInvalidAmount.
  ///
  /// In ar, this message translates to:
  /// **'أدخل مبلغاً صحيحاً'**
  String get sofInvalidAmount;

  /// No description provided for @sofAdvancePayment.
  ///
  /// In ar, this message translates to:
  /// **'عربون/دفعة مقدمة (Fdj)'**
  String get sofAdvancePayment;

  /// No description provided for @sofProblemDesc.
  ///
  /// In ar, this message translates to:
  /// **'وصف المشكلة (اختياري)'**
  String get sofProblemDesc;

  /// No description provided for @sofSaving.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ الحفظ…'**
  String get sofSaving;

  /// No description provided for @sofSaveTicket.
  ///
  /// In ar, this message translates to:
  /// **'حفظ التذكرة'**
  String get sofSaveTicket;

  /// No description provided for @licCheckingLicense.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ التحقق من الترخيص…'**
  String get licCheckingLicense;

  /// No description provided for @licNoInternet.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد اتصال بالإنترنت'**
  String get licNoInternet;

  /// No description provided for @licOfflineWarning.
  ///
  /// In ar, this message translates to:
  /// **'يعمل التطبيق بآخر بيانات ترخيص محفوظة.\nتأكد من الاتصال في أقرب فرصة.'**
  String get licOfflineWarning;

  /// No description provided for @licRetry.
  ///
  /// In ar, this message translates to:
  /// **'إعادة المحاولة'**
  String get licRetry;

  /// No description provided for @licEnterWithoutConnection.
  ///
  /// In ar, this message translates to:
  /// **'الدخول بدون اتصال'**
  String get licEnterWithoutConnection;

  /// No description provided for @licUpgradeForDevices.
  ///
  /// In ar, this message translates to:
  /// **'ترقية الخطة لإضافة أجهزة'**
  String get licUpgradeForDevices;

  /// No description provided for @osUnexpectedInitError.
  ///
  /// In ar, this message translates to:
  /// **'حدث خطأ غير متوقع أثناء التهيئة: {error}'**
  String osUnexpectedInitError(Object error);

  /// No description provided for @osErrorOpeningShift.
  ///
  /// In ar, this message translates to:
  /// **'تعذر فتح الوردية: {error}'**
  String osErrorOpeningShift(Object error);

  /// No description provided for @osShiftOpenedMsg.
  ///
  /// In ar, this message translates to:
  /// **'تم فتح الوردية رقم #{id}'**
  String osShiftOpenedMsg(Object id);

  /// No description provided for @osOpenShiftNotifTitle.
  ///
  /// In ar, this message translates to:
  /// **'فتح وردية #{id}'**
  String osOpenShiftNotifTitle(Object id);

  /// No description provided for @osDetailStaff.
  ///
  /// In ar, this message translates to:
  /// **'موظف الوردية: {name}'**
  String osDetailStaff(Object name);

  /// No description provided for @osDetailSystemBalance.
  ///
  /// In ar, this message translates to:
  /// **'رصيد النظام عند الفتح: {amount}'**
  String osDetailSystemBalance(Object amount);

  /// No description provided for @osDetailPhysicalCount.
  ///
  /// In ar, this message translates to:
  /// **'الجرد اليدوي (الصندوق): {amount}'**
  String osDetailPhysicalCount(Object amount);

  /// No description provided for @osDetailAddedCash.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المضاف عند الفتح: {amount}'**
  String osDetailAddedCash(Object amount);

  /// No description provided for @osResumeShift.
  ///
  /// In ar, this message translates to:
  /// **'متابعة الوردية'**
  String get osResumeShift;

  /// No description provided for @osResumeShiftDesc.
  ///
  /// In ar, this message translates to:
  /// **'توجد وردية مفتوحة باسم \"{name}\". أدخل كلمة مرور الموظف للمتابعة.'**
  String osResumeShiftDesc(Object name);

  /// No description provided for @osResumeShiftHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل كلمة مرور الموظف للمتابعة'**
  String get osResumeShiftHint;

  /// No description provided for @osUserFallback.
  ///
  /// In ar, this message translates to:
  /// **'مستخدم #{id}'**
  String osUserFallback(Object id);

  /// No description provided for @osErrorLoadingUsersParam.
  ///
  /// In ar, this message translates to:
  /// **'تعذر تحميل مستخدمي الوردية: {error}'**
  String osErrorLoadingUsersParam(Object error);

  /// No description provided for @osPasswordHint.
  ///
  /// In ar, this message translates to:
  /// **'كلمة مرور المستخدم المختار'**
  String get osPasswordHint;

  /// No description provided for @osOpeningShiftLoading.
  ///
  /// In ar, this message translates to:
  /// **'جاري فتح الوردية…'**
  String get osOpeningShiftLoading;

  /// No description provided for @csNoOpenShift.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد وردية مفتوحة'**
  String get csNoOpenShift;

  /// No description provided for @csCloseShiftTitle.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق الوردية'**
  String get csCloseShiftTitle;

  /// No description provided for @csShiftSummary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص هذه الوردية'**
  String get csShiftSummary;

  /// No description provided for @csSalesInvoices.
  ///
  /// In ar, this message translates to:
  /// **'فواتير البيع'**
  String get csSalesInvoices;

  /// No description provided for @csReturnInvoices.
  ///
  /// In ar, this message translates to:
  /// **'فواتير المرتجع'**
  String get csReturnInvoices;

  /// No description provided for @csPasswordVerifyTitle.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد بكلمة مرور موظف الوردية (اختياري)'**
  String get csPasswordVerifyTitle;

  /// No description provided for @csPasswordHintNoUser.
  ///
  /// In ar, this message translates to:
  /// **'أدخل كلمة مرور حساب الدخول إن أردت التحقق. اترك الحقل فارغاً لتخطي التحقق'**
  String get csPasswordHintNoUser;

  /// No description provided for @csPasswordHintWithName.
  ///
  /// In ar, this message translates to:
  /// **'أدخل كلمة مرور الحساب \"{name}\" إن أردت التحقق. اترك الحقل فارغاً لتخطي التحقق'**
  String csPasswordHintWithName(Object name);

  /// No description provided for @csPasswordPlaceholder.
  ///
  /// In ar, this message translates to:
  /// **'كلمة مرور الدخول (اختياري)'**
  String get csPasswordPlaceholder;

  /// No description provided for @csSystemBalance.
  ///
  /// In ar, this message translates to:
  /// **'رصيد الصندوق (حسب النظام)'**
  String get csSystemBalance;

  /// No description provided for @csBalanceDesc.
  ///
  /// In ar, this message translates to:
  /// **'يُحدَّد الرصيد تلقائياً من حركات الصندوق. راجع القيم ثم أكّد السحب.'**
  String get csBalanceDesc;

  /// No description provided for @csCashInBox.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ في الصندوق'**
  String get csCashInBox;

  /// No description provided for @csWithdrawAmount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ الذي تريد أخذه'**
  String get csWithdrawAmount;

  /// No description provided for @csRemainingAfterWithdraw.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي في الصندوق بعد السحب'**
  String get csRemainingAfterWithdraw;

  /// No description provided for @csConfirmClose.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد وإغلاق الوردية'**
  String get csConfirmClose;

  /// No description provided for @csPasswordVerifyError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر التحقق من كلمة المرور لهذا الحساب'**
  String get csPasswordVerifyError;

  /// No description provided for @csUserVerifyError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر التحقق من المستخدم الحالي'**
  String get csUserVerifyError;

  /// No description provided for @csNoSavedPassword.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد كلمة مرور محفوظة لهذا الحساب. اترك الحقل فارغاً.'**
  String get csNoSavedPassword;

  /// No description provided for @csWrongPassword.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور غير صحيحة'**
  String get csWrongPassword;

  /// No description provided for @csWithdrawNegative.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المسحوب لا يمكن أن يكون سالباً'**
  String get csWithdrawNegative;

  /// No description provided for @csWithdrawExceeds.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المسحوب أكبر من المبلغ الموجود في الصندوق'**
  String get csWithdrawExceeds;

  /// No description provided for @csCloseError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الإغلاق: {error}'**
  String csCloseError(Object error);

  /// No description provided for @csRefreshBalance.
  ///
  /// In ar, this message translates to:
  /// **'تحديث الرصيد'**
  String get csRefreshBalance;

  /// No description provided for @csInvalidValue.
  ///
  /// In ar, this message translates to:
  /// **'قيمة غير صالحة'**
  String get csInvalidValue;

  /// No description provided for @csCloseNotifTitle.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق وردية #{id}'**
  String csCloseNotifTitle(Object id);

  /// No description provided for @csShiftClosedMsg.
  ///
  /// In ar, this message translates to:
  /// **'تم إغلاق الوردية. افتح وردية جديدة للمتابعة.'**
  String get csShiftClosedMsg;

  /// No description provided for @csDetailStaff.
  ///
  /// In ar, this message translates to:
  /// **'موظف الوردية: {name}'**
  String csDetailStaff(Object name);

  /// No description provided for @csDetailSystemBalanceClose.
  ///
  /// In ar, this message translates to:
  /// **'رصيد النظام لحظة الإغلاق: {amount} Fdj'**
  String csDetailSystemBalanceClose(Object amount);

  /// No description provided for @csDetailDeclaredCash.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المُعلَن في الصندوق: {amount} Fdj'**
  String csDetailDeclaredCash(Object amount);

  /// No description provided for @csDetailWithdrawn.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المسحوب: {amount} Fdj'**
  String csDetailWithdrawn(Object amount);

  /// No description provided for @csDetailRemaining.
  ///
  /// In ar, this message translates to:
  /// **'المتبقّي في الصندوق بعد السحب: {amount} Fdj'**
  String csDetailRemaining(Object amount);

  /// No description provided for @cashBucketInvoices.
  ///
  /// In ar, this message translates to:
  /// **'فواتير ومبيعات (قيود مرتبطة بفاتورة)'**
  String get cashBucketInvoices;

  /// No description provided for @cashBucketOther.
  ///
  /// In ar, this message translates to:
  /// **'حركات أخرى'**
  String get cashBucketOther;

  /// No description provided for @cashDeclaredClosingCash.
  ///
  /// In ar, this message translates to:
  /// **'المُعلَن متبقيًّا في الصندوق'**
  String get cashDeclaredClosingCash;

  /// No description provided for @expCsvHeader.
  ///
  /// In ar, this message translates to:
  /// **'الفئة,الوصف,المبلغ,التاريخ,الحالة,متكرر,الموظف'**
  String get expCsvHeader;

  /// No description provided for @expDateFromTo.
  ///
  /// In ar, this message translates to:
  /// **'من: {from}   إلى: {to}'**
  String expDateFromTo(Object from, Object to);

  /// No description provided for @expOtherPrefix.
  ///
  /// In ar, this message translates to:
  /// **'أخرى: '**
  String get expOtherPrefix;

  /// No description provided for @expBeneficiarySuffix.
  ///
  /// In ar, this message translates to:
  /// **' — المستفيد'**
  String get expBeneficiarySuffix;

  /// No description provided for @expBreakdownByCategory.
  ///
  /// In ar, this message translates to:
  /// **'توزيع حسب الفئة'**
  String get expBreakdownByCategory;

  /// No description provided for @expCategoryShareGauge.
  ///
  /// In ar, this message translates to:
  /// **'نسب إنفاق الفئات'**
  String get expCategoryShareGauge;

  /// No description provided for @expCategoryShareDescription.
  ///
  /// In ar, this message translates to:
  /// **'كل قوس يمثل نسبة فئة من إجمالي المصروفات في الفترة.'**
  String get expCategoryShareDescription;

  /// No description provided for @expDailyTrendDescription.
  ///
  /// In ar, this message translates to:
  /// **'يعرض مجموع كل فئة يوميًا بشكل تراكمي، مع محور قيم واضح ومسافات مريحة.'**
  String get expDailyTrendDescription;

  /// No description provided for @expAnalyticsDisclaimer.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظة: التحليلات تعتمد على تجميع SQL مباشر من جدول المصروفات ضمن الفترة المختارة.'**
  String get expAnalyticsDisclaimer;

  /// No description provided for @expNoMetricsData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات لعرض المقاييس.'**
  String get expNoMetricsData;

  /// No description provided for @expNoTrendData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات اتجاه عبر الزمن لعرضها.'**
  String get expNoTrendData;

  /// No description provided for @expAmountColon.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ:'**
  String get expAmountColon;

  /// No description provided for @expEmployeeFallback.
  ///
  /// In ar, this message translates to:
  /// **'موظف #{id}'**
  String expEmployeeFallback(Object id);

  /// No description provided for @expReceiptNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم الفاتورة'**
  String get expReceiptNumber;

  /// No description provided for @expSaveError.
  ///
  /// In ar, this message translates to:
  /// **'تعذر الحفظ: {error}'**
  String expSaveError(Object error);

  /// No description provided for @expTopCategoryLabel.
  ///
  /// In ar, this message translates to:
  /// **'أعلى فئة: {name}'**
  String expTopCategoryLabel(Object name);

  /// No description provided for @blTitle.
  ///
  /// In ar, this message translates to:
  /// **'طباعة ملصقات باركود'**
  String get blTitle;

  /// No description provided for @blPrintCount.
  ///
  /// In ar, this message translates to:
  /// **'طباعة {count} ملصق'**
  String blPrintCount(Object count);

  /// No description provided for @blTotalLabels.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الملصقات: {count}'**
  String blTotalLabels(Object count);

  /// No description provided for @blProducts.
  ///
  /// In ar, this message translates to:
  /// **'المنتجات: {count}'**
  String blProducts(Object count);

  /// No description provided for @blPrintHint.
  ///
  /// In ar, this message translates to:
  /// **'الطباعة عبر الطابعة الافتراضية للنظام أو من شاشة المعاينة.'**
  String get blPrintHint;

  /// No description provided for @blDocTitle.
  ///
  /// In ar, this message translates to:
  /// **'ملصقات باركود المنتجات'**
  String get blDocTitle;

  /// No description provided for @blSkippedZeroQty.
  ///
  /// In ar, this message translates to:
  /// **'تم تخطي المنتجات ذات الكمية صفر ({count})'**
  String blSkippedZeroQty(Object count);

  /// No description provided for @blLoadError.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر التحميل: {error}'**
  String blLoadError(Object error);

  /// No description provided for @blWeightProductsHint.
  ///
  /// In ar, this message translates to:
  /// **'منتجات الوزن: يُطبع المعرف على الملصق؛ الوزن يُوزَّن عند البيع.'**
  String get blWeightProductsHint;

  /// No description provided for @blBarcode.
  ///
  /// In ar, this message translates to:
  /// **'باركود: {code}'**
  String blBarcode(Object code);

  /// No description provided for @blNoBarcode.
  ///
  /// In ar, this message translates to:
  /// **'بدون باركود'**
  String get blNoBarcode;

  /// No description provided for @blStock.
  ///
  /// In ar, this message translates to:
  /// **'مخزون: {qty}'**
  String blStock(Object qty);

  /// No description provided for @blProductCode.
  ///
  /// In ar, this message translates to:
  /// **'رمز صنف: {code}'**
  String blProductCode(Object code);

  /// No description provided for @blSettingsHint.
  ///
  /// In ar, this message translates to:
  /// **'اختَر المقاس ومظهر المعاينة (تطبَّق على البطاقات والطباعة).'**
  String get blSettingsHint;

  /// No description provided for @blLabelSize.
  ///
  /// In ar, this message translates to:
  /// **'مقاس الملصق'**
  String get blLabelSize;

  /// No description provided for @blSetAllOne.
  ///
  /// In ar, this message translates to:
  /// **'اجعل الكل (1)'**
  String get blSetAllOne;

  /// No description provided for @blSetAllOneCount.
  ///
  /// In ar, this message translates to:
  /// **'اجعل الكل (1) ({count})'**
  String blSetAllOneCount(Object count);

  /// No description provided for @blSearchProductHint.
  ///
  /// In ar, this message translates to:
  /// **'بحث عن منتج'**
  String get blSearchProductHint;

  /// No description provided for @blSearchProductSub.
  ///
  /// In ar, this message translates to:
  /// **'الاسم، الباركود، أو رمز الصنف'**
  String get blSearchProductSub;

  /// No description provided for @blLastUpdated.
  ///
  /// In ar, this message translates to:
  /// **'آخر تحديث: {time} — إعادة جلب الأسعار والمخزون'**
  String blLastUpdated(Object time);

  /// No description provided for @blEmptyHint.
  ///
  /// In ar, this message translates to:
  /// **'ابحث عن منتج لإضافته للطباعة'**
  String get blEmptyHint;

  /// No description provided for @blEmptySubHint.
  ///
  /// In ar, this message translates to:
  /// **'يمكنك إضافة منتجات متعددة وطباعتها دفعة واحدة'**
  String get blEmptySubHint;

  /// No description provided for @blStockPrint.
  ///
  /// In ar, this message translates to:
  /// **'مخزون: {stock} | طباعة: {print}'**
  String blStockPrint(Object print, Object stock);

  /// No description provided for @blPreviewLabel.
  ///
  /// In ar, this message translates to:
  /// **'معاينة: {name} — {price} — {size}'**
  String blPreviewLabel(Object name, Object price, Object size);

  /// No description provided for @blAutoBarcodeNote.
  ///
  /// In ar, this message translates to:
  /// **'سيتم توليد باركود تلقائياً'**
  String get blAutoBarcodeNote;

  /// No description provided for @blKg.
  ///
  /// In ar, this message translates to:
  /// **'كغم'**
  String get blKg;

  /// No description provided for @blPerKg.
  ///
  /// In ar, this message translates to:
  /// **'/كغم'**
  String get blPerKg;

  /// No description provided for @blWeighted.
  ///
  /// In ar, this message translates to:
  /// **'وزن'**
  String get blWeighted;

  /// No description provided for @rptSectionCopied.
  ///
  /// In ar, this message translates to:
  /// **'تم نسخ اسم القسم: {name}'**
  String rptSectionCopied(Object name);

  /// No description provided for @rptSalesTrendSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'مخطط أعمدة — يوضح اتجاه المبيعات بين تاريخي الفترة'**
  String get rptSalesTrendSubtitle;

  /// No description provided for @rptKPIShare.
  ///
  /// In ar, this message translates to:
  /// **'نسبة كل مؤشر من صافي المبيعات — متزامنة مع بطاقات KPI أعلاه'**
  String get rptKPIShare;

  /// No description provided for @rptDailyBreakdownSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'مكدّس من بيانات الفواتير والمصروفات (SQL GROUP BY يومي)'**
  String get rptDailyBreakdownSubtitle;

  /// No description provided for @rptCustomerPieSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'مخطط بيتزا تفاعلي — من فواتير البيع فقط (بدون السندات)'**
  String get rptCustomerPieSubtitle;

  /// No description provided for @rptPaymentGaugeSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'Gauges — متسقة مع نسب المخطط الدائري والجدول'**
  String get rptPaymentGaugeSubtitle;

  /// No description provided for @rptPaymentTrendSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'مكدّس — يبني كل يوم مجموع كل نوع دفع مباشرة من SQL'**
  String get rptPaymentTrendSubtitle;

  /// No description provided for @rptSalesOnlyNote.
  ///
  /// In ar, this message translates to:
  /// **'هذا القسم يعرض المبيعات فقط: نقدي/دين/تقسيط/توصيل.'**
  String get rptSalesOnlyNote;

  /// No description provided for @rptVouchersExcluded.
  ///
  /// In ar, this message translates to:
  /// **'سندات التحصيل/تسديد الأقساط/دفع المورد تُستبعد من “المبيعات” (لأنها ليست إيراد بيع).'**
  String get rptVouchersExcluded;

  /// No description provided for @rptCustomerDistributionTitle.
  ///
  /// In ar, this message translates to:
  /// **'توزيع المبيعات على العملاء'**
  String get rptCustomerDistributionTitle;

  /// No description provided for @rptCustomerDistributionDesc.
  ///
  /// In ar, this message translates to:
  /// **'بيتزا تفاعلي — يعرض أعلى 6 عملاء وباقي العملاء كـ “آخرون”'**
  String get rptCustomerDistributionDesc;

  /// No description provided for @rptTopCustomersTitle.
  ///
  /// In ar, this message translates to:
  /// **'أكثر العملاء شراءً (حسب اسم الفاتورة)'**
  String get rptTopCustomersTitle;

  /// No description provided for @rptTopCustomersSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'ترتيب حسب الإجمالي — من بيانات الفواتير في الفترة'**
  String get rptTopCustomersSubtitle;

  /// No description provided for @rptCustomerNameNote.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه: الاسم مأخوذ من حقل “اسم العميل” في الفاتورة؛ لربط أدق استخدم اختيار العميل من السجل.'**
  String get rptCustomerNameNote;

  /// No description provided for @rptCustomerBalancesSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'جدول — أرصدة مسجّلة في سجل العملاء'**
  String get rptCustomerBalancesSubtitle;

  /// No description provided for @rptInstallmentPlansSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'جدول — خطط الأقساط المرتبطة بفواتير الفترة'**
  String get rptInstallmentPlansSubtitle;

  /// No description provided for @rptUnknownStaff.
  ///
  /// In ar, this message translates to:
  /// **'(غير معروف)'**
  String get rptUnknownStaff;

  /// No description provided for @rptStaffDistributionTitle.
  ///
  /// In ar, this message translates to:
  /// **'توزيع المبيعات على الموظفين'**
  String get rptStaffDistributionTitle;

  /// No description provided for @rptStaffDistributionDesc.
  ///
  /// In ar, this message translates to:
  /// **'مخطط بيتزا تفاعلي — حسب اسم الموظف المسجّل في الفاتورة (فواتير بيع فقط)'**
  String get rptStaffDistributionDesc;

  /// No description provided for @rptNoStaffData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد مبيعات مسجّلة باسم موظف في هذه الفترة'**
  String get rptNoStaffData;

  /// No description provided for @rptStaffShareTitle.
  ///
  /// In ar, this message translates to:
  /// **'نسبة كل موظف من إجمالي المبيعات'**
  String get rptStaffShareTitle;

  /// No description provided for @rptStaffShareSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'Gauges — متسقة مع نسب المخطط الدائري والجدول'**
  String get rptStaffShareSubtitle;

  /// No description provided for @rptStaffTrendTitle.
  ///
  /// In ar, this message translates to:
  /// **'اتجاه مبيعات الموظفين عبر الزمن'**
  String get rptStaffTrendTitle;

  /// No description provided for @rptStaffTrendSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'مكدّس — أعلى 5 موظفين فقط لتفادي ازدحام الرسم'**
  String get rptStaffTrendSubtitle;

  /// No description provided for @rptStaffInvoicesTitle.
  ///
  /// In ar, this message translates to:
  /// **'فواتير مسجّلة باسم الموظف (حقل الفاتورة)'**
  String get rptStaffInvoicesTitle;

  /// No description provided for @rptStaffInvoicesSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'جدول — أداء التسجيل حسب اسم الموظف على الفاتورة'**
  String get rptStaffInvoicesSubtitle;

  /// No description provided for @rptMarginGaugeSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'Gauges — توزيع نسبي يوضح أين تذهب كل وحدة إيراد'**
  String get rptMarginGaugeSubtitle;

  /// No description provided for @rptMarginTrendStacked.
  ///
  /// In ar, this message translates to:
  /// **'مكدّس — كل يوم يوضح تركيب الإيراد ومقابله المصروفات'**
  String get rptMarginTrendStacked;

  /// No description provided for @rptMarginTrendStackedExpense.
  ///
  /// In ar, this message translates to:
  /// **'مكدّس — كل يوم يوضح تركيب الإيراد ومقابله المصروفات'**
  String get rptMarginTrendStackedExpense;

  /// No description provided for @rptMarginSortNote.
  ///
  /// In ar, this message translates to:
  /// **'ترتيب حسب الهامش الصافي (إيراد − تكلفة) بعد توزيع الخصومات وطرح المرتجعات'**
  String get rptMarginSortNote;

  /// No description provided for @rptMarginPercent.
  ///
  /// In ar, this message translates to:
  /// **'الهامش %'**
  String get rptMarginPercent;

  /// No description provided for @rptLoyaltyDiscounts.
  ///
  /// In ar, this message translates to:
  /// **'خصومات ولاء على الفواتير: {amount} Fdj'**
  String rptLoyaltyDiscounts(Object amount);

  /// No description provided for @rptLoyaltyPointsEarned.
  ///
  /// In ar, this message translates to:
  /// **'نقاط ممنوحة (مجموع النقاط المسجّلة على الفواتير): {count}'**
  String rptLoyaltyPointsEarned(Object count);

  /// No description provided for @rptCostBasisNote.
  ///
  /// In ar, this message translates to:
  /// **'تكلفة البند تُؤخذ بالترتيب: (١) مثبّتة وقت البيع، (٢) المتوسط المرجّح من دفعات المنتج (WAC)، (٣) آخر سعر شراء في بطاقة المنتج'**
  String get rptCostBasisNote;

  /// No description provided for @rptCostBasisNote2.
  ///
  /// In ar, this message translates to:
  /// **'الفواتير الجديدة تُثبّت التكلفة تلقائياً لحظة إنشائها، فلا يتأثر الماضي بتغيّر أسعار الشراء.'**
  String get rptCostBasisNote2;

  /// No description provided for @rptInvoiceDiscountNote.
  ///
  /// In ar, this message translates to:
  /// **'الخصم على مستوى الفاتورة (خصم الفاتورة + خصم الولاء) يُوزَّع نسبياً على كل سطر بند.'**
  String get rptInvoiceDiscountNote;

  /// No description provided for @rptReturnsNote.
  ///
  /// In ar, this message translates to:
  /// **'المرتجعات (isReturned = 1) تُطرح من الإيراد ومن التكلفة معاً للحصول على الصافي الحقيقي.'**
  String get rptReturnsNote;

  /// No description provided for @rptVouchersExcludedNote.
  ///
  /// In ar, this message translates to:
  /// **'تُستبعد السندات (تحصيل/تسديد/دفع مورد) لأنها ليست بيع.'**
  String get rptVouchersExcludedNote;

  /// No description provided for @rptNetTotalNote.
  ///
  /// In ar, this message translates to:
  /// **'الصافي = الهامش الإجمالي − إجمالي المصروفات في الفترة.'**
  String get rptNetTotalNote;

  /// No description provided for @rptItemRevenueSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'جدول — ترتيب حسب إيراد البنود في الفترة'**
  String get rptItemRevenueSubtitle;

  /// No description provided for @rptCostConfidenceSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'كلما ارتفعت نسبة السطور ذات التكلفة المثبّتة، زادت دقة الرقم'**
  String get rptCostConfidenceSubtitle;

  /// No description provided for @rptCostAccuracyLine1.
  ///
  /// In ar, this message translates to:
  /// **'من أصل {total} سطر بيع في الفترة، {known} تملك تكلفة معروفة.'**
  String rptCostAccuracyLine1(Object known, Object total);

  /// No description provided for @rptCostAccuracyLine2.
  ///
  /// In ar, this message translates to:
  /// **'{count} سطر بدون تكلفة معروفة — أكمِل سعر الشراء في بطاقات المنتجات أو اربط السطر بمنتج لرفع دقة الهامش.'**
  String rptCostAccuracyLine2(Object count);

  /// No description provided for @rptFixedCostLabel.
  ///
  /// In ar, this message translates to:
  /// **'مثبّتة وقت البيع: {count}'**
  String rptFixedCostLabel(Object count);

  /// No description provided for @rptCurrentPriceCostLabel.
  ///
  /// In ar, this message translates to:
  /// **'تعتمد على سعر شراء حالي: {count}'**
  String rptCurrentPriceCostLabel(Object count);

  /// No description provided for @rptNoCostLabel.
  ///
  /// In ar, this message translates to:
  /// **'بدون تكلفة (تُعامَل 0): {count}'**
  String rptNoCostLabel(Object count);

  /// No description provided for @rptCostAccuracyNote.
  ///
  /// In ar, this message translates to:
  /// **'يوجد {count} سطر بدون تكلفة معروفة — أكمِل سعر الشراء في بطاقات المنتجات أو اربط السطر بمنتج لرفع دقة الهامش.'**
  String rptCostAccuracyNote(Object count);

  /// No description provided for @rptSavePeriodNote.
  ///
  /// In ar, this message translates to:
  /// **'عند الحفظ تُحدَّث الفترة الحالية وتُخزَّن للمرّة القادمة.'**
  String get rptSavePeriodNote;

  /// No description provided for @rptStaffRecorder.
  ///
  /// In ar, this message translates to:
  /// **'الموظف / المسجّل'**
  String get rptStaffRecorder;

  /// No description provided for @rptHaveKnownCost.
  ///
  /// In ar, this message translates to:
  /// **'{count} تملك تكلفة معروفة.'**
  String rptHaveKnownCost(Object count);

  /// No description provided for @rptDefaultPeriodSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'عند الحفظ تُحدَّث الفترة الحالية وتُخزَّن للمرّة القادمة.'**
  String get rptDefaultPeriodSubtitle;

  /// No description provided for @expReportTitle.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة تقرير المصروفات'**
  String get expReportTitle;

  /// No description provided for @expPeriodLabel.
  ///
  /// In ar, this message translates to:
  /// **'الفترة'**
  String get expPeriodLabel;

  /// No description provided for @expCreatedLabel.
  ///
  /// In ar, this message translates to:
  /// **'تم الإنشاء'**
  String get expCreatedLabel;

  /// No description provided for @expPageLabel.
  ///
  /// In ar, this message translates to:
  /// **'صفحة {current}/{total}'**
  String expPageLabel(Object current, Object total);

  /// No description provided for @expCategory.
  ///
  /// In ar, this message translates to:
  /// **'الفئة'**
  String get expCategory;

  /// No description provided for @expTotal.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get expTotal;

  /// No description provided for @expPercentage.
  ///
  /// In ar, this message translates to:
  /// **'النسبة'**
  String get expPercentage;

  /// No description provided for @expOperationsCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد العمليات'**
  String get expOperationsCount;

  /// No description provided for @expPaid.
  ///
  /// In ar, this message translates to:
  /// **'المدفوع'**
  String get expPaid;

  /// No description provided for @expPending.
  ///
  /// In ar, this message translates to:
  /// **'المعلق'**
  String get expPending;

  /// No description provided for @expDate.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get expDate;

  /// No description provided for @expAmount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ'**
  String get expAmount;

  /// No description provided for @expDescription.
  ///
  /// In ar, this message translates to:
  /// **'الوصف'**
  String get expDescription;

  /// No description provided for @expStaff.
  ///
  /// In ar, this message translates to:
  /// **'الموظف'**
  String get expStaff;

  /// No description provided for @expExpenseReason.
  ///
  /// In ar, this message translates to:
  /// **'سبب الصرف (تعليق)'**
  String get expExpenseReason;

  /// No description provided for @expNoNoteHint.
  ///
  /// In ar, this message translates to:
  /// **'بدون تعليق - يُنصح بإضافة سبب الصرف.'**
  String get expNoNoteHint;

  /// No description provided for @expDaily.
  ///
  /// In ar, this message translates to:
  /// **'يومي'**
  String get expDaily;

  /// No description provided for @expWeekly.
  ///
  /// In ar, this message translates to:
  /// **'أسبوعي'**
  String get expWeekly;

  /// No description provided for @expMonthly.
  ///
  /// In ar, this message translates to:
  /// **'شهري'**
  String get expMonthly;

  /// No description provided for @expYearly.
  ///
  /// In ar, this message translates to:
  /// **'سنوي'**
  String get expYearly;

  /// No description provided for @expPrintReport.
  ///
  /// In ar, this message translates to:
  /// **'طباعة تقرير مصروفات'**
  String get expPrintReport;

  /// No description provided for @expChoosePeriod.
  ///
  /// In ar, this message translates to:
  /// **'اختر الفترة الزمنية للفاتورة:'**
  String get expChoosePeriod;

  /// No description provided for @expCustom.
  ///
  /// In ar, this message translates to:
  /// **'مخصص'**
  String get expCustom;

  /// No description provided for @expSelectedPeriod.
  ///
  /// In ar, this message translates to:
  /// **'الفترة المختارة:'**
  String get expSelectedPeriod;

  /// No description provided for @expCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get expCancel;

  /// No description provided for @expPrint.
  ///
  /// In ar, this message translates to:
  /// **'طباعة'**
  String get expPrint;

  /// No description provided for @debtsListFiltered.
  ///
  /// In ar, this message translates to:
  /// **'القائمة: {filtered} من {total} فاتورة (بحث أو تصفية)'**
  String debtsListFiltered(Object filtered, Object total);

  /// No description provided for @debtsAggregateHint.
  ///
  /// In ar, this message translates to:
  /// **'تجميع حسب العميل: المنتجات والبائعون وتسديد جزئي من شاشة التفاصيل. QR على الإيصال للعملاء المسجّلين فقط.'**
  String get debtsAggregateHint;

  /// No description provided for @debtsCustomersFiltered.
  ///
  /// In ar, this message translates to:
  /// **'{filtered} من {total} عميل'**
  String debtsCustomersFiltered(Object filtered, Object total);

  /// No description provided for @debtsNoRemainingAged.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد متبقٍ آجل مجمّع بالعملاء'**
  String get debtsNoRemainingAged;

  /// No description provided for @debtsUnlinkedToCustomerTable.
  ///
  /// In ar, this message translates to:
  /// **'غير مربوط بجدول العملاء (بالاسم)'**
  String get debtsUnlinkedToCustomerTable;

  /// No description provided for @debtsAgeWarningActive.
  ///
  /// In ar, this message translates to:
  /// **' التحذير بالعمر يبدأ بعد \$warnDays يوماً من تاريخ الفاتورة.'**
  String debtsAgeWarningActive(Object days);

  /// No description provided for @debtsAgeWarningDisabled.
  ///
  /// In ar, this message translates to:
  /// **' فعّل «أيام تحذير العمر» من إعدادات الدين لتمييز الفواتير القديمة.'**
  String get debtsAgeWarningDisabled;

  /// No description provided for @debtsHowCalculated.
  ///
  /// In ar, this message translates to:
  /// **'تُحسب الديون من فواتير النوع «دين / آجل». المتبقي = إجمالي الفاتورة − المقدّم. حدود البيع تُضبط من إعدادات الديون.\$ageHint'**
  String debtsHowCalculated(Object ageHint);

  /// No description provided for @debtsShowAllInvoices.
  ///
  /// In ar, this message translates to:
  /// **'عرض كل الفواتير'**
  String get debtsShowAllInvoices;

  /// No description provided for @debtsAgeWarning.
  ///
  /// In ar, this message translates to:
  /// **'تحذير عمر'**
  String get debtsAgeWarning;

  /// No description provided for @debtsFilterAge.
  ///
  /// In ar, this message translates to:
  /// **'تصفية: تحذير عمر'**
  String get debtsFilterAge;

  /// No description provided for @debtsClosed.
  ///
  /// In ar, this message translates to:
  /// **'مغلقة'**
  String get debtsClosed;

  /// No description provided for @debtsAgeAlert.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه عمر'**
  String get debtsAgeAlert;

  /// No description provided for @debtsOpen.
  ///
  /// In ar, this message translates to:
  /// **'مفتوحة'**
  String get debtsOpen;

  /// No description provided for @debtsReceipt.
  ///
  /// In ar, this message translates to:
  /// **'الإيصال'**
  String get debtsReceipt;

  /// No description provided for @debtsInvoiceDays.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة #{id} · {date} · {days} يوماً'**
  String debtsInvoiceDays(Object date, Object days, Object id);

  /// No description provided for @debtsAdvanceOverTotal.
  ///
  /// In ar, this message translates to:
  /// **'المقدّم {advance} / {total} Fdj'**
  String debtsAdvanceOverTotal(Object advance, Object total);

  /// No description provided for @debtsTapForInvoiceDetails.
  ///
  /// In ar, this message translates to:
  /// **'اضغط لعرض تفاصيل الفاتورة'**
  String get debtsTapForInvoiceDetails;

  /// No description provided for @debtsNoMatchingInvoices.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير ضمن البحث أو التصفية الحالية'**
  String get debtsNoMatchingInvoices;

  /// No description provided for @debtsNoCreditInvoices.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير دين مسجّلة'**
  String get debtsNoCreditInvoices;

  /// No description provided for @instDueAmount.
  ///
  /// In ar, this message translates to:
  /// **'المستحق: {amount} Fdj'**
  String instDueAmount(Object amount);

  /// No description provided for @instFullBoxOnly.
  ///
  /// In ar, this message translates to:
  /// **'يُسجَّل كاملاً في الصندوق (لا دفع جزئي حالياً).'**
  String get instFullBoxOnly;

  /// No description provided for @instMustPayFull.
  ///
  /// In ar, this message translates to:
  /// **'يجب تسديد قيمة القسط كاملة ({amount} Fdj)'**
  String instMustPayFull(Object amount);

  /// No description provided for @instPayFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر التسجيل (قد يكون القسط مدفوعاً)'**
  String get instPayFailed;

  /// No description provided for @instCustomer.
  ///
  /// In ar, this message translates to:
  /// **'عميل'**
  String get instCustomer;

  /// No description provided for @instLinkedToCustomer.
  ///
  /// In ar, this message translates to:
  /// **'مرتبط بسجل العملاء #{id}'**
  String instLinkedToCustomer(Object id);

  /// No description provided for @instRegisteredBalance.
  ///
  /// In ar, this message translates to:
  /// **'رصيد العميل المسجّل: {amount} Fdj'**
  String instRegisteredBalance(Object amount);

  /// No description provided for @instNoCustomerMatch.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد تطابق في جدول العملاء — الاسم مأخوذ من الفاتورة فقط. يمكنك ربط عميل عند إنشاء خطة جديدة من شاشة «إضافة خطة».'**
  String get instNoCustomerMatch;

  /// No description provided for @instInvoiceNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم الفاتورة: #{id}'**
  String instInvoiceNumber(Object id);

  /// No description provided for @instDate.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get instDate;

  /// No description provided for @instTotal.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get instTotal;

  /// No description provided for @instAdvanceCollected.
  ///
  /// In ar, this message translates to:
  /// **'المقدم المحصّل: {amount} Fdj'**
  String instAdvanceCollected(Object amount);

  /// No description provided for @instSaleQty.
  ///
  /// In ar, this message translates to:
  /// **'بيع: {qty}'**
  String instSaleQty(Object qty);

  /// No description provided for @instStock.
  ///
  /// In ar, this message translates to:
  /// **'مخزون: {qty}'**
  String instStock(Object qty);

  /// No description provided for @instInterestRate.
  ///
  /// In ar, this message translates to:
  /// **'نسبة الفائدة'**
  String get instInterestRate;

  /// No description provided for @instPlannedMonths.
  ///
  /// In ar, this message translates to:
  /// **'عدد الأشهر'**
  String get instPlannedMonths;

  /// No description provided for @instFinancedAtSale.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المموّل'**
  String get instFinancedAtSale;

  /// No description provided for @instInterestAmount.
  ///
  /// In ar, this message translates to:
  /// **'قيمة الفائدة'**
  String get instInterestAmount;

  /// No description provided for @instTotalWithInterest.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي مع الفائدة'**
  String get instTotalWithInterest;

  /// No description provided for @instSuggestedMonthly.
  ///
  /// In ar, this message translates to:
  /// **'القسط الشهري المقترح'**
  String get instSuggestedMonthly;

  /// No description provided for @instEstimateNote.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه: الأرقام أعلاه تقدير عند البيع. جدول الأقساط الفعلي يُوزَّع على «إجمالي الفاتورة − المقدّم» وقد يختلف عن القسط المقترح بالفلس.'**
  String get instEstimateNote;

  /// No description provided for @instAdvance.
  ///
  /// In ar, this message translates to:
  /// **'مقدّم'**
  String get instAdvance;

  /// No description provided for @instFromSchedule.
  ///
  /// In ar, this message translates to:
  /// **'أقساط من الجدول'**
  String get instFromSchedule;

  /// No description provided for @instPaid.
  ///
  /// In ar, this message translates to:
  /// **'المدفوع'**
  String get instPaid;

  /// No description provided for @instRemaining.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي'**
  String get instRemaining;

  /// No description provided for @instInstallment.
  ///
  /// In ar, this message translates to:
  /// **'القسط {index}'**
  String instInstallment(Object index);

  /// No description provided for @instDueDate.
  ///
  /// In ar, this message translates to:
  /// **'الاستحقاق'**
  String get instDueDate;

  /// No description provided for @instPaidOn.
  ///
  /// In ar, this message translates to:
  /// **'سُدد'**
  String get instPaidOn;

  /// No description provided for @instPayButton.
  ///
  /// In ar, this message translates to:
  /// **'تسديد'**
  String get instPayButton;

  /// No description provided for @mpImportSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم الاستيراد بنجاح'**
  String get mpImportSuccess;

  /// No description provided for @mpBundledSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم استيراد المواد المضمّنة بنجاح'**
  String get mpBundledSuccess;

  /// No description provided for @mpErrorEmptyPath.
  ///
  /// In ar, this message translates to:
  /// **'اكتب مسار ملف قاعدة البيانات أولاً'**
  String get mpErrorEmptyPath;

  /// No description provided for @mpErrorMissingFile.
  ///
  /// In ar, this message translates to:
  /// **'الملف غير موجود. إذا كان الملف داخل RAR/ZIP لازم تفك الضغط وتستخرج ملف .db أولاً، ثم اكتب مساره أو اسمه.'**
  String get mpErrorMissingFile;

  /// No description provided for @mpErrorNoProducts.
  ///
  /// In ar, this message translates to:
  /// **'الملف لا يحتوي جدول المنتجات (products). اختر ملف قاعدة صحيح'**
  String get mpErrorNoProducts;

  /// No description provided for @mpErrorReadFailed.
  ///
  /// In ar, this message translates to:
  /// **'تعذر قراءة الملف. تأكد أنه قاعدة SQLite صالحة وغير محمية'**
  String get mpErrorReadFailed;

  /// No description provided for @mpErrorGeneric.
  ///
  /// In ar, this message translates to:
  /// **'حدث خطأ أثناء الاستيراد: {s}'**
  String mpErrorGeneric(Object s);

  /// No description provided for @mpTitle.
  ///
  /// In ar, this message translates to:
  /// **'استيراد مواد وأسعار'**
  String get mpTitle;

  /// No description provided for @mpBundledDesc.
  ///
  /// In ar, this message translates to:
  /// **'يستورد هذا الخيار قاعدة مواد جاهزة مضمّنة داخل التطبيق (≈ 3500 صنف من أشهر منتجات السوق مع أسعارها). يفضل مراجعة الأسعار بعد الاستيراد لأن أسعار السوق تتغير.'**
  String get mpBundledDesc;

  /// No description provided for @mpBundledRestoreTitle.
  ///
  /// In ar, this message translates to:
  /// **'استعادة قاعدة المواد المضمّنة'**
  String get mpBundledRestoreTitle;

  /// No description provided for @mpBundledRestoreDesc.
  ///
  /// In ar, this message translates to:
  /// **'بضغطة واحدة: يقوم التطبيق بفك ضغط الملف المضمّن وإضافة المواد إلى مخزنك. إذا كان أحد الأصناف موجوداً مسبقاً بنفس الباركود، سيتم تحديث اسمه/سعره/تصنيفه فقط (بدون تكرار).'**
  String get mpBundledRestoreDesc;

  /// No description provided for @mpBundledButtonBusy.
  ///
  /// In ar, this message translates to:
  /// **'جاري الاستيراد…'**
  String get mpBundledButtonBusy;

  /// No description provided for @mpBundledButtonIdle.
  ///
  /// In ar, this message translates to:
  /// **'استيراد المواد المضمّنة'**
  String get mpBundledButtonIdle;

  /// No description provided for @mpAdvancedTileTitle.
  ///
  /// In ar, this message translates to:
  /// **'استيراد متقدّم: من ملف خارجي'**
  String get mpAdvancedTileTitle;

  /// No description provided for @mpAdvancedTileSubtitle.
  ///
  /// In ar, this message translates to:
  /// **'إذا عندك ملف Market POS بصيغة .db خارج التطبيق'**
  String get mpAdvancedTileSubtitle;

  /// No description provided for @mpDbPathLabel.
  ///
  /// In ar, this message translates to:
  /// **'مسار ملف قاعدة البيانات'**
  String get mpDbPathLabel;

  /// No description provided for @mpDbPathHint.
  ///
  /// In ar, this message translates to:
  /// **'مثال: /Users/you/Documents/supermarket_backup_2026-04-15_20-05-15.db'**
  String get mpDbPathHint;

  /// No description provided for @mpImportExternal.
  ///
  /// In ar, this message translates to:
  /// **'استيراد من ملف خارجي'**
  String get mpImportExternal;

  /// No description provided for @mpTipHint.
  ///
  /// In ar, this message translates to:
  /// **'تلميح: يمكنك كتابة اسم الملف فقط وسيتم البحث عنه داخل Documents/Downloads/Desktop.'**
  String get mpTipHint;

  /// No description provided for @mpResultTitle.
  ///
  /// In ar, this message translates to:
  /// **'نتيجة الاستيراد'**
  String get mpResultTitle;

  /// No description provided for @mpResultTotal.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي السجلات المقروءة: {total}'**
  String mpResultTotal(Object total);

  /// No description provided for @mpResultNew.
  ///
  /// In ar, this message translates to:
  /// **'مواد جديدة: {inserted}'**
  String mpResultNew(Object inserted);

  /// No description provided for @mpResultUpdated.
  ///
  /// In ar, this message translates to:
  /// **'مواد تم تحديثها: {updated}'**
  String mpResultUpdated(Object updated);

  /// No description provided for @mpResultSkipped.
  ///
  /// In ar, this message translates to:
  /// **'تم تجاوزها: {skipped}'**
  String mpResultSkipped(Object skipped);

  /// No description provided for @mpResultCategories.
  ///
  /// In ar, this message translates to:
  /// **'تصنيفات تمت إضافتها: {createdCategories}'**
  String mpResultCategories(Object createdCategories);

  /// No description provided for @cdTitle.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل دين العميل'**
  String get cdTitle;

  /// No description provided for @cdOriginalAmount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ الأصلي'**
  String get cdOriginalAmount;

  /// No description provided for @cdCurrentBalance.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد الحالي'**
  String get cdCurrentBalance;

  /// No description provided for @cdInstallments.
  ///
  /// In ar, this message translates to:
  /// **'الأقساط'**
  String get cdInstallments;

  /// No description provided for @cdPaid.
  ///
  /// In ar, this message translates to:
  /// **'مدفوع'**
  String get cdPaid;

  /// No description provided for @cdRemaining.
  ///
  /// In ar, this message translates to:
  /// **'متبقي'**
  String get cdRemaining;

  /// No description provided for @cdDueDate.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الاستحقاق'**
  String get cdDueDate;

  /// No description provided for @cdOverdue.
  ///
  /// In ar, this message translates to:
  /// **'متأخر'**
  String get cdOverdue;

  /// No description provided for @cdPaidOn.
  ///
  /// In ar, this message translates to:
  /// **'تم الدفع يوم'**
  String get cdPaidOn;

  /// No description provided for @cdStatus.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get cdStatus;

  /// No description provided for @cdPaidStatus.
  ///
  /// In ar, this message translates to:
  /// **'مدفوع'**
  String get cdPaidStatus;

  /// No description provided for @cdPendingStatus.
  ///
  /// In ar, this message translates to:
  /// **'قيد الانتظار'**
  String get cdPendingStatus;

  /// No description provided for @cdOverdueStatus.
  ///
  /// In ar, this message translates to:
  /// **'متأخر'**
  String get cdOverdueStatus;

  /// No description provided for @cdPaidInstallments.
  ///
  /// In ar, this message translates to:
  /// **'أقساط مدفوعة'**
  String get cdPaidInstallments;

  /// No description provided for @cdPendingInstallments.
  ///
  /// In ar, this message translates to:
  /// **'أقساط قيد الانتظار'**
  String get cdPendingInstallments;

  /// No description provided for @cdOverdueInstallments.
  ///
  /// In ar, this message translates to:
  /// **'أقساط متأخرة'**
  String get cdOverdueInstallments;

  /// No description provided for @cdNoInstallments.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أقساط'**
  String get cdNoInstallments;

  /// No description provided for @cdTotalPaid.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المدفوع'**
  String get cdTotalPaid;

  /// No description provided for @cdTotalRemaining.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المتبقي'**
  String get cdTotalRemaining;

  /// No description provided for @cdConfirmPayment.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد الدفعة'**
  String get cdConfirmPayment;

  /// No description provided for @cdPaymentAmount.
  ///
  /// In ar, this message translates to:
  /// **'مبلغ الدفعة'**
  String get cdPaymentAmount;

  /// No description provided for @cfTitle.
  ///
  /// In ar, this message translates to:
  /// **'التفاصيل المالية'**
  String get cfTitle;

  /// No description provided for @cfTotalPurchases.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المشتريات'**
  String get cfTotalPurchases;

  /// No description provided for @cfTotalPaid.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المدفوع'**
  String get cfTotalPaid;

  /// No description provided for @cfTotalDebt.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الدين'**
  String get cfTotalDebt;

  /// No description provided for @cfLastPurchase.
  ///
  /// In ar, this message translates to:
  /// **'آخر مشتريات'**
  String get cfLastPurchase;

  /// No description provided for @cfAverageOrder.
  ///
  /// In ar, this message translates to:
  /// **'متوسط قيمة الطلب'**
  String get cfAverageOrder;

  /// No description provided for @cfPurchaseCount.
  ///
  /// In ar, this message translates to:
  /// **'عدد المشتريات'**
  String get cfPurchaseCount;

  /// No description provided for @cfInvoiceHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل الفواتير'**
  String get cfInvoiceHistory;

  /// No description provided for @cfPaymentHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل الدفعات'**
  String get cfPaymentHistory;

  /// No description provided for @cfNoInvoices.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير'**
  String get cfNoInvoices;

  /// No description provided for @cfNoPayments.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد دفعات'**
  String get cfNoPayments;

  /// No description provided for @cfDate.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get cfDate;

  /// No description provided for @cfAmount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ'**
  String get cfAmount;

  /// No description provided for @cfBalance.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد'**
  String get cfBalance;

  /// No description provided for @cfInvoice.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة'**
  String get cfInvoice;

  /// No description provided for @cfPayment.
  ///
  /// In ar, this message translates to:
  /// **'دفعة'**
  String get cfPayment;

  /// No description provided for @cfViewDetails.
  ///
  /// In ar, this message translates to:
  /// **'عرض التفاصيل'**
  String get cfViewDetails;

  /// No description provided for @cfNoData.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بيانات مالية متاحة'**
  String get cfNoData;

  /// No description provided for @cfDebtWarning.
  ///
  /// In ar, this message translates to:
  /// **'دين مستحق'**
  String get cfDebtWarning;

  /// No description provided for @cfCreditAvailable.
  ///
  /// In ar, this message translates to:
  /// **'رصيد متاح'**
  String get cfCreditAvailable;

  /// No description provided for @cfContactInfo.
  ///
  /// In ar, this message translates to:
  /// **'معلومات الاتصال'**
  String get cfContactInfo;

  /// No description provided for @saTitle.
  ///
  /// In ar, this message translates to:
  /// **'حسابات الموردين'**
  String get saTitle;

  /// No description provided for @saTotalDebt.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي الديون'**
  String get saTotalDebt;

  /// No description provided for @saTotalPaid.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي المدفوع'**
  String get saTotalPaid;

  /// No description provided for @saOutstanding.
  ///
  /// In ar, this message translates to:
  /// **'الرصيد المستحق'**
  String get saOutstanding;

  /// No description provided for @saPaymentHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل الدفعات'**
  String get saPaymentHistory;

  /// No description provided for @saRecordPayment.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل دفعة'**
  String get saRecordPayment;

  /// No description provided for @saInvoiceHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل المشتريات'**
  String get saInvoiceHistory;

  /// No description provided for @saNoSuppliers.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد موردون'**
  String get saNoSuppliers;

  /// No description provided for @saNoPayments.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد دفعات مسجلة'**
  String get saNoPayments;

  /// No description provided for @saNoInvoices.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير شراء'**
  String get saNoInvoices;

  /// No description provided for @saSupplierName.
  ///
  /// In ar, this message translates to:
  /// **'اسم المورد'**
  String get saSupplierName;

  /// No description provided for @saDate.
  ///
  /// In ar, this message translates to:
  /// **'التاريخ'**
  String get saDate;

  /// No description provided for @saAmount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ'**
  String get saAmount;

  /// No description provided for @saRemaining.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي'**
  String get saRemaining;

  /// No description provided for @saPayment.
  ///
  /// In ar, this message translates to:
  /// **'دفعة'**
  String get saPayment;

  /// No description provided for @saPurchase.
  ///
  /// In ar, this message translates to:
  /// **'شراء'**
  String get saPurchase;

  /// No description provided for @saViewDetails.
  ///
  /// In ar, this message translates to:
  /// **'عرض التفاصيل'**
  String get saViewDetails;

  /// No description provided for @saPayDebt.
  ///
  /// In ar, this message translates to:
  /// **'سداد الدين'**
  String get saPayDebt;

  /// No description provided for @saDebtLabel.
  ///
  /// In ar, this message translates to:
  /// **'دين'**
  String get saDebtLabel;

  /// No description provided for @saPaidLabel.
  ///
  /// In ar, this message translates to:
  /// **'مدفوع'**
  String get saPaidLabel;

  /// No description provided for @isTitle.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات المخزون'**
  String get isTitle;

  /// No description provided for @isStockTracking.
  ///
  /// In ar, this message translates to:
  /// **'تتبع المخزون'**
  String get isStockTracking;

  /// No description provided for @isStockTrackingDesc.
  ///
  /// In ar, this message translates to:
  /// **'تفعيل تتبع كميات المنتجات'**
  String get isStockTrackingDesc;

  /// No description provided for @isBarcodeRequired.
  ///
  /// In ar, this message translates to:
  /// **'الباركود مطلوب'**
  String get isBarcodeRequired;

  /// No description provided for @isBarcodeRequiredDesc.
  ///
  /// In ar, this message translates to:
  /// **'طلب الباركود عند إضافة المنتجات'**
  String get isBarcodeRequiredDesc;

  /// No description provided for @isAutoDeduct.
  ///
  /// In ar, this message translates to:
  /// **'خصم تلقائي للمخزون'**
  String get isAutoDeduct;

  /// No description provided for @isAutoDeductDesc.
  ///
  /// In ar, this message translates to:
  /// **'خصم المخزون تلقائياً عند تأكيد الفاتورة'**
  String get isAutoDeductDesc;

  /// No description provided for @isLowStockAlert.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه المخزون المنخفض'**
  String get isLowStockAlert;

  /// No description provided for @isLowStockAlertDesc.
  ///
  /// In ar, this message translates to:
  /// **'عرض تحذير عند انخفاض المخزون عن الحد'**
  String get isLowStockAlertDesc;

  /// No description provided for @isThreshold.
  ///
  /// In ar, this message translates to:
  /// **'حد التنبيه'**
  String get isThreshold;

  /// No description provided for @isDefaultWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'المخزن الافتراضي'**
  String get isDefaultWarehouse;

  /// No description provided for @isUnits.
  ///
  /// In ar, this message translates to:
  /// **'وحدات القياس'**
  String get isUnits;

  /// No description provided for @isSave.
  ///
  /// In ar, this message translates to:
  /// **'حفظ الإعدادات'**
  String get isSave;

  /// No description provided for @isSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ الإعدادات'**
  String get isSaved;

  /// No description provided for @isWeightUnit.
  ///
  /// In ar, this message translates to:
  /// **'وحدة الوزن'**
  String get isWeightUnit;

  /// No description provided for @isLengthUnit.
  ///
  /// In ar, this message translates to:
  /// **'وحدة الطول'**
  String get isLengthUnit;

  /// No description provided for @isVolumeUnit.
  ///
  /// In ar, this message translates to:
  /// **'وحدة الحجم'**
  String get isVolumeUnit;

  /// No description provided for @asTitle.
  ///
  /// In ar, this message translates to:
  /// **'إضافة خدمة'**
  String get asTitle;

  /// No description provided for @asEditTitle.
  ///
  /// In ar, this message translates to:
  /// **'تعديل الخدمة'**
  String get asEditTitle;

  /// No description provided for @asNameLabel.
  ///
  /// In ar, this message translates to:
  /// **'اسم الخدمة'**
  String get asNameLabel;

  /// No description provided for @asNameHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل اسم الخدمة'**
  String get asNameHint;

  /// No description provided for @asPriceLabel.
  ///
  /// In ar, this message translates to:
  /// **'السعر'**
  String get asPriceLabel;

  /// No description provided for @asPriceHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل السعر'**
  String get asPriceHint;

  /// No description provided for @asDescLabel.
  ///
  /// In ar, this message translates to:
  /// **'الوصف'**
  String get asDescLabel;

  /// No description provided for @asDescHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل الوصف (اختياري)'**
  String get asDescHint;

  /// No description provided for @asCategoryLabel.
  ///
  /// In ar, this message translates to:
  /// **'التصنيف'**
  String get asCategoryLabel;

  /// No description provided for @asCategoryHint.
  ///
  /// In ar, this message translates to:
  /// **'اختر التصنيف'**
  String get asCategoryHint;

  /// No description provided for @asDurationLabel.
  ///
  /// In ar, this message translates to:
  /// **'المدة (بالدقائق)'**
  String get asDurationLabel;

  /// No description provided for @asDurationHint.
  ///
  /// In ar, this message translates to:
  /// **'أدخل المدة'**
  String get asDurationHint;

  /// No description provided for @asSave.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get asSave;

  /// No description provided for @asSaving.
  ///
  /// In ar, this message translates to:
  /// **'جارٍ الحفظ...'**
  String get asSaving;

  /// No description provided for @asSaved.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ الخدمة بنجاح'**
  String get asSaved;

  /// No description provided for @asError.
  ///
  /// In ar, this message translates to:
  /// **'خطأ في حفظ الخدمة'**
  String get asError;

  /// No description provided for @asDelete.
  ///
  /// In ar, this message translates to:
  /// **'حذف الخدمة'**
  String get asDelete;

  /// No description provided for @asConfirmDelete.
  ///
  /// In ar, this message translates to:
  /// **'هل أنت متأكد من حذف هذه الخدمة؟'**
  String get asConfirmDelete;

  /// No description provided for @cdCustomerFallback.
  ///
  /// In ar, this message translates to:
  /// **'عميل #{id}'**
  String cdCustomerFallback(Object id);

  /// No description provided for @cdPayDebt.
  ///
  /// In ar, this message translates to:
  /// **'تسديد دين'**
  String get cdPayDebt;

  /// No description provided for @cdCurrentRemaining.
  ///
  /// In ar, this message translates to:
  /// **'المتبقي الحالي: {amount} Fdj'**
  String cdCurrentRemaining(Object amount);

  /// No description provided for @cdAutoDistributeHint.
  ///
  /// In ar, this message translates to:
  /// **'يُوزَّع تلقائياً على الفواتير من الأقدم إلى الأحدث.'**
  String get cdAutoDistributeHint;

  /// No description provided for @cdNothingToPay.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد متبقٍ للتسديد أو المبلغ غير صالح'**
  String get cdNothingToPay;

  /// No description provided for @cdCustomerDebts.
  ///
  /// In ar, this message translates to:
  /// **'ديون عميل'**
  String get cdCustomerDebts;

  /// No description provided for @cdOpenInvoices.
  ///
  /// In ar, this message translates to:
  /// **'فواتير آجل'**
  String get cdOpenInvoices;

  /// No description provided for @cdTakenOnCredit.
  ///
  /// In ar, this message translates to:
  /// **'المنتجات المأخوذة بالدين'**
  String get cdTakenOnCredit;

  /// No description provided for @cdNoItemsRecorded.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد بنود مسجّلة.'**
  String get cdNoItemsRecorded;

  /// No description provided for @cdInvoicesChip.
  ///
  /// In ar, this message translates to:
  /// **'فواتير'**
  String get cdInvoicesChip;

  /// No description provided for @cdOpenChip.
  ///
  /// In ar, this message translates to:
  /// **'مفتوحة'**
  String get cdOpenChip;

  /// No description provided for @cdInvoiceNumber.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة #{id}'**
  String cdInvoiceNumber(Object id);

  /// No description provided for @cdSettled.
  ///
  /// In ar, this message translates to:
  /// **'مغلقة'**
  String get cdSettled;

  /// No description provided for @cdRemainingShort.
  ///
  /// In ar, this message translates to:
  /// **'متبقٍّ'**
  String get cdRemainingShort;

  /// No description provided for @cdInvoiceLineSummary.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة #{id} · {date}'**
  String cdInvoiceLineSummary(Object date, Object id);

  /// No description provided for @cdSellerLabel.
  ///
  /// In ar, this message translates to:
  /// **'البائع: {name}'**
  String cdSellerLabel(Object name);

  /// No description provided for @cdQuantityLabel.
  ///
  /// In ar, this message translates to:
  /// **'الكمية: {qty}'**
  String cdQuantityLabel(Object qty);

  /// No description provided for @cdPriceLabel.
  ///
  /// In ar, this message translates to:
  /// **'السعر: {price}'**
  String cdPriceLabel(Object price);

  /// No description provided for @cdPayDebtButton.
  ///
  /// In ar, this message translates to:
  /// **'تسديد دين (متبقٍّ {amount} Fdj)'**
  String cdPayDebtButton(Object amount);

  /// No description provided for @cfOutstandingDebt.
  ///
  /// In ar, this message translates to:
  /// **'الدين المستحق'**
  String get cfOutstandingDebt;

  /// No description provided for @cfPurchaseHistory.
  ///
  /// In ar, this message translates to:
  /// **'سجل المشتريات'**
  String get cfPurchaseHistory;

  /// No description provided for @cfFdj.
  ///
  /// In ar, this message translates to:
  /// **'Fdj'**
  String get cfFdj;

  /// No description provided for @saInvoiceId.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة #{id}'**
  String saInvoiceId(Object id);

  /// No description provided for @cfFullDebtScreen.
  ///
  /// In ar, this message translates to:
  /// **'شاشة الديون الكاملة (تسديد وتفاصيل)'**
  String get cfFullDebtScreen;

  /// No description provided for @cfCreditSales.
  ///
  /// In ar, this message translates to:
  /// **'مبيعات بالأجل (دين)'**
  String get cfCreditSales;

  /// No description provided for @cfCreditSalesDesc.
  ///
  /// In ar, this message translates to:
  /// **'كل فاتورة مرتبطة بإيصال البيع — اضغط لعرض التفاصيل'**
  String get cfCreditSalesDesc;

  /// No description provided for @cfNoCreditInvoices.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد فواتير «آجل» مربوطة بهذا العميل. استخدم البيع بالدين مع اختيار العميل من القائمة.'**
  String get cfNoCreditInvoices;

  /// No description provided for @cfInstallments.
  ///
  /// In ar, this message translates to:
  /// **'التقسيط'**
  String get cfInstallments;

  /// No description provided for @cfInstallmentsDesc.
  ///
  /// In ar, this message translates to:
  /// **'خطط الأقساط المرتبطة بفواتير البيع'**
  String get cfInstallmentsDesc;

  /// No description provided for @cfNoInstallmentPlans.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد خطط تقسيط مربوطة بهذا العميل. استخدم نوع البيع «تقسيط» مع اختيار العميل.'**
  String get cfNoInstallmentPlans;

  /// No description provided for @cfEditCustomer.
  ///
  /// In ar, this message translates to:
  /// **'تعديل بيانات العميل'**
  String get cfEditCustomer;

  /// No description provided for @cfClosePanel.
  ///
  /// In ar, this message translates to:
  /// **'إغلاق اللوحة (Esc)'**
  String get cfClosePanel;

  /// No description provided for @cfSelectCustomer.
  ///
  /// In ar, this message translates to:
  /// **'اختر عميلاً من القائمة'**
  String get cfSelectCustomer;

  /// No description provided for @cfDebtDetailsWillAppear.
  ///
  /// In ar, this message translates to:
  /// **'ستظهر تفاصيل ديون العميل وأقساطه هنا.'**
  String get cfDebtDetailsWillAppear;

  /// No description provided for @cfPhone.
  ///
  /// In ar, this message translates to:
  /// **'الهاتف'**
  String get cfPhone;

  /// No description provided for @cfEmail.
  ///
  /// In ar, this message translates to:
  /// **'البريد'**
  String get cfEmail;

  /// No description provided for @cfWalletBalance.
  ///
  /// In ar, this message translates to:
  /// **'رصيد المحفظة'**
  String get cfWalletBalance;

  /// No description provided for @cfSaleInvoice.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة بيع #{id}'**
  String cfSaleInvoice(Object id);

  /// No description provided for @cfSettledShort.
  ///
  /// In ar, this message translates to:
  /// **'مغلقة'**
  String get cfSettledShort;

  /// No description provided for @cfRemainingBalance.
  ///
  /// In ar, this message translates to:
  /// **'متبقٍّ: {balance}'**
  String cfRemainingBalance(Object balance);

  /// No description provided for @cfViewReceipt.
  ///
  /// In ar, this message translates to:
  /// **'عرض إيصال / تفاصيل الفاتورة'**
  String get cfViewReceipt;

  /// No description provided for @cfInstallmentInvoice.
  ///
  /// In ar, this message translates to:
  /// **'فاتورة تقسيط #{id}'**
  String cfInstallmentInvoice(Object id);

  /// No description provided for @cfInstallmentSummary.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ الكلي: {total} · المدفوع: {paid}'**
  String cfInstallmentSummary(Object paid, Object total);

  /// No description provided for @cfInstallmentDetail.
  ///
  /// In ar, this message translates to:
  /// **'الأقساط: {paidCount} / {n} مدفوعة · متبقٍّ تقريباً: {remaining}'**
  String cfInstallmentDetail(Object n, Object paidCount, Object remaining);

  /// No description provided for @cfInstallmentSchedule.
  ///
  /// In ar, this message translates to:
  /// **'جدول الأقساط'**
  String get cfInstallmentSchedule;

  /// No description provided for @saNewSupplier.
  ///
  /// In ar, this message translates to:
  /// **'مورد جديد'**
  String get saNewSupplier;

  /// No description provided for @saNameRequired.
  ///
  /// In ar, this message translates to:
  /// **'اسم المورد *'**
  String get saNameRequired;

  /// No description provided for @saPhoneOptional.
  ///
  /// In ar, this message translates to:
  /// **'هاتف (اختياري)'**
  String get saPhoneOptional;

  /// No description provided for @saNotes.
  ///
  /// In ar, this message translates to:
  /// **'ملاحظات'**
  String get saNotes;

  /// No description provided for @saCancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get saCancel;

  /// No description provided for @saSave.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get saSave;

  /// No description provided for @saEnterName.
  ///
  /// In ar, this message translates to:
  /// **'أدخل اسم المورد'**
  String get saEnterName;

  /// No description provided for @saSaveError.
  ///
  /// In ar, this message translates to:
  /// **'تعذّر الحفظ'**
  String get saSaveError;

  /// No description provided for @saCreditAccounts.
  ///
  /// In ar, this message translates to:
  /// **'ذمم دائنة (موردون)'**
  String get saCreditAccounts;

  /// No description provided for @saCreditAccountsDesc.
  ///
  /// In ar, this message translates to:
  /// **'سجّل وصل المورد (رقمهم وتاريخهم) ثم سجّل الدفعات عند السداد. يمكن ربط الصندوق تلقائياً عند الدفع.'**
  String get saCreditAccountsDesc;

  /// No description provided for @saTotalOwed.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي ما علينا للموردين: {amount} Fdj'**
  String saTotalOwed(Object amount);

  /// No description provided for @saSearchHint.
  ///
  /// In ar, this message translates to:
  /// **'بحث باسم المورد…'**
  String get saSearchHint;

  /// No description provided for @saNoSuppliersYet.
  ///
  /// In ar, this message translates to:
  /// **'لا موردين بعد — اضغط + لإضافة مورد'**
  String get saNoSuppliersYet;

  /// No description provided for @saSupplierSummary.
  ///
  /// In ar, this message translates to:
  /// **'وارد: {billed} · مدفوع: {paid}'**
  String saSupplierSummary(Object billed, Object paid);

  /// No description provided for @saReceiptLabel.
  ///
  /// In ar, this message translates to:
  /// **'وصل'**
  String get saReceiptLabel;

  /// No description provided for @saPaymentLabel.
  ///
  /// In ar, this message translates to:
  /// **'دفعة'**
  String get saPaymentLabel;

  /// No description provided for @saReturnLabel.
  ///
  /// In ar, this message translates to:
  /// **'مرتجع'**
  String get saReturnLabel;

  /// No description provided for @saDueToSupplier.
  ///
  /// In ar, this message translates to:
  /// **'مستحق للمورد'**
  String get saDueToSupplier;

  /// No description provided for @saBalanced.
  ///
  /// In ar, this message translates to:
  /// **'متوازن'**
  String get saBalanced;

  /// No description provided for @saSupplierChip.
  ///
  /// In ar, this message translates to:
  /// **'مورد'**
  String get saSupplierChip;

  /// No description provided for @isFullSettingsHint.
  ///
  /// In ar, this message translates to:
  /// **'إعدادات المنتجات الكاملة (تهيئة، تتبع، أذون، قيم افتراضية) متوفرة من البطاقة الرئيسية «إعدادات المنتجات» في شبكة إعدادات المخزون.'**
  String get isFullSettingsHint;

  /// No description provided for @isCategoriesMoved.
  ///
  /// In ar, this message translates to:
  /// **'تم نقل إدارة التصنيفات إلى شاشة مخصّصة. افتح «التصنيفات» من القائمة الرئيسية لإعدادات المخزون.'**
  String get isCategoriesMoved;

  /// No description provided for @isBrandsMoved.
  ///
  /// In ar, this message translates to:
  /// **'تم نقل إدارة العلامات التجارية إلى شاشة مخصّصة. افتح «العلامات التجارية» من القائمة الرئيسية.'**
  String get isBrandsMoved;

  /// No description provided for @isBarcodeConfigMoved.
  ///
  /// In ar, this message translates to:
  /// **'تم نقل تهيئة الباركود إلى شاشة مخصّصة. افتح «إعدادات الباركود» من القائمة الرئيسية لهذه الإعدادات.'**
  String get isBarcodeConfigMoved;

  /// No description provided for @isDefaultWarehouses.
  ///
  /// In ar, this message translates to:
  /// **'المستودعات الافتراضية للموظفين'**
  String get isDefaultWarehouses;

  /// No description provided for @isForceDefaultWarehouse.
  ///
  /// In ar, this message translates to:
  /// **'فرض مستودع افتراضي عند تسجيل الحركات'**
  String get isForceDefaultWarehouse;

  /// No description provided for @isWarehouseRecommendation.
  ///
  /// In ar, this message translates to:
  /// **'يُنصح بربط كل موظف بمستودع افتراضي لتتبع الصلاحيات والحركات.'**
  String get isWarehouseRecommendation;

  /// No description provided for @isUnitsTemplatesMoved.
  ///
  /// In ar, this message translates to:
  /// **'إدارة قوالب الوحدات (الأساسية والتحويل) من الشاشة المخصّصة. افتح «قوالب الوحدات» من القائمة الرئيسية لإعدادات المخزون.'**
  String get isUnitsTemplatesMoved;

  /// No description provided for @isAllowDifferentPurchaseUnits.
  ///
  /// In ar, this message translates to:
  /// **'السماح بوحدات شراء مختلفة عن البيع'**
  String get isAllowDifferentPurchaseUnits;

  /// No description provided for @isShowConversionsOnPurchase.
  ///
  /// In ar, this message translates to:
  /// **'عرض التحويلات في فاتورة الشراء'**
  String get isShowConversionsOnPurchase;

  /// No description provided for @isPrinting.
  ///
  /// In ar, this message translates to:
  /// **'الطباعة'**
  String get isPrinting;

  /// No description provided for @isIncludeStoreLogo.
  ///
  /// In ar, this message translates to:
  /// **'تضمين شعار المتجر في المستندات'**
  String get isIncludeStoreLogo;

  /// No description provided for @isPrintBarcodeOnReceipts.
  ///
  /// In ar, this message translates to:
  /// **'طباعة باركود على أذون الصرف'**
  String get isPrintBarcodeOnReceipts;

  /// No description provided for @isExtraFields.
  ///
  /// In ar, this message translates to:
  /// **'الحقول الإضافية'**
  String get isExtraFields;

  /// No description provided for @isShowExtraFieldsInLists.
  ///
  /// In ar, this message translates to:
  /// **'إظهار الحقول الإضافية في قوائم المنتجات'**
  String get isShowExtraFieldsInLists;

  /// No description provided for @isIncludeInExportReports.
  ///
  /// In ar, this message translates to:
  /// **'تضمينها في التقارير القابلة للتصدير'**
  String get isIncludeInExportReports;

  /// No description provided for @isNoExtraSettings.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد إعدادات إضافية لهذه الفئة بعد.'**
  String get isNoExtraSettings;

  /// No description provided for @asMinPriceError.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأدنى للبيع لا يجوز أن يتجاوز سعر البيع'**
  String get asMinPriceError;

  /// No description provided for @asSavedSuccess.
  ///
  /// In ar, this message translates to:
  /// **'تم حفظ الخدمة'**
  String get asSavedSuccess;

  /// No description provided for @asAddTitle.
  ///
  /// In ar, this message translates to:
  /// **'إضافة خدمة فنية'**
  String get asAddTitle;

  /// No description provided for @asAddDescription.
  ///
  /// In ar, this message translates to:
  /// **'أضف خدمة للبيع المباشر من شاشة البيع (كمية ثابتة 1، بدون مخزون).'**
  String get asAddDescription;

  /// No description provided for @asNameRequired.
  ///
  /// In ar, this message translates to:
  /// **'أدخل اسم الخدمة'**
  String get asNameRequired;

  /// No description provided for @asSalePriceLabel.
  ///
  /// In ar, this message translates to:
  /// **'سعر البيع'**
  String get asSalePriceLabel;

  /// No description provided for @asInvalidPrice.
  ///
  /// In ar, this message translates to:
  /// **'السعر غير صالح'**
  String get asInvalidPrice;

  /// No description provided for @asRefCostLabel.
  ///
  /// In ar, this message translates to:
  /// **'التكلفة المرجعية للخدمة'**
  String get asRefCostLabel;

  /// No description provided for @asRefCostDesc.
  ///
  /// In ar, this message translates to:
  /// **'أجر الفني أو مواد مستهلكة افتراضية — لحساب الهامش في التقارير (مثل سعر الشراء للمنتج).'**
  String get asRefCostDesc;

  /// No description provided for @asMinSalePriceLabel.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأدنى للبيع'**
  String get asMinSalePriceLabel;

  /// No description provided for @asMinSalePriceDesc.
  ///
  /// In ar, this message translates to:
  /// **'إن تُرك فارغاً يُستخدم سعر البيع.'**
  String get asMinSalePriceDesc;

  /// No description provided for @asDescriptionLabel.
  ///
  /// In ar, this message translates to:
  /// **'الوصف أو التفاصيل'**
  String get asDescriptionLabel;

  /// No description provided for @asDescriptionHint.
  ///
  /// In ar, this message translates to:
  /// **'مدة العمل، الشروط، الملاحظات…'**
  String get asDescriptionHint;

  /// No description provided for @asSaveButton.
  ///
  /// In ar, this message translates to:
  /// **'حفظ الخدمة'**
  String get asSaveButton;
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
