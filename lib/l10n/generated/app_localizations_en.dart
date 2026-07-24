// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Naboo';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get storeAccountGroup => 'Store & Account';

  @override
  String get appearanceNotificationsGroup => 'Appearance & Notifications';

  @override
  String get dataBackupGroup => 'Data & Backup';

  @override
  String get subscriptionSupportGroup => 'Subscription & Support';

  @override
  String get storeInfo => 'Store Information';

  @override
  String get storeInfoSubtitle => 'Name, address, logo, branch';

  @override
  String get invoiceSettings => 'Invoice Settings';

  @override
  String get invoiceSettingsSubtitle =>
      'Starting number, footer, tax, discount';

  @override
  String get businessFeatures => 'Business Features';

  @override
  String get businessFeaturesSubtitle =>
      'Customers, loyalty, tax, discount, debt, installment, weight, clothing, and services';

  @override
  String get customizeDashboard => 'Customize Dashboard';

  @override
  String get customizeDashboardSubtitle =>
      'Show or hide dashboard sections and reorder by drag';

  @override
  String get appColorsIdentity => 'App Colors & Identity';

  @override
  String get appColorsIdentitySubtitle =>
      'Ready-made schemes, custom, and card corners — applies to all screens';

  @override
  String get compactSnackNotifications => 'Page Notifications Shape (All App)';

  @override
  String get compactSnackNotificationsSubtitleOn =>
      'Narrow floating bars on all screens — from app-wide settings here, not from POS settings';

  @override
  String get compactSnackNotificationsSubtitleOff =>
      'Classic mode: fixed bottom screen alert bar on all pages';

  @override
  String get idleMode => 'Idle Mode';

  @override
  String idleModeSubtitle(Object minutes) {
    return 'After inactivity: $minutes';
  }

  @override
  String get arabic => 'Arabic';

  @override
  String get english => 'English';

  @override
  String get french => 'French';

  @override
  String get floatingWindowMacos => 'Floating Window (macOS)';

  @override
  String get floatingWindowSubtitleOn =>
      'Multiple windows can be opened together; yellow minimize tile places below screen with icon for each page — disable to open inside content';

  @override
  String get floatingWindowSubtitleOff =>
      'These screens open inside content. Enable to use floating windows and tiles';

  @override
  String get theme => 'Theme';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsSubtitle => 'Stock, invoice, and installment alerts';

  @override
  String get printingSettings => 'Printing Settings';

  @override
  String get printingSettingsSubtitle => 'Paper size, default printer';

  @override
  String get restoreData => 'Restore Data';

  @override
  String get restoreDataSubtitle => 'From file or cloud';

  @override
  String get subscriptionPlan => 'Subscription Plan';

  @override
  String get subscriptionPlanSubtitle => 'Account, devices, and auto-sync';

  @override
  String get trialVersion => 'Trial Version';

  @override
  String get helpSupport => 'Help & Support';

  @override
  String get helpSupportSubtitle => 'FAQ and contact support';

  @override
  String get aboutApp => 'About App';

  @override
  String get aboutAppSubtitle => 'Version 1.0.0 · NaBoo Store Manager';

  @override
  String get appName => 'NaBoo Store Manager';

  @override
  String get appDescription =>
      'Integrated app for sales, inventory, and accounting management.';

  @override
  String get accountData => 'Account Data';

  @override
  String userLabel(Object name) {
    return 'User: $name';
  }

  @override
  String emailLabel(Object email) {
    return 'Email: $email';
  }

  @override
  String currentPlanLabel(Object plan) {
    return 'Current Plan: $plan';
  }

  @override
  String deviceLimitLabel(Object limit) {
    return 'Device Limit: $limit';
  }

  @override
  String get unlimited => 'Unlimited';

  @override
  String devicesLabel(Object count) {
    return 'Registered Devices: $count';
  }

  @override
  String get freeTrial => 'Free Trial';

  @override
  String daysRemaining(Object count) {
    return 'Days Remaining: $count of 15';
  }

  @override
  String trialEndsAt(Object date) {
    return 'Ends at: $date';
  }

  @override
  String get subscription => 'Subscription';

  @override
  String subscriptionExpiresAt(Object date) {
    return 'Subscription expires at: $date';
  }

  @override
  String subscriptionDaysRemaining(Object days) {
    return 'Approximately $days days remaining';
  }

  @override
  String get noExpirationDate =>
      'Active subscription without a specific expiration date in cloud.';

  @override
  String get linkedDevices => 'Linked Devices';

  @override
  String get refreshTooltip => 'Refresh';

  @override
  String get noDevicesRegistered => 'No devices registered yet.';

  @override
  String devicePlatform(Object date, Object platform) {
    return '$platform • Last activity: $date';
  }

  @override
  String get currentDevice => 'This Device';

  @override
  String get allowReturn => 'Allow Return';

  @override
  String get disconnectDevice => 'Disconnect Device';

  @override
  String get autoSync => 'Auto Sync';

  @override
  String get autoSyncDescription =>
      'A full database copy is uploaded from each device; the latest in cloud is imported to other devices after \'Sync Now\' or within ~1 minute. Not real-time per entry. SQL sync file must be executed in Supabase, and internet enabled.';

  @override
  String get syncNow => 'Sync Now';

  @override
  String lastSync(Object date) {
    return 'Last sync: $date';
  }

  @override
  String get syncSuccess => 'Sync completed successfully';

  @override
  String get viewSubscriptionPlans => 'View Subscription Plans';

  @override
  String get storeName => 'Store Name';

  @override
  String get address => 'Address';

  @override
  String get phone => 'Phone';

  @override
  String get taxNumber => 'Tax Number';

  @override
  String get invoiceFooterText => 'Footer Text';

  @override
  String get invoiceStartNumber => 'Invoice Starting Number';

  @override
  String get showTax => 'Show Tax';

  @override
  String get showDiscount => 'Show Discount';

  @override
  String get showLogo => 'Show Logo';

  @override
  String get showFooter => 'Show Footer';

  @override
  String get taxRate => 'Tax Rate';

  @override
  String taxRatePercent(Object rate) {
    return '$rate%';
  }

  @override
  String get notificationsBuildFromDb =>
      'Notifications are built from database when opening notification panel from home screen.';

  @override
  String get lowStockAlert => 'Low Stock Alert';

  @override
  String get lowStockAlertSubtitle =>
      'Products at minimum level or out of stock (with inventory tracking)';

  @override
  String get negativeStockSaleAlert => 'Negative Stock Sale Alert';

  @override
  String get negativeStockSaleAlertSubtitle =>
      'After saving sales invoice: invoice number, seller, customer, items and quantities before/after balance';

  @override
  String get financedSaleAlert => 'Financed Sale Alert';

  @override
  String get financedSaleAlertSubtitle =>
      'When saving a credit or installment invoice from POS screen: invoice number, seller, customer, amounts, lines, and installment plan if exists';

  @override
  String get expiryAlert => 'Product Expiry Alert';

  @override
  String get expiryAlertSubtitle =>
      'Expired, or within \'alert window\' before date (per product or default below)';

  @override
  String get defaultExpiryDaysLabel =>
      'Default days before expiry date to show \'near expiry\' alert (used when adding product if not set for item, 1-365).';

  @override
  String get defaultExpiryDaysHint => 'e.g., 14';

  @override
  String get defaultExpiryDaysInputLabel => 'Default Alert Days';

  @override
  String get saveDefaultDays => 'Save Default Number';

  @override
  String get installmentAlert => 'Installment Payments';

  @override
  String get installmentAlertSubtitle => 'Overdue or due within 14 days';

  @override
  String get customerDebtAlert => 'Customer Debts (Credit)';

  @override
  String get customerDebtAlertSubtitle =>
      'Customer credit balance, according to debt settings: invoice age, total limit per customer, single invoice limit';

  @override
  String get returnsAlert => 'Returns Registration';

  @override
  String get returnsAlertSubtitle => 'Latest returns registered (21 days)';

  @override
  String get dailyReportAlert => 'Daily Sales Summary';

  @override
  String get dailyReportAlertSubtitle =>
      'Total sales invoices for today (excluding returns)';

  @override
  String get shiftLifecycleAlert => 'Shift Open/Close';

  @override
  String get shiftLifecycleAlertSubtitle =>
      'Notify employee shift and amounts (system balance, inventory, added, withdrawn, remaining)';

  @override
  String get allowDeviceReturnTitle => 'Allow Return';

  @override
  String allowDeviceReturnContent(Object deviceName) {
    return 'Allow device \'$deviceName\' to log in again?';
  }

  @override
  String get disconnectDeviceTitle => 'Disconnect Device';

  @override
  String disconnectDeviceContent(Object deviceName) {
    return 'Device: $deviceName\nSession will be terminated on that device immediately (if connected), and it won\'t be able to log in until you press \'Allow Return\' from here.';
  }

  @override
  String get disconnectNow => 'Disconnect Now';

  @override
  String get deviceDisconnected => 'Device disconnected successfully';

  @override
  String get deviceAllowed => 'Device allowed to return';

  @override
  String get notConnected => 'Not Connected';

  @override
  String get checking => '…';

  @override
  String get noLicense => 'No License';

  @override
  String get revokedDevice => 'Disconnected — cannot enter until approved';

  @override
  String get activeLicense => 'Active';

  @override
  String get inactiveLicense => 'Inactive';

  @override
  String get testTools => 'Open Test Tools…';

  @override
  String get basraStore => 'Basra Store';

  @override
  String get basraIraq => 'Basra, Iraq';
}
