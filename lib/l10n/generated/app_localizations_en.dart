// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Maarey';

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
  String get aboutAppSubtitle => 'Version 1.0.0 · Maarey Store Manager';

  @override
  String get appName => 'Maarey Store Manager';

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

  @override
  String get deviceKickedOutTitle =>
      'This device was disconnected from the account';

  @override
  String get deviceKickedOutBody =>
      'Your session on this device has ended. The next time you open the app, you\'ll see the usual login screen.';

  @override
  String get goToLoginAction => 'Go to login';

  @override
  String get exitAction => 'Exit';

  @override
  String get closeWindowHint =>
      'You can close this window or use the button above.';

  @override
  String get appWillCloseHint => 'The app will close';

  @override
  String get deviceRevokedTitle =>
      'This device has been removed from the account';

  @override
  String get deviceRevokedBody =>
      'You can\'t sign in from this device until one of the account\'s active devices approves it, from Settings → Account & Subscription → \"Allow Return\".';

  @override
  String get backToLoginAction => 'Back to login';

  @override
  String otpEnterFullCode(Object digits) {
    return 'Enter the full code ($digits digits as sent by email)';
  }

  @override
  String get otpResentSuccess => 'Verification code resent';

  @override
  String get back => 'Back';

  @override
  String get emailVerificationTitle => 'Email verification';

  @override
  String otpSentToEmailShort(Object digits) {
    return 'We sent a $digits-digit code to your email';
  }

  @override
  String get enterVerificationCode => 'Enter the verification code';

  @override
  String otpSentToEmailDetailed(Object digits, Object email) {
    return 'A $digits-digit code was sent to\n$email';
  }

  @override
  String get verifyAndCreateAccount => 'Verify and create account';

  @override
  String resendInSeconds(Object seconds) {
    return 'Resend in $seconds seconds';
  }

  @override
  String get resendCode => 'Resend code';

  @override
  String get editData => 'Edit details';

  @override
  String get emailRequired => 'Email is required';

  @override
  String get emailInvalidFormat => 'Invalid email format';

  @override
  String get enterYourEmail => 'Enter your email';

  @override
  String get forgotPasswordSendCodeHint =>
      'We\'ll send you a verification code to reset your password';

  @override
  String get sendVerificationCode => 'Send verification code';

  @override
  String otpSentToEmailColon(Object digits, Object email) {
    return 'A $digits-digit code was sent to:\n$email';
  }

  @override
  String get continueAction => 'Continue';

  @override
  String get editEmail => 'Edit email';

  @override
  String get passwordUpdateSuccess => 'Password updated successfully';

  @override
  String get setNewPasswordTitle => 'Set a new password';

  @override
  String get newPasswordLabel => 'New password';

  @override
  String get enterNewPasswordHint => 'Enter your new password';

  @override
  String get enterPasswordValidation => 'Enter a password';

  @override
  String get minLength8Chars => 'Must be at least 8 characters';

  @override
  String get confirmPasswordLabel => 'Confirm Password';

  @override
  String get confirmPasswordHint => 'Re-enter your password';

  @override
  String get passwordMismatch => 'Passwords don\'t match';

  @override
  String get passwordRequirementsTitle => 'Password requirements (optional)';

  @override
  String get reqMinLength => 'At least 8 characters';

  @override
  String get reqUppercase => 'Uppercase letter (A-Z)';

  @override
  String get reqLowercase => 'Lowercase letter (a-z)';

  @override
  String get reqDigit => 'Number (0-9)';

  @override
  String get reqSpecialChar => 'Special character (!@#...)';

  @override
  String get onboardingChangeLaterHint =>
      'You can change these options later from Settings → Business Features.';

  @override
  String get businessFeaturesWizardTitle => 'Business Features';

  @override
  String get quickAppSetupTitle => 'Quick App Setup';

  @override
  String stepXofY(Object current, Object total) {
    return 'Step $current of $total';
  }

  @override
  String get previousAction => 'Previous';

  @override
  String get nextAction => 'Next';

  @override
  String get practicalExamplesLabel => 'Practical examples';

  @override
  String get onboardingStep1Question =>
      'Do you use customers in your business?';

  @override
  String get onboardingStep1Paragraph1 =>
      'When enabled, you get the full customer module: a card for each customer, purchase history, and quick tracking from the invoice.';

  @override
  String get onboardingStep1Paragraph2 =>
      'You can link every sale to a specific customer, which makes reporting easier later and creates a more consistent experience for repeat customers.';

  @override
  String get onboardingStep1Paragraph3 =>
      'If you do a quick cash sale without a name, that stays available — enabling this doesn\'t force you to pick a customer every time.';

  @override
  String get onboardingStep1Example1 =>
      'Example: a regular customer who buys daily — you save their name and quickly see their latest invoices.';

  @override
  String get onboardingStep1Example2 =>
      'Example: when there\'s a debt or loyalty points, they show up linked to the same customer instead of manual searching.';

  @override
  String get onboardingStep1SwitchLabel => 'Enable customer module';

  @override
  String get onboardingStep2Question => 'Do you want a loyalty points program?';

  @override
  String get onboardingStep2Paragraph1 =>
      'Loyalty gives customers points on purchases, which they can redeem according to rules you set in Settings.';

  @override
  String get onboardingStep2Paragraph2 =>
      'The program is linked to customer profiles — the clearer your customer data, the easier it is to track.';

  @override
  String get onboardingStep2Paragraph3 =>
      'You can turn the feature on now and adjust the earn/redeem rates later without redoing this wizard.';

  @override
  String get onboardingStep2Example1 =>
      'Example: every 10,000 FDJ earns 10 points, based on the rule you choose.';

  @override
  String get onboardingStep2Example2 =>
      'Example: a customer who\'s collected enough points redeems them for a discount on a later invoice.';

  @override
  String get onboardingStep2SwitchLabel => 'Enable loyalty points';

  @override
  String get onboardingStep2Footnote =>
      'Requires the customer module enabled in the previous step; if it isn\'t, loyalty won\'t work until you re-enable customers.';

  @override
  String get onboardingStep3Question => 'Do you charge tax on sales?';

  @override
  String get onboardingStep3Paragraph1 =>
      'When enabled, a clear tax field appears on the sales invoice so it\'s calculated consistently with the total.';

  @override
  String get onboardingStep3Paragraph2 =>
      'Suitable for stores that apply a known tax rate on goods or services.';

  @override
  String get onboardingStep3Paragraph3 =>
      'You can fine-tune the detailed behavior from POS settings after finishing this quick setup.';

  @override
  String get onboardingStep3Example1 =>
      'Example: an invoice worth 100,000 FDJ with a set tax percentage added on top.';

  @override
  String get onboardingStep3Example2 =>
      'Example: the staff member sees the tax and final total within the same sales invoice.';

  @override
  String get onboardingStep3SwitchLabel => 'Show tax on sales invoice';

  @override
  String get onboardingStep4Question =>
      'Do you allow a discount on the invoice total?';

  @override
  String get onboardingStep4Paragraph1 =>
      'An overall discount is useful for seasonal offers or negotiating price in front of the customer without changing each item\'s price.';

  @override
  String get onboardingStep4Paragraph2 =>
      'The field appears on the sales screen so it completes the invoice without adding extra complexity for staff.';

  @override
  String get onboardingStep4Paragraph3 =>
      'You can turn it off later if you decide to work with fixed prices only.';

  @override
  String get onboardingStep4Example1 =>
      'Example: you give a flat 5,000 FDJ discount on a large invoice.';

  @override
  String get onboardingStep4Example2 =>
      'Example: a one-day special offer without changing the base product prices.';

  @override
  String get onboardingStep4SwitchLabel => 'Show overall discount on invoice';

  @override
  String get onboardingStep5Question =>
      'Do you sell on credit (deferred payment)?';

  @override
  String get onboardingStep5Paragraph1 =>
      'Enabling this opens the debts panel and tracks amounts owed by each customer, with adjustable alerts and limits.';

  @override
  String get onboardingStep5Paragraph2 =>
      'Suits merchants who trust known customers and need a clear record of deferred sales.';

  @override
  String get onboardingStep5Paragraph3 =>
      'It doesn\'t stop cash sales — it just adds the option to record a sale as debt when selecting a customer with the right permissions.';

  @override
  String get onboardingStep5Example1 =>
      'Example: a customer takes goods today and pays at the end of the week.';

  @override
  String get onboardingStep5Example2 =>
      'Example: you check a customer\'s statement and clearly see what\'s paid and what\'s still owed.';

  @override
  String get onboardingStep5SwitchLabel => 'Enable credit sales and debts';

  @override
  String get onboardingStep6Question => 'Do you sell on installments?';

  @override
  String get onboardingStep6Paragraph1 =>
      'Installment plans let you split an invoice\'s price into scheduled payments while tracking what\'s left owed by the customer.';

  @override
  String get onboardingStep6Paragraph2 =>
      'Useful for higher-priced goods or long-term contracts.';

  @override
  String get onboardingStep6Paragraph3 =>
      'The fine details of scheduling are managed from dedicated modules after finishing this setup.';

  @override
  String get onboardingStep6Example1 =>
      'Example: a device worth 600,000 FDJ paid over 6 monthly installments.';

  @override
  String get onboardingStep6Example2 =>
      'Example: you see upcoming and overdue payments for each customer in one place.';

  @override
  String get onboardingStep6SwitchLabel => 'Enable installment sales';

  @override
  String get onboardingStep7Question =>
      'Do you sell by weight (kilo, gram, etc.)?';

  @override
  String get onboardingStep7Paragraph1 =>
      'Enabling this prepares the sales interface and barcodes to support weights and decimal quantities where needed.';

  @override
  String get onboardingStep7Paragraph2 =>
      'Suitable for groceries, hardware, or any business that relies on a scale.';

  @override
  String get onboardingStep7Paragraph3 =>
      'You can configure weight-based barcode formats from advanced settings after this wizard.';

  @override
  String get onboardingStep7Example1 =>
      'Example: selling 1.250 kg of a product instead of a single piece.';

  @override
  String get onboardingStep7Example2 =>
      'Example: scanning a scale barcode that automatically contains the product\'s weight and price.';

  @override
  String get onboardingStep7SwitchLabel => 'Enable sales by weight';

  @override
  String get onboardingStep8Question =>
      'Do you sell clothing (colors and sizes)?';

  @override
  String get onboardingStep8Paragraph1 =>
      'Enabling this prepares product and sales screens to support item variants (different colors and sizes of the same model).';

  @override
  String get onboardingStep8Paragraph2 =>
      'Makes it easier to track stock for each color or size separately and shows a quick interactive picker at the time of sale.';

  @override
  String get onboardingStep8Example1 =>
      'Example: a shirt available in blue and black, in sizes S, M, and L.';

  @override
  String get onboardingStep8Example2 =>
      'Example: selecting a clothing item opens a quick popup to pick the available size and color in stock.';

  @override
  String get onboardingStep8SwitchLabel => 'Enable clothing and sizes module';

  @override
  String get onboardingStep9Question =>
      'Do you offer specific services (repairs, workshop, etc.)?';

  @override
  String get onboardingStep9Paragraph1 =>
      'Enabling this reveals the full services and maintenance module: work tickets, service requests, and a services and pricing catalog.';

  @override
  String get onboardingStep9Paragraph2 =>
      'Useful for workshops, service centers, and any business that provides services to customers alongside selling goods.';

  @override
  String get onboardingStep9Example1 =>
      'Example: opening a maintenance ticket for a computer or car and setting the job status.';

  @override
  String get onboardingStep9Example2 =>
      'Example: adding an installation or quick maintenance service to a sales invoice.';

  @override
  String get onboardingStep9SwitchLabel =>
      'Enable services and maintenance tickets';

  @override
  String get invoicesLabel => 'Invoices';

  @override
  String get invoicesListLabel => 'Invoice list';

  @override
  String get newSaleLabel => 'New sale';

  @override
  String get parkedSalesLabel => 'Parked sales';

  @override
  String get posSettingsLabel => 'POS settings';

  @override
  String get customersLabel => 'Customers';

  @override
  String get customersManageLabel => 'Manage customers';

  @override
  String get addNewCustomerLabel => 'Add new customer';

  @override
  String get addCustomerBreadcrumb => 'Add customer';

  @override
  String get contactListLabel => 'Contact list';

  @override
  String get customerLoyaltySettingsLabel => 'Customer settings (loyalty)';

  @override
  String get customerLoyaltyLabel => 'Customer loyalty';

  @override
  String get loyaltyPointsSettingsLabel => 'Points and redemption settings';

  @override
  String get loyaltyLedgerLabel => 'Points activity log';

  @override
  String get installmentsLabel => 'Installments';

  @override
  String get installmentPlansLabel => 'Installment plans';

  @override
  String get installmentSettingsLabel => 'Installment settings';

  @override
  String get debtsLabel => 'Debts';

  @override
  String get debtsPanelLabel => 'Debts panel (credit)';

  @override
  String get debtSettingsLabel => 'Debt settings';

  @override
  String get inventoryLabel => 'Inventory';

  @override
  String get productListLabel => 'Product list';

  @override
  String get addNewProductLabel => 'Add new product';

  @override
  String get updateExistingProductLabel => 'Update existing product';

  @override
  String get printBarcodeLabelsLabel => 'Print barcode labels';

  @override
  String get inventoryMovementsLabel => 'Inventory movements';

  @override
  String get warehousesLabel => 'Warehouses';

  @override
  String get stocktakingLabel => 'Periodic stocktaking';

  @override
  String get purchaseOrdersLabel => 'Purchase orders';

  @override
  String get stockAnalyticsLabel => 'Stock analytics';

  @override
  String get inventorySettingsLabel => 'Inventory settings';

  @override
  String get servicesAndMaintenanceLabel => 'Services & maintenance';

  @override
  String get servicesAndMaintenancePanelLabel => 'Services & maintenance panel';

  @override
  String get addTechnicalServiceLabel => 'Add technical service';

  @override
  String get maintenanceRequestsLabel => 'Maintenance requests & work tickets';

  @override
  String get cashRegisterLabel => 'Cash register';

  @override
  String get expensesLabel => 'Expenses';

  @override
  String get reportsLabel => 'Reports';

  @override
  String get usersLabel => 'Users';

  @override
  String get manageUsersLabel => 'Manage users';

  @override
  String get staffShiftsWeekLabel => 'Staff shifts (week)';

  @override
  String get staffIdentitiesLabel => 'Staff identities';

  @override
  String get printingLabel => 'Printing';

  @override
  String get homeLabel => 'Home';

  @override
  String get defaultUserFallback => 'User';

  @override
  String get logoutLabel => 'Log out';

  @override
  String get logoutConfirmMessage => 'Are you sure you want to log out?';

  @override
  String get confirmAction => 'Confirm';

  @override
  String searchFailedSnackbar(Object error) {
    return 'Couldn\'t complete search: $error';
  }

  @override
  String get addProductLabel => 'Add product';

  @override
  String shiftTooltipWithName(Object name) {
    return 'Shift: $name — close';
  }

  @override
  String get closeShiftTooltip => 'Close shift';

  @override
  String get syncFailedTooltip => 'Sync — last attempt failed';

  @override
  String get cloudSyncTooltip => 'Cloud sync';

  @override
  String get syncStartingSnackbar => 'Starting sync…';

  @override
  String get notificationsTooltip => 'Notifications';

  @override
  String get settingsLabel => 'Settings';

  @override
  String get copyLabel => 'Copy';

  @override
  String get copiedSnackbar => 'Copied';

  @override
  String get userInfoTitle => 'User info';

  @override
  String get displayNameFieldLabel => 'Display name:';

  @override
  String get usernameFieldLabel => 'Username:';

  @override
  String get roleFieldLabel => 'Role:';

  @override
  String get emailFieldLabel => 'Email:';

  @override
  String get closeAction => 'Close';

  @override
  String get barcodeScanTooltip =>
      'Scan barcode (camera on mobile, or reader window on desktop)';

  @override
  String get hideKeyboardTooltip => 'Hide keyboard';

  @override
  String get keyboardDragPinHint =>
      'Arabic / English keyboard — drag by the handle or pin it';

  @override
  String get clearSearchTooltip => 'Clear search';

  @override
  String get searchToolsTooltip => 'Search tools';

  @override
  String get showKeyboardTooltip => 'Show keyboard (Arabic / English)';

  @override
  String get quickSearchHint => 'Quick search: modules, products, customers…';

  @override
  String get fullSearchHint =>
      'Search: modules, products, customers, staff, barcode…';

  @override
  String get collapseMenuTooltip => 'Collapse menu';

  @override
  String get expandMenuTooltip => 'Expand menu';

  @override
  String get restrictedModeTooltip => 'Not available in restricted mode';

  @override
  String get paymentTypeCash => 'Cash';

  @override
  String get paymentTypeCredit => 'Credit';

  @override
  String get paymentTypeInstallment => 'Installment';

  @override
  String get paymentTypeDelivery => 'Delivery';

  @override
  String get paymentTypeDebtCollection => 'Debt collection';

  @override
  String get paymentTypeInstallmentCollection => 'Installment payment';

  @override
  String get paymentTypeSupplierPayment => 'Supplier payment';

  @override
  String noInvoiceWithNumber(Object id) {
    return 'No invoice with number $id';
  }

  @override
  String get invoiceAlreadyReturned =>
      'This invoice is already recorded as returned';

  @override
  String get invoiceNotOpenableAsReturn =>
      'This voucher can\'t be opened as a sales return — reverse the payment from the supplier screen or installments management depending on its type.';

  @override
  String salesInvoiceNumber(Object id) {
    return 'Sales invoice #$id';
  }

  @override
  String get emptyPlaceholder => '(empty)';

  @override
  String returnInvoiceDialogBody(
    Object customer,
    Object paymentType,
    Object total,
  ) {
    return 'Customer: $customer\nPayment: $paymentType\nTotal: $total\n\nOpen the return screen? You can reduce quantities or remove lines for a partial return only.';
  }

  @override
  String get returnLabel => 'Return';

  @override
  String returnNumber(Object id) {
    return 'Return #$id';
  }

  @override
  String get scanQrBarcodeTitle => 'Scan QR / Barcode';

  @override
  String get pointsLedgerShortLabel => 'Points log';

  @override
  String get staffShiftsLabel => 'Staff shifts';

  @override
  String get shiftStaffFallback => 'Shift staff';

  @override
  String get itemsLabel => 'Items';

  @override
  String noResultsFor(Object query) {
    return 'No results for «$query»';
  }

  @override
  String get modulesLabel => 'Modules';

  @override
  String get openModuleLabel => 'Open module';

  @override
  String get productsLabel => 'Products';

  @override
  String sellPriceIqd(Object price) {
    return 'Sell $price FDJ';
  }

  @override
  String get viewCustomersLabel => 'View customers';

  @override
  String get staffLabel => 'Staff';

  @override
  String get viewStaffLabel => 'View staff';

  @override
  String get technicalServiceLabel => 'Technical service';

  @override
  String get notStockTracked => 'Not stock-tracked';

  @override
  String get availableUnknown => 'Available: —';

  @override
  String get availableZero => 'Available: 0';

  @override
  String availableQty(Object qty) {
    return 'Available: $qty';
  }

  @override
  String negativeStockWarning(Object qty, Object soldOver) {
    return 'Negative balance $qty — oversold by $soldOver beyond last balance';
  }

  @override
  String get chooseFromListBelow => 'Choose from the list below';

  @override
  String get viewAllLabel => 'View all';

  @override
  String get untitledLabel => 'Untitled';

  @override
  String get deleteParkedSaleTitle => 'Delete parked sale?';

  @override
  String deleteParkedSaleBody(Object label) {
    return '«$label» will be permanently deleted from this device.';
  }

  @override
  String get deleteAction => 'Delete';

  @override
  String get deletedSnackbar => 'Deleted';

  @override
  String get parkedSalesScreenTitle => 'Parked sales';

  @override
  String get noParkedSalesTitle => 'No parked sales';

  @override
  String get noParkedSalesHint =>
      'From the sale screen, tap «Park sale» to save the current work and serve another customer.';

  @override
  String parkedSaleSummaryLine(Object count, Object total) {
    return '$count items · ≈ $total FDJ';
  }

  @override
  String lastUpdatedLabel(Object date) {
    return 'Last updated: $date';
  }

  @override
  String get resumeSaleTooltip => 'Resume sale';

  @override
  String get allLabel => 'All';

  @override
  String get paidStatus => 'Paid';

  @override
  String get unpaidStatus => 'Unpaid';

  @override
  String get cannotShowInvoiceNoId =>
      'Can\'t display an invoice without a number';

  @override
  String get invoiceNotFound => 'Invoice not found';

  @override
  String get flatViewOption => 'Flat view (no shift grouping)';

  @override
  String get groupByShiftOption => 'Group by shift';

  @override
  String get advancedFilterLabel => 'Advanced filter';

  @override
  String get shiftsCalendarLabel => 'Shifts calendar';

  @override
  String get moreLabel => 'More';

  @override
  String get parkedInvoicesShortLabel => 'Parked invoices';

  @override
  String get saleLabel => 'Sale';

  @override
  String get totalLabel => 'Total';

  @override
  String get sortLabel => 'Sort';

  @override
  String get sortNewestFirst => 'Newest first';

  @override
  String get sortOldestFirst => 'Oldest first';

  @override
  String get sortHighestAmount => 'Highest amount';

  @override
  String get sortLowestAmount => 'Lowest amount';

  @override
  String get searchInvoicesHint =>
      'Search by customer name, invoice number, or customer phone...';

  @override
  String shiftNumberLabel(Object id) {
    return 'Shift #$id';
  }

  @override
  String noShiftGroupLabel(Object count) {
    return 'No shift — old invoices or outside a shift session ($count)';
  }

  @override
  String shiftLoadFailedLabel(Object count, Object id) {
    return 'Shift #$id — couldn\'t load shift details ($count invoices)';
  }

  @override
  String get openStatus => 'Open';

  @override
  String shiftWithNameLabel(Object id, Object name) {
    return 'Shift #$id — $name';
  }

  @override
  String invoiceCountLabel(Object count) {
    return '$count invoices';
  }

  @override
  String totalIqd(Object amount) {
    return '$amount FDJ';
  }

  @override
  String itemsAndDiscountLine(Object count, Object discount) {
    return '$count items · discount $discount FDJ';
  }

  @override
  String shiftColonLabel(Object name) {
    return 'Shift: $name';
  }

  @override
  String get createReturnInvoiceTooltip =>
      'Create a return invoice for this invoice';

  @override
  String get returnActionLabel => 'Return';

  @override
  String get noInvoicesTitle => 'No invoices';

  @override
  String get addFirstInvoiceCta => 'Add your first invoice now';

  @override
  String get sortOptionsTitle => 'Sort options';

  @override
  String get applyAction => 'Apply';

  @override
  String get loginTabLabel => 'Login';

  @override
  String get signupTabLabel => 'Sign Up';

  @override
  String get usernameOrEmailLabel => 'Username or Email';

  @override
  String get enterUsernameOrEmail => 'Enter your username or email';

  @override
  String get passwordLabel => 'Password';

  @override
  String get enterPassword => 'Enter your password';

  @override
  String get storeNameLabel => 'Store/Business Name';

  @override
  String get enterStoreName => 'Enter your store or business name';

  @override
  String get nameLabel => 'Name';

  @override
  String get enterName => 'Enter your name';

  @override
  String get enterEmail => 'Enter your email';

  @override
  String get phoneLabel => 'Phone Number';

  @override
  String get enterPhone => 'Enter your phone number';

  @override
  String get countryCodeLabel => 'Country Code';

  @override
  String get selectCountryCode => 'Select country code';

  @override
  String get confirmPassword => 'Confirm your password';

  @override
  String get showPassword => 'Show password';

  @override
  String get hidePassword => 'Hide password';

  @override
  String get clearField => 'Clear';

  @override
  String get rememberMe => 'Remember me';

  @override
  String get forgotPassword => 'Forgot password?';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get loginButton => 'Login';

  @override
  String get signupButton => 'Sign up';

  @override
  String get signupButton2 => 'Create Account';

  @override
  String get termsAndConditions => 'Terms & Conditions';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get agreeToTerms => 'I agree to the Terms & Conditions';

  @override
  String get agreeToTermsRequired => 'You must agree to the terms to continue';

  @override
  String get passwordRecovery => 'Password Recovery';

  @override
  String get enterEmailForRecovery =>
      'Enter your email to recover your password';

  @override
  String get captchaLabel => 'Verification Code';

  @override
  String enterCaptcha(Object firstNumber, Object secondNumber) {
    return 'Enter the code: $firstNumber + $secondNumber = ?';
  }

  @override
  String get invalidCaptcha => 'Incorrect verification code';

  @override
  String get invalidCredentials => 'Invalid username or password';

  @override
  String get emailNotConfirmed =>
      'Email not confirmed. Please check your inbox.';

  @override
  String get tooManyRequests =>
      'Too many attempts. Please wait a few minutes and try again.';

  @override
  String get networkError =>
      'Network error. Please check your connection and try again.';

  @override
  String get accountCreated => 'Account created successfully';

  @override
  String get loginSuccessful => 'Logged in successfully';

  @override
  String get passwordResetSent =>
      'Password reset code has been sent to your email';

  @override
  String get passwordResetSuccess => 'Password reset successfully';

  @override
  String get accountAlreadyExists =>
      'An account with this email already exists';

  @override
  String get weekDayMonday => 'Monday';

  @override
  String get weekDayTuesday => 'Tuesday';

  @override
  String get weekDayWednesday => 'Wednesday';

  @override
  String get weekDayThursday => 'Thursday';

  @override
  String get weekDayFriday => 'Friday';

  @override
  String get weekDaySaturday => 'Saturday';

  @override
  String get weekDaySunday => 'Sunday';

  @override
  String get iraq => 'Iraq';

  @override
  String get saudiArabia => 'Saudi Arabia';

  @override
  String get uae => 'United Arab Emirates';

  @override
  String get kuwait => 'Kuwait';

  @override
  String get syria => 'Syria';

  @override
  String get jordan => 'Jordan';

  @override
  String get lebanon => 'Lebanon';

  @override
  String get checkingLicense => 'Checking license…';

  @override
  String get storeManagementSystem => 'Store Management System';

  @override
  String get systemInitializing => 'Initializing system...';

  @override
  String get maintenance => 'Maintenance';

  @override
  String get ok => 'OK';

  @override
  String get updateRequired => 'Update Required';

  @override
  String get downloadUpdate => 'Download Update';

  @override
  String get updateAvailable => 'Update Available';

  @override
  String get later => 'Later';

  @override
  String get download => 'Download';

  @override
  String get openLink => 'Open link';

  @override
  String get done => 'Done';

  @override
  String get businessManagementSystem => 'Business Management System';

  @override
  String get salesAndInvoices => 'Sales & Invoices';

  @override
  String get accountsAndReports => 'Accounts & Reports';

  @override
  String get inventoryAndWarehouses => 'Inventory & Warehouses';

  @override
  String get createNewAccountTitle => 'Create New Account';

  @override
  String get loginTitle => 'Login';

  @override
  String get signupSubtitle =>
      'You\'ll receive a verification code on your email to confirm your account';

  @override
  String get loginSubtitle => 'Enter your email and password to login';

  @override
  String get haveAccountBackToLogin => 'Have an account? Back to login';

  @override
  String get noAccountCreateNew => 'Don\'t have an account? Create new account';

  @override
  String get requiredField => 'Required';

  @override
  String get minLength3Chars => 'Must be at least 3 characters';

  @override
  String get nameRequired => 'Name is required';

  @override
  String get nameRequiredMin3 => 'Name is required (at least 3 characters)';

  @override
  String get emailRequiredShort => 'Email is required';

  @override
  String get iraqMobileInvalid =>
      'Iraqi mobile: 11 digits starting with 07 (e.g., 07701234567)';

  @override
  String get passwordRequired => 'Password is required';

  @override
  String get passwordDoesNotMeetRequirements =>
      'Password does not meet requirements';

  @override
  String get passwordsDoNotMatch => 'Passwords don\'t match';

  @override
  String get enterPasswordAgain => 'Please re-enter your password';

  @override
  String get iraqDialTooltip =>
      '+964 Iraq — other country codes will be available later';

  @override
  String get welcomeToMaarey => 'Welcome to Maarey';

  @override
  String welcomeBackGreeting(Object name) {
    return 'Welcome back, $name';
  }

  @override
  String get todaysBusinessSummary => 'Here\'s today\'s business summary';

  @override
  String get userFallback => 'User';

  @override
  String get failedToLoadChartData => 'Failed to load chart data.';

  @override
  String get lastWeek => 'Last week';

  @override
  String get lastMonth => 'Last month';

  @override
  String get incomeLabel => 'Income:';

  @override
  String get expenseLabel => 'Expense:';

  @override
  String get salesPerformance => 'Sales performance';

  @override
  String get totalLabelColon => 'Total:';

  @override
  String get expensesVsIncome => 'Expenses vs Income';

  @override
  String get incomeLegend => 'Income';

  @override
  String get expensesLegend => 'Expenses';

  @override
  String get changePeriod => 'Change period';

  @override
  String get pinnedProductsHint => 'Pinned products — tap for quick sale';

  @override
  String get byPiece => 'By piece';

  @override
  String get byWeight => 'By weight';

  @override
  String get addGroup => 'Add group';

  @override
  String get remainingColon => 'Remaining:';

  @override
  String get notTracked => 'Not tracked';

  @override
  String get technicalService => 'Technical service';

  @override
  String get groupByCategory => 'Group by category';

  @override
  String get groupByCategoryDesc =>
      'Filter pinned products by a single category';

  @override
  String get groupByBrand => 'Group by brand';

  @override
  String get groupByBrandDesc => 'Filter pinned products by a single brand';

  @override
  String get noCategoriesYet => 'No categories yet';

  @override
  String get chooseCategory => 'Choose a category';

  @override
  String get categoryFallback => 'Category';

  @override
  String get noBrandsYet =>
      'No brands yet.\nTap \'New Brand\' to add your first brand.';

  @override
  String get chooseBrand => 'Choose a brand';

  @override
  String get brandFallback => 'Brand';

  @override
  String get groupAlreadyExists => 'This group already exists';

  @override
  String get noMatchingActivityYet => 'No matching activity yet';

  @override
  String get noActivityHint =>
      'Record sales, cash movements, or any activity in the app to see them here chronologically.';

  @override
  String failedToLoadActivity(Object error) {
    return 'Failed to load activity: $error';
  }

  @override
  String get recentActivityOverview => 'Recent activity overview';

  @override
  String get invoicesLabelShort => 'Invoices';

  @override
  String get cashLabelShort => 'Cash register';

  @override
  String get otherLabelShort => 'Other';

  @override
  String get openInvoicesList => 'Open invoices list';

  @override
  String get openCashRegister => 'Cash register';

  @override
  String get cashRegisterCard => 'Cash register';

  @override
  String get cashRegisterHint => 'Aggregated balance in the ledger';

  @override
  String get shiftLabel => 'Shift';

  @override
  String get newSaleCard => 'New sale';

  @override
  String get newSaleSubtitle => 'Quick invoice';

  @override
  String get newSaleHint => 'Shortcut for cash register and sale';

  @override
  String get inventoryCard => 'Inventory';

  @override
  String inventorySubtitle(Object count) {
    return '$count active items';
  }

  @override
  String inventoryAlertLowStock(Object count) {
    return 'Alert: $count with low stock';
  }

  @override
  String get inventoryNoAlerts => 'No stock alerts';

  @override
  String get completedOrdersCard => 'Completed orders';

  @override
  String completedOrdersSubtitle(Object count) {
    return '$count orders';
  }

  @override
  String get completedOrdersHint => 'Previous shift profit';

  @override
  String get parkedCard => 'Parked';

  @override
  String parkedSubtitle(Object count) {
    return '$count invoices';
  }

  @override
  String get parkedHint => 'Temporarily waiting';

  @override
  String get reportsCard => 'Reports';

  @override
  String get reportsSubtitle => 'Dashboard';

  @override
  String get reportsHint => 'Period indicators';

  @override
  String get dragToReorderCards =>
      'Drag items up or down to reorder. Order is saved on this device.';

  @override
  String get saveOrder => 'Save order';

  @override
  String get reorderCards => 'Reorder cards';

  @override
  String get refreshNumbers => 'Refresh numbers';

  @override
  String get glanceOverview => 'Quick overview';

  @override
  String get dragHeightHint =>
      'Drag up or down to change the height of the pinned products list';

  @override
  String get pinnedProductsHeightHandle =>
      'Handle to change pinned products list height';

  @override
  String filterByCategoryColon(Object name) {
    return 'Filter by category: $name';
  }

  @override
  String filterByBrandColon(Object name) {
    return 'Filter by brand: $name';
  }

  @override
  String get accountLabel => 'Account';

  @override
  String get lightModeLabel => 'Light mode';

  @override
  String get darkModeLabel => 'Dark mode';

  @override
  String get calculatorLabel => 'Calculator';

  @override
  String get settingsLabelMenu => 'Settings';

  @override
  String get showMacPanel => 'Show Mac panel';

  @override
  String get hideMacPanel => 'Hide Mac panel';

  @override
  String get customizeModules => 'Customize modules';

  @override
  String get editDone => 'Done editing';

  @override
  String get breadcrumbNavHint => 'Navigation path — tap a step to go back';

  @override
  String currentPageLabel(Object title) {
    return 'Current page: $title';
  }

  @override
  String get restrictedModeBanner =>
      'Restricted mode — connect to the internet to verify';

  @override
  String get retryButton => 'Retry';

  @override
  String get timeTamperTitle => 'Time settings conflict';

  @override
  String get licenseSuspendedTitle => 'License suspended';

  @override
  String get deviceLimitExceededTitle => 'Device limit exceeded';

  @override
  String get subscriptionExpiredTitle => 'Subscription expired';

  @override
  String get timeTamperMessage =>
      'A time settings conflict was detected. Contact support to help re-verify.';

  @override
  String get accountSuspendedMessage =>
      'Your account has been suspended. Contact technical support.';

  @override
  String get subscriptionExpiredMessage =>
      'Your subscription has expired. Renew to continue.';

  @override
  String get enterLicenseKeyError => 'Enter a license key';

  @override
  String get yourCurrentPlan => 'Your current plan';

  @override
  String get registeredDevices => 'Registered devices';

  @override
  String get subscriptionExpires => 'Subscription expires';

  @override
  String get trialExpires => 'Trial expires';

  @override
  String get upgradePlanToAddDevices => 'Upgrade plan to add devices';

  @override
  String get renewSubscription => 'Renew subscription';

  @override
  String get comparePlans => 'Compare subscription plans';

  @override
  String get enterNewKey => 'Enter new key';

  @override
  String get activateButton => 'Activate';

  @override
  String get reVerifyButton => 'Re-verify';

  @override
  String get useAnotherKey => 'Use another key';

  @override
  String get allRightsReserved => 'Maarey v2.0 — All rights reserved';

  @override
  String get noInternetConnection => 'No internet connection';

  @override
  String get offlineMessage =>
      'The app is running with the last saved license data.\nMake sure to connect as soon as possible.';

  @override
  String get enterWithoutConnection => 'Enter without connection';

  @override
  String get activateLicenseTitle => 'Activate license';

  @override
  String get enterLicenseKeyToContinue => 'Enter your license key to continue';

  @override
  String get contactTeamForLicense =>
      'To get a license key, contact the Maarey team.';

  @override
  String get subscriptionPlansTitle => 'Subscription plans';

  @override
  String get chooseRightPlan => 'Choose the right plan for your business';

  @override
  String get plansDescriptionJwt =>
      'The cards below are for comparison and pricing only. After payment you receive a signed token (JWT) — paste it in the activation field below the cards.';

  @override
  String get plansDescriptionLegacy =>
      'The first card is a free 15-day trial (2 devices). The following cards are paid plans — after payment enter the key in the unified field below the page.';

  @override
  String get howToSubscribe => 'How to subscribe';

  @override
  String get subscribeStepsJwt =>
      '1. Contact the Maarey team via the methods below\n2. Complete payment for the plan you want\n3. Receive the full activation token (JWT) from management\n4. Paste the token in the unified field below the plan cards — plan and device limit are inferred from the token';

  @override
  String get subscribeStepsLegacy =>
      '1. Contact the Maarey team via the methods below\n2. Tell us the plan you want and complete payment\n3. Receive the license key from management\n4. Paste the key in the unified field below the plan cards then press \"Activate key\"';

  @override
  String get whatsappOrPhone => 'WhatsApp / Phone';

  @override
  String get emailContact => 'Email';

  @override
  String get continueButton => 'Continue';

  @override
  String get pasteTokenFirst => 'Paste the license token first';

  @override
  String get activateTokenTitle => 'Activate license token';

  @override
  String get activateTokenDescription =>
      'Paste the full token sent by management. Plan and device limit are inferred from inside the token, not from the card shape.';

  @override
  String get pasteTokenHint => 'Paste activation token here';

  @override
  String get activateTokenButton => 'Activate token';

  @override
  String get pasteKeyOrTokenFirst =>
      'Paste the license key or activation token first';

  @override
  String get activateKeyTitle => 'Activate key';

  @override
  String get activateKeyDescription =>
      'Paste the license key you received after payment, or the JWT token if available. The plans above are for display and comparison only.';

  @override
  String get pasteKeyHint => 'Paste license key or activation token';

  @override
  String get activateKeyButton => 'Activate key';

  @override
  String get freeLabel => 'Free';

  @override
  String get trialDaysLabel => '15 days';

  @override
  String get currencyLabel => 'FDJ';

  @override
  String get perMonthLabel => '/month';

  @override
  String get yourCurrentTrial => 'Your current trial';

  @override
  String get yourCurrentPlanCard => 'Your current plan';

  @override
  String get trialAutoStartsMessage =>
      'The trial starts automatically — no key needed. When upgrading, receive the token from management and paste it in the unified field below the cards.';

  @override
  String get jwtPlanDescription =>
      'This card is for display and comparison only. After payment, paste the activation token (JWT) in the unified field below the cards.';

  @override
  String get legacyPlanDescription =>
      'This card is for display and comparison only. After payment, paste the license key in the unified field below the cards.';

  @override
  String get mostPopular => 'Most popular';

  @override
  String get numberCopied => 'Number copied';

  @override
  String get emailCopied => 'Email copied';

  @override
  String get copyTooltip => 'Copy';

  @override
  String get inventorySettingsTitle => 'Inventory Settings';

  @override
  String get subSettingsTitle => 'Sub Settings';

  @override
  String get subSettingsSubtitle =>
      'Detailed settings for each aspect of inventory';

  @override
  String get productAddSettingsTitle => 'Product Add Settings';

  @override
  String get productAddSettingsDesc =>
      'Default fields, default warehouse, required fields';

  @override
  String get barcodeSettingsTitle => 'Barcode Settings';

  @override
  String get barcodeSettingsDesc =>
      'Barcode standard, fields embedded in barcode';

  @override
  String get categoriesTitle => 'Categories';

  @override
  String get categoriesDesc => 'Add, edit, and delete product categories';

  @override
  String get brandsTitle => 'Brands';

  @override
  String get brandsDesc => 'Add, edit, and delete brands';

  @override
  String get unitTemplatesTitle => 'Unit Templates';

  @override
  String get unitTemplatesDesc =>
      'Manage unit templates (base and conversion) from the dedicated screen. Open \'Unit Templates\' from the main inventory settings menu.';

  @override
  String get stockMovementsTitle => 'Stock Movements';

  @override
  String get newVoucher => 'New Voucher';

  @override
  String get deposits => 'Deposits';

  @override
  String get withdrawals => 'Withdrawals';

  @override
  String get transfers => 'Transfers';

  @override
  String get searchByProductOrVoucher =>
      'Search by product or voucher number...';

  @override
  String get noMovements => 'No movements';

  @override
  String get noItems => 'No items';

  @override
  String failedToLoadMovements(Object error) {
    return 'Failed to load movements: $error';
  }

  @override
  String get filterAll => 'All';

  @override
  String get filterDeposit => 'Deposit';

  @override
  String get filterWithdraw => 'Withdraw';

  @override
  String get filterTransfer => 'Transfer';

  @override
  String get sortNewest => 'Newest';

  @override
  String get sortOldest => 'Oldest';

  @override
  String get productDetails => 'Product Details';

  @override
  String get unpinFromHome => 'Unpin from Home';

  @override
  String get pinToHome => 'Pin to Home';

  @override
  String get failedToLoadProduct => 'Failed to load product data';

  @override
  String get lowStock => 'Low Stock';

  @override
  String get inStock => 'In Stock';

  @override
  String get summary => 'Summary';

  @override
  String get availableQtyLabel => 'Available Quantity';

  @override
  String get salePrice => 'Sale Price';

  @override
  String get minSalePrice => 'Minimum Sale Price';

  @override
  String get purchasePrice => 'Purchase Price';

  @override
  String get warehouseStock => 'Warehouse Stock';

  @override
  String get noWarehouseData => 'No warehouse data';

  @override
  String get batchesLast20 => 'Batches (Last 20)';

  @override
  String get noRecordedBatches => 'No recorded batches';

  @override
  String get batch => 'Batch';

  @override
  String get recentSalesMovements => 'Recent Sales / Movements';

  @override
  String get noRecentSales => 'No recent sales';

  @override
  String get warehouseFallback => 'Warehouse';

  @override
  String get stockAnalytics => 'Stock Analytics';

  @override
  String get stockOverview => 'Stock Overview';

  @override
  String get inventoryValue => 'Inventory Value';

  @override
  String get totalProducts => 'Total Products';

  @override
  String get lowStockLabel => 'Low Stock';

  @override
  String get outOfStockLabel => 'Out of Stock';

  @override
  String nearExpiryWarning(Object count) {
    return '$count products expiring within 60 days — review the list below';
  }

  @override
  String get nearExpiry60days => 'Near Expiry (60 days)';

  @override
  String get topSellersLast30 => 'Top Sellers — Last 30 Days';

  @override
  String get inventoryValueByCategory => 'Inventory Value by Category';

  @override
  String get product => 'Product';

  @override
  String get quantity => 'Quantity';

  @override
  String get minimumThreshold => 'Minimum Threshold';

  @override
  String get expiryDate => 'Expiry Date';

  @override
  String get soldQuantity => 'Sold Quantity';

  @override
  String get revenue => 'Revenue';

  @override
  String productCount(Object count) {
    return '$count products';
  }

  @override
  String get noCategory => 'No Category';

  @override
  String get unitTemplates => 'Unit Templates';

  @override
  String get search => 'Search';

  @override
  String get all => 'All';

  @override
  String get cancelFilter => 'Cancel Filter';

  @override
  String get newTemplate => 'New Template';

  @override
  String get sortBy => 'Sort by';

  @override
  String get results => 'Results';

  @override
  String get noTemplatesYet =>
      'No templates yet.\nTap \'New Template\' to add a template and link sale units to products.';

  @override
  String get edit => 'Edit';

  @override
  String get delete => 'Delete';

  @override
  String get activeStatus => 'Active';

  @override
  String get inactiveStatus => 'Inactive';

  @override
  String get deleteTemplate => 'Delete Template';

  @override
  String deleteTemplateConfirm(Object name) {
    return 'Delete \'$name\'?';
  }

  @override
  String get deleted => 'Deleted';

  @override
  String get newTemplateEditor => 'New Template';

  @override
  String get editTemplateEditor => 'Edit Template';

  @override
  String get templateNotFound => 'Template not found.';

  @override
  String get baseUnitNameLabel => 'Base Unit Name';

  @override
  String get baseUnitHint => 'e.g. gram';

  @override
  String get symbolLabel => 'Symbol';

  @override
  String get symbolHint => 'e.g. g';

  @override
  String get addUnit => 'Add Unit';

  @override
  String get templateNameLabel => 'Template Name';

  @override
  String get templateHint => 'e.g. Weight';

  @override
  String get activeLabel => 'Active';

  @override
  String get templateCreated => 'Template created';

  @override
  String get templateSaved => 'Changes saved';

  @override
  String get largerUnitNameLabel => 'Larger Unit Name';

  @override
  String get largerUnitHint => 'e.g. kilogram';

  @override
  String get conversionFactorLabel => 'Conversion factor to base';

  @override
  String get conversionFactorHint => 'e.g. 1000';

  @override
  String get unitSymbolHint => 'e.g. kg';

  @override
  String get baseUnitTooltip =>
      'Smallest unit of measure in this template (e.g. gram when selling by weight).';

  @override
  String get newBrand => 'New Brand';

  @override
  String get brandNameLabel => 'Brand Name';

  @override
  String get brandSaved => 'Brand saved';

  @override
  String get deleteBrand => 'Delete Brand';

  @override
  String deleteBrandConfirm(Object name) {
    return 'Delete \'$name\'?';
  }

  @override
  String get searchAndFilter => 'Search & Filter';

  @override
  String showHide(String show) {
    String _temp0 = intl.Intl.selectLogic(show, {
      'true': 'Hide',
      'other': 'Show',
    });
    return '$_temp0';
  }

  @override
  String get barcodeConfiguration => 'Barcode Configuration';

  @override
  String get barcodeConfigDesc =>
      'Set barcode preferences and formats for accurate scanning and weight-based pricing.';

  @override
  String get barcodeType => 'Barcode Type';

  @override
  String get code128Desc =>
      'Flexible barcode supporting alphanumeric encoding, widely used in shipping, warehousing, and product tracking.';

  @override
  String get ean13Desc =>
      '13-digit standard commonly used in retail, including country code, manufacturer code, and product code with check digit.';

  @override
  String get selectBarcodeStandard =>
      'Select the barcode standard the system will use for generating and reading product barcodes.';

  @override
  String get weightEmbedBarcode => 'Weight-Embedded Barcode';

  @override
  String get enabledLabel => 'Enabled';

  @override
  String get disabledLabel => 'Disabled';

  @override
  String get weightEmbedDesc =>
      'Use weight-embedded barcode so the system can read the product weight (and price) directly from the barcode.';

  @override
  String get embeddedPattern => 'Embedded Barcode Pattern';

  @override
  String get patternFormatDesc =>
      'Enter the embedded barcode format, where X represents product digits and W represents weight digits.';

  @override
  String get patternExample =>
      'For example, if weight is displayed in 4 digits, 250 grams will appear as 0250.';

  @override
  String get weightDivisor => 'Weight Unit Divisor';

  @override
  String get weightDivisorHint => 'e.g. 1000';

  @override
  String get weightDivisorDesc =>
      'Enter the value the system uses to convert the weight unit in the barcode to the sale unit.';

  @override
  String get currencyDivisor => 'Currency Divisor';

  @override
  String get currencyDivisorHint => 'e.g. 100';

  @override
  String get currencyDivisorDesc =>
      'Enter the value the system uses to convert the price from the embedded unit in the barcode to the sale price.';

  @override
  String get barcodePatternError =>
      'The embedded barcode pattern must contain only the letters X, W, P, and N.';

  @override
  String get weightDivisorError =>
      'Enter a valid value greater than zero for the weight unit divisor.';

  @override
  String get currencyDivisorError =>
      'Enter a valid value greater than zero for the currency divisor.';

  @override
  String get barcodeSettingsSaved => 'Barcode settings saved.';

  @override
  String saveError(Object error) {
    return 'Save failed: $error';
  }

  @override
  String get savingLabel => 'Saving…';

  @override
  String get saveSettings => 'Save Settings';

  @override
  String get productsFullSettings =>
      'Full product settings (configuration, tracking, permissions, defaults) are available from the main \'Product Settings\' card.';

  @override
  String get categoriesMoved =>
      'Category management has been moved to a dedicated screen. Open \'Categories\' from the main inventory settings menu.';

  @override
  String get brandsMoved =>
      'Brand management has been moved to a dedicated screen. Open \'Brands\' from the main menu.';

  @override
  String get barcodeMoved =>
      'Barcode configuration has been moved to a dedicated screen. Open \'Barcode Settings\' from this settings menu.';

  @override
  String get defaultWarehouses => 'Default Employee Warehouses';

  @override
  String get forceDefaultWarehouse =>
      'Force default warehouse when recording movements';

  @override
  String get recommendDefaultWarehouse =>
      'It is recommended to link each employee to a default warehouse for tracking permissions and movements.';

  @override
  String get unitsSection => 'Units';

  @override
  String get allowDifferentPurchaseUnits =>
      'Allow different purchase units from sale units';

  @override
  String get showConversionsInPO => 'Show conversions in purchase orders';

  @override
  String get printingSection => 'Printing';

  @override
  String get includeStoreLogo => 'Include store logo in documents';

  @override
  String get printBarcodeOnIssue => 'Print barcode on issue vouchers';

  @override
  String get customFieldsSection => 'Custom Fields';

  @override
  String get showCustomFieldLists => 'Show custom fields in product lists';

  @override
  String get includeInExport => 'Include in exportable reports';

  @override
  String get noAdditionalSettings =>
      'No additional settings for this category yet.';

  @override
  String get autoNumberingTitle => 'Auto Numbering for Products';

  @override
  String get autoNumberingDesc => 'Control auto numbering settings and format.';

  @override
  String get nextNumberLabel => 'Next Number';

  @override
  String get nextNumberDesc =>
      'The number the system will assign to the next item.';

  @override
  String get numberingFormat => 'Numbering Format';

  @override
  String get numericFormat => 'Numeric (0, 1, 2, …)';

  @override
  String get alphaFormat => 'Alphabetic';

  @override
  String get alnumFormat => 'Alphanumeric';

  @override
  String get formatDescription =>
      'Choose the format to use for generating numbers (numeric, alphabetic, or mixed).';

  @override
  String get digitCountLabel => 'Digit Count';

  @override
  String get digitCountDesc =>
      'Set the number of digits for the serial number. If the number is less, zeros are added from the left.';

  @override
  String get uniqueLabel => 'Unique';

  @override
  String get uniqueDesc =>
      'Ensure each number in the sequence is unique and not duplicated.';

  @override
  String get prefixLabel => 'Prefix';

  @override
  String get prefixHint => 'e.g. PR or INV';

  @override
  String get prefixDesc =>
      'Characters that appear before the document number. Can be fixed like INV or follow a pattern.';

  @override
  String get noAdditionalSettingsForCategory =>
      'No additional settings for this category yet.';

  @override
  String get hideLabel => 'Hide';

  @override
  String get showLabel => 'Show';

  @override
  String get reset => 'Reset';

  @override
  String get newCategory => 'New Category';

  @override
  String get parentCategory => 'Parent Category';

  @override
  String get noParent => 'None (top-level)';

  @override
  String get descriptionLabel => 'Description';

  @override
  String get categorySaved => 'Category saved';

  @override
  String get deleteCategory => 'Delete Category';

  @override
  String deleteCategoryConfirm(Object name) {
    return 'Delete \'$name\'?';
  }

  @override
  String get addNewCategory => 'Add New Category';

  @override
  String get rootsOnly => 'Roots only (no parent)';

  @override
  String underParent(Object name) {
    return 'Under: $name';
  }

  @override
  String get noMatchingCategories =>
      'No matching categories.\nAdd a new category or change the filter.';

  @override
  String get noResults => 'No results';

  @override
  String get inventoryManagement => 'Inventory Management';

  @override
  String get alerts => 'Alerts';

  @override
  String get inventorySettings => 'Inventory Settings';

  @override
  String get mainSections => 'Main Sections';

  @override
  String get recentInventoryMovements => 'Recent Inventory Movements';

  @override
  String get quickActions => 'Quick Actions';

  @override
  String get addProduct => 'Add Product';

  @override
  String get inventoryVoucher => 'Inventory Voucher';

  @override
  String get periodicStocktaking => 'Periodic Stocktaking';

  @override
  String get movements => 'Movements';

  @override
  String get products => 'Products';

  @override
  String get productsSub => 'View and manage all items';

  @override
  String get warehouses => 'Warehouses';

  @override
  String get warehousesSub => 'Monitor balances and locations';

  @override
  String get inventoryVouchers => 'Inventory Vouchers';

  @override
  String get inventoryVouchersSub => 'Deposit, withdrawal, and transfer';

  @override
  String get priceLists => 'Price Lists';

  @override
  String get priceListsSub => 'Retail, wholesale, and special';

  @override
  String get periodicStocktakingSub => 'Reconcile actual differences';

  @override
  String get inventorySettingsSub => 'Units, categories, printing';

  @override
  String get deposit => 'Deposit';

  @override
  String get withdrawal => 'Withdrawal';

  @override
  String get transfer => 'Transfer';

  @override
  String get lastMovements => 'Last Movements';

  @override
  String get viewAll => 'View All';

  @override
  String get savedInventoryPolicies => 'Inventory policies saved';

  @override
  String get inventoryPolicyCenter => 'Inventory Policy Center';

  @override
  String get saveTooltip => 'Save';

  @override
  String get customerActivityType => 'Customer Activity Type';

  @override
  String get activityProfile => 'Activity Profile';

  @override
  String get activityTypeDesc =>
      'When selecting an activity type, default properties are set automatically — you can edit them manually.';

  @override
  String get enableUnits => 'Enable Units';

  @override
  String get productManagement => 'Product Management';

  @override
  String get addProductToggle => 'Add Product';

  @override
  String get inventoryVouchersToggle => 'Inventory Vouchers';

  @override
  String get priceListsToggle => 'Price Lists';

  @override
  String get warehousesToggle => 'Warehouses';

  @override
  String get stocktakingToggle => 'Stocktaking';

  @override
  String get settingsToggle => 'Settings';

  @override
  String get productCardProperties => 'Product Card Properties';

  @override
  String get gradeField => 'Grade / Quality Field';

  @override
  String get expiryTracking => 'Expiry and Production Date';

  @override
  String get batchTracking => 'Batch Tracking';

  @override
  String get lowStockAlerts => 'Low Stock Alerts';

  @override
  String get productImages => 'Product Images';

  @override
  String get productVariants => 'Product Variants (Size/Color)';

  @override
  String get purchasingAndSuppliers => 'Purchasing & Suppliers';

  @override
  String get purchaseOrders => 'Purchase Orders (PO)';

  @override
  String get requireSourceOnInbound => 'Require Source on Inbound';

  @override
  String get analyticsAndReports => 'Analytics & Reports';

  @override
  String get items => 'items';

  @override
  String get iqd => 'FDJ';

  @override
  String get warehouseLabel => 'Warehouse';

  @override
  String get periodicStocktakingTitle => 'Periodic Stocktaking';

  @override
  String openSessions(Object count) {
    return 'Open Sessions ($count)';
  }

  @override
  String closedSessions(Object count) {
    return 'Completed ($count)';
  }

  @override
  String get startNewStocktake => 'Start New Stocktake';

  @override
  String get closeStocktaking => 'Close Stocktaking';

  @override
  String closeStocktakeConfirm(Object title) {
    return 'Do you want to close session «$title»?';
  }

  @override
  String get autoPostDifferences => 'Auto-post differences';

  @override
  String get autoPostDesc =>
      'Creates a single inventory adjustment voucher for the session';

  @override
  String get sessionClosedSuccess => 'Session closed successfully';

  @override
  String get noSessionsYet => 'No sessions yet';

  @override
  String get closedStatus => 'Completed';

  @override
  String itemsCount(Object counted, Object total) {
    return '$counted / $total items';
  }

  @override
  String startedAt(Object date) {
    return 'Started: $date';
  }

  @override
  String closedAt(Object date) {
    return 'Closed: $date';
  }

  @override
  String get closeStocktakingAction => 'Close Stocktaking';

  @override
  String get reportAction => 'Report';

  @override
  String get startNewStocktakeSession => 'Start New Stocktaking Session';

  @override
  String get sessionTitleLabel => 'Session Title *';

  @override
  String get sessionTitleHint => 'e.g. July 2025 stocktaking';

  @override
  String get selectWarehouseError => 'Select a warehouse';

  @override
  String get startStocktakingBtn => 'Start Stocktaking';

  @override
  String get searchHint => 'Name, barcode, SKU, or product number';

  @override
  String systemQty(Object qty) {
    return 'System: $qty';
  }

  @override
  String diffQty(Object diff) {
    return 'Diff: $diff';
  }

  @override
  String get enterValueHint => 'Enter';

  @override
  String reportTitle(Object title) {
    return 'Report: $title';
  }

  @override
  String get totalItemsLabel => 'Total Items';

  @override
  String get countedLabel => 'Counted';

  @override
  String get uncountedLabel => 'Uncounted';

  @override
  String get sessionSummary => 'Session Summary:';

  @override
  String get statusRow => 'Status';

  @override
  String actualQty(Object qty) {
    return 'Actual: $qty';
  }

  @override
  String get purchaseOrdersTitle => 'Purchase Orders';

  @override
  String get newPurchaseOrder => 'New Purchase Order';

  @override
  String get sentLabel => 'Sent';

  @override
  String get partialLabel => 'Partial';

  @override
  String get completedLabel => 'Completed';

  @override
  String totalOrderValue(Object value) {
    return 'Total order value: $value';
  }

  @override
  String get clearTooltip => 'Clear';

  @override
  String get cancelOrder => 'Cancel Purchase Order';

  @override
  String get cancelOrderConfirm => 'Do you want to cancel this order?';

  @override
  String get backAction => 'Back';

  @override
  String get cancelAction => 'Cancel';

  @override
  String get allFilter => 'All';

  @override
  String get draftStatus => 'Draft';

  @override
  String get sentStatus => 'Sent';

  @override
  String get partialStatus => 'Partial';

  @override
  String get receivedStatus => 'Completed';

  @override
  String get cancelledStatus => 'Cancelled';

  @override
  String get noSupplier => 'Unspecified supplier';

  @override
  String receivedValue(Object received, Object total) {
    return 'Received $received of $total';
  }

  @override
  String itemCount(Object count) {
    return '$count items';
  }

  @override
  String get viewAction => 'View';

  @override
  String get editAction => 'Edit';

  @override
  String get copyAction => 'Copy';

  @override
  String get noResultsMatch => 'No results match the search';

  @override
  String get noPurchaseOrdersYet => 'No purchase orders yet';

  @override
  String get createFirstOrder => '+ Create first purchase order';

  @override
  String get orPressCtrlN => 'Or press Ctrl+N';

  @override
  String get failedToFetchLowItems =>
      'Failed to fetch low items. Make sure the database is updated.';

  @override
  String get noNewItemsAllAdded =>
      'No new items: all low products are already in the list.';

  @override
  String get noLowStockProducts =>
      'No low stock products (at or below alert threshold with stock tracking enabled).';

  @override
  String addedLowItems(Object added) {
    return 'Added $added low/depleted items. Adjust quantities then save.';
  }

  @override
  String skippedDuplicates(Object skipped) {
    return ' ($skipped duplicates skipped)';
  }

  @override
  String showingOnlyFirst(Object count) {
    return ' — Only showing the first $count items.';
  }

  @override
  String get addAtLeastOne => 'Add at least one item';

  @override
  String get checkNameAndQty => 'Check product name and quantity for each item';

  @override
  String errorOccurred(Object error) {
    return 'An error occurred: $error';
  }

  @override
  String get editPurchaseOrder => 'Edit Purchase Order';

  @override
  String get newPurchaseOrderTitle => 'New Purchase Order';

  @override
  String get orderInfo => 'Order Information';

  @override
  String get supplierLabel => 'Supplier';

  @override
  String get selectSupplierHint => 'Select a supplier (optional)';

  @override
  String get noSupplierText => '— No supplier —';

  @override
  String get orderDateLabel => 'Order Date';

  @override
  String get expectedDeliveryLabel => 'Expected Delivery Date';

  @override
  String get selectOptionalHint => 'Select (optional)';

  @override
  String get statusLabel => 'Status';

  @override
  String get draftText => 'Draft';

  @override
  String get sentText => 'Sent to supplier';

  @override
  String get partialText => 'Partially received';

  @override
  String get receivedText => 'Fully received';

  @override
  String get cancelledText => 'Cancelled';

  @override
  String get notesLabel => 'Notes';

  @override
  String get notesHint => 'Terms, details, notes…';

  @override
  String get orderItems => 'Order Items';

  @override
  String get fillLowStock => 'Fill from Low Stock';

  @override
  String get addItem => 'Add Item';

  @override
  String get emptyListHint =>
      'Tap \'Fill from Low Stock\' or \'Add Item\' to start the list';

  @override
  String get itemCol => 'Item';

  @override
  String get qtyCol => 'Quantity';

  @override
  String get unitPriceCol => 'Unit Price';

  @override
  String get totalCol => 'Total';

  @override
  String get grandTotal => 'Grand Total';

  @override
  String get itemNameHint => 'Item name';

  @override
  String get noProductForBarcode => 'No product found for this barcode';

  @override
  String get productAlreadyExists => 'Product already exists';

  @override
  String get removeFromList => 'Remove from List';

  @override
  String get removeConfirm => 'Print quantity is greater than 5. Remove?';

  @override
  String get removeAction => 'Remove';

  @override
  String get quantitiesUpdated => 'Quantities updated';

  @override
  String zeroQtySkipped(Object count) {
    return 'Products with zero quantity skipped ($count)';
  }

  @override
  String get resetAll => 'Reset All';

  @override
  String get resetConfirm => 'All quantities will be reset to 1. Continue?';

  @override
  String get printPreview => 'Print Preview';

  @override
  String totalLabels(Object count) {
    return 'Total labels: $count';
  }

  @override
  String get printViaSystem =>
      'Print via the system default printer or from the preview screen.';

  @override
  String get productBarcodes => 'Product Barcode Labels';

  @override
  String get printedTitle => 'Printed';

  @override
  String get printedContent =>
      'Preview executed or printed from the system window.';

  @override
  String get clearList => 'Clear List';

  @override
  String get printAgain => 'Print Again';

  @override
  String get printListCleared => 'Print list cleared';

  @override
  String get itemFallback => 'Item';

  @override
  String get kgUnit => 'kg';

  @override
  String get justNow => 'Just now';

  @override
  String minutesAgo(Object minutes) {
    return '$minutes min ago';
  }

  @override
  String hoursAgo(Object hours) {
    return '${hours}h ago';
  }

  @override
  String get now => 'Now';

  @override
  String get dayOrMoreAgo => 'A day or more ago';

  @override
  String get barcodeLabelsTitle => 'Print Barcode Labels';

  @override
  String lastUpdate(Object time) {
    return 'Last update: $time — Refresh prices and stock';
  }

  @override
  String printLabelsBtn(Object count) {
    return 'Print $count labels';
  }

  @override
  String loadFailed(Object error) {
    return 'Load failed: $error';
  }

  @override
  String get searchProductHint => 'Search for a product';

  @override
  String get searchProductSub =>
      'Two or more characters (name / barcode / SKU)';

  @override
  String get weightProductsNote =>
      'Weight products: The ID is printed on the label; weight is determined at sale.';

  @override
  String get barcodeLabel => 'Barcode';

  @override
  String stockLabel(Object qty) {
    return 'Stock: $qty';
  }

  @override
  String skuLabel(Object code) {
    return 'SKU: $code';
  }

  @override
  String get sizeAndPreview =>
      'Choose size and preview appearance (applies to cards and printing).';

  @override
  String get labelSizeHint => 'Label size';

  @override
  String get showProductName => 'Show Product Name';

  @override
  String get showPrice => 'Show Price';

  @override
  String get smartQtyTooltip =>
      'Automatically adjusts print quantity based on stock quantity';

  @override
  String get smartQtyLabel => 'Smart Quantity';

  @override
  String get setAllOne => 'Set All to (1)';

  @override
  String setAllOneCount(Object count) {
    return 'Set All to (1) ($count)';
  }

  @override
  String productsCount(Object count) {
    return 'Products: $count';
  }

  @override
  String totalLabelsCount(Object count) {
    return 'Total labels: $count';
  }

  @override
  String get searchToAddHint => 'Search for a product to add for printing';

  @override
  String get addMultipleHint =>
      'You can add multiple products and print them all at once';

  @override
  String get removeTooltip => 'Remove';

  @override
  String stockAndPrint(Object print, Object stock) {
    return 'Stock: $stock | Print: $print';
  }

  @override
  String get printQtyExceedsStock => 'Print quantity exceeds stock';

  @override
  String get decreaseTooltip => 'Decrease';

  @override
  String get increaseTooltip => 'Increase';

  @override
  String previewLabel(Object name, Object price, Object size) {
    return 'Preview: $name — $price — $size';
  }

  @override
  String priceFormat(Object price) {
    return '$price FDJ';
  }

  @override
  String get autoBarcodeNote => 'A barcode will be generated automatically';

  @override
  String get unsavedChanges => 'Unsaved Changes';

  @override
  String get unsavedChangesConfirm => 'Changes were not saved. Leave anyway?';

  @override
  String get stayAction => 'Stay';

  @override
  String get leaveAction => 'Leave';

  @override
  String productSelected(Object name) {
    return 'Selected: $name';
  }

  @override
  String failedToLoad(Object error) {
    return 'Load failed: $error';
  }

  @override
  String failedToLoadMore(Object error) {
    return 'Failed to load more: $error';
  }

  @override
  String get clearProductBarcode => 'Clear Product Barcode';

  @override
  String get nameEmpty => 'Product name cannot be empty';

  @override
  String get nameTooLong => 'Product name is too long';

  @override
  String get barcodeAlreadyUsed => 'Barcode is already in use';

  @override
  String get minPriceExceedsSalePrice =>
      'Minimum sale price cannot exceed sale price';

  @override
  String get productUpdatedSuccess => 'Product updated successfully';

  @override
  String get barcodeUsedByOther => 'Barcode is used by another product/unit';

  @override
  String get saveFailed => 'Failed to save changes';

  @override
  String get lossSuffix => ' — Loss';

  @override
  String get profitMarginLabel => 'Profit margin: ';

  @override
  String get profitLabel => 'Profit: ';

  @override
  String get updateExistingProduct => 'Update Existing Product';

  @override
  String get clearBarcodeCameraTooltip => 'Clear barcode (camera)';

  @override
  String get searchLabel => 'Search';

  @override
  String get typeTwoCharsHint => 'Type two characters for unified search';

  @override
  String get noResultsFound => 'No results found';

  @override
  String get scannerSearchNote =>
      'On this page: The barcode reader (HID) searches for the product here and does not redirect to sales. Scroll down to load more.';

  @override
  String get noResultsForText => 'No results for this text yet.';

  @override
  String get pieceUnit => 'piece';

  @override
  String get outOfStockWarning => 'Product is out of stock';

  @override
  String get lowStockWarning => 'Quantity reached alert threshold';

  @override
  String get productNameLabel => 'Product Name';

  @override
  String get barcodeAlreadyUsedByOther => 'Barcode is already in use';

  @override
  String get viewProductWithBarcode => 'View product with this barcode';

  @override
  String get purchasePriceLabel => 'Purchase Price';

  @override
  String get salePriceLabel => 'Sale Price';

  @override
  String get minSalePriceLabel => 'Minimum Sale Price';

  @override
  String get quantityLabel => 'Quantity';

  @override
  String get alertThresholdLabel => 'Alert Threshold';

  @override
  String productIdLabel(Object id) {
    return 'ID $id';
  }

  @override
  String categoryLabel(Object name) {
    return 'Category: $name';
  }

  @override
  String get stockTrackingDisabled =>
      'Stock tracking is disabled for this item — the quantity in the database will remain as is when saving.';

  @override
  String get saveLabel => 'Save';

  @override
  String get retailList => 'Retail List';

  @override
  String get retailDesc => 'Retail sale prices for regular customers';

  @override
  String get wholesaleList => 'Wholesale List';

  @override
  String get wholesaleDesc => 'Wholesale prices for distributors and traders';

  @override
  String get vipList => 'VIP Customer List';

  @override
  String get vipDesc => 'Special prices for regular customers (VIP)';

  @override
  String get cannotDeleteDefault => 'Cannot delete the default price list';

  @override
  String get deletePriceList => 'Delete Price List';

  @override
  String deletePriceListConfirm(Object name) {
    return 'Delete \'$name\'?';
  }

  @override
  String get priceListsTitle => 'Price Lists';

  @override
  String get listsTab => 'Lists';

  @override
  String get productsByListTab => 'Products by List';

  @override
  String get newListBtn => 'New List';

  @override
  String get defaultLabel => 'Default';

  @override
  String get setAsDefault => 'Set as Default';

  @override
  String get managePrices => 'Manage Prices';

  @override
  String get productCol => 'Product';

  @override
  String get purchasePriceCol => 'Purchase Price';

  @override
  String get retailPriceCol => 'Retail';

  @override
  String get wholesalePriceCol => 'Wholesale';

  @override
  String get vipPriceCol => 'VIP';

  @override
  String listPricesTitle(Object name) {
    return '$name Prices';
  }

  @override
  String get salePriceCol => 'Sale Price';

  @override
  String get editList => 'Edit List';

  @override
  String get newListTitle => 'New Price List';

  @override
  String get listNameLabel => 'List Name *';

  @override
  String get listColorLabel => 'List Color:';

  @override
  String get saveChanges => 'Save Changes';

  @override
  String get createList => 'Create List';

  @override
  String get colorsAndSizes => 'Colors & Sizes';

  @override
  String get closeBtn => 'Close';

  @override
  String get doneBtn => 'Done';

  @override
  String get addAtLeastOneColor => 'Add at least one color.';

  @override
  String get colorNameRequired => 'Color name is required.';

  @override
  String get addAtLeastOneSize => 'Add at least one size per color.';

  @override
  String get sizeFieldRequired => 'Size field is required.';

  @override
  String duplicateSize(Object color, Object size) {
    return 'Size \"$size\" is duplicated within color \"$color\".';
  }

  @override
  String get qtyMustBeNonNegative => 'Quantity must be a non-negative integer.';

  @override
  String get duplicateBarcode => 'Duplicate barcode found within variants.';

  @override
  String get conversionFactorError =>
      'Conversion factor must be greater than 0 for each new unit.';

  @override
  String get variantBarcodeUsed => 'Variant barcode already in use';

  @override
  String get conversionFactorGt0 => 'Conversion factor must be greater than 0';

  @override
  String get chooseColorTitle => 'Choose Color';

  @override
  String get chooseColorSubtitle =>
      'Choose a color to represent this option (optional).';

  @override
  String get applyUniformQtyTitle => 'Apply Uniform Quantity';

  @override
  String get enterQtyHint => 'Enter quantity (0 or more)';

  @override
  String get qtyMustBePositive => 'Quantity must be a non-negative integer.';

  @override
  String get sizeLabel => 'Size';

  @override
  String get chooseSizeTooltip => 'Choose size';

  @override
  String get qtyLabel => 'Quantity';

  @override
  String get barcodeOptional => 'Barcode (optional)';

  @override
  String get deleteTooltip => 'Delete';

  @override
  String get colorNameLabel => 'Color Name';

  @override
  String get colorPickerTooltip => 'Choose color (HEX)';

  @override
  String get deleteColorTooltip => 'Delete color';

  @override
  String get sizesAndQuantities => 'Sizes & Quantities';

  @override
  String get noSizesYet => 'No sizes yet. Add at least one size.';

  @override
  String get addSizeBtn => 'Add Size';

  @override
  String colorTotal(Object count) {
    return 'Color total: $count';
  }

  @override
  String get addNewColor => 'Add New Color';

  @override
  String get applyUniformQtyAllSizes => 'Apply uniform quantity to all sizes';

  @override
  String get noColorsYet => 'No colors yet. Add a color to start.';

  @override
  String get editProductTitle => 'Edit Product';

  @override
  String get saveBtn => 'Save';

  @override
  String get productNameHint => 'e.g. Sugar 1 kg';

  @override
  String get barcodeOptionalLabel => 'Barcode (optional)';

  @override
  String get trackStock => 'Track Stock';

  @override
  String get trackStockDesc => 'Calculates quantity and low stock alerts';

  @override
  String get noTrackDesc => 'Quantity becomes 0 and no stock alerts shown';

  @override
  String get pricingTitle => 'Pricing';

  @override
  String get enterSalePrice => 'Enter sale price';

  @override
  String get baseStockType => 'Base Stock Type';

  @override
  String get stockTypePiece => 'Piece (unit as base)';

  @override
  String get stockTypeWeight => 'Weight (kilogram as base)';

  @override
  String get stockTypeClothing => 'Clothing (colors & sizes)';

  @override
  String get colorsAndSizesTitle => 'Colors & Sizes';

  @override
  String get editColorsSizesBtn => 'Edit Colors & Sizes';

  @override
  String get salesUnitsBarcode => 'Sales Units & Barcode';

  @override
  String get unitsDesc =>
      'The default unit is managed automatically with the product; you can edit additional units or add a new unit.';

  @override
  String get defaultUnitTitle => 'Default Unit';

  @override
  String defaultUnitDesc(Object factor, Object name) {
    return '$name — factor $factor';
  }

  @override
  String unitNumber(Object id) {
    return 'Unit #$id';
  }

  @override
  String get unitNameLabel => 'Unit Name';

  @override
  String get unitBarcodeOptional => 'Barcode (optional)';

  @override
  String get unitSalePriceOptional => 'Unit sale price (optional)';

  @override
  String get unitMinPriceOptional => 'Min price (optional)';

  @override
  String get addNewUnitBtn => 'Add New Unit';

  @override
  String get newUnitTitle => 'New Unit';

  @override
  String get cancelTooltip => 'Cancel';

  @override
  String get stockTitle => 'Stock';

  @override
  String stockManagedByVariants(Object count) {
    return 'Stock is managed via colors & sizes. Current total: $count';
  }

  @override
  String get lowStockThreshold => 'Low stock alert threshold';

  @override
  String get saveChangesBtn => 'Save Changes';

  @override
  String invoiceNumber(Object number) {
    return 'Invoice #$number';
  }

  @override
  String get closeTooltip => 'Close';

  @override
  String get customerLabel => 'Customer';

  @override
  String get dateLabel => 'Date';

  @override
  String get invoiceTypeLabel => 'Invoice type';

  @override
  String get recordedByLabel => 'Recorded by';

  @override
  String get customerIdLabel => 'Customer ID';

  @override
  String get returnStatusLabel => 'Return';

  @override
  String get originalInvoiceLabel => 'Original invoice';

  @override
  String get deliveryAddressLabel => 'Delivery address';

  @override
  String get discountPercentLabel => 'Discount %';

  @override
  String get noItemsLabel => 'No items';

  @override
  String quantityTimesPrice(Object price, Object qty) {
    return '$qty × $price FDJ';
  }

  @override
  String get itemsSubtotalLabel => 'Items subtotal';

  @override
  String get invoiceDiscountLabel => 'Invoice discount';

  @override
  String get loyaltyDiscountLabel => 'Loyalty discount';

  @override
  String get redeemedPointsLabel => 'Redeemed points';

  @override
  String get earnedPointsLabel => 'Earned points';

  @override
  String get taxLabel => 'Tax';

  @override
  String get advanceFirstPaymentLabel => 'Advance / First payment';

  @override
  String get interestInfoSavedAtSale => 'Interest info (saved at sale)';

  @override
  String get interestRatePercent => 'Interest rate %';

  @override
  String get monthsCountLabel => 'Number of months';

  @override
  String get financedAmountLabel => 'Financed amount';

  @override
  String get interestValueLabel => 'Interest value';

  @override
  String get totalWithInterestLabel => 'Total with interest';

  @override
  String suggestedMonthlyInstallment(Object months) {
    return 'Suggested monthly installment ($months months)';
  }

  @override
  String get selectInvoicePrompt => 'Select an invoice to view its details';

  @override
  String get invoiceNotFoundMsg => 'Invoice not found';

  @override
  String get iqdCurrency => 'FDJ';

  @override
  String get customerNameLabel => 'Customer name';

  @override
  String get saleTitle => 'Sale';

  @override
  String get parkInvoiceTooltip => 'Park invoice';

  @override
  String get insufficientStockForUnit => 'Insufficient stock for this unit.';

  @override
  String qtyAdjustedToStock(Object qty) {
    return 'Quantity adjusted to $qty due to stock limit.';
  }

  @override
  String serviceAlreadyAdded(Object name) {
    return 'Service already added: $name';
  }

  @override
  String quantityIncreased(Object name) {
    return 'Quantity increased: $name';
  }

  @override
  String get serviceQtyFixed =>
      'Service quantity is fixed and cannot be changed.';

  @override
  String get okAction => 'OK';

  @override
  String get addAtLeastOneToSell =>
      'Add at least one item to complete the sale';

  @override
  String get addAtLeastOneToPark => 'Add at least one item to park the invoice';

  @override
  String get fillRequiredFields =>
      'Complete required fields: for credit or installment enter customer name, for delivery enter customer name and address.';

  @override
  String get paymentTypeNotAllowed =>
      'Current payment type is not allowed. Check Invoices > POS settings or select cash.';

  @override
  String discountExceedsMax(Object limit) {
    return 'Discount exceeds the maximum allowed: $limit%';
  }

  @override
  String get creditInstallmentNeedCustomer =>
      'For credit or installment: select a registered customer from the suggestions list below the name field (or add one from Customers first).';

  @override
  String get loyaltyRedeemNeedCustomer =>
      'To redeem points, select the customer from the list or enter a name matching a customer record.';

  @override
  String installmentMinAdvanceError(Object amount, Object percent) {
    return 'Installment sale: advance must be at least $percent% of total ($amount).';
  }

  @override
  String invoiceDebtCapExceeded(Object limit, Object remaining) {
    return 'Debt limit per invoice exceeded: remaining ($remaining) exceeds cap ($limit).';
  }

  @override
  String customerDebtCapExceeded(Object adding, Object existing, Object limit) {
    return 'Customer debt limit exceeded: current remaining ~$existing, invoice adds $adding (exceeds $limit).';
  }

  @override
  String failedToSaveInvoice(Object error) {
    return 'Failed to save invoice: $error';
  }

  @override
  String invoiceImbalanceError(Object error) {
    return 'Invoice imbalance: $error';
  }

  @override
  String invoiceBalanceError(Object error) {
    return 'Failed to save -- $error. Review items and total before retrying.';
  }

  @override
  String get serviceOrderUpdateFailed =>
      'Warning: Invoice saved but failed to update the service ticket status. Please review it manually.';

  @override
  String installmentPlanCreationFailed(Object error) {
    return 'Invoice saved but failed to create installment plan: $error';
  }

  @override
  String get invoiceSavedWithPlan =>
      'Invoice saved and installment plan created -- you can adjust the schedule';

  @override
  String get installmentFullyPaid =>
      'Installment invoice saved and linked (no remaining installments as amount is fully paid).';

  @override
  String get invoiceSavedSuccess =>
      'Invoice saved and inventory/cash register updated';

  @override
  String get failedToLoadParkedInvoice => 'Failed to find the parked invoice';

  @override
  String failedToApplyParkedInvoice(Object error) {
    return 'Failed to apply parked invoice: $error';
  }

  @override
  String get clearCartTitle => 'Clear cart?';

  @override
  String get clearCartBody =>
      'All items will be removed from the current invoice.';

  @override
  String get clearCartAction => 'Clear';

  @override
  String get returnDialogAction => 'Return';

  @override
  String get productNotFoundTitle => 'Product not found';

  @override
  String get productNotFoundBody =>
      'This barcode is not found in products. Do you want to open the add product screen?';

  @override
  String get addProductAction => 'Add product';

  @override
  String productAddedSnack(Object name) {
    return 'Product added: $name';
  }

  @override
  String get searchCustomerHint => 'Search from first letter...';

  @override
  String get addNewCustomerTooltip => 'Add new customer without leaving sale';

  @override
  String get discountOnTotalSaleLabel => 'Discount on total sale %';

  @override
  String discountPercentHelper(Object limit) {
    return 'Maximum allowed: $limit% -- calculated from minimum price per item';
  }

  @override
  String get taxSectionLabel => 'Tax';

  @override
  String get taxDescription =>
      'Enter the tax amount in francs if applicable; added to total after invoice discount.';

  @override
  String get taxAmountLabel => 'Tax amount (FDJ)';

  @override
  String get discountSectionLabel => 'Invoice discount';

  @override
  String get advanceDownPaymentLabel => 'Advance / Down payment (FDJ)';

  @override
  String get advancePaymentHelper =>
      'Deducted from total before calculating interest and installment';

  @override
  String get installmentInterestLabel => 'Interest on amount to be financed';

  @override
  String get interestRateHelper => 'Percentage of amount after advance';

  @override
  String get numberOfMonthsLabel => 'Number of months';

  @override
  String get receivedAmountLabel => 'Amount received (FDJ)';

  @override
  String get advanceDescription =>
      'Calculated on total after advance. For customer review -- not added to invoice unless you manually raise prices.';

  @override
  String get priceSummaryCaptionNoDiscount =>
      'Summary of numbers and advance (if any), before proceeding to customer details.';

  @override
  String get priceSummaryCaptionWithDiscount =>
      'Summary after discount and tax, and advance (if any), before proceeding to customer details.';

  @override
  String get financedAmountBasis => 'Amount after advance (installment basis)';

  @override
  String get parkedInvoiceDialogHint =>
      'Saved locally on this device. You can resume later from Invoices > Parked sales.';

  @override
  String get parkedInvoiceNameLabel =>
      'Name for identification (shown in list)';

  @override
  String get saveParkingAction => 'Save parking';

  @override
  String get quantityDialogTitle => 'Quantity';

  @override
  String get maxAction => 'Max';

  @override
  String get changeColorAction => 'Change color';

  @override
  String get filterListHint => 'Filter list...';

  @override
  String get sizesLabel => 'Sizes';

  @override
  String get selectColorFirstHint => 'Select a color first to show sizes.';

  @override
  String priceMinLine(Object min, Object price) {
    return 'Price $price / Min $min';
  }

  @override
  String itemTotalLine(Object total) {
    return 'Total: $total';
  }

  @override
  String get parkedInvoiceUpdated => 'Parked invoice updated';

  @override
  String get parkedInvoiceCreated =>
      'Invoice parked -- you can resume from the invoices list';

  @override
  String get barcodeScanTitle => 'Item or invoice barcode for return';

  @override
  String get productFallback => 'Product';

  @override
  String get colorLabel => 'Color';

  @override
  String get colorSizeFallback => 'color/size';

  @override
  String get sizeFallback => 'size';

  @override
  String get unitFallback => 'Unit';

  @override
  String get pieceUnitFallback => 'piece';

  @override
  String availableQtyChipLabel(Object qty) {
    return 'Available: $qty';
  }

  @override
  String get cashDiscountNote => 'Deducted from cash register.';

  @override
  String get installmentDiscountNote => 'Deducted from installment total.';

  @override
  String get returnScreenTitle => 'Return';

  @override
  String returnInvoiceTitle(Object id) {
    return 'Return -- invoice #$id';
  }

  @override
  String get vouchersNotReturnable =>
      'Receipt vouchers or supplier payments cannot be processed from the return screen.';

  @override
  String get noInvoiceNumber => 'No invoice number';

  @override
  String get invoiceNotFoundReturn => 'Invoice not found';

  @override
  String get alreadyReturnedReturn =>
      'This invoice is already recorded as returned';

  @override
  String get cashPaymentType => 'Cash';

  @override
  String get creditPaymentTypeLabel => 'Credit (deferred)';

  @override
  String get installmentPaymentTypeLabel => 'Installment';

  @override
  String get deliveryPaymentType => 'Delivery';

  @override
  String get debtCollectionType => 'Debt collection voucher';

  @override
  String get installmentCollectionType => 'Installment payment voucher';

  @override
  String get supplierPaymentTypeLabel => 'Supplier payment voucher';

  @override
  String get cashReturnHint =>
      'Recorded as cash withdrawal of the same amount.';

  @override
  String get installmentReturnHint =>
      'Updates the installment plan total; records cash withdrawal if advance is being refunded.';

  @override
  String get creditReturnHintLabel =>
      'Return recorded as linked to original; check invoices list for debt status.';

  @override
  String get notApplicableForType => 'Not applicable for this type.';

  @override
  String get selectAtLeastOneReturnQty =>
      'Select a return quantity of at least one';

  @override
  String returnSaveFailed(Object error) {
    return 'Save failed: $error';
  }

  @override
  String get returnUseBarcodeOnly =>
      'For returns, use the invoice barcode only (e.g. INV-12)';

  @override
  String get sameInvoiceDisplayed =>
      'This is the same invoice currently displayed';

  @override
  String noInvoiceWithIdReturn(Object id) {
    return 'No invoice with number $id';
  }

  @override
  String get alreadyReturnedInvoiceReturn => 'Invoice already returned';

  @override
  String navigateToInvoiceTitle(Object id) {
    return 'Navigate to invoice #$id?';
  }

  @override
  String get navigateToInvoiceBody =>
      'The displayed products will be replaced with another invoice.';

  @override
  String allItemsReturnedBanner(Object id) {
    return 'All items of invoice #$id have been fully returned in previous returns. Nothing left to return.';
  }

  @override
  String get noItemsInInvoice => 'No items in this invoice';

  @override
  String get noItemsInInvoiceHint =>
      'Verify the invoice number, or use the barcode field to select another invoice.';

  @override
  String get itemsSelectReturnQty => 'Items -- select return quantity';

  @override
  String get fullReturnAction => 'Full return';

  @override
  String get switchInvoiceHint => 'Switch invoice (INV-number)';

  @override
  String get scanReceiptBarcodeHint =>
      'Scan another receipt barcode then Enter';

  @override
  String originalInvoiceHashLabel(Object id) {
    return 'Original invoice #$id';
  }

  @override
  String dateLabelReturn(Object date) {
    return 'Date: $date';
  }

  @override
  String customerLabelReturn(Object name) {
    return 'Customer: $name';
  }

  @override
  String originalSellerLabel(Object name) {
    return 'Original seller: $name';
  }

  @override
  String currentRecorderLabel(Object name) {
    return 'Currently recorded by: $name';
  }

  @override
  String get fullyReturnedBadge => 'Fully returned';

  @override
  String get partiallyReturnedBadge => 'Partially returned';

  @override
  String soldQtyTimesPrice(Object price, Object qty) {
    return 'Sold: $qty x $price';
  }

  @override
  String previouslyReturnedRemaining(Object remaining, Object returned) {
    return 'Previously returned: $returned -- Remaining: $remaining';
  }

  @override
  String get returnQuantityLabel => 'Return quantity';

  @override
  String get returnSummaryTitle => 'Return summary';

  @override
  String get linesSubtotalLabel => 'Lines subtotal';

  @override
  String get invoiceDiscountShareLabel => 'Invoice discount';

  @override
  String get taxShareLabel => 'Tax share';

  @override
  String get refundAmountLabel => 'Refund amount to customer';

  @override
  String get confirmReturnAction => 'Confirm return';

  @override
  String returnedInOtherInvoice(Object name, Object qty) {
    return '$name was returned in another invoice since this screen opened. Remaining: $qty. Reload and try again.';
  }

  @override
  String returnRecordedSuccess(Object hint, Object id, Object originalId) {
    return 'Return #$id recorded -- linked to original invoice #$originalId. $hint';
  }

  @override
  String get deleteReturnTitle => 'Delete return?';

  @override
  String get deleteReturnConfirm =>
      'Are you sure you want to delete this return?';

  @override
  String get amountDueLabel => 'Amount due (FDJ)';

  @override
  String get discountOnTotalSaleTitle => 'Invoice discount';

  @override
  String get advanceFirstPaymentShortLabel => 'Down payment';

  @override
  String get parkingInvoiceTitle => 'Park invoice';

  @override
  String get parkedInvoiceSnackbarHint =>
      'Saved locally. You can resume from Invoices > Parked.';

  @override
  String get pieceFallback => 'Piece';

  @override
  String get unnamedProduct => 'Unnamed product';

  @override
  String get newProductFallback => 'New product';

  @override
  String qtyAdjustedToAvailableStock(Object qty) {
    return 'Quantity adjusted to $qty due to available stock limit.';
  }

  @override
  String stockNotAvailableDetails(Object max) {
    return 'Stock not available. Available for sale (stock basis): $max only (after accounting for quantities in other lines).';
  }

  @override
  String get noStockAvailableForProduct =>
      'No stock available for this product.';

  @override
  String stockUnavailableAvailableIs(Object max) {
    return 'Stock unavailable. Available for sale (stock basis): $max only.';
  }

  @override
  String newLineAddedSnack(Object name) {
    return 'New line added: $name';
  }

  @override
  String get installmentPlanTitle => 'Installment Plan';

  @override
  String get installmentCalcNote =>
      'Calculated on \"Total after advance\". For review with customer — not added to invoice unless you manually raise prices.';

  @override
  String get advanceDownPaymentHelper =>
      'Deducted from total before calculating interest and installment.';

  @override
  String get monthsSuffix => 'mo.';

  @override
  String interestAmountLabel(Object pct) {
    return 'Interest amount ($pct%)';
  }

  @override
  String get advanceEqualsTotalHint =>
      'Advance equals total — no amount for installments. Reduce the advance to see interest and installment.';

  @override
  String parkInvoiceWithCount(Object count) {
    return 'Park invoice — parked ($count)';
  }

  @override
  String get parkInvoiceOtherCustomer =>
      'Park invoice — serve another customer';

  @override
  String payButtonLabel(Object amount) {
    return 'Pay — $amount';
  }

  @override
  String get swipeToResizeHint => 'Drag to change sidebar width';

  @override
  String get checkoutStepHintWithPayment =>
      'Invoice lines, quantities, and prices — then review price details and payment method.';

  @override
  String get checkoutStepHintNoPayment =>
      'Invoice lines, quantities, and prices — then go to invoice discount and tax.';

  @override
  String get productsTitle => 'Products';

  @override
  String get barcodeFieldHint =>
      'Add item by barcode, or open return by scanning invoice number (INV-)';

  @override
  String get scannerTabLabel => 'Scanner';

  @override
  String get noItemsYetWithScanner =>
      'No items yet.\nScan the barcode above or add from search on the main screen.\nSearch for a product or scan barcode to add.';

  @override
  String get noItemsYetNoScanner =>
      'No items yet.\nAdd products from search on the main screen.\nSearch for a product or scan barcode to add.';

  @override
  String get saleSummaryTitle => 'Sale Summary';

  @override
  String get discountTaxNote =>
      'Discount and tax are applied to the invoice total (not per item).';

  @override
  String maxDiscountAllowedHint(Object max) {
    return 'Maximum allowed: $max% — calculated from minimum price per item.';
  }

  @override
  String get taxHelperHint =>
      'Enter tax amount in francs if applicable; added to the subtotal after invoice discount.';

  @override
  String get priceDetailStepHintWithPayment =>
      'Result of figures and first payment if any, before proceeding to customer data.';

  @override
  String get priceDetailStepHintNoPayment =>
      'Result of figures after discount and tax, and first payment if any, before proceeding to customer data.';

  @override
  String get priceDetailsTitle => 'Price Details';

  @override
  String get amountBreakdownTitle => 'Amount Breakdown';

  @override
  String get originalAmountLabel => 'Original amount (sum of items)';

  @override
  String get invoiceDiscountAmountLabel => 'Invoice discount amount';

  @override
  String get subtotalAfterDiscountLabel =>
      'Subtotal after discount (before tax)';

  @override
  String get iqdCurrencySymbol => 'FDJ';

  @override
  String get grandTotalLabel => 'Grand Total';

  @override
  String get cashLabel => 'Cash';

  @override
  String get creditLabel => 'Credit';

  @override
  String get installmentLabel => 'Installment';

  @override
  String get deliveryLabel => 'Delivery';

  @override
  String selectPaymentMethodHint(Object options) {
    return 'Choose $options, then complete customer data and fields related to payment type.';
  }

  @override
  String get customerAndPaymentTitle => 'Customer & Payment Method';

  @override
  String get paymentMethodLabel => 'Payment Method';

  @override
  String get customerNameRequiredForDelivery =>
      'Customer name required for delivery';

  @override
  String get requiredForCreditInstallment => 'Required for credit/installment';

  @override
  String get addNewCustomerMessage =>
      'Add a new customer without leaving the sale';

  @override
  String get deliveryAddressWithMapQR =>
      'Delivery address & location (QR maps)';

  @override
  String get buyerAddressWithMapQR => 'Buyer address (QR for maps on receipt)';

  @override
  String get addressMapDescriptionOptional =>
      'Optional — description or address shown in Google Maps when scanning the code';

  @override
  String get addressMapRequired =>
      'Required — QR for maps is printed when text is present; write the delivery address clearly';

  @override
  String get qrOpensMapsOnScan => 'QR opens maps when scanned';

  @override
  String get deliveryAddressRequired => 'Delivery address is required';

  @override
  String get loyaltyPointsRequiresCustomer =>
      'To use points: select a registered customer from the suggested list.';

  @override
  String customerLoyaltyBalance(Object balance) {
    return 'Customer loyalty points balance: $balance';
  }

  @override
  String loyaltyPointsToRedeem(Object max) {
    return 'Points to redeem (max $max)';
  }

  @override
  String get deliveryInstruction =>
      'For delivery: enter customer name and delivery address (both required). Name suggestions appear from the customer database while typing.';

  @override
  String get creditInstallmentCustomerTip =>
      'Important: For credit and installment, click the customer name from the suggested list to link the sale to their card (typing the name manually is not enough if it doesn\'t match a record exactly).';

  @override
  String get hideDetailsLabel => 'Hide Details';

  @override
  String get priceDiscountDetailsLabel => 'Price & Discount Details';

  @override
  String priceAndMinLabel(Object min, Object price) {
    return 'Price $price · Min $min';
  }

  @override
  String lineTotalLabel(Object total) {
    return 'Total: $total';
  }

  @override
  String get unitSellPriceLabel => 'Sell Price (per unit)';

  @override
  String get lineTotalBeforeDiscount => 'Line total before invoice discount';

  @override
  String get lineDiscountShare => 'Invoice discount share for this line';

  @override
  String get lineTotalAfterDiscount =>
      'Line total after invoice discount (this line)';

  @override
  String get percentageDiscountDistributionNote =>
      'Percentage discount is distributed across lines based on each line\'s contribution to the item total.';

  @override
  String get quantityKgLabel => 'Quantity (kilograms)';

  @override
  String get quantityHintWeight => 'e.g. 0.25 or 1.5 or 3';

  @override
  String get quantityHintPiece => 'e.g. 2';

  @override
  String get quantityErrorWeight =>
      'Enter a quantity greater than 0 (decimals allowed for weight).';

  @override
  String get quantityErrorPiece => 'Enter a whole number 1 or above';

  @override
  String get itemFallbackShort => 'Item';

  @override
  String get payloadEmptyOrNotText => 'Payload is empty or not text';

  @override
  String get payloadNotValidJson => 'Payload is not a valid JSON object';

  @override
  String get payloadNoVersionField => 'No version field (v) in payload';

  @override
  String payloadUnsupportedVersion(Object ver) {
    return 'Payload version $ver is not supported (expected 1)';
  }

  @override
  String decryptionError(Object error) {
    return 'Decryption error: $error';
  }

  @override
  String failedToOpenParkedInvoice(Object reason) {
    return 'Failed to open parked invoice: $reason';
  }

  @override
  String get unknownReason => 'unknown reason';

  @override
  String invoiceWithItemCount(Object count) {
    return 'Invoice ($count items)';
  }

  @override
  String get invoiceParkedMessage =>
      'Invoice parked — you can resume it from the invoice list';

  @override
  String get requiredFieldsMessage =>
      'Complete required fields: for credit or installment enter customer name, for delivery enter customer name and delivery address. Check the fields highlighted in red.';

  @override
  String get paymentMethodNotAllowed =>
      'Current payment method is not allowed — check \"Invoices → POS Settings\" or choose cash.';

  @override
  String discountExceedsMaximum(Object max) {
    return 'Discount percentage exceeds the maximum. The limit is $max%';
  }

  @override
  String get creditInstallmentMustSelectCustomer =>
      'For credit or installment sale: select a registered customer from the suggested list below the name field (or add from \"Customers\" first) to link the invoice to their card and have it appear in debts and installments later.';

  @override
  String get loyaltyRedeemMustSelectCustomer =>
      'To redeem points, select the customer from the list or enter a name that matches exactly one record in Customers.';

  @override
  String invoiceDebtLimitExceeded(Object cap, Object rem) {
    return 'Invoice debt limit: remaining ($rem) exceeds the cap $cap. Adjust the total, amount paid, or \"Debts → Debt Settings\".';
  }

  @override
  String customerDebtLimitExceeded(Object cap, Object existing, Object rem) {
    return 'Customer debt limit: total current remaining ≈ $existing, and this invoice adds $rem (exceeds $cap).';
  }

  @override
  String get debtLimitActionHint =>
      'Link the customer from the list, or reduce the amount, or check debt settings.';

  @override
  String invoiceSaveFailed(Object error) {
    return 'Failed to save invoice — $error. Review the items and total before trying again.';
  }

  @override
  String get maintenanceTicketUpdateFailed =>
      'Note: Invoice was saved but automatic update of the linked maintenance ticket failed. Please review it manually.';

  @override
  String get installmentPlanCreated =>
      'Invoice saved and installment plan created — you can adjust the schedule or go back';

  @override
  String get installmentPlanSavedNoRemaining =>
      'Installment invoice saved and linked to a plan (no installments remaining as the amount is fully collected).';

  @override
  String get barcodeOrInvoiceForReturn => 'Item barcode or invoice for return';

  @override
  String get alreadyReturned => 'This invoice has already been returned';

  @override
  String invoiceNumberLabel(Object id) {
    return 'Invoice #$id';
  }

  @override
  String openReturnScreenConfirm(Object total) {
    return 'Open return screen (items only)?\nOriginal total: $total';
  }

  @override
  String get returnButton => 'Return';

  @override
  String get selectColorAndSize => 'Select Color & Size';

  @override
  String get cannotChangeQtyBeforeSelection =>
      'Cannot change quantity before selection';

  @override
  String get loadingColorsAndSizes => 'Loading colors and sizes…';

  @override
  String get colorsTitle => 'Colors';

  @override
  String availableLabel(Object rem) {
    return 'Available: $rem';
  }

  @override
  String get sizesTitle => 'Sizes';

  @override
  String get currentlySelected => 'Currently Selected';

  @override
  String get colorOrSize => 'Color/Size';

  @override
  String get selectColorFirst => 'Select a color first to show sizes.';

  @override
  String get parkInvoiceDialogTitle => 'Park Invoice';

  @override
  String get parkInvoiceDescription =>
      'Saved locally on this device. You can resume the sale later from Invoices → Parked.';

  @override
  String get saveParkButton => 'Save Park';

  @override
  String get barcodeScannerTitle => 'Barcode Scanner';

  @override
  String get flashTooltip => 'Flash';

  @override
  String get switchCameraTooltip => 'Switch Camera';

  @override
  String get scanToAddAuto => 'Scan — items will be added automatically';

  @override
  String get passOriginalInvoiceOrId => 'Pass originalInvoice or invoiceId';

  @override
  String get deductedFromVault => 'Deducted from vault.';

  @override
  String get deductedFromInstallmentTotal => 'Deducted from installment total.';

  @override
  String get switchInvoiceLabel => 'Switch invoice (INV-number)';

  @override
  String get scanAnotherReceiptHint =>
      'Scan another receipt barcode then Enter';

  @override
  String get barcodeNotFoundAddNew =>
      'This barcode is not found in products. Would you like to open the add new product screen?';

  @override
  String get receiptPrintFailed => 'Receipt print failed';

  @override
  String get royalNavyScheme => 'Royal Navy — Gold — Ivory (default)';

  @override
  String get midnightScheme => 'Midnight — Silver — Light Gray';

  @override
  String get oceanScheme => 'Ocean — Sandy Gold — Creamy';

  @override
  String get forestScheme => 'Forest — Bronze — Light Mint';

  @override
  String get wineScheme => 'Wine — Warm Gold — Pink White';

  @override
  String get charcoalScheme => 'Charcoal — Amber — Blue White';

  @override
  String get slateScheme => 'Slate — Sky Blue — Cool White';

  @override
  String get copperScheme => 'Copper — Red Copper — Sand';

  @override
  String get customScheme => 'Custom — Interactive color studio';

  @override
  String get appAppearance => 'App Appearance';

  @override
  String get posSettings => 'POS Settings';

  @override
  String get paymentMethodsSection => 'Payment Methods';

  @override
  String get creditSaleTitle => 'Credit Sale';

  @override
  String get creditSaleSubtitle =>
      'Disabling hides the \"credit\" option on the sale screen.';

  @override
  String get installmentSaleTitle => 'Installment Sale';

  @override
  String get installmentSaleSubtitle =>
      'Disabling hides the \"installment\" option.';

  @override
  String get deliverySaleTitle => 'Delivery Sale';

  @override
  String get deliverySaleSubtitle => 'Disabling hides the \"delivery\" option.';

  @override
  String get cashCustomerSection => 'Customer in Cash Sale';

  @override
  String get showBuyerAddressCashTitle =>
      'Show buyer address field in cash mode';

  @override
  String get showBuyerAddressCashDesc =>
      'Only shown if \"QR for buyer address\" is enabled in print settings. When disabled, the field remains for delivery as usual.';

  @override
  String get stockInSaleSection => 'Stock in Sale';

  @override
  String get preventOversellTitle =>
      'Prevent sale when exceeding displayed balance';

  @override
  String get preventOversellDesc =>
      'When enabled, the invoice quantity does not exceed available stock. When disabled, selling is allowed even if balance goes negative, and the negative is cancelled upon saving.';

  @override
  String get discountTaxSection => 'Discount & Tax';

  @override
  String get invoiceDiscountPercentTitle =>
      'Invoice discount field (percentage)';

  @override
  String get invoiceDiscountPercentSubtitle =>
      'When disabled, discount is fixed at 0 and the field is hidden.';

  @override
  String get taxFieldTitle => 'Tax field';

  @override
  String get taxFieldSubtitle =>
      'When disabled, tax is fixed at 0 and the field is hidden.';

  @override
  String get brandColorsTitle => 'Brand identity colors instead of app theme';

  @override
  String get brandColorsDesc =>
      'When disabled, the general app theme (light/dark) remains on all pages, with the same corner shape below.';

  @override
  String get colorSchemesTitle => 'Color schemes';

  @override
  String get colorSchemesDesc =>
      'Every professional color scheme is ready; \"Custom\" opens an interactive color studio (hue, saturation, brightness, ready, HEX) for each color.';

  @override
  String get primaryColorLabel => 'Primary color (title bar & buttons)';

  @override
  String get accentColorLabel => 'Accent color (gold/featured)';

  @override
  String get lightSurfaceLabel => 'Light surfaces background';

  @override
  String get darkSurfaceLabel => 'Dark mode surfaces background';

  @override
  String get saleCardShapeTitle => 'Sale card shape';

  @override
  String get saleCardShapeDesc =>
      'Simple preview next to each option — how card corners and product lines look.';

  @override
  String get sharpCornersTitle => 'Sharp corners';

  @override
  String get roundedCornersTitle => 'Rounded corners';

  @override
  String get fontAndSizeTitle => 'App font & size';

  @override
  String get fontAndSizeDesc =>
      'Applied to all screens and menus, multiplied with system font size (if available).';

  @override
  String get fontStyleTitle => 'Font style';

  @override
  String get fontSizeTitle => 'Font size';

  @override
  String get textColorTitle => 'Text color';

  @override
  String get textColorDesc =>
      'Optional — full color studio for each mode (light/dark); applied to main text and lists.';

  @override
  String get textLightLabel => 'Text color — Light mode';

  @override
  String get textLightDesc =>
      'Active when light theme is on. Tap to edit, or \"Default\" to clear custom color.';

  @override
  String get textDarkLabel => 'Text color — Dark mode';

  @override
  String get textDarkDesc =>
      'Active when dark theme is on. Tap to edit, or \"Default\" to clear custom color.';

  @override
  String get resetTextColorLabel =>
      'Reset text color for both modes (default theme)';

  @override
  String get royalNavyDefaultDesc =>
      'Reference for the default \"Royal Navy\" colors — other schemes above.';

  @override
  String get wideSaleLayoutTitle => 'Sale space layout (wide display)';

  @override
  String get wideSaleLayoutSwitchTitle =>
      'Split sale screen into two columns (wide display)';

  @override
  String get wideSaleLayoutSwitchDesc =>
      'When disabled, \"New Sale\" returns to a single column even on wide screens. The ratio is saved and not lost when disabled.';

  @override
  String get wideSaleLayoutDesc =>
      'When the window is 700+ points wide and not a phone screen, and with the option above enabled, the \"New Sale\" screen splits into two columns: product selection and the summary/customer area.';

  @override
  String productsColumnRatioLabel(Object products, Object summary) {
    return 'Products column: $products — Summary & customer: $summary';
  }

  @override
  String productsSummaryLabel(Object products, Object summary) {
    return 'Products $products · rest of screen $summary';
  }

  @override
  String get wideSalePreviewLabel =>
      'Live preview (small space — how the split changes when moving the slider or dragging in the sale):';

  @override
  String get wideSaleDragHint =>
      'In the \"New Sale\" screen on wide display: hover on the thin strip between columns and drag horizontally — expands the \"Products\" column or the summary/customer column.';

  @override
  String get saleSpaceLayoutLabel => 'Sale space layout';

  @override
  String get phoneLayoutDesc =>
      'On this size (phone), the \"New Sale\" screen always displays in a single column. Splitting products and summary into two columns with space drag appears only on wide screens.';

  @override
  String get appearanceNote =>
      'Colors and corners apply immediately to the entire app (via system theme). Sale policies remain in \"POS Settings\" from the side menu.';

  @override
  String get posNote =>
      'Sale policies and layout apply immediately to the \"New Sale\" screen. Appearance (colors, font, corners, text color) is configured in \"App Appearance\" settings.';

  @override
  String get resetAppearanceTitle => 'Restore default appearance?';

  @override
  String get resetAppearanceDesc =>
      'Will revert font type, text size, custom text colors, color scheme, corners, and brand identity to base values. Sale policies are not affected.';

  @override
  String get cancelLabel => 'Cancel';

  @override
  String get restoreLabel => 'Restore';

  @override
  String get appearanceRestoredSnack => 'Default appearance settings restored';

  @override
  String get resetAppearanceLog =>
      'Restore default appearance (font, colors, scheme, corners)';

  @override
  String get summaryCustomerLabel => 'Summary\n& customer';

  @override
  String customColorLabel(Object hex) {
    return '$hex — Custom';
  }

  @override
  String get themeDefaultLabel => 'Theme default';

  @override
  String get colorStudioDesc =>
      'Saturation/brightness box, spectrum bar, ready colors, or HEX — then confirm.';

  @override
  String get appIdentityTitle => 'App Identity';

  @override
  String get appIdentityDesc =>
      'Set brand identity colors and corner shape to apply across the entire app. Sale payment, stock, and discount policies remain in \"POS Settings\" from the side menu.';

  @override
  String get saleControlTitle => 'Centralized sale control';

  @override
  String get saleControlDesc =>
      'Enable or disable payment methods and financial fields without code changes — suitable for changing policies or dedicated POS devices. Appearance is configured separately.';

  @override
  String get printSettingsSaved => 'Print settings saved';

  @override
  String printSettingsSaveError(Object error) {
    return 'Save error: $error';
  }

  @override
  String get testCustomerName => 'Test Customer';

  @override
  String get testProductName => 'Product 1';

  @override
  String get testEmployee => 'Employee';

  @override
  String get testAddress => 'Baghdah, Test Street';

  @override
  String get printingAndDocsTitle => 'Printing & Documents';

  @override
  String get saveButton => 'Save';

  @override
  String get salesReceiptSection => 'Sales Receipt';

  @override
  String get defaultPaperSize => 'Default paper size';

  @override
  String get thermal58mm => 'Thermal 58mm (narrow)';

  @override
  String get thermal80mm => 'Thermal 80mm (standard)';

  @override
  String get thermal76x297mm => 'Thermal 76×297mm (receipt)';

  @override
  String get showTransactionBarcodeTitle => 'Show transaction barcode';

  @override
  String get transactionBarcodeDesc => 'CODE128 — reads quickly with scanner';

  @override
  String get showQrCodeTitle => 'Show QR code';

  @override
  String get qrCodeDesc =>
      'Text summary for customer — recommended for tax and review';

  @override
  String get qrBuyerAddressTitle => 'QR for buyer address (maps)';

  @override
  String get qrBuyerAddressDesc =>
      'When enabled, shows buyer address field in sale and prints QR that opens location on Google Maps';

  @override
  String get headerLineLabel =>
      'Line above \"Sales Receipt\" title (store name)';

  @override
  String get footerLineLabel => 'Additional footer (phone, terms, thanks)';

  @override
  String get barcodeLabelsSection => 'Barcode & Labels Settings';

  @override
  String get storeDataTitle => 'Store Data';

  @override
  String get storeDataDesc =>
      'From Settings — can later auto-link store name to receipt';

  @override
  String get storeDataHint =>
      'Use the \"Store Name\" field above or store data card from settings';

  @override
  String get previewReceiptButton => 'Preview test receipt';

  @override
  String get saveSettingsButton => 'Save settings to database';

  @override
  String get printSettingsDesc =>
      'Data stored in print_settings table and applied automatically when printing sales receipt after each operation.';

  @override
  String get professionalPrintCenter => 'Professional Print Center';

  @override
  String get printCenterDesc =>
      'Configure thermal and A4 sizes, receipt content, and inventory links — all saved locally.';

  @override
  String get close => 'Close';

  @override
  String get loading => 'Loading...';

  @override
  String get actions => 'Actions';

  @override
  String get confirm => 'Confirm';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get next => 'Next';

  @override
  String get total => 'Total';

  @override
  String get count => 'Count';

  @override
  String get status => 'Status';

  @override
  String get date => 'Date';

  @override
  String get amount => 'Amount';

  @override
  String get number => 'Number';

  @override
  String get details => 'Details';

  @override
  String get name => 'Name';

  @override
  String get email => 'Email';

  @override
  String get notes => 'Notes';

  @override
  String get add => 'Add';

  @override
  String get remove => 'Remove';

  @override
  String get show => 'Show';

  @override
  String get hide => 'Hide';

  @override
  String get filter => 'Filter';

  @override
  String get sort => 'Sort';

  @override
  String get refresh => 'Refresh';

  @override
  String get export => 'Export';

  @override
  String get print => 'Print';

  @override
  String get copy => 'Copy';

  @override
  String get active => 'Active';

  @override
  String get inactive => 'Inactive';

  @override
  String get pending => 'Pending';

  @override
  String get completed => 'Completed';

  @override
  String get cancelled => 'Cancelled';

  @override
  String get paid => 'Paid';

  @override
  String get unpaid => 'Unpaid';

  @override
  String get cash => 'Cash';

  @override
  String get credit => 'Credit';

  @override
  String get installment => 'Installment';

  @override
  String get delivery => 'Delivery';

  @override
  String get customersTitle => 'Customers';

  @override
  String get customersManagement => 'Full Customer Management';

  @override
  String get addCustomer => 'Add Customer';

  @override
  String get addNewCustomer => 'Add New Customer';

  @override
  String get editCustomer => 'Edit Customer';

  @override
  String get deleteCustomer => 'Delete Customer';

  @override
  String confirmDeleteCustomer(Object name) {
    return 'Delete \"$name\"?';
  }

  @override
  String get customerNameHint => 'Enter customer name';

  @override
  String get phoneHint => 'Enter phone number';

  @override
  String get emailHint => 'Enter email address';

  @override
  String get addressLabel => 'Address';

  @override
  String get addressHint => 'Enter address';

  @override
  String get totalCustomers => 'Total Customers';

  @override
  String customerCount(Object count) {
    return 'Customers: $count';
  }

  @override
  String get noCustomersYet => 'No customers yet';

  @override
  String get addFirstCustomer => 'Add First Customer';

  @override
  String get loyaltyPoints => 'Loyalty Points';

  @override
  String get customerSince => 'Customer since';

  @override
  String get lastActivity => 'Last Activity';

  @override
  String get totalPurchases => 'Total Purchases';

  @override
  String get contactAdded => 'Contact added';

  @override
  String get contactDeleted => 'Contact deleted';

  @override
  String get contactUpdated => 'Contact updated';

  @override
  String get addContact => 'Add Contact';

  @override
  String get deleteContact => 'Delete Contact';

  @override
  String confirmDeleteContact(Object name) {
    return 'Delete \"$name\" from the system?';
  }

  @override
  String get contactType => 'Contact Type';

  @override
  String get primaryContact => 'Primary Contact';

  @override
  String get secondaryContact => 'Secondary Contact';

  @override
  String get financialDetails => 'Financial Details';

  @override
  String get fullDebtScreen => 'Full debt screen (settlement & details)';

  @override
  String get creditSales => 'Credit Sales (Debt)';

  @override
  String get creditSalesDesc =>
      'Each invoice linked to a sales receipt — click to view details';

  @override
  String get noCreditInvoices =>
      'No \"credit\" invoices linked to this customer. Use credit sale by selecting the customer from';

  @override
  String get installments => 'Installments';

  @override
  String get installmentSales => 'Installment Sales';

  @override
  String get installmentSalesDesc =>
      'Invoices with installment plans — click to view plan details';

  @override
  String get noInstallmentInvoices =>
      'No installment invoices linked to this customer.';

  @override
  String get totalDebt => 'Total Debt';

  @override
  String get totalPaid => 'Total Paid';

  @override
  String get remainingBalance => 'Remaining Balance';

  @override
  String get settleDebt => 'Settle Debt';

  @override
  String get debtHistory => 'Debt History';

  @override
  String get paymentHistory => 'Payment History';

  @override
  String get saleReceipt => 'Sale Receipt';

  @override
  String get viewDetails => 'View Details';

  @override
  String get amountDue => 'Amount Due';

  @override
  String get amountPaid => 'Amount Paid';

  @override
  String get dueDate => 'Due Date';

  @override
  String get paymentDate => 'Payment Date';

  @override
  String get paymentMethod => 'Payment Method';

  @override
  String get remaining => 'Remaining';

  @override
  String get settled => 'Settled';

  @override
  String get overdue => 'Overdue';

  @override
  String get dueSoon => 'Due Soon';

  @override
  String get customerForm => 'Customer Form';

  @override
  String get saveCustomer => 'Save Customer';

  @override
  String get updateCustomer => 'Update Customer';

  @override
  String get customerSaved => 'Customer saved successfully';

  @override
  String get customerUpdated => 'Customer updated successfully';

  @override
  String get customerDeleted => 'Customer deleted successfully';

  @override
  String failedToSave(Object error) {
    return 'Failed to save: $error';
  }

  @override
  String get phoneRequired => 'Phone number is required';

  @override
  String get emailInvalid => 'Invalid email address';

  @override
  String get duplicatePhone => 'This phone number already exists';

  @override
  String get duplicateEmail => 'This email already exists';

  @override
  String get addAnotherPhone => 'Add Another Number';

  @override
  String get loyaltyPointsLabel => 'Loyalty Points';

  @override
  String get customerType => 'Customer Type';

  @override
  String get retail => 'Retail';

  @override
  String get wholesale => 'Wholesale';

  @override
  String get lastUpdateNow => 'Last update: just now — F5';

  @override
  String lastUpdateHours(Object hours) {
    return 'Last update: about $hours hours ago — F5';
  }

  @override
  String lastUpdateMinutes(Object minutes) {
    return 'Last update: about $minutes minutes ago — F5';
  }

  @override
  String totalCustomersCount(Object displayed, Object total) {
    return 'Total customers: $total · Displayed: $displayed';
  }

  @override
  String get closePanelEsc => 'Close panel (Esc)';

  @override
  String get salesByCash => 'Cash sales';

  @override
  String get salesByCredit => 'Credit sales';

  @override
  String get totalSales => 'Total Sales';

  @override
  String get currentBalance => 'Current Balance';

  @override
  String get reportsTitle => 'Reports';

  @override
  String get reportsSections => 'Report Sections';

  @override
  String get defaultPeriod => 'Default report period';

  @override
  String get exportToExcel => 'Export (copy to Excel)';

  @override
  String get printReport => 'Print period report';

  @override
  String get salesOverview => 'Sales Overview';

  @override
  String get financialGauges => 'Performance Indicators (Gauges)';

  @override
  String get gaugesConsistent => 'Consistent with pie chart and table ratios';

  @override
  String get gaugesRelative =>
      'Relative distribution showing where each revenue unit goes';

  @override
  String get reportSettings => 'Report Settings';

  @override
  String get reportPreferences => 'Default period and preferences';

  @override
  String get periodApplied => 'Applied when saving — kept for next time';

  @override
  String get currentPeriod => 'Selected period:';

  @override
  String get yesterday => 'Yesterday';

  @override
  String get thisWeek => 'This week';

  @override
  String get thisMonth => 'This month';

  @override
  String get thisYear => 'This year';

  @override
  String get lastQuarter => 'Last quarter';

  @override
  String get dailyTrend => 'Daily trend';

  @override
  String get weekly => 'Weekly';

  @override
  String get monthly => 'Monthly';

  @override
  String get quarterly => 'Quarterly';

  @override
  String get yearly => 'Yearly';

  @override
  String get custom => 'Custom';

  @override
  String get noData => 'No data';

  @override
  String get noDataPeriod => 'No data for this period';

  @override
  String get noDailyData => 'No daily data in this period';

  @override
  String get noTrendData => 'No trend data to display';

  @override
  String get noMetricsData => 'No data to display metrics';

  @override
  String get tryDateRange => 'Try changing the date range or filter';

  @override
  String get filterNone => 'No results';

  @override
  String get clearSearch => 'Clear search (×) or switch to \"All\" tab';

  @override
  String get searchDescriptionCategory => 'Search (description or category)';

  @override
  String get searchCustomerProductPlan =>
      'Search: customer, product, plan number, invoice number...';

  @override
  String get salesInvoices => 'Sales & Invoices';

  @override
  String get salesOnly => 'Sales only (not returned)';

  @override
  String get dailySales => 'Daily sales within period';

  @override
  String get totalRevenue => 'Total Revenue';

  @override
  String get totalSalesCount => 'Sales Count';

  @override
  String get totalReturns => 'Total Returns';

  @override
  String get totalExpenses => 'Total Expenses';

  @override
  String get netSales => 'Net Sales';

  @override
  String get netAfterExpenses => 'Net after Expenses';

  @override
  String get netApprox => 'Approximate Net';

  @override
  String get netApproxDesc => 'Approximate net (sales − returns)';

  @override
  String get netSalesPeriod => 'Net sales for period';

  @override
  String get salesVsExpenses => 'Sales vs Expenses — daily trend';

  @override
  String get paymentTypeTrend => 'Payment type trend over time';

  @override
  String get categoryStacked => 'Stacked category trend over time';

  @override
  String get employeeSalesTrend => 'Employee sales trend over time';

  @override
  String get salesByPaymentType => 'Sales distribution by payment type';

  @override
  String get salesByCategory => 'Sales distribution by category';

  @override
  String get salesByCustomer => 'Sales distribution by customers';

  @override
  String get salesByEmployee => 'Sales distribution by employees';

  @override
  String get topProducts => 'Top selling products';

  @override
  String get topProductsByRevenue => 'Top selling products (by item revenue)';

  @override
  String get topCustomers => 'Top spending customers';

  @override
  String get topCustomersByPurchase => 'Top buyers (by invoice name)';

  @override
  String get topEmployees => 'Top employees';

  @override
  String get topEmployeesBySales =>
      'Employees ranked by total registered sales';

  @override
  String get topCategories => 'Top categories by total sales';

  @override
  String topCategory(Object name) {
    return 'Top category: $name';
  }

  @override
  String get moreItems => 'Others';

  @override
  String get reportAccuracyNote => 'Accuracy Notes';

  @override
  String get marginAccuracyDesc =>
      'Cost coverage percentage — higher means more accuracy';

  @override
  String get fixedCostRatio => 'Fixed cost ratio of total lines';

  @override
  String costFixedAtSale(Object amount) {
    return 'Fixed at sale: $amount';
  }

  @override
  String noCostZeros(Object count) {
    return 'No cost (treated as 0): $count';
  }

  @override
  String get expenseAnalysis => 'Expense Analysis';

  @override
  String get expenseBreakdown => 'Expense breakdown within period';

  @override
  String get topExpenses => 'Top 10 lowest margin products (pricing review)';

  @override
  String get lowMarginProducts => 'Products with low or negative margin';

  @override
  String get lowMarginDesc =>
      'Products with low or negative margin — may need price or cost review';

  @override
  String get customerBalances => 'Customer Balances';

  @override
  String get customerBalancesDesc =>
      'Outstanding balances on customer accounts';

  @override
  String get installmentPlans => 'Installment Plans';

  @override
  String get installmentPlansDesc =>
      'Installment plans linked to period invoices';

  @override
  String get activePlans => 'Active plans';

  @override
  String get noInstallmentPlans => 'No installment plans';

  @override
  String get noInstallmentSearch =>
      'No plans matching current search or filter';

  @override
  String get salesFlowItems => 'Sales and flow items (linked to invoice)';

  @override
  String get salesInvoicesReturns => 'Sales / Returns';

  @override
  String filteredPeriod(Object from, Object to) {
    return 'Period: $from → $to';
  }

  @override
  String filteredPlansCount(Object filtered, Object total) {
    return 'List: $filtered of $total plans';
  }

  @override
  String get employeePerformance => 'Employee Performance';

  @override
  String get employeePerformanceDesc =>
      'Sales registered under employee name (invoice field)';

  @override
  String get loyaltySummary => 'Loyalty Summary';

  @override
  String get loyaltyGranted => 'Points granted (total on invoices)';

  @override
  String get loyaltyRedeemed => 'Points redeemed (total on invoices)';

  @override
  String get loyaltyDiscounts => 'Loyalty discounts on invoices';

  @override
  String get bestSales => 'Best sales';

  @override
  String get bestSalesDesc => 'Best sales with cost + margin';

  @override
  String get backToHome => 'Back to Home';

  @override
  String get selectEmployee => 'Select employee';

  @override
  String get selectCustomer => 'Select registered customer';

  @override
  String get selectCustomerFromList => 'Select customer from list';

  @override
  String get updateButton => 'Update';

  @override
  String get refreshButton => 'Refresh (F5)';

  @override
  String get refreshData => 'Refresh Data';

  @override
  String get noItemsRecorded => 'No items recorded in invoice';

  @override
  String get salesOnlySection =>
      'This section shows sales only: cash/credit/installment/delivery';

  @override
  String get thankYou => 'Thank you for using Maarey';

  @override
  String get cashTitle => 'Cash Drawer';

  @override
  String get cashDrawer => 'Cash Drawer';

  @override
  String get openShift => 'Open Shift';

  @override
  String get closeShift => 'Close Shift';

  @override
  String get shiftDetails => 'Shift Details';

  @override
  String get shiftIdentity => 'Shift Identity & Session';

  @override
  String get openTime => 'Open Time';

  @override
  String get closeTime => 'Close Time';

  @override
  String get declaredOnOpen => 'Declared cash on open (inventory)';

  @override
  String get declaredAfterWithdrawal => 'Declared cash after withdrawal';

  @override
  String get systemBalanceOpen => 'System balance on open';

  @override
  String get systemBalanceClose => 'System balance on close';

  @override
  String get withdrawnOnClose => 'Withdrawn on close';

  @override
  String get pendingDeclared => 'Pending declared in drawer';

  @override
  String get shiftMovements => 'Shift Movements';

  @override
  String totalMovements(Object count) {
    return 'Total movements for this group: $count movement(s)';
  }

  @override
  String get inflow => 'Inflow';

  @override
  String get outflow => 'Outflow';

  @override
  String get inflowLabel => 'Inflow (deposit)';

  @override
  String get outflowLabel => 'Outflow (withdrawal)';

  @override
  String get inflowLineByLine => 'Inflow — line by line';

  @override
  String get outflowLineByLine => 'Outflow — line by line';

  @override
  String get manualEntry => 'Manual entry';

  @override
  String get manualDeposit => 'Manual deposit';

  @override
  String get manualWithdrawal => 'Manual withdrawal';

  @override
  String get affectsCashbox => 'Affects cash drawer';

  @override
  String get cashSales => 'Cash sales';

  @override
  String get creditSalesLabel => 'دين';

  @override
  String get noOutflowMovements => 'No outflow movements in this group';

  @override
  String get noInflowMovements => 'No inflow movements in this group';

  @override
  String get noLinkedMovements =>
      'No movements linked to invoice number in this group';

  @override
  String get otherMovements => 'Other movements';

  @override
  String get movement => 'Movement';

  @override
  String get printReceipt => 'Print Receipt';

  @override
  String get depositEntry => 'Deposit';

  @override
  String get withdrawalEntry => 'Withdrawal';

  @override
  String get cashSummary => 'Cash Summary';

  @override
  String get summaryInflowOutflow =>
      'Summary of inflow and outflow (this list)';

  @override
  String get loyaltyRange => 'Loyalty (within period)';

  @override
  String noShift(Object count) {
    return 'No shift · $count movement(s)';
  }

  @override
  String get invoiceAttached => 'Attached Invoice';

  @override
  String get linkedInvoice => 'Linked Invoice';

  @override
  String get expensesTitle => 'Expenses';

  @override
  String get addExpense => 'Add Expense';

  @override
  String get editExpense => 'Edit Expense';

  @override
  String get deleteExpense => 'Delete Expense';

  @override
  String get confirmDeleteExpense =>
      'Delete this expense? This cannot be undone.';

  @override
  String get expenseCategory => 'Expense Category';

  @override
  String get expenseDescription => 'Expense Description';

  @override
  String get expenseAmount => 'Amount';

  @override
  String get expenseDate => 'Date';

  @override
  String get expenseStatus => 'Status';

  @override
  String get expensePaid => 'Paid';

  @override
  String get expenseUnpaid => 'Unpaid';

  @override
  String get expenseReceipt => 'Expense Receipt';

  @override
  String get expenseReport => 'Expense Report';

  @override
  String get printExpenseReport => 'Print Expense Report';

  @override
  String get expensesWithinPeriod => 'Expenses within period';

  @override
  String get allCategories => 'All Categories';

  @override
  String get selectCategory => 'Select expense category';

  @override
  String get selectOtherCategory => 'Select another category';

  @override
  String get categoryOptions => 'Category options';

  @override
  String get showCategoryDescription => 'Show category description';

  @override
  String get copyCategoryName => 'Copy category name';

  @override
  String categoryCopied(Object name) {
    return 'Category name copied: $name';
  }

  @override
  String get todayExpense => 'Today\'s Expense';

  @override
  String get monthlyRecurring => 'Monthly recurring';

  @override
  String get recurringDay => 'Recurring day';

  @override
  String get selectMonthDay => 'Select day of month (1–365)';

  @override
  String get duplicateRecurring => 'Duplicate recurring';

  @override
  String get expenseSaved => 'Expense saved successfully';

  @override
  String get expenseUpdated => 'Expense updated successfully';

  @override
  String expenseSaveError(Object error) {
    return 'Error saving: $error';
  }

  @override
  String get attachmentOptional => 'Attach invoice image (optional)';

  @override
  String get imageAttached => 'Invoice image attached';

  @override
  String get imageError => 'Failed to select image';

  @override
  String get noExpensesPeriod => 'No expenses within this period';

  @override
  String get noCategoryData => 'No category data.';

  @override
  String get selectCategoryAmount =>
      'Please select a category and enter a valid amount.';

  @override
  String get installmentsTitle => 'Installments';

  @override
  String get addInstallmentPlan => 'Add Installment Plan';

  @override
  String get planDetails => 'Plan Details';

  @override
  String get installmentSchedule => 'Installment Schedule';

  @override
  String get installmentSettings => 'Installment Settings';

  @override
  String get paymentSchedule => 'Payment Schedule';

  @override
  String get dueDates => 'Due Dates';

  @override
  String get monthlyPaymentLabel => 'القسط الشهري المقترح';

  @override
  String get interestRateLabel => 'نسبة الفائدة';

  @override
  String get downPaymentLabel => 'المقدّم';

  @override
  String get downPaymentRequired => 'Down payment required';

  @override
  String get advanceAmountLabel => 'المبلغ المموّل';

  @override
  String get minAdvancePercentLabel => 'أقل نسبة مقدّم من إجمالي الفاتورة (%)';

  @override
  String get minAdvancePercentDesc =>
      'Example: 10 means advance must be at least 10% of total';

  @override
  String get useCalendarMonthsLabel => 'استخدام أشهر تقويمية لتواريخ الاستحقاق';

  @override
  String get useCalendarMonthsDesc =>
      'Active: add calendar month from reference. Disabled: round 30 days per period.';

  @override
  String get referenceDateLabel => 'مرجع الجدولة (بداية العدّ)';

  @override
  String get fromInvoiceDateLabel => 'من تاريخ الفاتورة';

  @override
  String get fromSessionOpenLabel => 'من فتح الجلسة في النظام';

  @override
  String get linkCustomerLabel => 'ربط العميل';

  @override
  String get selectRegisteredCustomer => 'Select a registered customer';

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
  String get paidAmountLabel => 'Paid Amount';

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
    return 'Full installment amount must be paid';
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
  String get dueDayLabel => 'Due day';

  @override
  String get dueDayDesc => 'Seller selects from calendar (agreement)';

  @override
  String get installmentSettingsSavedLabel => 'تم حفظ إعدادات التقسيط';

  @override
  String get requiredInstallmentsLabel => 'عدد الأقساط يجب أن يكون 1 على الأقل';

  @override
  String get validAmountLabel => 'قيمة غير صالحة';

  @override
  String get debtCollectionLabel => 'Debt Collection';

  @override
  String get supplierPaymentLabel => 'Supplier Payment';

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
  String get updateAction => 'Update';

  @override
  String get saveAction => 'Save';

  @override
  String get printAction => 'Print';

  @override
  String get retryAction => 'Retry';

  @override
  String get reloadFromDb => 'Reload from database';

  @override
  String get amountLabel => 'Amount';

  @override
  String get employeeLabel => 'Employee';

  @override
  String get paidLabel => 'Paid';

  @override
  String get remainingLabel => 'Remaining';

  @override
  String get salesTitle => 'Sales';

  @override
  String get installmentSettingsTitle => 'Installment Settings';

  @override
  String get createPlan => 'Create Plan';

  @override
  String get accuracyNotes => 'Accuracy Notes';

  @override
  String get addEntry => 'Add Entry';

  @override
  String get advanceAndTerms => 'Advance and Terms';

  @override
  String get advanceFirstPayment => 'Advance / First Payment';

  @override
  String get advancePayment => 'Advance Payment';

  @override
  String get advancePercentExample =>
      'Example: 10 means the advance must be at least 10% of the total.';

  @override
  String get advancePercentRange =>
      'Advance percentage must be between 0 and 100';

  @override
  String get affectedCashBox => 'Affected Cash Box';

  @override
  String get amountAddedAtOpen => 'Amount Added at Opening';

  @override
  String get amountIQD => 'Amount (FDJ)';

  @override
  String get analysisAndMargin => 'Analysis & Margin';

  @override
  String get analytics => 'Analytics';

  @override
  String get apply => 'Apply';

  @override
  String get approxNet => 'Approx. Net (Sale − Return)';

  @override
  String get attachInvoiceImageOptional => 'Attach Invoice Image (Optional)';

  @override
  String get balance => 'Balance';

  @override
  String get beneficiary => 'Beneficiary';

  @override
  String get bottom10ProfitProducts =>
      'Bottom 10 Products by Profit (Pricing Review)';

  @override
  String get calendarMonthsExplanation =>
      'ON: adds calendar month from reference. OFF: rounds 30 days per period.';

  @override
  String get cannotRescheduleAfterPayment =>
      'Cannot reschedule after a payment has been made on this plan.';

  @override
  String get cashBox => 'Cash Box';

  @override
  String get cashSale => 'Sale';

  @override
  String get category => 'Category';

  @override
  String get categoryRequired => 'Category *';

  @override
  String get change => 'Change';

  @override
  String get changeOrRemoveAnytime =>
      'You can change or remove it at any time.';

  @override
  String get choose => 'Choose';

  @override
  String get chooseOtherCategory => 'Choose Other Category';

  @override
  String get clearSearchOrChangeTab =>
      'Clear search (×) or switch to the All tab.';

  @override
  String get closeForm => 'Close Form?';

  @override
  String get closeFormConfirm => 'Close the form? Data will not be saved.';

  @override
  String get cogs => 'Cost of Goods Sold (COGS)';

  @override
  String get controlAdvanceRequirements =>
      'Control mandatory advance and minimum percentage.';

  @override
  String get copySectionName => 'Copy Section Name';

  @override
  String get cost => 'Cost';

  @override
  String get countByEntryType => 'Count by Entry Type';

  @override
  String get customer => 'Customer';

  @override
  String get customerBalanceList => 'Customer List (Balance Due to Shop)';

  @override
  String get daily => 'Daily';

  @override
  String get dailySalesInRange => 'Daily Sales in Period';

  @override
  String get dashboardTitle => 'Dashboard';

  @override
  String get dateRange => 'Date Range';

  @override
  String get dayCount => 'Number of Days (1–365)';

  @override
  String get debtorCustomerCount => 'Number of Debtor Customers';

  @override
  String get debts => 'Debts';

  @override
  String get declaredCashAfterWithdrawal =>
      'Declared Cash in Box After Withdrawal';

  @override
  String get declaredCashAtOpen => 'Declared Cash at Opening (Inventory)';

  @override
  String get defaultInstallmentCountRange =>
      'Default installment count between 1 and 120';

  @override
  String get defaultInstallmentInterestRate =>
      'Default interest rate for installment sales (%)';

  @override
  String get defaultInterestRange => 'Default interest rate between 0 and 100';

  @override
  String get defaultPeriodAndPreferences => 'Default Period & Preferences';

  @override
  String get defaultRemainingInstallments =>
      'Default remaining installments (when creating a plan)';

  @override
  String get defaultReportPeriod => 'Default period when opening reports';

  @override
  String get deleteExpenseConfirm =>
      'Delete this expense? This cannot be undone.';

  @override
  String get descriptionOptional => 'Description (Optional)';

  @override
  String get dueDay => 'Due Day';

  @override
  String get employeeBeneficiary => 'Employee (Beneficiary)';

  @override
  String get employeeRecorder => 'Employee / Recorder';

  @override
  String get employees => 'Employees';

  @override
  String get enterAmountGreaterThanZero => 'Enter an amount greater than zero';

  @override
  String get enterInstallmentCount => 'Enter number of installments';

  @override
  String get enterMovementDescription => 'Enter a description for the movement';

  @override
  String get entry => 'Entry';

  @override
  String get everyMonth => 'Every month';

  @override
  String get exit => 'Exit';

  @override
  String get expenseCount => 'Expense Count';

  @override
  String get expenseReason => 'Expense Reason (printed on receipt)';

  @override
  String get expenseReportInvoice => 'Expense Report Invoice';

  @override
  String get expenses => 'Expenses';

  @override
  String get exportExcel => 'Export (Copy Excel)';

  @override
  String get failedToLoadInstallmentPlan => 'Failed to load installment plan.';

  @override
  String get firstDueReferenceDate =>
      'First due date reference (when opening plan screen)';

  @override
  String get fullTransparency =>
      'Full transparency — these are the adopted rules';

  @override
  String get futureFeatures =>
      'Coming soon: PDF/Excel export, report scheduling, and role-based access.';

  @override
  String get grossMargin => 'Gross Margin';

  @override
  String get history => 'History';

  @override
  String get howMarginCalculated => 'How is the margin calculated?';

  @override
  String get imageSelectionFailed => 'Image selection failed.';

  @override
  String get inbound => 'Inbound';

  @override
  String get inboundEntry => 'Inbound (Entry)';

  @override
  String get inboundLineByLine => 'Inbound — Line by Line';

  @override
  String get inboundOutboundSummary => 'Inbound & Outbound Summary (This List)';

  @override
  String get inboundTotal => 'Inbound';

  @override
  String get indicatorsAndPeriod => 'Indicators & Period';

  @override
  String get installmentPeriodMethod =>
      'Installment period, month calculation method, and first due date reference.';

  @override
  String get installmentPeriodRange =>
      'Period between installments: 1 to 24 months';

  @override
  String get installmentPlanDetails => 'Installment Plan Details';

  @override
  String get installmentPlansInPeriod =>
      'Installment Plans (Invoices in Period)';

  @override
  String get installmentScheduleSaved => 'Installment schedule saved';

  @override
  String get interestInfoAtSale => 'Interest Info (At Sale)';

  @override
  String get invalidValue => 'Invalid value';

  @override
  String get inventoryAndCashbox => 'Inventory & Cashbox (System Record)';

  @override
  String get inventoryWithdrawn => 'Goods Withdrawn from Inventory';

  @override
  String get invoiceCount => 'Invoice Count';

  @override
  String get invoiceImageAttached => 'Invoice image attached';

  @override
  String get invoiceSummary => 'Invoice Summary';

  @override
  String get invoicesAndSales => 'Invoices & Sales (Linked Entries)';

  @override
  String get invoicesInMovements => 'Invoices in These Movements';

  @override
  String get invoicesReturns => 'Invoices / Returns';

  @override
  String get isExpensePrepaid => 'Is the expense prepaid?';

  @override
  String get item => 'الصنف';

  @override
  String get itemLabel => 'Item';

  @override
  String get itemsSoldWithStock =>
      'Items sold from invoice with current stock balance.';

  @override
  String get kpiPieDescription =>
      'Unified pie for key financial indicators — sales/returns/net';

  @override
  String get loadingInvoiceItems => 'Loading invoice items…';

  @override
  String get loyaltyInRange => 'Loyalty (In Period)';

  @override
  String get mainPerformanceIndicators =>
      'Main Performance Indicators (Gauges)';

  @override
  String get manualDepositReceipt =>
      'Manual Deposit Receipt (Total Deposit Entries)';

  @override
  String get manualDepositWithdrawalGroup =>
      'Manual Deposit & Withdrawal (This Group)';

  @override
  String get manualDepositWithdrawalInShift =>
      'Manual Deposit & Withdrawal in Shift';

  @override
  String get manualWithdrawalReceipt =>
      'Manual Withdrawal Receipt (Total Withdrawal Entries)';

  @override
  String get margin => 'Margin';

  @override
  String get marginDataQuality => 'Margin Data Quality (Coverage)';

  @override
  String get marginPercent => 'Margin %';

  @override
  String get minOneInstallment => 'Installment count must be at least 1';

  @override
  String get minimumAdvancePercent => 'Minimum advance % of total invoice';

  @override
  String get miscExpenses => 'Miscellaneous Expenses';

  @override
  String get monthlyRecurringExpense => 'Monthly Recurring Expense';

  @override
  String get monthlyRepeat => 'Monthly Repeat';

  @override
  String get more => 'More';

  @override
  String get movementsWithoutShift => 'Movement Details (Without Shift)';

  @override
  String get netProfit => 'Net Profit (Margin − Expenses)';

  @override
  String get noComment => 'No comment — recommend adding an expense reason.';

  @override
  String get noDailyDataInPeriod => 'No daily data in this period';

  @override
  String get noDataAvailable => 'No data available';

  @override
  String get noExpensesInPeriod => 'No expenses in this period';

  @override
  String get noInboundMovements => 'No inbound movements in this group.';

  @override
  String get noInvoiceLinkedMovements =>
      'No invoice-linked movements in this group.';

  @override
  String get noItemsInPeriod => 'No items in this period.';

  @override
  String get noLinkUseInvoiceName => 'No link — use name from invoice';

  @override
  String get noMovementsInGroup => 'No movements in this group.';

  @override
  String get noOutboundMovements => 'No outbound movements in this group.';

  @override
  String get noPlansInCurrentFilter =>
      'No plans match the current search or filter';

  @override
  String get noSalesInPeriod => 'No sales in this period';

  @override
  String get okay => 'OK';

  @override
  String get open => 'Open';

  @override
  String get openSection => 'Open Section';

  @override
  String get option => 'Option';

  @override
  String get optional => '(Optional)';

  @override
  String get others => 'Others';

  @override
  String get outbound => 'Outbound';

  @override
  String get outboundExit => 'Outbound (Exit)';

  @override
  String get outboundLineByLine => 'Outbound — Line by Line';

  @override
  String get outboundTotal => 'Outbound';

  @override
  String get overdueInstallmentWarning => 'Warning: Overdue installment';

  @override
  String get ownerOrProperty => 'Owner or Property';

  @override
  String get paidCappedAtTotal =>
      '\'Paid\' is capped at total plan amount if they conflict.';

  @override
  String get paidRemaining => 'Paid / Remaining';

  @override
  String get payInstallment => 'Pay Installment';

  @override
  String get paymentProgress => 'Payment Progress';

  @override
  String get paymentType => 'Payment Type';

  @override
  String get paymentTypeRatio => 'Ratio of each payment type to sales';

  @override
  String get paymentTypesAndReturns => 'Payment Types & Returns';

  @override
  String get paymentTypesTrendOverTime => 'Payment Types Trend Over Time';

  @override
  String get pendingLabel => 'Pending';

  @override
  String get percentage => 'Percentage';

  @override
  String get periodBetweenDueDates => 'Period between due dates (in months)';

  @override
  String get periodExplanation => '1 = monthly, 2 = every 2 months, etc.';

  @override
  String get periodNetSales => 'Period Net Sales';

  @override
  String get periodPlans => 'Period Plans';

  @override
  String get periodRevenue => 'Period Revenue';

  @override
  String get plan => 'Plan';

  @override
  String get planAutoCreatedAfterSave =>
      'After saving an installment invoice, the plan is created automatically and appears here.';

  @override
  String get preferRegisteredCustomer =>
      'Prefer selecting a registered customer for easier tracking and reports.';

  @override
  String get printPeriodReport => 'Print Period Report';

  @override
  String get productsAndEstimatedMargin => 'Products & Estimated Margin';

  @override
  String get propertyOrEntity => 'Property / Entity Name';

  @override
  String get recordingPerformance => 'Recording Performance';

  @override
  String get recurring => 'Recurring';

  @override
  String get registeredCustomer => 'Registered Customer';

  @override
  String get remainingInstallmentsCount => 'Remaining Installments Count';

  @override
  String get reportSections => 'Report Sections';

  @override
  String get requireAdvanceForInstallment =>
      'Require advance for installment invoices';

  @override
  String get returnCount => 'Return Count';

  @override
  String get returnItem => 'Return';

  @override
  String get returns => 'Returns';

  @override
  String get revenueComposition => 'Revenue Composition: Cost + Margin';

  @override
  String get revenueTrend => 'Revenue Trend: Cost + Margin + Expenses Daily';

  @override
  String get salaries => 'Salaries';

  @override
  String get sale => 'Sale';

  @override
  String get saleScreenInstallmentCard => 'Sale Screen & Installment Card';

  @override
  String get sales => 'Sales';

  @override
  String get salesNotMixedWithReceipts =>
      'So sales are not mixed with receipts';

  @override
  String get salesVsExpensesDailyTrend => 'Sales vs Expenses — Daily Trend';

  @override
  String get saveAndApply => 'Save & Apply';

  @override
  String get saveScheduleChanges => 'Save Schedule Changes';

  @override
  String get saving => 'Saving...';

  @override
  String get scheduleReference => 'Schedule Reference (Start Counting)';

  @override
  String get schedulingAndDueDates => 'Scheduling & Due Dates';

  @override
  String get searchByNameOrPhone => 'Search by name, username, or phone';

  @override
  String get searchByNameOrPhoneOrNumber => 'Search by name, phone, or number…';

  @override
  String get searchDescriptionOrCategory => 'Search (description or category)';

  @override
  String get searchPlaceholder =>
      'Search: customer, product, plan number, invoice number…';

  @override
  String get sectionOptions => 'Section Options';

  @override
  String get selectCategoryAndAmount =>
      'Please select a category and enter a valid amount.';

  @override
  String get selectEmployeeTitle => 'Select Employee';

  @override
  String get selectExpenseCategory => 'Choose Expense Category';

  @override
  String get selectPeriodForReport => 'Select the time period for the report:';

  @override
  String get selectedPeriod => 'Selected Period:';

  @override
  String get sellerChosenFromCalendar =>
      'Chosen by seller from calendar (agreement)';

  @override
  String get serviceInvoiceNumber => 'Service Invoice Number';

  @override
  String get sessionOpenedBy => 'Session opened by';

  @override
  String get setupInstallmentSchedule => 'Setup Installment Schedule';

  @override
  String get showCalculatorCard =>
      'Show calculator card and default installment values.';

  @override
  String get showInstallmentCardInSale =>
      'Show \'Installment Plan\' card in sale screen';

  @override
  String get stay => 'Stay';

  @override
  String get systemBalanceAtClose => 'System Balance at Closing';

  @override
  String get systemBalanceAtOpen => 'System Balance at Opening';

  @override
  String get tableCopiedToClipboard =>
      'Table copied to clipboard (paste in Excel).';

  @override
  String get tapForFullDetails => 'Tap for full details and schedule';

  @override
  String get taxType => 'Tax Type';

  @override
  String get taxTypeExample => 'e.g. Income tax, VAT';

  @override
  String get taxes => 'Taxes';

  @override
  String get thankYouForUsing => 'Thank you for using Maarey';

  @override
  String get today => 'Today';

  @override
  String get todayExpenses => 'Today\'s Expenses';

  @override
  String get top10ProfitProducts => 'Top 10 Products by Profit';

  @override
  String get topBuyers => 'Top Buyers';

  @override
  String get topCustomersBySpending => 'Top Customers by Spending';

  @override
  String get topItemsByRevenue => 'Top Items by Revenue';

  @override
  String get totalExpensesInPeriod => 'Total Expenses in Period';

  @override
  String get totalPlanValue => 'Total Plan Value';

  @override
  String get totalRecordedDebts => 'Total Recorded Debts';

  @override
  String get transactionCount => 'Transaction Count';

  @override
  String get tryChangingDateRange => 'Try changing the date range or filter';

  @override
  String get unlinked => 'Unlinked';

  @override
  String get usefulForUtilityBills => 'Useful for water/electricity/tax bills.';

  @override
  String get viewSectionDescription => 'View Section Description';

  @override
  String get warning => 'Warning';

  @override
  String get withdrawnAtClose => 'Withdrawn at Closing';

  @override
  String get withoutName => 'Without Name';

  @override
  String get yesDeduction => 'Yes (Deduction)';

  @override
  String get deleteExpenseLabel => 'Delete Expense?';

  @override
  String get planNotFound => 'Plan not found';

  @override
  String get weekLabel => 'This Week';

  @override
  String get monthLabel => 'This Month';

  @override
  String get yearLabel => 'This Year';

  @override
  String get allCategoriesLabel => 'All Categories';

  @override
  String get noSearchResults => 'No search results';

  @override
  String get clearSearchLabel => 'Clear Search';

  @override
  String get selectInvoiceCategory => 'Select invoice category';

  @override
  String get cashBoxLabel => 'Cash Box';

  @override
  String get manualEntryLabel => 'Manual Entry';

  @override
  String get depositLabel => 'Deposit';

  @override
  String get withdrawalLabel => 'Withdrawal';

  @override
  String get currentBalanceLabel => 'Current Balance';

  @override
  String get unpaidLabel => 'Unpaid';

  @override
  String get recurringLabel => 'Recurring';

  @override
  String get installmentPaymentLabel => 'Installment Payment';

  @override
  String get customerLabel2 => 'Customer';

  @override
  String get percentageLabel => 'Percentage';

  @override
  String get revenueLabel => 'Revenue';

  @override
  String get salesLabel => 'Sales';

  @override
  String get othersLabel => 'Others';

  @override
  String get withoutNameLabel => 'Without Name';

  @override
  String get paidLabel2 => 'Paid';

  @override
  String get pendingLabel2 => 'Pending';

  @override
  String get openLabel => 'Open';

  @override
  String get costLabel => 'Cost';

  @override
  String get marginLabel => 'Margin';

  @override
  String get itemLabel2 => 'Item';

  @override
  String get productLabel => 'Product';

  @override
  String get planLabel => 'Plan';

  @override
  String get returnCountLabel => 'Return Count';

  @override
  String get optionLabel => 'Option';

  @override
  String get inboundLabel => 'Inbound';

  @override
  String get outboundLabel => 'Outbound';

  @override
  String get cashboxLabel => 'Cash Box';

  @override
  String get dailyLabel => 'Daily';

  @override
  String get weeklyLabel => 'Weekly';

  @override
  String get monthlyLabel => 'Monthly';

  @override
  String get yearlyLabel => 'Yearly';

  @override
  String get customLabel => 'Custom';

  @override
  String get pageLabel => 'Page';

  @override
  String get createdLabel => 'Created';

  @override
  String get totalAmountLabel => 'Total Amount';

  @override
  String get overdueLabel => 'Overdue';

  @override
  String get invoiceLabel => 'Invoice';

  @override
  String get scheduleLabel => 'Schedule';

  @override
  String get cancelLabel2 => 'Cancel';

  @override
  String get confirmLabel => 'Confirm';

  @override
  String get addLabel => 'Add';

  @override
  String get editLabel => 'Edit';

  @override
  String get deleteLabel => 'Delete';

  @override
  String get filterLabel => 'Filter';

  @override
  String get exportLabel => 'Export';

  @override
  String get printLabel => 'Print';

  @override
  String get yesLabel => 'Yes';

  @override
  String get noLabel => 'No';

  @override
  String get priceLabel => 'Price';

  @override
  String get noPriceLabel => 'No price';

  @override
  String get okLabel => 'OK';

  @override
  String get backLabel => 'Back';

  @override
  String get nextLabel => 'Next';

  @override
  String get doneLabel => 'Done';

  @override
  String get closeLabel => 'Close';

  @override
  String get openLabel2 => 'Open';

  @override
  String get loadingLabel => 'Loading...';

  @override
  String get errorLabel => 'Error';

  @override
  String get warningLabel => 'Warning';

  @override
  String get successLabel => 'Success';

  @override
  String get infoLabel => 'Info';

  @override
  String whFailedToLoad(Object error) {
    return 'Failed to load warehouses: $error';
  }

  @override
  String get whEditsSavedSuccess => 'Changes saved successfully';

  @override
  String get whCreatedSuccess => 'Warehouse created successfully';

  @override
  String whCodeLabel(Object code) {
    return 'Code: $code';
  }

  @override
  String get whDeleteTitle => 'Delete warehouse';

  @override
  String whDeleteConfirm(Object name) {
    return 'Are you sure you want to delete warehouse «$name»?';
  }

  @override
  String get whDeleteAction => 'Delete';

  @override
  String whDeleteFailed(Object error) {
    return 'Failed to delete warehouse (may be linked to movements): $error';
  }

  @override
  String get whDeactivateTitle => 'Deactivate warehouse';

  @override
  String get whDeactivateContent =>
      'This warehouse won\'t be used in sales and purchase operations until reactivated.';

  @override
  String get whActivate => 'Activate';

  @override
  String get whDeactivateAction => 'Deactivate';

  @override
  String whStatusUpdateFailed(Object error) {
    return 'Failed to update status: $error';
  }

  @override
  String get whScreenTitle => 'Warehouses';

  @override
  String get whNewWarehouse => 'New warehouse';

  @override
  String get whTotalValue => 'Total value';

  @override
  String get whTotalItems => 'Total items';

  @override
  String get whSearchHint => 'Search by name or code...';

  @override
  String get whClearSearch => 'Clear';

  @override
  String get whNoWarehousesYet => 'No warehouses yet';

  @override
  String get whCreateFirst => 'Create first warehouse';

  @override
  String get whDefaultChip => 'Default';

  @override
  String get whActiveChip => 'Active';

  @override
  String get whInactiveChip => 'Inactive';

  @override
  String get whItemsCount => 'Items count';

  @override
  String get whEditAction => 'Edit';

  @override
  String get whViewStock => 'View stock';

  @override
  String get whNameDuplicateError =>
      'A warehouse with this name already exists';

  @override
  String get whCodeDuplicateError => 'Code already in use';

  @override
  String get whSetDefaultTitle => 'Set as default';

  @override
  String get whSetDefaultContent =>
      'The default will be removed from the current warehouse and this warehouse will be set as default.';

  @override
  String get whConfirmAction => 'Confirm';

  @override
  String get whCloseFormTitle => 'Close form';

  @override
  String get whCloseFormContent =>
      'Do you want to close the form? Data will not be saved.';

  @override
  String get whCloseAction => 'Close';

  @override
  String get whSelectBranchError => 'Select a branch';

  @override
  String get whAutoDefaultFirst =>
      'Automatically set as default since it\'s the first warehouse';

  @override
  String whSaveFailed(Object error) {
    return 'Failed to save warehouse: $error';
  }

  @override
  String get whRequiredField => 'Required';

  @override
  String get whScanWarehouseCode => 'Scan warehouse code';

  @override
  String get whEditWarehouse => 'Edit warehouse';

  @override
  String get whWarehouseNameLabel => 'Warehouse name';

  @override
  String get whWarehouseNameHint =>
      'e.g.: Main warehouse, Northern branch warehouse';

  @override
  String get whWarehouseCodeLabel => 'Warehouse code';

  @override
  String get whWarehouseCodeHint => 'e.g.: WH-001';

  @override
  String get whLocationLabel => 'Location';

  @override
  String get whLocationHint => 'Address or location description';

  @override
  String get whBranchLabel => 'Branch';

  @override
  String get whActiveWarehouse => 'Active warehouse';

  @override
  String get whInactiveWarning =>
      'Deactivated warehouse won\'t appear in sales and purchase operations';

  @override
  String get whSaving => 'Saving...';

  @override
  String get whCreating => 'Creating...';

  @override
  String get whSaveEdits => 'Save changes';

  @override
  String get whCreateWarehouse => 'Create warehouse';

  @override
  String get whChooseBranch => 'Choose branch';

  @override
  String get whBranchSearchHint => 'Search by branch name or code...';

  @override
  String whStockTitle(Object name) {
    return 'Stock: $name';
  }

  @override
  String get whNoStockInWarehouse => 'No quantities in this warehouse';

  @override
  String get whStockOut => 'Out of stock';

  @override
  String get whStockLow => 'Low';

  @override
  String get whStockInStock => 'In stock';

  @override
  String get ipAllCategories => 'All categories';

  @override
  String get ipAllBrands => 'All brands';

  @override
  String get ipAllStatus => 'All';

  @override
  String get ipProductManagement => 'Product management';

  @override
  String get ipSettingsTooltip => 'Settings';

  @override
  String get ipMoreTooltip => 'More';

  @override
  String get ipPrintBarcodes => 'Print barcode labels';

  @override
  String get ipProductSavedSnackbar => 'Product saved and list updated';

  @override
  String get ipNewProductBtn => '+ New product';

  @override
  String get ipStatusActive => 'Active';

  @override
  String get ipStatusLowStock => 'Low stock';

  @override
  String get ipStatusOutOfStock => 'Out of stock';

  @override
  String get ipStatusInactive => 'Inactive';

  @override
  String get ipSearchAndMatch => 'Search & match';

  @override
  String get ipCategoryFilter => 'Category';

  @override
  String get ipBrandFilter => 'Brand';

  @override
  String get ipAdvancedSearch => 'Advanced search';

  @override
  String ipClearFilterCount(Object count) {
    return 'Clear filter ($count)';
  }

  @override
  String get ipClearFilter => 'Clear filter';

  @override
  String get ipSearchAction => 'Search';

  @override
  String get ipKeywordSearch => 'Search by keyword';

  @override
  String get ipKeywordHint => 'Enter name, code, or barcode';

  @override
  String get ipBarcodeFilter => 'Barcode';

  @override
  String get ipScanOrType => 'Scan or type';

  @override
  String get ipProductCode => 'Product code';

  @override
  String get ipSalePriceRange => 'Sale price range (FDJ)';

  @override
  String get ipPriceTo => 'To';

  @override
  String get ipPriceFrom => 'From';

  @override
  String get ipStatusFilter => 'Status';

  @override
  String get ipResultsName => 'Name';

  @override
  String get ipResultsPrice => 'Price';

  @override
  String get ipResultsQty => 'Quantity';

  @override
  String get ipResultsAddedDate => 'Date added';

  @override
  String get ipSortLabel => 'Sort';

  @override
  String get ipSortAsc => 'Ascending';

  @override
  String get ipSortDesc => 'Descending';

  @override
  String get ipNoProductsYet => 'No products yet';

  @override
  String get ipNoProductsMatch => 'No products match your search';

  @override
  String get ipAddFirstHint => 'Start by adding your first item to inventory.';

  @override
  String get ipTryChangeSearch =>
      'Try changing your search terms or clearing the filter.';

  @override
  String get ipAddFirstBtn => '+ Add first product';

  @override
  String get ipUnpinFromHome => 'Unpin from Home';

  @override
  String get ipPinToHome => 'Pin to Home';

  @override
  String get ipPrintBarcode => 'Print barcode';

  @override
  String get ipDeactivate => 'Deactivate';

  @override
  String get ipActivate => 'Activate';

  @override
  String get ipDeleteProduct => 'Delete';

  @override
  String get ipNotTracked => 'Not tracked';

  @override
  String get ipDeleteProductTitle => 'Delete product';

  @override
  String get ipDeleteProductContent =>
      'Product will be hidden from lists (soft delete) without breaking linked invoices.';

  @override
  String get ipProductType => 'Product';

  @override
  String get ipTechnicalService => 'Technical service';

  @override
  String ipAvailableQty(Object qty) {
    return 'Available quantity: $qty';
  }

  @override
  String get ipOutOfStock => 'Out';

  @override
  String get ipProductOptions => 'Product options';

  @override
  String ipShowingResults(Object extra, Object matched, Object shown) {
    return 'Showing $shown of $matched products$extra';
  }

  @override
  String ipExtraCatalogInfo(Object total) {
    return ' · Total active: $total';
  }

  @override
  String get addProductTitle => 'Add new product';

  @override
  String get apUnsavedChanges => 'Unsaved changes';

  @override
  String get apUnsavedConfirm =>
      'You haven\'t saved the product. Do you want to save before leaving?';

  @override
  String get apLeaveWithoutSaving => 'Leave without saving';

  @override
  String get apSaveProduct => 'Save product';

  @override
  String get apColorSizeTitle => 'Colors & Sizes';

  @override
  String get apDone => 'Done';

  @override
  String get apLoadFormFailed => 'Failed to load product form data';

  @override
  String apLoadFormFailedDetail(Object error) {
    return 'Couldn\'t load form data. Field will work in manual mode.\\n$error';
  }

  @override
  String apImagePickFailed(Object error) {
    return 'Failed to pick image: $error';
  }

  @override
  String get apPercentDiscountMax => 'Percentage discount cannot exceed 100%.';

  @override
  String get apBarcodeRequired => 'Barcode field is required per settings.';

  @override
  String get apSupplierRequired => 'Supplier field is required per settings.';

  @override
  String get apWarehouseRequired =>
      'Warehouse selection is required per settings.';

  @override
  String get apImageRequired => 'Product image is required per settings.';

  @override
  String get apMfgDateFormatError =>
      'Invalid manufacturing date format. Use day/month/year (e.g. 15/01/2026).';

  @override
  String get apExpDateFormatError =>
      'Invalid expiry date format. Use day/month/year (e.g. 15/01/2026).';

  @override
  String get apExpDateAfterMfg =>
      'Expiry date must be on or after the manufacturing date.';

  @override
  String get apConversionFactorGt0 =>
      'Conversion factor must be greater than 0 for each extra unit.';

  @override
  String get apAddAtLeastOneColor => 'Add at least one color.';

  @override
  String get apColorNameRequired => 'Color name is required.';

  @override
  String get apAddAtLeastOneSize => 'Add at least one size per color.';

  @override
  String get apSizeRequired => 'Size field is required.';

  @override
  String apDuplicateSize(Object color, Object size) {
    return 'Size \"$size\" is duplicated within color \"$color\".';
  }

  @override
  String get apQtyMustBeNonNeg =>
      'Quantity must be a whole number greater than or equal to 0.';

  @override
  String get apDuplicateBarcodeVariants =>
      'Duplicate barcode found in variants.';

  @override
  String get apBarcodeUsedByOther => 'This barcode is used by another product.';

  @override
  String get apVariantBarcodeTaken => 'Variant barcode already in use.';

  @override
  String get apDuplicateSizeInColor =>
      'Size is duplicated within the same color.';

  @override
  String get apQtyMustBeGe0 => 'Quantity must be greater than or equal to 0.';

  @override
  String get apBarcodeAlreadyUsed => 'Barcode already in use.';

  @override
  String apSaveFailed(Object error) {
    return 'Failed to save product: $error';
  }

  @override
  String get apProductSaved => 'Product saved. You can enter a new product.';

  @override
  String get apChooseColorTitle => 'Choose color';

  @override
  String get apChooseColorSubtitle =>
      'Choose a color to represent this option (optional).';

  @override
  String get apApplyUniformQty => 'Apply uniform quantity';

  @override
  String get apEnterQtyHint => 'Enter quantity (0 or more)';

  @override
  String get apSizeLabel => 'Size';

  @override
  String get apChooseSizeTooltip => 'Choose size';

  @override
  String get apQtyLabel => 'Quantity';

  @override
  String get apBarcodeOptional => 'Barcode (optional)';

  @override
  String get apDeleteAction => 'Delete';

  @override
  String get apColorNameLabel => 'Color name';

  @override
  String get apColorPickerTooltip => 'Choose color (HEX)';

  @override
  String get apDeleteColorTooltip => 'Delete color';

  @override
  String get apSizesAndQuantities => 'Sizes & Quantities';

  @override
  String get apNoSizesYet => 'No sizes yet. Add at least one size.';

  @override
  String get apAddSizeBtn => 'Add size';

  @override
  String apColorTotal(Object count) {
    return 'Color total: $count';
  }

  @override
  String get apAddNewColor => 'Add new color';

  @override
  String get apApplyQtyAllSizes => 'Apply uniform quantity to all sizes';

  @override
  String get apNoColorsYet => 'No colors yet. Add a color to start.';

  @override
  String apProductCodeHint(Object code) {
    return 'Product code: $code';
  }

  @override
  String get apCancelTooltip => 'Cancel';

  @override
  String get apSavingLabel => 'Saving...';

  @override
  String get apSaveAndAddNew => 'Save & add new';

  @override
  String get apProductData => 'Product data';

  @override
  String get apProductNameLabel => 'Product name';

  @override
  String get apNameRequired => 'Name is required';

  @override
  String get apDescriptionLabel => 'Description';

  @override
  String get apProductImage => 'Product image';

  @override
  String get apCategoryLabel => 'Category';

  @override
  String get apCategoryHint => 'Type or choose from the list';

  @override
  String get apBrandLabel => 'Brand';

  @override
  String get apBrandHint => 'Type or choose from the list';

  @override
  String get apGradeLabel => 'Grade / Quality';

  @override
  String get apGradeHint => 'Choose grade (optional)';

  @override
  String get apNoCategory => '— No category —';

  @override
  String get apGradeA => 'Grade A — Excellent';

  @override
  String get apGradeB => 'Grade B — Very good';

  @override
  String get apGradeC => 'Grade C — Good';

  @override
  String get apGradeFirst => 'First grade';

  @override
  String get apGradeSecond => 'Second grade';

  @override
  String get apGradeThird => 'Third grade';

  @override
  String get apCommercial => 'Commercial item';

  @override
  String get apEconomical => 'Economical item';

  @override
  String get apWarehouseLabel => 'Warehouse';

  @override
  String get apNoWarehousesInDb => 'No warehouses in database';

  @override
  String get apChooseWarehouse => 'Choose warehouse';

  @override
  String get apNoWarehouseLink => '— No warehouse link —';

  @override
  String get apStockBaseType => 'Base stock type';

  @override
  String get apStockTypePiece => 'Count (piece as base)';

  @override
  String get apStockTypeWeight => 'Weight (kilogram as base)';

  @override
  String get apStockTypeClothing => 'Clothing (colors & sizes)';

  @override
  String get apEditColorsSizes => 'Edit colors & sizes';

  @override
  String get apSupplierInfo => 'Supplier info';

  @override
  String get apSupplierLabel => 'Supplier';

  @override
  String get apSupplierHint => 'Type or choose from records';

  @override
  String get apSupplierCodeOptional => 'Supplier code (optional)';

  @override
  String get apExtraUnitsOptional => 'Additional sale units (optional)';

  @override
  String get apExtraUnitsDesc =>
      'e.g.: Carton, layer, kilogram… each with optional barcode and conversion factor to base stock.';

  @override
  String get apAddUnit => 'Add unit';

  @override
  String get apNoExtraUnits => 'No additional units yet.';

  @override
  String apUnitNumber(Object number) {
    return 'Unit #$number';
  }

  @override
  String get apUnitNameLabel => 'Unit name';

  @override
  String get apSymbolLabel => 'Symbol';

  @override
  String get apConversionFactor => 'Conversion factor to base';

  @override
  String get apBarcodeOptionalLabel => 'Barcode (optional)';

  @override
  String get apBarcodeEan13 => 'Barcode (EAN-13)';

  @override
  String get apBarcodeCode128 => 'Barcode (Code 128)';

  @override
  String get apBarcodeValue => 'Barcode value';

  @override
  String get apCaptureFromCamera => 'Capture from camera';

  @override
  String get apReadFromScanner => 'Read from barcode scanner';

  @override
  String get apScanProductBarcode => 'Scan product barcode';

  @override
  String get apGenerateNewBarcode => 'Generate new numeric barcode';

  @override
  String get apWeightPriceNote =>
      'Calculated per one kilogram (weight-based stock).';

  @override
  String get apPricingSection => 'Pricing';

  @override
  String get apPurchasePriceLabel => 'Purchase price';

  @override
  String get apSuggestedFromCost => 'Suggested from purchase price';

  @override
  String get apSellPriceLabel => 'Sell price';

  @override
  String get apSellBelowBuyWarning =>
      'Warning: sell price is below purchase price (you can continue).';

  @override
  String get apTaxSection => 'Tax';

  @override
  String get apTaxExempt => 'Exempt';

  @override
  String get apCustomTax => 'Custom';

  @override
  String get apTaxExemptFull => 'Tax exempt';

  @override
  String get apTax5 => 'Tax 5%';

  @override
  String get apTax10 => 'Tax 10%';

  @override
  String get apTax15 => 'Tax 15%';

  @override
  String get apCustomRate => 'Custom rate';

  @override
  String get apTaxPercentLabel => 'Tax rate %';

  @override
  String apSellIncludingTax(Object amount) {
    return 'Sell including tax (approx.): $amount';
  }

  @override
  String get apDiscountType => 'Discount type';

  @override
  String get apPercentDiscount => 'Percentage (%)';

  @override
  String get apFixedAmountDiscount => 'Amount (FDJ)';

  @override
  String get apDiscountValue => 'Discount value';

  @override
  String apExampleNumber(Object number) {
    return 'e.g.: $number';
  }

  @override
  String get apMinSellPrice => 'Minimum sell price';

  @override
  String get apOptionalLabel => 'Optional';

  @override
  String get apProfitMargin => 'Profit margin (sell vs purchase price)';

  @override
  String get apInventorySection => 'Inventory management';

  @override
  String get apTrackInventory => 'Track inventory';

  @override
  String get apTrackInventoryOff =>
      'When off, quantities won\'t be recorded for this product';

  @override
  String get apWeightSales =>
      'By kilogram — supports decimals (0.25, 0.5, 1.5…)';

  @override
  String get apWeightThreshold =>
      'By kilogram (e.g.: 1 = alert when below 1 kg)';

  @override
  String get apStockQty => 'Stock quantity';

  @override
  String get apAlertThreshold => 'Alert when below';

  @override
  String apVariantsStockInfo(Object total) {
    return 'Stock managed via colors & sizes. Current total: $total';
  }

  @override
  String get apNetWeightLabel => 'Net weight (grams) — optional';

  @override
  String get apNetWeightHint =>
      'Auto-filled from GS1 barcode or embedded weight';

  @override
  String get apMfgDateLabel => 'Manufacturing date — optional';

  @override
  String get apPickFromCalendar => 'Pick from calendar';

  @override
  String get apDateFormat => 'day/month/year';

  @override
  String get apExpDateLabel => 'Expiry date — optional';

  @override
  String get apExpiryAlertDays => 'Expiry alert days before';

  @override
  String get apExpiryAlertHint =>
      'When expiry date is set: 1–365 (empty = default from settings)';

  @override
  String get apExpiryAlertNote =>
      'Used only with \'expiry date\'; alert appears in notification panel within this period before the date.';

  @override
  String get apInternalNotes => 'Internal notes';

  @override
  String get apInternalNotesHint => 'Not shown to customers — for team only';

  @override
  String get apTags => 'Tags';

  @override
  String get apTagsHint =>
      'Separated by commas or spaces — for search and filtering';

  @override
  String get apChooseFromList => 'Choose from list';

  @override
  String get apImageSelected => 'Image selected (web preview not available)';

  @override
  String get apTapToAddImage => 'Tap to add an image from gallery';

  @override
  String get apManualEditActive =>
      'Manual edit active — sell price won\'t update automatically when cost changes.';

  @override
  String get apRelinkToCost => ' Re-link to purchase cost';

  @override
  String peVariantSummary(Object colors, Object sizes, Object total) {
    return 'Colors: $colors • Sizes: $sizes • Total: $total';
  }

  @override
  String peDuplicateSizeInColor(Object colorName, Object size) {
    return 'Size \"$size\" is duplicated within color \"$colorName\".';
  }

  @override
  String peGrandTotal(Object total) {
    return 'Total: $total';
  }

  @override
  String peUnitFactor(Object factor, Object unitName) {
    return '$unitName — factor $factor';
  }

  @override
  String peColorSizeInventoryHint(Object total) {
    return 'Inventory managed via colors and sizes. Current total: $total';
  }

  @override
  String get aiBaseForInstallments =>
      'Amount after down payment (installment base)';

  @override
  String get aiProductsTab => 'Products';

  @override
  String get aiNoItemsWithBarcode =>
      'No items yet.\nScan the barcode above or add from the main screen search.\nSearch for a product or scan a barcode to add.';

  @override
  String get aiNoItemsWithoutBarcode =>
      'No items yet.\nAdd products from the main screen search.\nSearch for a product or scan a barcode to add.';

  @override
  String aiMaxDiscountHint(Object percent) {
    return 'Maximum allowed: $percent% — calculated from the minimum price per item.';
  }

  @override
  String get aiNumbersResultHint =>
      'Numbers result and first payment if any, before moving to customer data.';

  @override
  String get aiNumbersResultWithDiscountHint =>
      'Numbers result after discount and tax, and first payment if any, before moving to customer data.';

  @override
  String get aiPriceDetails => 'Price Details';

  @override
  String get aiAmountBreakdown => 'Amount Breakdown';

  @override
  String aiLoyaltyDiscountLabel(Object amount) {
    return 'Loyalty discount: -$amount FDJ';
  }

  @override
  String aiSelectPaymentMethod(Object methods) {
    return 'Select $methods, then complete customer data and fields related to the payment type.';
  }

  @override
  String get aiRequiredForDebtInstallment => 'Required for debt/installment';

  @override
  String get aiQRMapHint => 'Printed QR opens maps when scanned';

  @override
  String get aiDeliveryHint =>
      'For delivery: enter customer name and delivery address (both required). Name suggestions appear from the customer database as you type.';

  @override
  String get aiDebtInstallmentHint =>
      'Important: for debt/installment, tap the customer name from the suggestions to link the sale to their card (typing the name manually is not enough if it doesn\'t match exactly one record).';

  @override
  String get aiHideDetails => 'Hide details';

  @override
  String get aiPriceDetailsAndDiscount => 'Price and Discount Details';

  @override
  String aiItemPriceSummary(Object min, Object price) {
    return 'Price $price · Min $min';
  }

  @override
  String aiItemGrossTotal(Object total) {
    return 'Total: $total';
  }

  @override
  String get aiSellPricePerUnit => 'Sell Price (per unit)';

  @override
  String get aiInvoiceLineBeforeDiscount =>
      'Invoice line total before invoice discount';

  @override
  String get aiInvoiceLineDiscountShare =>
      'This line\'s share of the invoice discount';

  @override
  String get aiInvoiceLineAfterDiscount =>
      'Total after invoice discount (for this line)';

  @override
  String get aiPercentDiscountDistribution =>
      'Percentage discount is distributed across lines based on each line\'s contribution to the item total.';

  @override
  String get aiCancel => 'Cancel';

  @override
  String get aiEnterValidQuantity => 'Enter a valid number 1 or above';

  @override
  String aiInstallmentMinDownPaymentError(Object amount, Object percent) {
    return 'Installment sale: the down payment must be at least $percent% of the invoice total (≈$amount). Adjust the down payment field or check \"Installments → Installment Settings\".';
  }

  @override
  String aiDebtCapExceededInvoice(Object cap, Object remaining) {
    return 'Invoice debt limit: the remaining ($remaining) exceeds the cap $cap. Adjust the total, amount received, or \"Debts → Debt Settings\".';
  }

  @override
  String aiDebtCapExceededCustomer(
    Object cap,
    Object existing,
    Object invoice,
  ) {
    return 'Customer debt limit: current remaining total ≈ $existing, invoice adds $invoice (exceeds $cap). Link the customer from the list, reduce the amount, or check debt settings.';
  }

  @override
  String aiInvoiceSaveFailed(Object error) {
    return 'Failed to save invoice — $error. Check the items and total before retrying.';
  }

  @override
  String aiServiceOrderCloseFailed(Object orderId) {
    return 'Failed to close linked service ticket $orderId';
  }

  @override
  String get aiServiceOrderUpdateWarning =>
      'Warning: the invoice was saved but the linked service ticket status could not be updated automatically. Please review it manually.';

  @override
  String aiReturnScreenTitle(Object id) {
    return 'Invoice #$id';
  }

  @override
  String aiOpenReturnScreen(Object total) {
    return 'Open the return screen (products only)?\nOriginal total: $total';
  }

  @override
  String get aiLoadingColorsSizes => 'Loading colors and sizes…';

  @override
  String aiAvailableQuantity(Object qty) {
    return 'Available: $qty';
  }

  @override
  String get aiCurrentlySelected => 'Currently selected';

  @override
  String get aiUnitPiece => 'Piece';

  @override
  String get aiParkedSalesHint =>
      'Saved locally on this device. You can resume the sale later from \"Invoices → Parked Sales\".';

  @override
  String get aiScanToAdd => 'Scan — will be added automatically';

  @override
  String get apTrackStock => 'Tracks quantity and low stock alerts';

  @override
  String get apNoTrackDesc => 'Quantity becomes 0, no stock alerts shown';

  @override
  String get ipStatusDisabled => 'Disabled';

  @override
  String get addFirstProduct => '+ Add first product';

  @override
  String apLoadTemplateFailed(Object error) {
    return 'Failed to load template data. Field will work in manual mode.\n$error';
  }

  @override
  String apVariantSummaryLine(Object colors, Object sizes, Object total) {
    return 'Colors: $colors • Sizes: $sizes • Total: $total';
  }

  @override
  String apMarginHint(Object min, Object percent) {
    return 'Margin $percent% on cost; min price = $min';
  }

  @override
  String apMarginPctValue(Object value) {
    return '$value%';
  }

  @override
  String get apTrackDisabledHint =>
      'When disabled, quantities are not tracked for this product';

  @override
  String apOptionalHintIQD(Object amount) {
    return 'Optional — $amount';
  }

  @override
  String apMinSellPriceHintIQD(Object amount) {
    return 'Min sell price — $amount';
  }

  @override
  String get csStatusIndebted => 'Indebted';

  @override
  String get csStatusCreditor => 'Creditor';

  @override
  String get csStatusDistinguished => 'Distinguished';

  @override
  String get csClearFilter => 'Clear filter';

  @override
  String get csIndebtedPlural => 'Indebted';

  @override
  String get csCreditorPlural => 'Creditors';

  @override
  String get csDistinguishedPlural => 'Distinguished';

  @override
  String get csNoDues => 'No dues';

  @override
  String get csDebtPrefix => 'Debt';

  @override
  String get csCreditPrefix => 'Credit';

  @override
  String get csDeleteCustomer => 'Delete customer';

  @override
  String csDeleteCustomerConfirm(Object name) {
    return 'Delete \"$name\"?';
  }

  @override
  String csDeleteFailed(Object error) {
    return 'Delete failed: $error';
  }

  @override
  String get csDeleteSelectedCustomers => 'Delete selected customers';

  @override
  String csDeleteSelectedConfirm(Object count) {
    return '$count customer(s) will be deleted. Are you sure?';
  }

  @override
  String get csAlertsTooltip =>
      'Alerts: overdue, credit invoices, stock & installments';

  @override
  String get csRefreshFromCloud => 'Refresh list from cloud & sync — F5';

  @override
  String get csLastUpdatedNow => 'Last update: just now — F5';

  @override
  String csLastUpdatedMinutesAgo(Object minutes) {
    return 'Last update: $minutes min ago — F5';
  }

  @override
  String csLastUpdatedHoursAgo(Object hours) {
    return 'Last update: $hours hr ago — F5';
  }

  @override
  String csTotalShowing(Object shown, Object total) {
    return 'Total: $total · shown: $shown';
  }

  @override
  String csTotalCustomersShowing(Object shown, Object total) {
    return 'Total customers: $total | shown: $shown';
  }

  @override
  String csSelectedCount(Object selected, Object total) {
    return 'Selected: $selected / $total';
  }

  @override
  String csSelectedCountPage(Object selected, Object total) {
    return 'Selected: $selected — shown on page: $total';
  }

  @override
  String get csDeleteSelectedTooltip => 'Delete selected';

  @override
  String get csDeleteSelectedLabel => 'Delete selected';

  @override
  String get csAddCustomer => 'Add customer';

  @override
  String get csSearchFilter => 'Search & filter';

  @override
  String get csSearchDescription =>
      'Search by name, phone or email. Credit sales and installment plans link to the customer from the sale screen.';

  @override
  String get csSearchInputHint => 'Search by name, phone or email…';

  @override
  String get csSearchApplyHint =>
      'Applied automatically within a fraction of a second — Enter or Apply button for clarity. Shortcut: Ctrl+F';

  @override
  String get csSortLabel => 'Sort';

  @override
  String get csSortNameAZ => 'Name (A–Z)';

  @override
  String get csSortNameZA => 'Name (Z–A)';

  @override
  String get csSortMostPurchased => 'Most purchased';

  @override
  String get csSortLargestDebts => 'Largest debts';

  @override
  String get csSortNewest => 'Newest';

  @override
  String get csSearch => 'Search';

  @override
  String get csClearTooltip => 'Clear';

  @override
  String get csApplySearchLabel => 'Apply search';

  @override
  String get csNoCustomersYet => 'No customers yet';

  @override
  String get csNoMatchingCustomers => 'No customers match the search or filter';

  @override
  String get csColName => 'Customer';

  @override
  String get csColPhone => 'Phone';

  @override
  String get csColTotalPurchases => 'Total purchases';

  @override
  String get csColDueBalance => 'Due balance';

  @override
  String get csColStatus => 'Status';

  @override
  String csDebtsLabel(Object count) {
    return 'Debts ×$count';
  }

  @override
  String get csOpenDebtsTooltip => 'Open linked credit debts';

  @override
  String csInstallmentsLabel(Object count) {
    return 'Installments ×$count';
  }

  @override
  String get csOpenInstallmentsTooltip => 'Open installment plans';

  @override
  String get csCallLabel => 'Call';

  @override
  String csCallTooltip(Object phone) {
    return 'Call $phone';
  }

  @override
  String csCustomerInfo(Object date, Object id, Object loyalty) {
    return '$id · loyalty $loyalty · $date';
  }

  @override
  String get csMoreTooltip => 'More';

  @override
  String get csEditData => 'Edit data';

  @override
  String get csCall => 'Call';

  @override
  String get csSortTooltip => 'Search';

  @override
  String get cfLoadFailedAfterAdd =>
      'Failed to load customer data after adding';

  @override
  String get cfLoadFailed => 'Failed to load customer data';

  @override
  String get cfTitleEdit => 'Edit customer data';

  @override
  String get cfFillBasic =>
      'Fill in the basic data. Optional fields can be left empty.';

  @override
  String get cfNameHint => 'Full name as shown on invoices';

  @override
  String get cfPhoneHint => 'Phone number (optional)';

  @override
  String get cfPhone2Hint => 'Additional phone number';

  @override
  String get cfPhonePrimaryExample =>
      'Example: 07701234567 — must not duplicate another customer (distinguishes similar names)';

  @override
  String get cfPhone2Example => 'Example: 07801234567';

  @override
  String get cfDeleteNumber => 'Delete number';

  @override
  String get cfAddAnotherNumber => 'Add another number';

  @override
  String get cfAddressHint => 'Address (optional)';

  @override
  String get cfAddressExample => 'City, district';

  @override
  String get cfEmailHint => 'Email (optional)';

  @override
  String get cfNotesHint => 'Notes (optional)';

  @override
  String get cfNotesDescription => 'Customer preferences, internal notes…';

  @override
  String cfSaveFailed(Object error) {
    return 'Save failed: $error';
  }

  @override
  String cfRegisteredSince(Object date) {
    return 'Registered since $date';
  }

  @override
  String get ctDeleteContact => 'Delete contact';

  @override
  String get ctIndebted => 'Indebted';

  @override
  String get ctCreditor => 'Creditor';

  @override
  String get ctTitle => 'Customer contacts';

  @override
  String get ctRefresh => 'Refresh';

  @override
  String get ctNewCustomer => 'New customer';

  @override
  String get ctSort => 'Sort';

  @override
  String get ctSortNameAZ => 'Name (A–Z)';

  @override
  String get ctSortBalanceSize => 'Balance size';

  @override
  String get ctSearchHint => 'Search by name, phone or email';

  @override
  String get ctSearchExample => 'Example: Mohammed, 077…, name@…';

  @override
  String get ctIdSearchLabel => 'ID / Code number';

  @override
  String get ctIdSearchExample => 'Example: 12 or 000012';

  @override
  String get ctApplySearch => 'Apply search';

  @override
  String get ctClearFilter => 'Clear filter';

  @override
  String get ctDebtOverdueLabel => 'Overdue or credit';

  @override
  String get ctDebtOverdueDescription =>
      'Unreturned credit sales invoices, or debit balance on account — to contact regarding debt.';

  @override
  String get ctInstallmentsLabel => 'Installments';

  @override
  String get ctInstallmentsDescription =>
      'Has a registered installment plan — to contact regarding installments.';

  @override
  String get ctNoContactsYet => 'No contacts yet';

  @override
  String get ctNoResults =>
      'No matching results. Change the search or add a customer.';

  @override
  String get ctColBalance => 'Balance';

  @override
  String get ctColCustomer => 'Customer';

  @override
  String get ctColStatus => 'Status';

  @override
  String get ctColBalanceHeader => 'Balance';

  @override
  String get ctColEmail => 'Email';

  @override
  String get ctColPhone => 'Phone';

  @override
  String get ctColCustomerHeader => 'Customer';

  @override
  String get ctEditData => 'Edit data';

  @override
  String ctDeleteConfirm(Object name) {
    return 'Delete \"$name\" from the system?';
  }

  @override
  String ctDeleteFailed(Object error) {
    return 'Delete failed: $error';
  }

  @override
  String ctShowing(Object count) {
    return 'Showing: $count';
  }

  @override
  String ctCreditSaleLabel(Object count) {
    return 'Credit sales ×$count';
  }

  @override
  String ctInstallmentLabel(Object count) {
    return 'Installments ×$count';
  }

  @override
  String get lsSaveSuccess => 'Loyalty settings saved';

  @override
  String lsSaveFailed(Object error) {
    return 'Failed to save: $error';
  }

  @override
  String get lsTitle => 'Customer loyalty settings';

  @override
  String get lsSave => 'Save';

  @override
  String get lsWhyNotSpoilTitle => 'Why doesn\'t it \"spoil\" profits?';

  @override
  String get lsWhyNotSpoilBody =>
      'Points are a marketing grant: recorded as a loyalty discount separate from the goods margin. Granting points doesn\'t change the purchase cost; redemption reduces what the customer pays in cash according to your rules.';

  @override
  String get lsEnablePoints => 'Enable points program';

  @override
  String get lsEnablePointsSubtitle =>
      'When disabled, invoices are saved without collecting or redeeming';

  @override
  String get lsPointsPerThousand =>
      'Points per 1,000 FDJ of qualifying invoice net';

  @override
  String get lsRedemptionValue =>
      'Discount value in francs per point on redemption';

  @override
  String get lsMinRedemption =>
      'Minimum points for a single redemption (0 = no limit)';

  @override
  String get lsMaxRedemptionPercent => 'Max % of invoice net covered by points';

  @override
  String get lsAwardWhenTitle => 'When are points awarded?';

  @override
  String get lsAwardCashSale => 'Cash sale';

  @override
  String get lsAwardDelivery => 'Delivery';

  @override
  String get lsAwardInstallment => 'Installment';

  @override
  String get lsAwardCreditWithAdvance => 'Credit sale with advance payment';

  @override
  String llLoadFailed(Object error) {
    return 'Failed to load: $error';
  }

  @override
  String get llGranted => 'Granted';

  @override
  String get llRedeemed => 'Redeemed';

  @override
  String get llTitle => 'Loyalty points ledger';

  @override
  String get llRefresh => 'Refresh';

  @override
  String get llNoData =>
      'No transactions yet — enable loyalty in settings and record sales linked to customers.';

  @override
  String llCustomerId(Object id) {
    return 'Customer #$id';
  }

  @override
  String llBalance(Object balance) {
    return 'Balance $balance';
  }

  @override
  String get svAddReceipt => 'Warehouse receipt';

  @override
  String get svDispenseReceipt => 'Warehouse dispensing';

  @override
  String get svTransferBetween => 'Transfer between warehouses';

  @override
  String get svStocktaking => 'Warehouse stocktaking';

  @override
  String get svSource => 'Supplier';

  @override
  String get svBranchShop => 'Branch / other shop';

  @override
  String get svMobileSupplier => 'Mobile supplier';

  @override
  String get svManual => 'Manual';

  @override
  String get svMainSupplier => 'Main supplier';

  @override
  String get svSupplier1 => 'Supplier 1';

  @override
  String get svSupplier2 => 'Supplier 2';

  @override
  String get svNoActiveWarehouse => 'No active warehouse — add one first';

  @override
  String get svStocktakingDisabled =>
      'Saving \"stocktaking\" is not yet enabled';

  @override
  String get svUnnamedItem => 'Unnamed item';

  @override
  String get svEnterMatchingItems =>
      'Enter items with quantities and names matching registered products';

  @override
  String get svWarning => 'Warning';

  @override
  String get svCancel => 'Cancel';

  @override
  String get svContinue => 'Continue';

  @override
  String get svPleaseFillSourceName =>
      'Please fill in the incoming voucher source name';

  @override
  String get svVoucherDocument => 'Stock voucher';

  @override
  String get svSaving => 'Saving…';

  @override
  String get svConfirm => 'Confirm';

  @override
  String get svWarehouse => 'Warehouse';

  @override
  String get svNoActiveWarehouseAdd =>
      'No active warehouse. Add one from \"Warehouses\".';

  @override
  String get svReceivingWarehouse => 'Receiving warehouse';

  @override
  String get svFromWarehouse => 'From warehouse';

  @override
  String get svWarehouses => 'Warehouses';

  @override
  String get svToWarehouse => 'To warehouse';

  @override
  String get svChoose => 'Choose';

  @override
  String get svVoucherData => 'Voucher data';

  @override
  String get svVoucherType => 'Voucher type';

  @override
  String get svDate => 'Date';

  @override
  String get svSourceData => 'Source data';

  @override
  String get svSourceType => 'Source type';

  @override
  String get svSourceRefOptional => 'Source reference (ID optional)';

  @override
  String get svSourceRefExample => 'Example: 15';

  @override
  String get svSourceName => 'Source name';

  @override
  String get svSupplierName => 'Supplier name';

  @override
  String get svSourceEntityName => 'Source entity name';

  @override
  String get svReferenceSettings => 'Reference settings';

  @override
  String get svReference => 'Reference';

  @override
  String get svReferenceHint => 'Reference number...';

  @override
  String get svOtherInfo => 'Other information';

  @override
  String get svSupplier => 'Supplier';

  @override
  String get svNotes => 'Notes';

  @override
  String get svAutoSupplierReceipt =>
      'Auto-create supplier receipt and link to voucher';

  @override
  String get svAutoSupplierReceiptDesc =>
      'Records a payable entry for the voucher amount then links it.';

  @override
  String get svAutoReturnRecord => 'Auto-record supplier return in payables';

  @override
  String get svAutoReturnRecordDesc =>
      'Records a supplier payment without cash box to reduce the balance when dispensing goods as returned.';

  @override
  String get svTotal => 'Total';

  @override
  String get svQuantity => 'Quantity';

  @override
  String get svUnitPrice => 'Unit price';

  @override
  String get svItems => 'Items';

  @override
  String get svAddItem => 'Add item';

  @override
  String get svDeleteItem => 'Delete item';

  @override
  String get svItemQuantity => 'Quantity';

  @override
  String get svItemUnitPrice => 'Unit price';

  @override
  String get svChooseProduct => 'Choose a product';

  @override
  String get svManualSelection => 'Manual selection';

  @override
  String get svManualItemName => 'Manual item name';

  @override
  String svFromReceipt(Object number) {
    return 'From incoming receipt #$number';
  }

  @override
  String svSupplierReturnNote(Object number) {
    return 'Supplier return via dispensing voucher #$number';
  }

  @override
  String svProductsNotFound(Object names) {
    return 'Products not found by name: $names';
  }

  @override
  String svItemsSkipped(Object count, Object names) {
    return 'Items skipped due to name mismatch: $names\nContinuing will save only $count item(s).';
  }

  @override
  String svVoucherSaved(Object id, Object number) {
    return 'Voucher #$id ($number) saved';
  }

  @override
  String get usRoleAdmin => 'Admin';

  @override
  String get usRoleEmployee => 'Employee';

  @override
  String get usNoPermission =>
      'No permission — only admins can add or edit users';

  @override
  String get usCannotDisableSelf =>
      'You cannot disable your own account while logged in';

  @override
  String get usDisableUserTitle => 'Disable user';

  @override
  String get usDisableUserDesc =>
      'The account will be stopped and they won\'t be able to log in.';

  @override
  String get usCancel => 'Cancel';

  @override
  String get usDisable => 'Disable';

  @override
  String get usDisabled => 'Disabled';

  @override
  String get usTitle => 'Users';

  @override
  String get usRefresh => 'Refresh';

  @override
  String get usNewUser => 'New user';

  @override
  String get usNoActiveUsers => 'No active users';

  @override
  String get usNoActiveUsersHintAdmin =>
      'Tap the add button to create a new user';

  @override
  String get usNoActiveUsersHintManager => 'Log in as admin to add users';

  @override
  String get usIdCard => 'ID card';

  @override
  String get usEdit => 'Edit';

  @override
  String get usDisableButton => 'Disable';

  @override
  String get ufPhoneFormatHint => 'Use Iraqi phone format (e.g. 07XXXXXXXXX)';

  @override
  String get ufEmailRequired => 'Email is required (used as login name)';

  @override
  String get ufEmailAlreadyRegistered => 'This email is already registered';

  @override
  String get ufPasswordMinLength => 'Password must be at least 6 characters';

  @override
  String get ufPasswordMismatch => 'Password confirmation does not match';

  @override
  String get ufEmailTaken => 'This email is registered to another user';

  @override
  String get ufInvalidPasswordOrMismatch =>
      'Invalid password or confirmation mismatch';

  @override
  String get ufTitleEdit => 'Edit user';

  @override
  String get ufTitleNew => 'New user';

  @override
  String get ufAccountData => 'Account data';

  @override
  String get ufAccountDataDesc =>
      'Email is used as login name. Phone in common Iraqi format (07…).';

  @override
  String get ufFullName => 'Full name';

  @override
  String get ufRequired => 'Required';

  @override
  String get ufRole => 'Job role';

  @override
  String get ufRoleHint => 'Cashier, warehouse, …';

  @override
  String get ufEmailLogin => 'Email (login name)';

  @override
  String get ufPhoneIraq => 'Phone number (Iraq)';

  @override
  String get ufPhoneIraqHint => 'Common Iraqi numbers starting with 07';

  @override
  String get ufPhone2Optional => 'Second phone (optional)';

  @override
  String get ufPhone2Hint => 'If available';

  @override
  String get ufPermissionPassword => 'Permission & password';

  @override
  String get ufAccountType => 'Account type';

  @override
  String get ufAccountEmployee => 'Employee (detailed permissions)';

  @override
  String get ufAccountAdmin => 'Admin (full permissions)';

  @override
  String get ufAdminNote =>
      'Admin account bypasses detailed restrictions and is granted full system access.';

  @override
  String get ufNewPasswordOptional => 'New password (optional)';

  @override
  String get ufPassword => 'Password';

  @override
  String get ufConfirmNewPassword => 'Confirm new password';

  @override
  String get ufConfirmPassword => 'Confirm password';

  @override
  String get ufDetailedPermissions => 'Detailed permissions';

  @override
  String get ufDetailedPermissionsDesc =>
      'Enable what this employee can access. Saved in the database per user.';

  @override
  String get ufSaving => 'Saving…';

  @override
  String get ufSave => 'Save';

  @override
  String get ufCancel => 'Cancel';

  @override
  String ufSaveFailed(Object error) {
    return 'Save failed: $error';
  }

  @override
  String get eiRegenerateShiftCode => 'Regenerate shift code';

  @override
  String get eiRegenerateShiftCodeDesc =>
      'A new code will be generated. The ID card must be printed/updated and redistributed.';

  @override
  String get eiCancel => 'Cancel';

  @override
  String get eiConfirm => 'Confirm';

  @override
  String get eiShiftCodeRenewed => 'Shift code renewed.';

  @override
  String get eiTitle => 'Employee identities';

  @override
  String get eiNoActiveUsers => 'No active users in the database.';

  @override
  String get swTimeZero => '0 min';

  @override
  String swTimeHoursMinutes(Object hours, Object minutes) {
    return '${hours}h ${minutes}m';
  }

  @override
  String swTimeHoursOnly(Object hours) {
    return '${hours}h';
  }

  @override
  String swTimeMinutesOnly(Object minutes) {
    return '${minutes}m';
  }

  @override
  String get swHintCompact =>
      'Daily overview; tap the day to see shift details.';

  @override
  String get swHintFull =>
      'Seven columns (Sat → Fri): axis 00:00–24:00 in Latin digits; each bar is a shift (name and time inside the bar).';

  @override
  String get swNoShifts => 'No shifts';

  @override
  String get swShiftSingular => 'shift';

  @override
  String get swShiftPlural => 'shifts';

  @override
  String get swTitle => 'Employee shifts — weekly';

  @override
  String get swWeekTotalTime => 'Total time this week';

  @override
  String get swNextWeek => 'Next week';

  @override
  String get swThisWeek => 'This week';

  @override
  String get swPrevWeek => 'Previous week';

  @override
  String get rpSaleReceipt => 'Sale receipt';

  @override
  String rpOperationNumber(Object id) {
    return 'Operation #$id';
  }

  @override
  String rpDateTime(Object date) {
    return 'Date: $date';
  }

  @override
  String get rpCustomer => 'Customer';

  @override
  String rpCustomerWithValue(Object name) {
    return 'Customer: $name';
  }

  @override
  String get rpDeliveryReceipt =>
      'Delivery receipt — location details via QR at bottom';

  @override
  String rpPaymentMethod(Object method) {
    return 'Payment: $method';
  }

  @override
  String rpEmployee(Object name) {
    return 'Staff: $name';
  }

  @override
  String get rpItems => 'Items:';

  @override
  String rpBeforeDiscount(Object amount) {
    return 'Before discount: $amount FDJ';
  }

  @override
  String rpDiscount(Object amount) {
    return 'Discount: $amount FDJ';
  }

  @override
  String rpTax(Object amount) {
    return 'Tax: $amount FDJ';
  }

  @override
  String rpLoyaltyDiscount(Object amount) {
    return 'Loyalty discount: $amount FDJ';
  }

  @override
  String rpTotal(Object amount) {
    return 'Total: $amount FDJ';
  }

  @override
  String rpBarcode(Object code) {
    return 'Barcode: $code';
  }

  @override
  String rpItemLine(Object name, Object qty, Object total) {
    return '• $name  |  Qty: $qty  |  $total';
  }

  @override
  String rpMoreItems(Object count) {
    return '… and $count more items (details in app)';
  }

  @override
  String get rpDeliveryShort => 'Delivery receipt — location QR at bottom';

  @override
  String rpPaymentShort(Object method) {
    return 'Payment: $method';
  }

  @override
  String get rpCash => 'Cash';

  @override
  String get rpCredit => 'Credit';

  @override
  String get rpInstallment => 'Installment';

  @override
  String get rpDeliveryType => 'Delivery';

  @override
  String get rpCreditCollection => 'Credit collection';

  @override
  String get rpInstallmentPayment => 'Installment payment';

  @override
  String get rpSupplierPayment => 'Supplier payment';

  @override
  String get rpCreditSummary => 'Credit sale summary';

  @override
  String rpInvoiceTotal(Object amount) {
    return 'Invoice total: $amount FDJ';
  }

  @override
  String rpAmountPaid(Object amount) {
    return 'Paid now: $amount FDJ';
  }

  @override
  String rpRemaining(Object amount) {
    return 'Remaining balance: $amount FDJ';
  }

  @override
  String get rpInstallmentSummary =>
      'Installment summary (sale price & interest)';

  @override
  String rpSalePriceTotal(Object amount) {
    return 'Invoice total (sale price): $amount FDJ';
  }

  @override
  String rpAdvancePayment(Object amount) {
    return 'Advance / first payment: $amount FDJ';
  }

  @override
  String rpFinancedAmount(Object amount) {
    return 'Amount after advance (interest basis): $amount FDJ';
  }

  @override
  String rpInterestRate(Object rate) {
    return 'Interest rate: $rate%';
  }

  @override
  String rpInterestValue(Object amount) {
    return 'Interest amount: $amount FDJ';
  }

  @override
  String rpTotalWithInterest(Object amount) {
    return 'Total with interest: $amount FDJ';
  }

  @override
  String rpPlannedMonths(Object count) {
    return 'Planned months: $count';
  }

  @override
  String rpSuggestedMonthly(Object amount) {
    return 'Suggested monthly installment: $amount FDJ';
  }

  @override
  String get rpInvoiceDetails => 'Invoice details';

  @override
  String get rpScanToOpen => 'Scan to open details in app';

  @override
  String get rpReceiptTextSummary => 'Receipt text summary';

  @override
  String get rpDebtorProfile => 'Debtor profile';

  @override
  String get rpDebtDetails => 'Debt details';

  @override
  String get rpReceiptSummary => 'Receipt summary';

  @override
  String get rpInstallmentPlan => 'Installment plan';

  @override
  String get rpInstallmentSchedule => 'Payment schedule & due dates';

  @override
  String get rpDeliveryMap => 'Delivery map';

  @override
  String get rpOpenInGoogleMaps => 'Open in Google Maps';

  @override
  String get rpDetails => 'Details';

  @override
  String get rpVoucherDetails => 'Voucher details';

  @override
  String get rpScanToOpenVoucher => 'Scan to open voucher details in app';

  @override
  String get rpReturnItems => 'Return items';

  @override
  String get rpBuyerAddressQr => 'Buyer address QR';

  @override
  String get rpScanToOpenMap => 'Scan to open location on maps';

  @override
  String get rpOpNumber => 'Operation #';

  @override
  String rpDateTimeFull(Object date) {
    return 'Date & time: $date';
  }

  @override
  String get rpDeliveryNote =>
      'Delivery receipt — location via QR at bottom of page.';

  @override
  String rpAddress(Object address) {
    return 'Address: $address';
  }

  @override
  String get rpItem => 'Item';

  @override
  String get rpQuantity => 'Qty';

  @override
  String get rpPrice => 'Price';

  @override
  String get rpSubtotal => 'Subtotal';

  @override
  String rpSubtotalBeforeDiscount(Object amount) {
    return 'Subtotal before discount: $amount FDJ';
  }

  @override
  String rpPercentDiscount(Object amount, Object percent) {
    return 'Discount $percent%: $amount FDJ';
  }

  @override
  String rpFinalTotal(Object amount) {
    return 'Final total: $amount FDJ';
  }

  @override
  String get rpInstallmentTable => 'Installment schedule (by due date)';

  @override
  String get rpDueDate => 'Due date';

  @override
  String get rpAmount => 'Amount';

  @override
  String get rpStatus => 'Status';

  @override
  String get rpPaidDate => 'Paid on';

  @override
  String get rpPaid => 'Paid';

  @override
  String get rpDue => 'Due';

  @override
  String get rpInstallmentReceipt => 'Installment payment receipt';

  @override
  String rpInstallmentPlanRef(Object id) {
    return 'Installment plan #$id';
  }

  @override
  String rpOriginalInvoice(Object id) {
    return 'Original invoice #$id';
  }

  @override
  String rpReceiptVoucher(Object id) {
    return 'Receipt voucher (invoice list) #$id';
  }

  @override
  String get rpPaidInstallments => 'Paid installments (chronological)';

  @override
  String get rpNoPaidInstallments => '— No installments paid yet —';

  @override
  String get rpRemainingInstallments => 'Remaining installments & due dates';

  @override
  String get rpAllInstallmentsPaid =>
      'All installments for this plan have been paid.';

  @override
  String get rpScanToOpenInvoice => 'Scan to open invoice & items in app';

  @override
  String get rpPlanRef => 'Plan reference';

  @override
  String get rpDebtPaymentReceipt => 'Debt payment receipt';

  @override
  String get rpDebtDetailsAndPayments => 'Debt & payment details';

  @override
  String get rpScanToOpenDebtVoucher =>
      'Scan to open collection voucher in app';

  @override
  String get rpPaymentRef => 'Payment reference';

  @override
  String rpRegisteredInCustomers(Object id) {
    return 'Registered in customers #$id';
  }

  @override
  String rpRecordedBy(Object name) {
    return 'Recorded by: $name';
  }

  @override
  String rpAmountPaidInThis(Object amount) {
    return 'Amount paid this transaction: $amount FDJ';
  }

  @override
  String rpDebtBefore(Object amount) {
    return 'Total debt before payment: $amount FDJ';
  }

  @override
  String rpDebtAfter(Object amount) {
    return 'Remaining after payment: $amount FDJ';
  }

  @override
  String get rpAutoDistribute =>
      'Payments are auto-distributed to credit invoices oldest first.';

  @override
  String rpPaymentRecord(Object id) {
    return 'Payment record #$id';
  }

  @override
  String get rpAllDebtPaid =>
      'All credit debt for this customer has been settled.';

  @override
  String get rpSupplierPaymentReceipt => 'Supplier payment receipt';

  @override
  String rpPaidAmount(Object amount) {
    return 'Amount paid: $amount FDJ';
  }

  @override
  String rpPayableBefore(Object amount) {
    return 'Payable before payment: $amount FDJ';
  }

  @override
  String rpPayableAfter(Object amount) {
    return 'Payable after payment: $amount FDJ';
  }

  @override
  String get rpDeductedFromCash => 'Amount deducted from cash drawer.';

  @override
  String get rpNotDeductedFromCash =>
      'Not deducted from cash drawer (external/bank payment).';

  @override
  String rpNote(Object text) {
    return 'Note: $text';
  }

  @override
  String rpVoucherRecord(Object id) {
    return 'Voucher record #$id';
  }

  @override
  String rpInvoiceVoucher(Object id) {
    return 'Invoice voucher #$id';
  }

  @override
  String get rpClose => 'Close';

  @override
  String get rpSaleReceiptTitle => 'Sale receipt';

  @override
  String get rpFullInvoiceDetails => 'Full invoice details';

  @override
  String get rpNoPrinter =>
      'No printer found. Please check printer connection.';

  @override
  String get rpNoPrinterFound =>
      'No printer found. Please connect a printer to continue.';

  @override
  String get rpPrintError =>
      'Direct printing failed. Please check your printer settings.';

  @override
  String rpInstallmentDetail(Object amount, Object date, Object number) {
    return 'Installment #$number ($amount FDJ) due on $date';
  }

  @override
  String rpInstallmentLine(
    Object amount,
    Object date,
    Object number,
    Object paidStatus,
  ) {
    return 'Installment $number — $amount FDJ — Due $date — $paidStatus';
  }

  @override
  String rpDebtPaymentReceiptTitle(Object name) {
    return 'Credit payment — $name';
  }

  @override
  String get rpSupplierDefaultName => 'Supplier';

  @override
  String get rpCustomerDefaultName => 'Customer';

  @override
  String get rpRemainingInstallmentsReminder =>
      'Remaining installments (due date reminders)';

  @override
  String rpReceiptItemsAmount(Object amount) {
    return '$amount FDJ';
  }

  @override
  String rpInvoicePlanRef(Object id) {
    return 'Installment plan #$id';
  }

  @override
  String rpMonthCount(Object count) {
    return 'Number of months: $count';
  }

  @override
  String get rpTodayIndicator => '  (today\'s transaction)';

  @override
  String get anHideAlert => 'Hide Alert';

  @override
  String get anHideConfirm =>
      'This is an important alert. Are you sure you want to hide it from the list?';

  @override
  String get anCancel => 'Cancel';

  @override
  String get anConfirm => 'Confirm';

  @override
  String get anNotifications => 'Notifications';

  @override
  String get anRefresh => 'Refresh';

  @override
  String get anMarkAllRead => 'Mark all as read';

  @override
  String anRefreshError(Object error) {
    return 'Refresh failed: $error';
  }

  @override
  String get anEmpty => 'No notifications yet';

  @override
  String get anHiddenNotifications => 'Hidden notifications';

  @override
  String get anShow => 'Show';

  @override
  String get anHide => 'Hide';

  @override
  String get nnInvoices => 'Invoices';

  @override
  String get nnProducts => 'Products';

  @override
  String get nnInstallments => 'Installments';

  @override
  String get nnDebts => 'Debts';

  @override
  String get nnReports => 'Reports';

  @override
  String get nnCash => 'Cash';

  @override
  String get npInstallmentDue => 'Installment due';

  @override
  String get npInstallmentLate => 'Late installment';

  @override
  String get npStock => 'Stock';

  @override
  String get npNegativeSale => 'Negative sale';

  @override
  String get npExpiryHint => 'Expiry hint';

  @override
  String get npDeferredSave => 'Deferred save';

  @override
  String get npReturn => 'Return';

  @override
  String get npSummary => 'Summary';

  @override
  String get npCash => 'Cash';

  @override
  String get npCustomerDebt => 'Customer debt';

  @override
  String get npDebtAge => 'Debt age';

  @override
  String get npCustomerCap => 'Customer cap';

  @override
  String get npInvoiceCap => 'Invoice cap';

  @override
  String get npFinancedSale => 'Financed sale';

  @override
  String get npSystem => 'System';

  @override
  String get npNow => 'Now';

  @override
  String get npMinuteAgo => '1 minute ago';

  @override
  String get npTwoMinutesAgo => '2 minutes ago';

  @override
  String npMinutesAgo(Object count) {
    return '$count minutes ago';
  }

  @override
  String get npHourAgo => 'about 1 hour ago';

  @override
  String get npTwoHoursAgo => '2 hours ago';

  @override
  String npHoursAgo(Object count) {
    return '$count hours ago';
  }

  @override
  String npYesterday(Object time) {
    return 'Yesterday $time';
  }

  @override
  String get npTwoDaysAgo => '2 days ago';

  @override
  String npDaysAgo(Object count) {
    return '$count days ago';
  }

  @override
  String npSaleInvoiceLine(Object date, Object id) {
    return 'Sale invoice #$id — $date';
  }

  @override
  String npSeller(Object name) {
    return 'Seller: $name';
  }

  @override
  String npCustomer(Object name) {
    return 'Customer: $name';
  }

  @override
  String get npItem => 'Item';

  @override
  String npItemId(Object id) {
    return ' — ID #$id';
  }

  @override
  String npSoldInInvoice(Object after, Object before, Object qty) {
    return '  Sold in invoice: $qty — Balance before: $before → after: $after';
  }

  @override
  String get npNegativeSaleTitle => 'Sale resulted in negative balance';

  @override
  String get npShift => 'Shift';

  @override
  String get npCreditSaleSaved => 'Installment sale — invoice saved';

  @override
  String get npCreditSaleRegistered => 'Installment sale — registered';

  @override
  String get npCreditSaleTitle => 'Credit sale (deferred) — registered';

  @override
  String get npRegisteredAt => 'Registered at: New Sale screen (POS)';

  @override
  String npInvoiceLine(Object date, Object id) {
    return 'Invoice #$id — $date';
  }

  @override
  String npTotalLine(Object advance, Object remaining, Object total) {
    return 'Total: $total FDJ — Paid: $advance FDJ — Remaining: $remaining FDJ';
  }

  @override
  String get npInstallmentPlanError =>
      'Warning: Could not auto-create installment plan — check Installments and link the invoice.';

  @override
  String npInstallmentPlanRef(Object id) {
    return 'Installment plan: #$id';
  }

  @override
  String npPlannedMonths(Object count) {
    return 'Planned months: $count';
  }

  @override
  String npMonthlyEstimate(Object amount) {
    return 'Estimated monthly installment: $amount FDJ';
  }

  @override
  String npFinancedFromSale(Object amount) {
    return 'Financed from sale: $amount FDJ';
  }

  @override
  String npTotalWithInterest(Object amount) {
    return 'Total with interest (if any): $amount FDJ';
  }

  @override
  String npItemLine(Object name, Object pid, Object qty, Object total) {
    return '• $name — #$pid — $qty — $total FDJ';
  }

  @override
  String get npMoreItemsInInvoice => '… and more items in the invoice.';

  @override
  String get npLateInstallmentTitle => 'Late installment — reminder';

  @override
  String npLateInstallmentBody(Object date, Object name, Object planRef) {
    return '$name$planRef — due $date';
  }

  @override
  String get npCustomerLabel => 'Customer';

  @override
  String npPlanRef(Object id) {
    return ' — plan #$id';
  }

  @override
  String get npUpcomingTitle => 'Upcoming installment — reminder';

  @override
  String npUpcomingBody(Object date, Object name, Object planRef) {
    return '$name$planRef — $date';
  }

  @override
  String get npCustomerDebtTitle => 'Customer debt';

  @override
  String npCustomerDebtBody(Object balance, Object extra, Object name) {
    return '$name$extra — remaining $balance FDJ (deferred, not installment).';
  }

  @override
  String get npDebtAgeTitle => 'Deferred invoice — age warning';

  @override
  String npDebtAgeBody(
    Object age,
    Object ageWord,
    Object customer,
    Object date,
    Object days,
    Object id,
  ) {
    return 'Per debt settings ($days days): invoice #$id — $customer — since $date ($age $ageWord).';
  }

  @override
  String get npDay => 'day';

  @override
  String get npDays => 'days';

  @override
  String get npCustomerCapTitle => 'Customer debt cap exceeded';

  @override
  String npCustomerCapBody(Object amount, Object cap, Object name) {
    return 'Per debt settings: total open deferred for \"$name\" is $amount FDJ (cap $cap FDJ).';
  }

  @override
  String npCustomerCapBodyNoCard(Object amount, Object cap, Object name) {
    return 'Per debt settings (no customer card): \"$name\" — $amount FDJ (cap $cap FDJ).';
  }

  @override
  String get npInvoiceCapTitle => 'Deferred invoice cap exceeded';

  @override
  String npInvoiceCapBody(
    Object cap,
    Object customer,
    Object date,
    Object id,
    Object remaining,
  ) {
    return 'Per debt settings: invoice #$id — $customer — remaining $remaining FDJ (cap $cap FDJ) — date $date.';
  }

  @override
  String get npWithoutName => 'unnamed';

  @override
  String get npProductLabel => 'Product';

  @override
  String get npNegativeStockTitle => 'Negative stock balance';

  @override
  String npNegativeStockBody(
    Object name,
    Object over,
    Object qty,
    Object unitWord,
  ) {
    return '\"$name\" — current quantity $qty (oversold by $over $unitWord).';
  }

  @override
  String get npOutOfStockTitle => 'Out of stock';

  @override
  String npOutOfStockBody(Object name) {
    return '\"$name\" — stock is zero.';
  }

  @override
  String get npLowStockTitle => 'Low stock alert';

  @override
  String npLowStockBody(Object name, Object qty, Object threshold) {
    return '\"$name\" — quantity $qty (threshold $threshold).';
  }

  @override
  String get npUnit => 'unit';

  @override
  String get npUnits => 'units';

  @override
  String get npExpiredTitle => 'Item shelf life expired';

  @override
  String npExpiredBody(Object date, Object name) {
    return '\"$name\" — past the recorded date ($date). Check display or disposal per store policy.';
  }

  @override
  String get npLastDay => 'Today is the last day for storage';

  @override
  String npDaysRemaining(Object count) {
    return '$count remaining until expiry';
  }

  @override
  String get npNearExpiryTitle => 'Approaching expiry';

  @override
  String npNearExpiryBody(Object date, Object name, Object period) {
    return '\"$name\" — storage expires on $date ($period).';
  }

  @override
  String get npReturnTitle => 'Return registered';

  @override
  String npReturnBody(
    Object count,
    Object customer,
    Object id,
    Object orig,
    Object total,
  ) {
    return 'Returned invoice #$id$orig — $customer — $count items — $total FDJ';
  }

  @override
  String npOrigRef(Object id) {
    return ' ← original #$id';
  }

  @override
  String get npDailySummaryTitle => 'Daily sales summary';

  @override
  String npDailySummaryBody(Object total) {
    return 'Total sales invoices (excluding returns) for today: $total FDJ';
  }

  @override
  String get npLoggerNotifyFail => 'Failed to refresh notifications list';

  @override
  String get npRefreshHidden => 'Hidden notifications';

  @override
  String get npShow => 'Show';

  @override
  String get npHide => 'Hide';

  @override
  String get spTitle => 'Subscription Plans';

  @override
  String get spSubtitle => 'Choose the right plan for your business';

  @override
  String get spJwtDescription =>
      'The cards below are for comparison and pricing only. After payment you\'ll receive a signed token (JWT) — paste it in the activation field below the cards.';

  @override
  String get spLegacyDescription =>
      'First card: automatic 15-day trial (2 devices). The following cards are paid plans — after payment enter the key in the unified field below the page.';

  @override
  String get spHowToSubscribe => 'How to Subscribe';

  @override
  String get spHowJwtStep1 =>
      '1. Contact the Maarey team via the methods below';

  @override
  String get spHowJwtStep2 => '2. Complete payment for the plan you want';

  @override
  String get spHowJwtStep3 =>
      '3. Receive the full activation token (JWT) from administration';

  @override
  String get spHowJwtStep4 =>
      '4. Paste the token in the unified field below the plan cards — plan and device count are extracted from the token';

  @override
  String get spHowLegacyStep1 =>
      '1. Contact the Maarey team via the methods below';

  @override
  String get spHowLegacyStep2 =>
      '2. Tell us which plan you want and complete payment';

  @override
  String get spHowLegacyStep3 =>
      '3. Receive the license key from administration';

  @override
  String get spHowLegacyStep4 =>
      '4. Paste the key in the unified field below the plan cards then press \"Activate Key\"';

  @override
  String get spContactWhatsApp => 'WhatsApp / Phone';

  @override
  String get spContactEmail => 'Email';

  @override
  String get spContinue => 'Continue';

  @override
  String get spErrorPasteTokenFirst => 'Paste the license token first';

  @override
  String get spActivateTokenTitle => 'Activate License Token';

  @override
  String get spActivateTokenDesc =>
      'Paste the full token sent by administration. Plan and device count are extracted from inside the token, not from the card layout.';

  @override
  String get spTokenHint => 'Paste activation token here';

  @override
  String get spActivateTokenButton => 'Activate Token';

  @override
  String get spErrorPasteKeyFirst =>
      'Paste the license key or activation token first';

  @override
  String get spActivateKeyTitle => 'Activate Key';

  @override
  String get spActivateKeyDesc =>
      'Paste the license key you received after payment, or JWT token if available. The plans above are for display and comparison only.';

  @override
  String get spKeyHint => 'Paste license key or activation token';

  @override
  String get spActivateKeyButton => 'Activate Key';

  @override
  String get spFree => 'Free';

  @override
  String get sp15Days => '15 days';

  @override
  String get spMonthly => 'Monthly';

  @override
  String get spCurrentTrial => 'Your current trial';

  @override
  String get spCurrentPlan => 'Your current plan';

  @override
  String get spTrialAutoDescription =>
      'The trial starts automatically — no key needed. When upgrading, receive the token from administration and paste it in the unified field below the cards.';

  @override
  String get spJwtCardDescription =>
      'This card is for display and comparison only. After payment, paste the activation token (JWT) in the unified field below the cards.';

  @override
  String get spLegacyCardDescription =>
      'This card is for display and comparison only. After payment, paste the license key in the unified field below the cards.';

  @override
  String get spMostPopular => 'Most Popular';

  @override
  String get spCopiedPhone => 'Phone number copied';

  @override
  String get spCopiedEmail => 'Email copied';

  @override
  String get spCopy => 'Copy';

  @override
  String get spTrialName => 'Free Trial';

  @override
  String get spBasicName => 'Basic';

  @override
  String get spProName => 'Professional';

  @override
  String get spUnlimitedName => 'Unlimited';

  @override
  String get spDevicesUnlimited => 'Unlimited devices';

  @override
  String spDevicesCount(Object count) {
    return '$count devices';
  }

  @override
  String get spPlanPriceFree => 'Free — 15 days';

  @override
  String spPlanPriceMonthly(Object price) {
    return '$price Fdj / month';
  }

  @override
  String get spTrialFeature1 =>
      '15 days from first use (or from first cloud account registration)';

  @override
  String get spTrialFeature2 => '2 devices on the same account';

  @override
  String get spTrialFeature3 =>
      'Then choose a paid plan and activate the key sent by administration';

  @override
  String get spBasicFeature1 => '2 devices on the same account';

  @override
  String get spBasicFeature2 => 'All inventory and invoicing features';

  @override
  String get spBasicFeature3 => 'Reports and analytics';

  @override
  String get spBasicFeature4 => 'Technical support';

  @override
  String get spProFeature1 => '3 devices on the same account';

  @override
  String get spProFeature2 => 'All features of the Basic plan';

  @override
  String get spProFeature3 => 'Purchase orders and supplier management';

  @override
  String get spProFeature4 => 'Advanced reports';

  @override
  String get spProFeature5 => 'Priority technical support';

  @override
  String get spUnlimitedFeature1 => 'Unlimited devices on one account';

  @override
  String get spUnlimitedFeature2 => 'All features of the Professional plan';

  @override
  String get spUnlimitedFeature3 => 'Multi-branch support';

  @override
  String get spUnlimitedFeature4 => 'Top priority support';

  @override
  String get devToolsOpen => 'Opening dev tools…';

  @override
  String get bulkImportTitle => 'Import Products from CSV';

  @override
  String get bulkImportSubtitle =>
      'Import your products from a CSV file quickly';

  @override
  String get bulkImportTemplate => 'Download CSV Template';

  @override
  String get bulkImportTemplateDesc =>
      'Download a pre-filled template, then fill it with your product data';

  @override
  String get bulkImportPickFile => 'Pick CSV File';

  @override
  String get bulkImportPickFileDesc => 'Choose a CSV file from your device';

  @override
  String get bulkImportPreview => 'Data Preview';

  @override
  String get bulkImportStartImport => 'Start Import';

  @override
  String get bulkImportImporting => 'Importing...';

  @override
  String get bulkImportSuccess => 'Products imported successfully';

  @override
  String bulkImportPartial(Object failed, Object success, Object total) {
    return 'Imported $success of $total — $failed failed';
  }

  @override
  String get bulkImportFailed => 'Import failed';

  @override
  String get bulkImportNoFile => 'No file selected';

  @override
  String get bulkImportInvalidFormat => 'Invalid file format';

  @override
  String get bulkImportColName => 'Product Name';

  @override
  String get bulkImportColBarcode => 'Barcode';

  @override
  String get bulkImportColBuyPrice => 'Buy Price';

  @override
  String get bulkImportColSellPrice => 'Sell Price';

  @override
  String get bulkImportColQty => 'Quantity';

  @override
  String get bulkImportColCategory => 'Category';

  @override
  String get bulkImportColLowStock => 'Low Stock Threshold';

  @override
  String get bulkImportColDescription => 'Description';

  @override
  String get bulkImportColSupplier => 'Supplier';

  @override
  String get bulkImportColTaxPercent => 'Tax %';

  @override
  String get bulkImportColSaleUnit => 'Sale Unit';

  @override
  String bulkImportRowsFound(Object count) {
    return '$count rows found';
  }

  @override
  String bulkImportErrorsFound(Object count) {
    return '$count errors — fix them before importing';
  }

  @override
  String bulkImportRowError(Object error, Object row) {
    return 'Row $row: $error';
  }

  @override
  String get bulkImportRequiredField => 'Required field';

  @override
  String get bulkImportInvalidNumber => 'Invalid number';

  @override
  String get bulkImportImportAll => 'Import All';

  @override
  String get bulkImportCancel => 'Cancel';

  @override
  String get bulkImportColumnName => 'Column';

  @override
  String get bulkImportColumnSample => 'Example';

  @override
  String get bulkImportColumnStatus => 'Status';

  @override
  String get bulkImportRequired => 'Required';

  @override
  String get bulkImportOptional => 'Optional';

  @override
  String get bulkImportBackToImport => 'Back to Import';

  @override
  String get bulkImportAddMore => 'Add More';

  @override
  String get bulkImportSampleName => 'Lays Chips';

  @override
  String get bulkImportSampleBarcode => '6281100123456';

  @override
  String get bulkImportSampleBuy => '800';

  @override
  String get bulkImportSampleSell => '1000';

  @override
  String get bulkImportSampleQty => '50';

  @override
  String get bulkImportSampleCategory => 'Snacks';

  @override
  String get bulkImportSampleLowStock => '10';

  @override
  String get bulkImportSampleDesc => 'Salted potato chips';

  @override
  String get bulkImportSampleSupplier => 'Al-Amal Company';

  @override
  String get bulkImportSampleTax => '0';

  @override
  String get bulkImportSampleUnit => 'Piece';

  @override
  String get ipBulkImport => 'Bulk import products';

  @override
  String get syncNothingToSync => 'No changes to sync';

  @override
  String get syncCompletedPush => 'Data uploaded to cloud';

  @override
  String get syncCompletedPull => 'Data downloaded from cloud';

  @override
  String get syncNotLoggedIn => 'Please sign in to sync';

  @override
  String get olTitle => 'Product Lookup';

  @override
  String get olScanHint => 'Scan barcode or type product name';

  @override
  String get olSearching => 'Searching…';

  @override
  String get olFoundInLocal => 'Found in local database';

  @override
  String get olNotFound => 'Product not found locally';

  @override
  String get olSearchingOnline => 'Searching online…';

  @override
  String get olOnlineFound => 'Found in international directory';

  @override
  String get olOnlineNotFound => 'Product not found in international directory';

  @override
  String get olUseThisProduct => 'Use this product';

  @override
  String get olNoResults => 'No results';

  @override
  String get olProductImage => 'Product image';

  @override
  String get olBrand => 'Brand';

  @override
  String get olCategory => 'Category';

  @override
  String get olQuantity => 'Quantity';

  @override
  String get olAddToProducts => 'Add to products';

  @override
  String get olAutoFilled => 'Fields auto-filled from international directory';

  @override
  String get signupAcceptTermsFirst =>
      'You must accept the terms and conditions first';

  @override
  String get signupAccountCreated =>
      'Account created successfully! Please log in.';

  @override
  String get signupGoogleSoon => 'Google Sign-In will be available soon';

  @override
  String get signupBrandSubtitle => 'Business Management System';

  @override
  String get signupGetStarted => 'GET STARTED';

  @override
  String get signupCreateAccount => 'Create New Account';

  @override
  String get signupFullNameLabel => 'Business Name / Full Name';

  @override
  String get signupFullNameHint => 'e.g. Basra Trading Company';

  @override
  String get signupNameRequired => 'Name is required';

  @override
  String get signupNameMinLength => 'Must be at least 3 characters';

  @override
  String get signupEmailLabel => 'Email';

  @override
  String get signupEmailRequired => 'Email is required';

  @override
  String get signupEmailInvalid => 'Invalid email format';

  @override
  String get signupPhoneLabel => 'Phone Number';

  @override
  String get signupPhoneHintIraq => '07701234567';

  @override
  String get signupPhoneHintOther => 'Enter number';

  @override
  String get signupPhoneRequired => 'Phone number is required';

  @override
  String get signupPhoneIraqInvalid =>
      'Iraqi number: 11 digits starting with 07';

  @override
  String get signupPhoneInvalid => 'Invalid number';

  @override
  String get signupPasswordLabel => 'Password';

  @override
  String get signupPasswordHint => '8 characters minimum';

  @override
  String get signupPasswordRequired => 'Password is required';

  @override
  String get signupPasswordMinLength => 'At least 8 characters';

  @override
  String get signupConfirmPasswordLabel => 'Confirm Password';

  @override
  String get signupConfirmPasswordHint => 'Re-enter password';

  @override
  String get signupConfirmPasswordRequired =>
      'Password confirmation is required';

  @override
  String get signupPasswordsMismatch => 'Passwords do not match';

  @override
  String get signupCaptchaTitle =>
      'Identity Verification — Answer the simple question';

  @override
  String get signupCaptchaChange => 'Change';

  @override
  String get signupCaptchaHint => 'Answer';

  @override
  String get signupCaptchaAnswerRequired => 'Enter the answer';

  @override
  String get signupCaptchaWrong => 'Incorrect answer';

  @override
  String get signupCreateButton => 'CREATE ACCOUNT';

  @override
  String get signupHasAccount => 'Already have an account?';

  @override
  String get signupLoginLink => 'Log In';

  @override
  String get signupGoogleButton => 'Sign up with Google';

  @override
  String get signupOrDivider => 'Or sign up with details';

  @override
  String get signupTermsPrefix => 'I agree to ';

  @override
  String get signupTermsOfUse => 'Terms of Use';

  @override
  String get signupAnd => ' and ';

  @override
  String get signupPrivacyPolicy => 'Privacy Policy';

  @override
  String get signupTermsSuffix => ' of Maarey.';

  @override
  String get licEnterKey => 'Enter license key';

  @override
  String get licStoreSystem => 'Store Management System';

  @override
  String get licActivation => 'License Activation';

  @override
  String get licEnterKeyToContinue => 'Enter your license key to continue';

  @override
  String get licKeyHint => 'MAAREY-XXXX-XXXX-XXXX or JWT';

  @override
  String get licActivate => 'Activate';

  @override
  String get licContactSupport =>
      'To get a license key, contact the Maarey team.';

  @override
  String get licAllRightsReserved => 'Maarey v2.0 — All rights reserved';

  @override
  String get licTimeConflict => 'Time settings conflict';

  @override
  String get licSuspended => 'License suspended';

  @override
  String get licDeviceLimitExceeded => 'Device limit exceeded';

  @override
  String get licExpired => 'Subscription expired';

  @override
  String get licTimeConflictMsg =>
      'Time settings conflict detected. Contact support for help re-verifying.';

  @override
  String get licAccountSuspended =>
      'Your account has been suspended. Contact technical support.';

  @override
  String get licSubscriptionEnded =>
      'Your subscription has ended. Renew to continue.';

  @override
  String get licCurrentPlan => 'Current Plan';

  @override
  String get licRegisteredDevices => 'Registered Devices';

  @override
  String get licSubscriptionExpiry => 'Subscription Expiry';

  @override
  String get licTrialExpiry => 'Trial Expiry';

  @override
  String get licUpgradePlan => 'Upgrade Plan to Add Devices';

  @override
  String get licRenewSubscription => 'Renew Subscription';

  @override
  String get licComparePlans => 'Compare Subscription Plans';

  @override
  String get licEnterNewKey => 'Enter New Key';

  @override
  String get licVerifyAgain => 'Verify Again';

  @override
  String get licUseAnotherKey => 'Use Another Key';

  @override
  String get cashInvoicesSales =>
      'Invoices and sales (entries linked to invoice)';

  @override
  String get cashManualDeposit => 'Manual deposit';

  @override
  String get cashManualWithdrawal => 'Manual withdrawal';

  @override
  String get cashOtherMovements => 'Other movements';

  @override
  String get cashLinkedInvoice => 'Invoice #';

  @override
  String get cashInflow => 'Inflow';

  @override
  String get cashOutflow => 'Outflow';

  @override
  String get cashNoLinkedEntries =>
      'No entries linked to an invoice in this group.';

  @override
  String get cashInvoiceIdsShown => 'Invoice numbers shown:';

  @override
  String get cashShiftDetails => 'Shift #';

  @override
  String get cashShiftEmployee => 'Shift employee (card)';

  @override
  String get cashSummaryTitle => 'Cash Summary';

  @override
  String get cashTotalIn => 'Total Inflow';

  @override
  String get cashTotalOut => 'Total Outflow';

  @override
  String get cashNetFlow => 'Net Flow';

  @override
  String get cashBalanceLabel => 'Balance';

  @override
  String get cashDetailsTitle => 'Cash Details';

  @override
  String get cashFilterAll => 'All';

  @override
  String get cashDateRange => 'Date Range';

  @override
  String get cashFrom => 'From';

  @override
  String get cashTo => 'To';

  @override
  String get cashAmount => 'Amount';

  @override
  String get cashDescription => 'Description';

  @override
  String get cashType => 'Type';

  @override
  String get cashDate => 'Date';

  @override
  String get cashReceipt => 'Receipt';

  @override
  String get cashPayment => 'Payment';

  @override
  String get cashDeposit => 'Deposit';

  @override
  String get cashWithdrawal => 'Withdrawal';

  @override
  String get cashTransfer => 'Transfer';

  @override
  String get cashRefund => 'Refund';

  @override
  String get cashOpenShift => 'Open Shift';

  @override
  String get cashCloseShift => 'Close Shift';

  @override
  String get cashShiftHistory => 'Shift History';

  @override
  String get cashTransactions => 'Transactions';

  @override
  String get cashNoTransactions => 'No transactions found';

  @override
  String get cashPeriod => 'Period';

  @override
  String get cashInvoiceNum => 'Invoice #';

  @override
  String get cashEmployee => 'Employee';

  @override
  String get cashNote => 'Note';

  @override
  String get cashReceiptNum => 'Receipt #';

  @override
  String get cashCustomer => 'Customer';

  @override
  String get debtsTitle => 'Debts — Credit';

  @override
  String get debtsTabInvoices => 'Invoices';

  @override
  String get debtsTabCustomers => 'Customers';

  @override
  String get debtsTabSuppliers => 'Suppliers';

  @override
  String get debtsSettingsTooltip => 'Debt settings';

  @override
  String get debtsRefreshTooltip => 'Refresh (F5)';

  @override
  String get debtsShowingOf => 'Showing';

  @override
  String get debtsSearchHint => 'Search: customer, invoice number...';

  @override
  String get debtsClearSearch => 'Clear search';

  @override
  String get debtsAll => 'All';

  @override
  String get debtsPending => 'Pending';

  @override
  String get debtsOverdue => 'Overdue';

  @override
  String get debtsPaid => 'Paid';

  @override
  String get debtsPartial => 'Partial';

  @override
  String get debtsAmount => 'Amount';

  @override
  String get debtsPaidAmount => 'Paid';

  @override
  String get debtsRemaining => 'Remaining';

  @override
  String get debtsCustomer => 'Customer';

  @override
  String get debtsInvoiceNum => 'Invoice #';

  @override
  String get debtsDate => 'Date';

  @override
  String get debtsDueDate => 'Due Date';

  @override
  String get debtsActions => 'Actions';

  @override
  String get debtsPay => 'Pay';

  @override
  String get debtsDetails => 'Details';

  @override
  String get debtsRecordPayment => 'Record Payment';

  @override
  String get debtsNoInvoices => 'No invoices found';

  @override
  String get debtsTotalDebt => 'Total Debt';

  @override
  String get debtsPaidTotal => 'Paid Total';

  @override
  String get debtsOutstanding => 'Outstanding';

  @override
  String get cdInvalidData => 'Invalid data';

  @override
  String get cdRecordPayment => 'Record payment';

  @override
  String get cdRemainingCurrent => 'Current remaining';

  @override
  String get cdAmountLabel => 'Amount (FDJ)';

  @override
  String get cdAutoDistribute =>
      'Automatically distributed from oldest to newest invoices.';

  @override
  String get cdCancel => 'Cancel';

  @override
  String get cdConfirm => 'Confirm';

  @override
  String get cdEnterValidAmount => 'Enter a valid amount';

  @override
  String get cdNoRemaining => 'No remaining to pay or invalid amount';

  @override
  String get cdPaymentSuccess => 'Payment recorded successfully';

  @override
  String cdPaymentFailed(Object error) {
    return 'Payment completion failed: $error';
  }

  @override
  String get cdInvoiceHistory => 'Invoice History';

  @override
  String get cdPaymentHistory => 'Payment history';

  @override
  String get cdNoPayments => 'No payments recorded';

  @override
  String get cdFullPayment => 'Full Payment';

  @override
  String get cdPartialPayment => 'Partial Payment';

  @override
  String get cdRemainingBalance => 'Remaining Balance';

  @override
  String get cdDebtBefore => 'Debt before';

  @override
  String get cdDebtAfter => 'Debt after';

  @override
  String get cdNoInvoiceLinked => 'No invoice linked';

  @override
  String get cdCustomerLabel => 'Customer';

  @override
  String get cdInvoiceLabel => 'Invoice';

  @override
  String get cdClose => 'Close';

  @override
  String get cdViewInvoice => 'View Invoice';

  @override
  String get cdAmountPaid => 'Amount paid';

  @override
  String get dsTitle => 'Debt Settings';

  @override
  String get dsReloadTooltip => 'Reload from database';

  @override
  String get dsApplyInfo =>
      'These limits apply when saving a credit invoice. Leave empty or 0 to disable.';

  @override
  String get dsAmountCeilings => 'Amount Ceilings';

  @override
  String get dsMaxPerCustomer => 'Max remaining per customer (FDJ)';

  @override
  String get dsMaxPerInvoice => 'Max remaining per credit invoice (FDJ)';

  @override
  String get dsWarningDays => 'Warning days';

  @override
  String get dsSaved => 'Debt settings saved';

  @override
  String get dsInvalidDays => 'Warning days: between 0 and 36500';

  @override
  String get dsEnableLimits => 'Enable debt limits';

  @override
  String get dsMaxDebtPerCustomer => 'Max remaining per customer (FDJ)';

  @override
  String get dsMaxDebtPerInvoice => 'Max remaining per credit invoice (FDJ)';

  @override
  String get dsAutoEnforce => 'Auto-enforce limits';

  @override
  String get dsAutoEnforceHint => 'Prevent saving if limits exceeded';

  @override
  String get dsReminderDays => 'Reminder days';

  @override
  String get dsReminderHint => 'Days before due date to show reminder';

  @override
  String get dsOverdueThreshold => 'Overdue threshold (days)';

  @override
  String get dsOverdueHint => 'Days past due to mark as overdue';

  @override
  String get cashInvoiceNumShort => 'Invoice #';

  @override
  String get cashShiftLoadError =>
      'Failed to load shift history from database; below is only the cash list view.';

  @override
  String get cashTotalMovements =>
      'Total movements shown in cash for this group';

  @override
  String get cashMovementsCount => 'movements.';

  @override
  String get cashMovementStats => 'Movement counts';

  @override
  String get cashMovementsDeposit => 'Deposit';

  @override
  String get cashMovementsWithdrawal => 'Withdrawal';

  @override
  String get cashMovementsManual => 'Manual';

  @override
  String get cashMovementsLinked => 'Linked to invoice';

  @override
  String get cashMovementsTimes => 'times';

  @override
  String get cashSalesCash => 'Cash Sale';

  @override
  String get cashFirstPayment => 'Down payment / First payment';

  @override
  String get cashInstallmentPayment => 'Installment payment';

  @override
  String get cashSupplierPayment => 'Supplier payment';

  @override
  String get cashSupplierPaymentReversal => 'Supplier payment reversal';

  @override
  String get cashReturn => 'Return';

  @override
  String get cashMovement => 'Movement';

  @override
  String get cashSummaryInflow => 'Inflow';

  @override
  String get cashSummaryOutflow => 'Outflow';

  @override
  String get cashNoShift => 'No shift';

  @override
  String get cashTapDetails => 'Tap for details';

  @override
  String get cashShiftLabel => 'Shift ';

  @override
  String get cashMovementsShort => ' movements';

  @override
  String get cashEmployeeLabel => 'Employee: ';

  @override
  String get cashTapInvoice => 'Tap for invoice #';

  @override
  String get cashCashboxInfo =>
      'Recorded separately from sales invoices and installments. Use for store expenses or bank deposit/withdrawal.';

  @override
  String get cashCashboxBalanceInfo =>
      'Total cash inflow from cash sales, down payments, installment payments and manual deposits — excluding credit invoices without down payment.';

  @override
  String get calculatorTitle => 'Calculator';

  @override
  String get calculatorCopyResult => 'Copy result';

  @override
  String get calculatorClearAll => 'Clear all';

  @override
  String get debtsGroupByCustomer =>
      'Group by customer: products, sellers and partial payment from details screen. QR on receipt for registered customers only.';

  @override
  String get debtsSearchHintCustomer => 'Search by customer name or ID...';

  @override
  String get debtsXofYCustomers => 'of';

  @override
  String get debtsNoCreditRemaining =>
      'No remaining credit grouped by customers';

  @override
  String get debtsNoResults => 'No results';

  @override
  String get debtsCustomerLabel => 'Customer';

  @override
  String debtsRegisteredCustomer(Object id) {
    return 'Registered customer #$id';
  }

  @override
  String get debtsNotLinked => 'Not linked to customers table (by name)';

  @override
  String debtsCreditInvoices(Object count) {
    return '$count credit invoice(s)';
  }

  @override
  String get debtsRemainingLabel => 'Remaining';

  @override
  String get debtsCustomerStatement => 'Customer Statement';

  @override
  String get debtsAgingWarningInfo =>
      'Aging warning starts after X days from invoice date.';

  @override
  String get debtsAgingDisabled =>
      'Enable aging warning days in debt settings to flag old invoices.';

  @override
  String get debtsInfoBanner =>
      'Debts are calculated from credit invoices. Remaining = total - down payment. Sale limits set in debt settings.';

  @override
  String get debtsTotalRemaining => 'Total Remaining';

  @override
  String get debtsShowAll => 'Show all invoices';

  @override
  String get debtsOpenInvoices => 'Open invoices';

  @override
  String get debtsFilterOpen => 'Filter: open only';

  @override
  String get debtsAgingWarning => 'Aging Warning';

  @override
  String get debtsFilterAging => 'Filter: aging warning';

  @override
  String get debtsStatusClosed => 'Closed';

  @override
  String get debtsStatusAging => 'Aging Alert';

  @override
  String get debtsStatusOpen => 'Open';

  @override
  String get debtsReceiptLabel => 'Receipt';

  @override
  String get debtsViewDetails => 'Details';

  @override
  String get debtsDaysSinceInvoice => 'days';

  @override
  String get debtsAdvanceOf => 'Down payment';

  @override
  String get debtsTapForDetails => 'Tap to view invoice details';

  @override
  String get debtsNoInvoicesInFilter =>
      'No invoices in current search or filter';

  @override
  String get debtsNoDebtInvoices => 'No debt invoices registered';

  @override
  String get debtsClearSearchHint =>
      'Clear the search or select \"All\" in the filter bar.';

  @override
  String get debtsNewSaleHint =>
      'From \"New Sale\" choose \"credit\" type to show the deferred amount here.';

  @override
  String get hubInventoryTitle => 'Inventory Center';

  @override
  String get hubProductsList => 'Products List';

  @override
  String get hubProductsListDesc => 'Search, filter, and manage all items';

  @override
  String get hubAddProduct => 'Add New Product';

  @override
  String get hubAddProductDesc => 'Create a new item in inventory';

  @override
  String get hubQuickUpdate => 'Update Existing Product';

  @override
  String get hubQuickUpdateDesc =>
      'Search, barcode, and adjust prices & quantities without creating new item';

  @override
  String get hubVouchers => 'Stock Movements';

  @override
  String get hubVouchersDesc => 'Incoming, outgoing, warehouse transfers';

  @override
  String get hubWarehouses => 'Warehouse Management';

  @override
  String get hubWarehousesDesc => 'Add and edit warehouses and locations';

  @override
  String get hubPriceLists => 'Price Lists';

  @override
  String get hubPriceListsDesc => 'Custom prices for customers and groups';

  @override
  String get hubStocktaking => 'Periodic Stocktaking';

  @override
  String get hubStocktakingDesc => 'Match physical stock with system';

  @override
  String get hubPurchaseOrders => 'Purchase Orders';

  @override
  String get hubPurchaseOrdersDesc =>
      'Create and track purchase orders from suppliers';

  @override
  String get hubAnalytics => 'Stock Analytics';

  @override
  String get hubAnalyticsDesc => 'Stock value, alerts, most popular';

  @override
  String get hubSettings => 'Inventory Settings';

  @override
  String get hubSettingsDesc =>
      'Activity type, product features, enable features';

  @override
  String get hubTenantSelect => 'Select Account/Tenant';

  @override
  String get hubTenantClose => 'Close';

  @override
  String get hubCustomizeUnits => 'Customize Inventory Units';

  @override
  String get hubCustomizeUnitsDesc =>
      'Hide any unit you don\'t need now. You can restore them later from the same place';

  @override
  String get hubCancel => 'Cancel';

  @override
  String get hubSave => 'Save';

  @override
  String get hubRefresh => 'Refresh';

  @override
  String get hubCustomize => 'Customize Units';

  @override
  String get hubSwitchTenant => 'Switch Tenant';

  @override
  String get hubAllHidden => 'All units are hidden or disabled from settings';

  @override
  String get hubManageUnits => 'Manage Units';

  @override
  String get hubReloadOnReturn =>
      'Reload when returning (settings may have changed)';

  @override
  String get bsTitle => 'Barcode Settings';

  @override
  String get bsSubtitle =>
      'Configure barcode formats, weight-embedded barcodes, and pricing settings';

  @override
  String get bsTypeTitle => 'Barcode Type';

  @override
  String get bsTypeCode128Desc =>
      'Flexible barcode supporting letters, numbers and symbols. Widely used in logistics and warehousing';

  @override
  String get bsTypeEan13Desc =>
      'Standard composed of 13 digits commonly used in retail. Includes country code, manufacturer code, and product code';

  @override
  String get bsTypeLabel =>
      'Choose the barcode standard the system will use for creating and reading product barcodes';

  @override
  String get bsWeightEmbedded => 'Weight-Embedded Barcode';

  @override
  String get bsWeightEnabled => 'Enabled';

  @override
  String get bsWeightDisabled => 'Disabled';

  @override
  String get bsWeightDesc =>
      'Use weight-embedded barcode so the system can read product weight and price directly from the barcode';

  @override
  String get bsWeightFormat => 'Weight-Embedded Barcode Format';

  @override
  String get bsWeightFormatDesc =>
      'Enter the weight-embedded barcode format according to the template, where digits represent product, weight digits, and price digits';

  @override
  String get bsWeightExample =>
      'For example, if weight is displayed in 4 digits it will appear as grams, and if in 5 digits it will appear as tens of grams';

  @override
  String get bsWeightUnit => 'Weight Unit Division';

  @override
  String get bsWeightUnitExample => 'Example';

  @override
  String get bsWeightUnitDesc =>
      'Enter the value used by the system to convert the weight unit in the barcode to your selling unit. Example: 1000 means the barcode weight is in grams and your selling unit is kilograms';

  @override
  String get bsCurrencyDivision => 'Currency Division';

  @override
  String get bsCurrencyExample => 'Example';

  @override
  String get bsCurrencyDesc =>
      'Enter the value used by the system to convert the price from the embedded unit to your base currency unit';

  @override
  String get bsFormatLabel => 'Embedded Barcode Format';

  @override
  String get bsFormatError =>
      'The embedded barcode format should only contain letters W, P, and D';

  @override
  String get bsWeightUnitError =>
      'Enter a valid positive value to divide the weight unit';

  @override
  String get bsCurrencyDivError =>
      'Enter a valid positive value to divide the currency';

  @override
  String get bsSaveSuccess => 'Barcode settings saved';

  @override
  String get bsSaveError => 'Failed to save';

  @override
  String get imTabAll => 'All';

  @override
  String get imTabDeposit => 'Deposit';

  @override
  String get imTabWithdrawal => 'Withdrawal';

  @override
  String get imTabTransfer => 'Transfer';

  @override
  String get imSortNewest => 'Newest';

  @override
  String get imSortOldest => 'Oldest';

  @override
  String get imLoadError => 'Failed to load movements';

  @override
  String get stOpenSessions => 'Open Sessions';

  @override
  String get stCompleted => 'Completed';

  @override
  String get stCloseSessionConfirm => 'Do you want to close this session?';

  @override
  String get stCategory => 'Category';

  @override
  String get stStarted => 'Started';

  @override
  String get stClosed => 'Closed';

  @override
  String get stSystemQty => 'System';

  @override
  String get stDifference => 'Difference';

  @override
  String get stReport => 'Report';

  @override
  String get stActualQty => 'Actual';

  @override
  String get plRetail => 'Retail List';

  @override
  String get plRetailDesc => 'Retail prices for regular customers';

  @override
  String get plWholesale => 'Wholesale List';

  @override
  String get plWholesaleDesc => 'Wholesale prices for distributors and traders';

  @override
  String get plVIP => 'VIP Customer List';

  @override
  String get plVIPDesc => 'Special prices for loyal customers';

  @override
  String get plDeleteConfirm => 'Do you want to delete?';

  @override
  String get plCategory => 'Category';

  @override
  String get plPrices => 'Prices';

  @override
  String get plSellPrice => 'Sell Price';

  @override
  String get rptDashboard => 'Dashboard';

  @override
  String get rptDashboardSub => 'KPIs & period';

  @override
  String get rptSalesInvoices => 'Sales & Invoices';

  @override
  String get rptSalesInvoicesSub => 'Payment types & returns';

  @override
  String get rptCustomers => 'Customers';

  @override
  String get rptCustomersSub => 'Top buyers';

  @override
  String get rptDebts => 'Debts';

  @override
  String get rptDebtsSub => 'Customer balances';

  @override
  String get rptInstallments => 'Installments';

  @override
  String get rptInstallmentsSub => 'Period plans';

  @override
  String get rptStaff => 'Staff';

  @override
  String get rptStaffSub => 'Recording performance';

  @override
  String get rptAnalyticsMargin => 'Analytics & Margin';

  @override
  String get rptAnalyticsMarginSub => 'Products & estimated margin';

  @override
  String get rptReportSettings => 'Report Settings';

  @override
  String get rptReportSettingsSub => 'Default period & preferences';

  @override
  String get rptNoData => 'No data';

  @override
  String get rptDateFilter => 'Date filter';

  @override
  String get rptToday => 'Today';

  @override
  String get rptYesterday => 'Yesterday';

  @override
  String get rptLastWeek => 'Last week';

  @override
  String get rptLastMonth => 'Last month';

  @override
  String get rptLastQuarter => 'Last quarter';

  @override
  String get rptReset => 'Reset';

  @override
  String get rptApply => 'Apply';

  @override
  String get rptClose => 'Close';

  @override
  String get rptCopiedSectionName => 'Section name copied';

  @override
  String get rptSales => 'Sales';

  @override
  String get rptTotal => 'Total';

  @override
  String get rptReturns => 'Returns';

  @override
  String get rptCustomer => 'Customer';

  @override
  String get rptStaffLabel => 'Staff';

  @override
  String get rptOthers => 'Others';

  @override
  String get rptNoCustomerData => 'No customer data in this period';

  @override
  String get rptNoStaffSales => 'No sales recorded by staff for this period';

  @override
  String get rptTopBuyers => 'Top buyers by invoice name';

  @override
  String get rptSalesByCustomer => 'Sales distribution by customers';

  @override
  String get rptSalesByStaff => 'Sales distribution by staff';

  @override
  String get rptDebtsBalances => 'Recorded balances in customer ledger';

  @override
  String get rptInstallmentPlans =>
      'Installment plans linked to period invoices';

  @override
  String get rptDetails => 'Details';

  @override
  String get rptStaffPercentage =>
      'Each staff member\'s percentage of total sales';

  @override
  String get rptConsistentWithPie =>
      'Consistent with pie chart and table percentages';

  @override
  String get rptUnknown => 'Unknown';

  @override
  String get rptNoName => 'No name';

  @override
  String get rptSelectedPeriod => 'Selected period';

  @override
  String get rptApproxNet => 'Approx. net';

  @override
  String get rptTotalExpenses => 'Total expenses';

  @override
  String get rptNetAfterExpenses => 'Net after expenses';

  @override
  String get rptInvoicesReturns => 'Invoices & returns';

  @override
  String get rptDailySalesInRange => 'Daily sales trend in period';

  @override
  String get rptPiePayments => 'Payment type distribution';

  @override
  String get osDescription =>
      'After logging in, view cash register balance, inventory, add money, then identify the shift employee';

  @override
  String get osSessionExpired =>
      'Session ended in background while loading screen';

  @override
  String get osUnexpectedError => 'Unexpected error during initialization';

  @override
  String get osPasswordRequired =>
      'When returning to the app with an open shift, we ask for the shift employee\'s password';

  @override
  String get osShiftEmployee => 'Shift Employee';

  @override
  String get osOpeningBalance => 'Opening Balance (System)';

  @override
  String get osManualCount => 'Manual Cash Count';

  @override
  String get osAddedMoney => 'Added Money at Opening';

  @override
  String get osOpeningShift => 'Open Shift';

  @override
  String get osErrorOpening => 'Failed to open shift';

  @override
  String get osNoShiftId =>
      'Operation completed without valid shift ID, try again';

  @override
  String get osShiftOpened => 'Shift opened successfully';

  @override
  String get osAmountHint => 'Amount shown at inventory count';

  @override
  String get osAmountLabel =>
      'Enter the actual amount in the cash register now';

  @override
  String get osExample => 'Example';

  @override
  String get osAddMoney => 'Add money to register';

  @override
  String get osAddMoneyDesc =>
      'Optional - use if you add cash before starting sales';

  @override
  String get osLogout => 'Exit Account';

  @override
  String get osReviewBalance =>
      'Review the system cash register balance, then record the actual count before starting work';

  @override
  String get osOpeningSystemBalance => 'Opening Cash Register Balance';

  @override
  String get osOpeningLoading => 'Opening shift...';

  @override
  String get osStaffDialogTitle => 'Shift Employee Dialog';

  @override
  String get osStaffDialogDesc =>
      'Select a registered user by card code or scan';

  @override
  String get osAllActiveUsers => 'All active users';

  @override
  String get osErrorLoadingUsers => 'Failed to load shift users';

  @override
  String get osInvalidCard => 'Scanned text is not a valid identity code';

  @override
  String get osSelectUser => 'Select the shift user from the list or scan card';

  @override
  String get osUserNotFound => 'User not found, select another user';

  @override
  String get osNoLocalPassword =>
      'No local password for this account, set a password from user management';

  @override
  String get osWrongPassword => 'Wrong login password';

  @override
  String get osSelectEmployee =>
      'Select the employee responsible for the register in this shift';

  @override
  String get osNoActiveUsers =>
      'No active users in the system, add a user from user management';

  @override
  String get osUserLabel => 'Shift User';

  @override
  String get osSelectUserHint => 'Select a user';

  @override
  String get osDisplayName => 'Display Name';

  @override
  String get osAutoDetermined => 'Auto-determined';

  @override
  String get osScanDesc =>
      'Select user by camera or external reader, then enter password to confirm';

  @override
  String get osScanCamera => 'Scan with camera';

  @override
  String get osExternalReader => 'External Reader';

  @override
  String get osPressToScan => 'Press here then scan card';

  @override
  String get osInvalidIdCode => 'Scanned text is not a valid identity code';

  @override
  String get osLoginPassword => 'Login Password';

  @override
  String get osSessionEnded => 'User session ended, log in again';

  @override
  String get osCannotBeNegative => 'Added amount cannot be negative';

  @override
  String osErrorStaffDialog(Object error) {
    return 'Failed to open staff selection dialog: $error';
  }

  @override
  String get osNoStaffSelected => 'No shift employee selected';

  @override
  String get osIncompleteData =>
      'Incomplete shift employee data, select employee again';

  @override
  String get osPasswordNotStored =>
      'We don\'t store login passwords, verification was in the dialog only';

  @override
  String get osAutoFixed =>
      'Shift employee data auto-fixed on this device, you can continue';

  @override
  String get osStaffMissing =>
      'Registered shift employee no longer exists, close shift from another device or contact admin';

  @override
  String get osAuthRejected =>
      'Shift employee authentication rejected, app should not open on open shift without proof';

  @override
  String get osReturningToLogin =>
      'Logging out this device session and returning to login screen';

  @override
  String get osUseExistingShift => 'Return to existing shift instead';

  @override
  String get sdRecordSupplierReceipt => 'Record Supplier Receipt';

  @override
  String get sdRecordSupplierReceiptSubtitle =>
      'Their receipt number & date + amount + optional photo';

  @override
  String get sdSupplierPayment => 'Supplier Payment';

  @override
  String get sdSupplierPaymentSubtitle => 'Optional: deduct from cash drawer';

  @override
  String get sdSupplierReturn => 'Supplier Return (reduces payable)';

  @override
  String get sdSupplierReturnSubtitle => 'Records movement without cash drawer';

  @override
  String get sdSupplierReceiptTitle => 'Supplier Receipt';

  @override
  String get sdTheirReceiptNo => 'Their receipt/invoice number';

  @override
  String get sdTheirReceiptDate => 'Their receipt date';

  @override
  String sdTheirReceiptDateWith(Object date) {
    return 'Their receipt date: $date';
  }

  @override
  String get sdAmountFdj => 'Amount (Fdj)';

  @override
  String get sdInternalNote => 'Internal note';

  @override
  String get sdPhoto => 'Photo';

  @override
  String get sdGallery => 'Gallery';

  @override
  String sdPhotoSelected(Object name) {
    return 'Photo: $name';
  }

  @override
  String get sdCancel => 'Cancel';

  @override
  String get sdSave => 'Save';

  @override
  String get sdEnterValidAmount => 'Enter a valid amount';

  @override
  String sdSaveFailed(Object error) {
    return 'Save failed: $error';
  }

  @override
  String get sdReceiptRecorded => 'Supplier receipt recorded';

  @override
  String get sdRecordDiscountFromCash => 'Record cash drawer discount';

  @override
  String get sdDisableCashHint =>
      'Disable if paid from bank account or outside the system';

  @override
  String get sdConfirm => 'Confirm';

  @override
  String get sdPaymentRecordedCash => 'Payment recorded & cash drawer updated';

  @override
  String get sdPaymentRecordedNoCash =>
      'Payment recorded (without cash drawer)';

  @override
  String get sdRecordFailed => 'Recording failed';

  @override
  String get sdReturnTitle => 'Supplier Return';

  @override
  String get sdNote => 'Note';

  @override
  String get sdReturnCashHint =>
      'This return will be recorded in supplier payable only, without cash drawer movement.';

  @override
  String get sdRegister => 'Register';

  @override
  String get sdReturnDefaultNote => 'Supplier return (without cash drawer)';

  @override
  String get sdReturnFailed => 'Failed to record return';

  @override
  String get sdReturnRecorded => 'Supplier return recorded';

  @override
  String get sdReversePayment => 'Reverse Payment?';

  @override
  String sdReverseCashDesc(Object amount) {
    return 'Payment record will be deleted and a cash deposit of $amount Fdj will be recorded';
  }

  @override
  String get sdReverseNoCashDesc =>
      'Only the payment record will be deleted (was not linked to cash drawer).';

  @override
  String get sdConfirmReverse => 'Confirm Reversal';

  @override
  String get sdReverseFailed => 'Reversal failed';

  @override
  String get sdReversed => 'Payment reversed';

  @override
  String get sdNoActiveWarehouse =>
      'No active warehouse — add one from warehouse settings';

  @override
  String get sdTargetWarehouse => 'Target Warehouse';

  @override
  String get sdContinue => 'Continue';

  @override
  String get sdLinkedVoucherCreated => 'Voucher created & linked';

  @override
  String get sdVoucherCreatedLinkFailed => 'Voucher created but linking failed';

  @override
  String sdCreationFailed(Object error) {
    return 'Creation failed: $error';
  }

  @override
  String get sdUnlinkVoucher => 'Unlink Voucher?';

  @override
  String get sdUnlinkVoucherDesc =>
      'Will remove the link between supplier receipt and stock voucher only, without deleting the voucher.';

  @override
  String get sdUnlinked => 'Link removed';

  @override
  String get sdLinkToSupplierReceipt =>
      'Link to Supplier Receipt — Incoming Voucher';

  @override
  String get sdEmptyVoucherAutoLink => 'Empty incoming voucher + auto-link';

  @override
  String get sdLinkInstruction =>
      'Or select a registered incoming voucher, or enter voucher number / ID then \"Search & Link\".';

  @override
  String get sdNoVouchersYet =>
      'No incoming vouchers in the database yet — use the field below when available.';

  @override
  String get sdLatestVouchers => 'Latest Vouchers';

  @override
  String get sdLinked => 'Linked';

  @override
  String get sdLinkFailed => 'Linking failed';

  @override
  String get sdVoucherNoOrId => 'Voucher number or ID';

  @override
  String get sdClose => 'Close';

  @override
  String get sdVoucherNotFound => 'No incoming voucher found with this number';

  @override
  String get sdSearchAndLink => 'Search & Link';

  @override
  String get sdEditSupplier => 'Edit Supplier';

  @override
  String get sdName => 'Name';

  @override
  String get sdPhone => 'Phone';

  @override
  String get sdSupplierDefault => 'Supplier';

  @override
  String get sdEditTooltip => 'Edit';

  @override
  String get sdSupplierNotFound => 'Supplier not found';

  @override
  String get sdBalanceOwedToYou => 'Nothing owed to this supplier';

  @override
  String get sdOverpayment => 'Balance in your favor (overpayment / error)';

  @override
  String get sdBalanceWithSupplier => 'Balance with supplier';

  @override
  String get sdNoBillForPayout =>
      'No supplier receipt covers this payment — use \"Reverse Payment\" next to the payment';

  @override
  String sdPhoneLabel(Object phone) {
    return 'Phone: $phone';
  }

  @override
  String get sdPaymentWithoutReceipt =>
      'Warning: paid to supplier without recording a receipt for the same amount. If the payment was made by mistake,';

  @override
  String get sdSupplierReturnLabel => 'Supplier Return';

  @override
  String get sdSupplierPaymentLabel => 'Supplier Payment';

  @override
  String get sdSupplierReceiptLabel => 'Supplier Receipt';

  @override
  String get sdSupplierReceipts => 'Supplier Receipts';

  @override
  String get sdLinkReceiptInstruction =>
      'You can link each receipt to an incoming stock voucher (voucher number) when recording vouchers in the database.';

  @override
  String get sdNoReceiptsYet => 'No receipts yet.';

  @override
  String get sdOurPayments => 'Our Payments';

  @override
  String get sdNoPaymentsYet => 'No payments yet.';

  @override
  String get sdRecordLabel => 'Record';

  @override
  String sdBillRef(Object ref) {
    return 'Receipt #$ref';
  }

  @override
  String get sdBillNoRef => 'Receipt (no number)';

  @override
  String get sdUnlinkVoucherTooltip => 'Unlink Voucher';

  @override
  String get sdLinkVoucherTooltip => 'Link Incoming Voucher';

  @override
  String sdLinkedVoucher(Object ref) {
    return 'Incoming Voucher: $ref';
  }

  @override
  String sdTheirDate(Object date) {
    return 'Their date: $date';
  }

  @override
  String sdRecordedDate(Object date) {
    return 'Recorded: $date';
  }

  @override
  String sdPaymentRef(Object ref) {
    return 'Payment #$ref';
  }

  @override
  String get sdReverseTooltip => 'Reverse Payment (error / overpayment)';

  @override
  String get sdRecordedInCash => 'Recorded in cash drawer';

  @override
  String get sdNotInCash => 'Without cash drawer';

  @override
  String sdInvoiceVoucherRef(Object ref) {
    return 'Invoice Voucher #$ref';
  }

  @override
  String sdLinkedVoucherShort(Object ref) {
    return 'Linked to voucher #$ref';
  }

  @override
  String get sohPending => 'Pending';

  @override
  String get sohInProgress => 'In Progress';

  @override
  String get sohReadyForDelivery => 'Ready for Delivery';

  @override
  String get sohDelivered => 'Delivered';

  @override
  String get sohSinceStart => 'Since start';

  @override
  String get sohOverdue => 'Overdue';

  @override
  String get sohTimeRemaining => 'Time remaining';

  @override
  String get sohTryReLogin =>
      'Try logging out and back in, or restart the app.';

  @override
  String get sohRestartToCompleteInit =>
      'Restart the app to complete database initialization.';

  @override
  String get sohUnexpectedLocalData =>
      'Unexpected local data; restart the app. If it persists, report to support.';

  @override
  String get sohDatabaseBusy =>
      'Database is busy; wait a few seconds and try again.';

  @override
  String get sohPersistentError => 'If the problem persists, restart the app.';

  @override
  String get sohNewTicketBreadcrumb => 'New Maintenance Ticket';

  @override
  String get sohFailedToLoadTickets => 'Failed to load tickets.';

  @override
  String sohDebugDetails(Object error) {
    return 'Debug details: $error';
  }

  @override
  String get sohRetry => 'Retry';

  @override
  String get sohNoTicketsInTab => 'No tickets in this tab.';

  @override
  String get sohNoMatchingResults => 'No matching results.';

  @override
  String get sohReturnBadge => 'Return';

  @override
  String get sohCreditSaleBadge => 'Credit Sale';

  @override
  String get sohInstallmentBadge => 'Installment';

  @override
  String get sohDeliveryBadge => 'Delivery';

  @override
  String get sohDeadlineOverdue =>
      'Deadline exceeded — complete the work or update the status.';

  @override
  String get sohTicketDetailsBreadcrumb => 'Ticket Details';

  @override
  String get sohCustomerDefault => 'Customer';

  @override
  String sohSerialPlate(Object value) {
    return 'Serial/Plate: $value';
  }

  @override
  String sohValueLabel(Object value) {
    return 'Value: $value';
  }

  @override
  String sohPaidLabel(Object value) {
    return 'Paid: $value';
  }

  @override
  String sohDepositLabel(Object value) {
    return 'Deposit: $value';
  }

  @override
  String sohRemainingLabel(Object value) {
    return 'Remaining: $value';
  }

  @override
  String get sohConvertToInvoiceTooltip => 'Convert to Invoice';

  @override
  String get sohItemsSentToSale => 'Items sent to sale screen.';

  @override
  String get sohFailedToOpenSale =>
      'Failed to open sale — check the ticket or retry.';

  @override
  String get sohWorkStarted => 'Work started and deadline tracking begun';

  @override
  String get sohStartWorkLabel => 'Start Work';

  @override
  String get sohTicketMovedToReady => 'Ticket moved to Ready for Delivery';

  @override
  String get sohMoveToReady => 'Move to Ready';

  @override
  String get sohReadyForDeliveryLabel => 'Ready for Delivery';

  @override
  String get sohGoToPaymentLabel => 'Go to Payment';

  @override
  String get sohDeliveryRecorded => 'Delivery recorded';

  @override
  String get sohDeliveryFailed => 'Delivery failed — check amounts in details.';

  @override
  String get sohConfirmDelivery => 'Confirm Delivery';

  @override
  String get sohMaintenanceOrdersTitle => 'Maintenance Orders';

  @override
  String get sohRefreshTooltip => 'Refresh';

  @override
  String get sohNewTicketLabel => 'New Ticket';

  @override
  String get sohSearchHint => 'Search by customer, device, or serial…';

  @override
  String get sohDefaultServiceName => 'Technical Service';

  @override
  String sohSerialPrefix(Object value) {
    return 'S/N: $value';
  }

  @override
  String get sohSparePartDefault => 'Spare Part';

  @override
  String get sohNewSaleBreadcrumb => 'New Sale';

  @override
  String get psTitle => 'Product Settings';

  @override
  String get psTabSetup => 'Product Setup';

  @override
  String get psTabTracking => 'Product Tracking';

  @override
  String get psTabVouchers => 'Inventory Vouchers';

  @override
  String get psTabDefaults => 'Default Values';

  @override
  String get psSetupTitle => 'Product Setup';

  @override
  String get psSetupDesc =>
      'Auto-numbering, advanced pricing, unit system, and bundle management.';

  @override
  String get psNextSkuTitle => 'Next Product Serial Number';

  @override
  String get psNextSkuDecoration => 'Next Number';

  @override
  String get psNumberingSettings => 'Numbering Settings';

  @override
  String get psNextSkuHint =>
      'The number displayed as the next identifier hint. The prefix is saved in numbering settings.';

  @override
  String get psAdvancedPricingTitle => 'Advanced Pricing Options';

  @override
  String get psEnabled => 'Enabled';

  @override
  String get psDisabled => 'Disabled';

  @override
  String get psAdvancedPricingDesc =>
      'When enabled: in \"Add New Product\", the selling price and minimum price are suggested from the purchase price based on the margin below (editable manually before saving).';

  @override
  String get psCostMarginDecoration => 'Cost Margin (%)';

  @override
  String get psCostMarginHint => 'Example: 25';

  @override
  String get psMinSellPriceDesc =>
      'Minimum selling price as percentage of selling price (%)';

  @override
  String get psMinSellPriceHint => '100 = Equal to selling price';

  @override
  String get psSaveSuggestedPrices => 'Save Suggested Prices';

  @override
  String get psPricingExample =>
      'Example: cost 10,000 and margin 25% → suggested selling price 12,500. Minimum price ratio 100% makes minimum price = selling price.';

  @override
  String get psMultiUnitTitle => 'Use Multiple Units per Item';

  @override
  String get psManageUnits => 'Manage Units';

  @override
  String get psMultiUnitDesc =>
      'Allow purchasing in one unit and selling in another with conversion factors from unit templates.';

  @override
  String get psDefaultStockDisplayTitle => 'Default Unit for Stock Display';

  @override
  String get psUnitBase => 'Template Base Unit';

  @override
  String get psUnitBaseDesc => 'Display stock in the template\'s base unit.';

  @override
  String get psUnitSale => 'Sale Unit';

  @override
  String get psUnitSaleDesc => 'Display balance in the default sale unit.';

  @override
  String get psUnitPurchase => 'Purchase Unit';

  @override
  String get psUnitPurchaseDesc =>
      'Display balance in the default purchase unit.';

  @override
  String get psStockDisplayDesc =>
      'Determines how stock is displayed in reports and stocktaking when multi-unit is enabled.';

  @override
  String get psBundlesTitle => 'Bundles and Composite Units';

  @override
  String get psBundlesAllowed => 'Allowed';

  @override
  String get psBundlesNotAllowed => 'Not Allowed';

  @override
  String get psBundlesDesc =>
      'Define a composite item from several items and deduct stock on assembly or sale (requires future screen development).';

  @override
  String get psAddProductPoliciesTitle => 'Add Product Screen Policies';

  @override
  String get psShowAdvancedPricing => 'Show Advanced Pricing Section';

  @override
  String get psShowAdvancedPricingDesc =>
      'Controls visibility of tax, discount, minimum selling price, and profit margin.';

  @override
  String get psShowBarcodeField => 'Show Barcode Field';

  @override
  String get psBarcodeRequired => 'Barcode Required on Save';

  @override
  String get psShowImageField => 'Show Product Image Field';

  @override
  String get psImageRequired => 'Product Image Required';

  @override
  String get psShowExtraFields => 'Show Extra Fields';

  @override
  String get psShowExtraFieldsDesc =>
      'Such as: internal notes, tags, weight, and production/expiry dates.';

  @override
  String get psSupplierRequired => 'Supplier Required on Save';

  @override
  String get psWarehouseRequired => 'Warehouse Required on Save';

  @override
  String get psDefaultTrackingEnabled => 'Enable Stock Tracking by Default';

  @override
  String get psDefaultTrackingDesc =>
      'Affects the toggle state when opening the Add Product screen.';

  @override
  String get psAddProductPoliciesDesc =>
      'These policies apply directly to the \"Add New Product\" screen without affecting the sales screen.';

  @override
  String get psTrackingTitle => 'Product Tracking';

  @override
  String get psTrackingDesc =>
      'Configure tracking methods and system behavior when stock runs out.';

  @override
  String get psSerialBatchExpiryTitle => 'Serial / Batch / Expiry Tracking';

  @override
  String get psSerialBatchExpiryDesc =>
      'When enabled, tracking can be activated for each product individually during addition.';

  @override
  String get psNegativeStockTitle => 'Negative Stock';

  @override
  String get psNegativeStockStop =>
      'Stop operations when stock runs out for all products';

  @override
  String get psNegativeStockStopDesc =>
      'Prevent sales or disbursements when stock reaches zero.';

  @override
  String get psNegativeStockTrackableOnly =>
      'Allow only trackable products to have negative quantities';

  @override
  String get psNegativeStockTrackableDesc =>
      'Negative sales or disbursements are allowed per item policy.';

  @override
  String get psNegativeStockDesc =>
      'Determines system behavior when stock runs out.';

  @override
  String get psShowTotalAvailableTitle => 'Show Total and Available Quantity';

  @override
  String get psShowTotalAvailableDesc =>
      'Display total quantity vs available after reservations (when reservation is enabled later).';

  @override
  String get psVouchersTitle => 'Inventory Vouchers';

  @override
  String get psVouchersDesc =>
      'Create inventory requests, number transfer vouchers, and link them to sales and purchases.';

  @override
  String get psInventoryRequestsTitle => 'Inventory Requests';

  @override
  String get psInventoryRequestsDesc =>
      'Enable departments to submit inventory requests for review. Permissions are set from user roles when available.';

  @override
  String get psTransferVoucherNextTitle =>
      'Next Inventory Transfer Voucher Serial Number';

  @override
  String get psTransferVoucherNextDecoration => 'Number';

  @override
  String get psTransferVoucherNextDesc =>
      'The next suggested number for transfer vouchers.';

  @override
  String get psSalesVoucherTitle => 'Sales Invoice Inventory Vouchers';

  @override
  String get psSalesVoucherDesc =>
      'When enabled, creates a disbursement voucher requiring approval before stock deduction.';

  @override
  String get psPurchaseVoucherTitle => 'Purchase Invoice Inventory Vouchers';

  @override
  String get psPurchaseVoucherDesc =>
      'When enabled, creates an entry voucher requiring approval before stock addition.';

  @override
  String get psDefaultsTitle => 'System Default Values';

  @override
  String get psDefaultsDesc =>
      'Values suggested automatically for warehouses, products, and taxes.';

  @override
  String get psDefaultSubAccountTitle => 'Default Sub-Account';

  @override
  String get psPleaseChoose => 'Please choose';

  @override
  String get psNone => '— None —';

  @override
  String get psGeneralInventory => 'General Inventory';

  @override
  String get psRawMaterials => 'Raw Materials';

  @override
  String get psCommercial => 'Commercial';

  @override
  String get psDefaultSubAccountDesc =>
      'Used as an accounting reference when linking inventory to accounts.';

  @override
  String get psDefaultWarehouseTitle => 'Default Warehouse';

  @override
  String get psManageWarehouses => 'Manage Warehouses';

  @override
  String get psChooseWarehouse => 'Choose a warehouse';

  @override
  String get psDefaultWarehouseDesc =>
      'Suggested when adding new products and inventory movements.';

  @override
  String get psDefaultPriceListTitle => 'Default Price List';

  @override
  String get psManagePriceLists => 'Manage Lists';

  @override
  String get psDefaultPriceListDesc =>
      'Used as the default price list for the current branch when the link is available.';

  @override
  String get psDefaultTax1Title => 'Default Tax 1';

  @override
  String get psManageTaxes => 'Manage Taxes';

  @override
  String get psTaxRatesDesc =>
      'Tax rates are set per product or from invoice settings.';

  @override
  String get psDefaultTax1Desc =>
      'Suggested for new products and compatible with the tax field in the product.';

  @override
  String get psDefaultTax2Title => 'Default Tax 2';

  @override
  String get psDefaultTax2Desc =>
      'For dual use when supporting two taxes later.';

  @override
  String get psReturnCostMethodTitle => 'Return Cost Calculation Method';

  @override
  String get psReturnBySalePrice => 'By Sale Price';

  @override
  String get psReturnBySalePriceDesc =>
      'Use the selling price from the sales invoice.';

  @override
  String get psReturnByAvgCost => 'By Last Average Cost';

  @override
  String get psReturnByAvgCostDesc =>
      'Use the average cost when creating the return.';

  @override
  String get psReturnCostDesc => 'Applied when processing sales returns.';

  @override
  String get psBusinessNatureTitle => 'Business Activity Nature';

  @override
  String get psNatureProducts => 'Products Only';

  @override
  String get psNatureProductsDesc => 'Suitable for physical inventory.';

  @override
  String get psNatureServices => 'Services Only';

  @override
  String get psNatureServicesDesc => 'Time-based or project-based activities.';

  @override
  String get psNatureBoth => 'Products and Services';

  @override
  String get psNatureBothDesc => 'Combines both types in the system.';

  @override
  String get psBusinessNatureDesc =>
      'Determines the default focus in inventory and invoicing screens.';

  @override
  String get psVoucherPermEnabled => 'Enabled';

  @override
  String get psVoucherPermDisabled => 'Disabled';

  @override
  String get psTaxExempt => 'Exempt';

  @override
  String get psCustomTax => 'Custom';

  @override
  String get psTransferSettingsTitle => 'Transfer Numbering Settings';

  @override
  String get psOptionalPrefix => 'Optional Prefix';

  @override
  String get psExamplePrefix => 'Example: TR-';

  @override
  String get psCancel => 'Cancel';

  @override
  String get psSave => 'Save';

  @override
  String get psSavePrefixHint => 'The prefix is saved in numbering settings.';

  @override
  String get psSerialHint =>
      'The number displayed as next identifier hint. The prefix is saved in numbering settings.';

  @override
  String get psTaxToggleTooltip => 'Disable tax handling — hide the tax field';

  @override
  String get psShowTaxField => 'Show Tax Field';

  @override
  String get psTaxToggleDesc =>
      'In \'Add New Product\'. The block icon disables tax entirely.';

  @override
  String get psDiscountToggleTooltip =>
      'Disable discount handling — hide the discount fields';

  @override
  String get psShowDiscountFields => 'Show Discount Fields';

  @override
  String get psDiscountToggleDesc =>
      'In \'Add New Product\'. The block icon disables discounts entirely.';

  @override
  String get sodEditTicket => 'Edit Ticket';

  @override
  String get sodSearchParts => 'Search parts…';

  @override
  String get sodProduct => 'Product';

  @override
  String get sodAddPart => 'Add Part';

  @override
  String get sodPart => 'Part';

  @override
  String get sodQuantity => 'Quantity';

  @override
  String get sodSalePrice => 'Sale Price (Fdj)';

  @override
  String get sodCancel => 'Cancel';

  @override
  String get sodAdd => 'Add';

  @override
  String get sodTechnicalService => 'Technical Service';

  @override
  String get sodSerialPlate => 'Serial/Plate';

  @override
  String get sodNewSale => 'New Sale';

  @override
  String get sodTicketDetails => 'Ticket Details';

  @override
  String get sodEdit => 'Edit';

  @override
  String get sodUpdate => 'Update';

  @override
  String get sodAddPartShort => 'Add Part';

  @override
  String get sodCustomer => 'Customer';

  @override
  String get sodSerialInfo => 'Serial/Plate';

  @override
  String get sodConvertToInvoice => 'Convert to Sales Invoice';

  @override
  String get sodParts => 'Parts';

  @override
  String get sodNoPartsYet => 'No parts added yet.';

  @override
  String get sodInvoiceItems => 'Invoice Items';

  @override
  String get sodViewOnly => 'View Only';

  @override
  String get sodInvoiceProductsDesc =>
      'Products and services registered in the linked sales invoice.';

  @override
  String get sodPastDue => 'Past due delivery';

  @override
  String get sodExpectedDelivery => 'Expected delivery date';

  @override
  String sodWorkDurationMin(Object minutes) {
    return 'Expected work duration: $minutes min';
  }

  @override
  String get sodPending => 'Pending';

  @override
  String get sodInProgress => 'In Progress';

  @override
  String get sodReadyForDelivery => 'Ready for Delivery';

  @override
  String get sodDelivered => 'Delivered';

  @override
  String get sodCancelled => 'Cancelled';

  @override
  String get sodFinancialSummary => 'Financial Summary (Fils)';

  @override
  String get sodService => 'Technical Service';

  @override
  String get sodPartsLabel => 'Parts';

  @override
  String get sodTotal => 'Total';

  @override
  String get sodPaidAdvance => 'Paid Advance';

  @override
  String get sodRemainingOnDelivery => 'Remaining on Delivery';

  @override
  String sodQtyPriceTotal(Object price, Object qty, Object total) {
    return 'Qty: $qty · Price: $price · Total: $total';
  }

  @override
  String sodQtyOnly(Object qty) {
    return 'Qty: $qty';
  }

  @override
  String get sodDelete => 'Delete';

  @override
  String get sodLoadError => 'Failed to load ticket data.';

  @override
  String get sodRetry => 'Retry';

  @override
  String get settingsImportMeds => 'Import Medicines';

  @override
  String get settingsImportMedsDesc => 'Add 157 medicines from inventory file';

  @override
  String get settingsImportMedsConfirm =>
      'Add 157 medicines to the product catalog. Do you want to continue?';

  @override
  String settingsImportedCount(Object count) {
    return '$count medicines imported successfully';
  }

  @override
  String settingsImportError(Object error) {
    return 'Error: $error';
  }

  @override
  String get settingsAppVersion => 'Version 1.0.0';

  @override
  String get settingsCopyright => '© 2026 Maarey. All rights reserved.';

  @override
  String get settingsLicenseActive => 'Active';

  @override
  String get settingsLicenseTrial => 'Trial';

  @override
  String get settingsLicenseInactive => 'Inactive';

  @override
  String get settingsLicenseDisconnected => 'Disconnected';

  @override
  String get settingsLicenseNone => 'No License';

  @override
  String get settingsDeviceAllowed => 'Device has been allowed to return';

  @override
  String settingsDeviceCount(Object count) {
    return '$count devices';
  }

  @override
  String get settingsSubscription => 'Subscription';

  @override
  String settingsSubscriptionExpires(Object date) {
    return 'Subscription expires: $date';
  }

  @override
  String settingsDaysRemaining(Object days) {
    return 'Approximately $days days remaining';
  }

  @override
  String get settingsSubscriptionActiveNoExpiry =>
      'Active subscription with no expiry date in the cloud.';

  @override
  String get settingsLinkedDevices => 'Devices linked to account';

  @override
  String get settingsUpdate => 'Update';

  @override
  String get settingsNoDevicesRegistered => 'No devices registered yet.';

  @override
  String settingsLastActive(Object date) {
    return 'Last active: $date';
  }

  @override
  String get settingsDisconnectedCannotLogin =>
      'Disconnected — cannot login until approved';

  @override
  String get settingsThisDevice => 'This device';

  @override
  String get settingsAllowReturn => 'Allow Return';

  @override
  String get settingsDisconnectDevice => 'Disconnect device';

  @override
  String get settingsAutoSync => 'Auto Sync';

  @override
  String get settingsAutoSyncDesc =>
      'A full database backup is uploaded from each device; the latest in the cloud is imported on the device.';

  @override
  String get settingsSyncNow => 'Sync Now';

  @override
  String settingsLastSync(Object date) {
    return 'Last sync: $date';
  }

  @override
  String get settingsSyncSuccess => 'Sync completed successfully';

  @override
  String get settingsClearCloudProducts => 'Clear Cloud Products';

  @override
  String get settingsClearCloudProductsDesc =>
      'All products will be deleted from the cloud only. Settings, invoices, and customers will not be affected. Do you want to continue?';

  @override
  String get settingsCleared => 'Cloud products cleared. Tap Sync Now';

  @override
  String settingsClearFailed(Object error) {
    return 'Clear failed: $error';
  }

  @override
  String get settingsViewSubscriptionPlans => 'View Subscription Plans';

  @override
  String get settingsSubscriptionPlans => 'Subscription Plans';

  @override
  String get settingsThankYou => 'Thank you for dealing with us';

  @override
  String get sofTenantError =>
      'Failed to determine tenant data. Reopen the app and try again.';

  @override
  String get sofDbInitError =>
      'Database needs initialization/update. Reopen the app and try again.';

  @override
  String get sofUnexpectedError => 'An unexpected error occurred while saving.';

  @override
  String get sofExpectedWorkDuration => 'Expected work duration';

  @override
  String get sofHours => 'hours';

  @override
  String get sofMinutes => 'minutes';

  @override
  String get sofCancel => 'Cancel';

  @override
  String get sofDone => 'Done';

  @override
  String get sofNotSet => 'Not set — tap to choose hours and minutes';

  @override
  String sofHoursMinutes(Object hours, Object minutes) {
    return '${hours}h ${minutes}m — tap to edit';
  }

  @override
  String sofHoursOnly(Object hours) {
    return '$hours hours — tap to edit';
  }

  @override
  String sofMinutesOnly(Object minutes) {
    return '$minutes minutes — tap to edit';
  }

  @override
  String get sofTaskNotStarted =>
      'After \'Start Work\' from the ticket list, the deadline is fixed from the start time.';

  @override
  String sofWorkDurationMin(Object minutes) {
    return 'Expected work duration: $minutes min';
  }

  @override
  String get sofPastDue => 'Past due delivery';

  @override
  String get sofExpectedDelivery => 'Expected delivery date (for customer)';

  @override
  String get sofSearchServices => 'Search services…';

  @override
  String get sofService => 'Service';

  @override
  String get sofEditTicket => 'Edit Ticket';

  @override
  String get sofNewTicket => 'New Ticket';

  @override
  String get sofSave => 'Save';

  @override
  String get sofSaveError => 'An error occurred while saving. Try again.';

  @override
  String get sofAll => 'All';

  @override
  String get sofCustomerName => 'Customer Name';

  @override
  String get sofCustomerSearchHint => 'Start typing to search customers';

  @override
  String get sofCustomerRequired => 'Customer name is required';

  @override
  String get sofCustomer => 'Customer';

  @override
  String get sofNewCustomer => 'New customer';

  @override
  String get sofDeviceName => 'Device / Vehicle Name';

  @override
  String get sofDeviceNameRequired => 'Device name is required';

  @override
  String get sofSerialPlateOptional => 'Serial / Plate (optional)';

  @override
  String get sofSerialHint =>
      'If left empty, an internal reference number is auto-generated for the ticket (not the device serial).';

  @override
  String get sofExpectedDuration => 'Expected Duration';

  @override
  String get sofServiceTitle => 'Service';

  @override
  String get sofServiceNotSet => 'Not set (optional)';

  @override
  String get sofServiceSet => 'Set';

  @override
  String get sofSelect => 'Select';

  @override
  String get sofEstimatedPrice => 'Estimated Price (from service)';

  @override
  String get sofEstimatedPriceHint => 'Auto-filled from service price';

  @override
  String get sofAgreedPrice => 'Agreed Price (Fdj)';

  @override
  String get sofAgreedPriceHint => 'The only place to edit the price';

  @override
  String get sofInvalidAmount => 'Enter a valid amount';

  @override
  String get sofAdvancePayment => 'Advance Payment (Fdj)';

  @override
  String get sofProblemDesc => 'Problem Description (optional)';

  @override
  String get sofSaving => 'Saving…';

  @override
  String get sofSaveTicket => 'Save Ticket';

  @override
  String get licCheckingLicense => 'Checking license…';

  @override
  String get licNoInternet => 'No internet connection';

  @override
  String get licOfflineWarning =>
      'The app is working with last saved license data.\nMake sure to connect at the earliest opportunity.';

  @override
  String get licRetry => 'Retry';

  @override
  String get licEnterWithoutConnection => 'Enter without connection';

  @override
  String get licUpgradeForDevices => 'Upgrade plan to add devices';

  @override
  String osUnexpectedInitError(Object error) {
    return 'Unexpected error during initialization: $error';
  }

  @override
  String osErrorOpeningShift(Object error) {
    return 'Failed to open shift: $error';
  }

  @override
  String osShiftOpenedMsg(Object id) {
    return 'Shift #$id opened successfully';
  }

  @override
  String osOpenShiftNotifTitle(Object id) {
    return 'Open shift #$id';
  }

  @override
  String osDetailStaff(Object name) {
    return 'Shift staff: $name';
  }

  @override
  String osDetailSystemBalance(Object amount) {
    return 'System balance at open: $amount';
  }

  @override
  String osDetailPhysicalCount(Object amount) {
    return 'Manual cash count: $amount';
  }

  @override
  String osDetailAddedCash(Object amount) {
    return 'Added cash at open: $amount';
  }

  @override
  String get osResumeShift => 'Resume Shift';

  @override
  String osResumeShiftDesc(Object name) {
    return 'An open shift exists under \"$name\". Enter the employee password to continue.';
  }

  @override
  String get osResumeShiftHint => 'Enter the employee password to continue';

  @override
  String osUserFallback(Object id) {
    return 'User #$id';
  }

  @override
  String osErrorLoadingUsersParam(Object error) {
    return 'Failed to load shift users: $error';
  }

  @override
  String get osPasswordHint => 'Selected user password';

  @override
  String get osOpeningShiftLoading => 'Opening shift…';

  @override
  String get csNoOpenShift => 'No open shift';

  @override
  String get csCloseShiftTitle => 'Close Shift';

  @override
  String get csShiftSummary => 'Shift Summary';

  @override
  String get csSalesInvoices => 'Sales Invoices';

  @override
  String get csReturnInvoices => 'Return Invoices';

  @override
  String get csPasswordVerifyTitle =>
      'Confirm with shift employee password (optional)';

  @override
  String get csPasswordHintNoUser =>
      'Enter login password to verify. Leave empty to skip verification';

  @override
  String csPasswordHintWithName(Object name) {
    return 'Enter password for \"$name\" to verify. Leave empty to skip verification';
  }

  @override
  String get csPasswordPlaceholder => 'Login password (optional)';

  @override
  String get csSystemBalance => 'Cash Register Balance (System)';

  @override
  String get csBalanceDesc =>
      'Balance is auto-determined from register movements. Review the values then confirm withdrawal.';

  @override
  String get csCashInBox => 'Cash in Register';

  @override
  String get csWithdrawAmount => 'Amount to Withdraw';

  @override
  String get csRemainingAfterWithdraw =>
      'Remaining in Register After Withdrawal';

  @override
  String get csConfirmClose => 'Confirm & Close Shift';

  @override
  String get csPasswordVerifyError =>
      'Failed to verify password for this account';

  @override
  String get csUserVerifyError => 'Failed to verify current user';

  @override
  String get csNoSavedPassword =>
      'No saved password for this account. Leave the field empty.';

  @override
  String get csWrongPassword => 'Incorrect password';

  @override
  String get csWithdrawNegative => 'Withdrawal amount cannot be negative';

  @override
  String get csWithdrawExceeds =>
      'Withdrawal amount exceeds the cash in register';

  @override
  String csCloseError(Object error) {
    return 'Failed to close shift: $error';
  }

  @override
  String get csRefreshBalance => 'Refresh balance';

  @override
  String get csInvalidValue => 'Invalid value';

  @override
  String csCloseNotifTitle(Object id) {
    return 'Close shift #$id';
  }

  @override
  String get csShiftClosedMsg => 'Shift closed. Open a new shift to continue.';

  @override
  String csDetailStaff(Object name) {
    return 'Shift staff: $name';
  }

  @override
  String csDetailSystemBalanceClose(Object amount) {
    return 'System balance at close: $amount Fdj';
  }

  @override
  String csDetailDeclaredCash(Object amount) {
    return 'Declared cash in register: $amount Fdj';
  }

  @override
  String csDetailWithdrawn(Object amount) {
    return 'Withdrawn: $amount Fdj';
  }

  @override
  String csDetailRemaining(Object amount) {
    return 'Remaining in register after withdrawal: $amount Fdj';
  }

  @override
  String get cashBucketInvoices =>
      'Invoices & Sales (entries linked to invoice)';

  @override
  String get cashBucketOther => 'Other Movements';

  @override
  String get cashDeclaredClosingCash => 'Declared Remaining in Cashbox';

  @override
  String get expCsvHeader =>
      'Category,Description,Amount,Date,Status,Recurring,Employee';

  @override
  String expDateFromTo(Object from, Object to) {
    return 'From: $from   To: $to';
  }

  @override
  String get expOtherPrefix => 'Other: ';

  @override
  String get expBeneficiarySuffix => ' — Beneficiary';

  @override
  String get expBreakdownByCategory => 'Breakdown by Category';

  @override
  String get expCategoryShareGauge => 'Category Spending Share';

  @override
  String get expCategoryShareDescription =>
      'Each arc represents the proportion of a category against total expenses in the period.';

  @override
  String get expDailyTrendDescription =>
      'Shows the cumulative daily total for each category with clear axis and spacing.';

  @override
  String get expAnalyticsDisclaimer =>
      'Note: Analytics are based on direct SQL aggregation from the expenses table within the selected period.';

  @override
  String get expNoMetricsData => 'No data to display metrics.';

  @override
  String get expNoTrendData => 'No trend data to display.';

  @override
  String get expAmountColon => 'Amount:';

  @override
  String expEmployeeFallback(Object id) {
    return 'Employee #$id';
  }

  @override
  String get expReceiptNumber => 'Receipt Number';

  @override
  String expSaveError(Object error) {
    return 'Save failed: $error';
  }

  @override
  String expTopCategoryLabel(Object name) {
    return 'Top category: $name';
  }

  @override
  String get blTitle => 'Print Barcode Labels';

  @override
  String blPrintCount(Object count) {
    return 'Print $count label';
  }

  @override
  String blTotalLabels(Object count) {
    return 'Total labels: $count';
  }

  @override
  String blProducts(Object count) {
    return 'Products: $count';
  }

  @override
  String get blPrintHint =>
      'Print via system default printer or preview screen.';

  @override
  String get blDocTitle => 'Product Barcode Labels';

  @override
  String blSkippedZeroQty(Object count) {
    return 'Skipped $count product(s) with zero quantity';
  }

  @override
  String blLoadError(Object error) {
    return 'Failed to load: $error';
  }

  @override
  String get blWeightProductsHint =>
      'Weight products: ID is printed on label; weight is weighed at sale.';

  @override
  String blBarcode(Object code) {
    return 'Barcode: $code';
  }

  @override
  String get blNoBarcode => 'No barcode';

  @override
  String blStock(Object qty) {
    return 'Stock: $qty';
  }

  @override
  String blProductCode(Object code) {
    return 'Product code: $code';
  }

  @override
  String get blSettingsHint =>
      'Choose size and preview appearance (applies to cards and print).';

  @override
  String get blLabelSize => 'Label Size';

  @override
  String get blSetAllOne => 'Set all to (1)';

  @override
  String blSetAllOneCount(Object count) {
    return 'Set all to (1) ($count)';
  }

  @override
  String get blSearchProductHint => 'Search product';

  @override
  String get blSearchProductSub => 'Name, barcode, or product code';

  @override
  String blLastUpdated(Object time) {
    return 'Last updated: $time — Refresh prices and stock';
  }

  @override
  String get blEmptyHint => 'Search for a product to add for printing';

  @override
  String get blEmptySubHint =>
      'You can add multiple products and print them in one batch';

  @override
  String blStockPrint(Object print, Object stock) {
    return 'Stock: $stock | Print: $print';
  }

  @override
  String blPreviewLabel(Object name, Object price, Object size) {
    return 'Preview: $name — $price — $size';
  }

  @override
  String get blAutoBarcodeNote => 'A barcode will be generated automatically';

  @override
  String get blKg => 'kg';

  @override
  String get blPerKg => '/kg';

  @override
  String get blWeighted => 'weighted';

  @override
  String rptSectionCopied(Object name) {
    return 'Section name copied: $name';
  }

  @override
  String get rptSalesTrendSubtitle =>
      'Column chart — shows sales trend between period dates';

  @override
  String get rptKPIShare =>
      'Share of each KPI from net sales — synced with KPI cards above';

  @override
  String get rptDailyBreakdownSubtitle =>
      'Stacked bar — daily invoice and expense data (SQL GROUP BY day)';

  @override
  String get rptCustomerPieSubtitle =>
      'Interactive pie chart — from sales invoices only (excluding vouchers)';

  @override
  String get rptPaymentGaugeSubtitle =>
      'Gauges — consistent with pie chart percentages and table';

  @override
  String get rptPaymentTrendSubtitle =>
      'Stacked — builds daily payment type totals directly from SQL';

  @override
  String get rptSalesOnlyNote =>
      'This section shows sales only: cash/credit/installment/delivery.';

  @override
  String get rptVouchersExcluded =>
      'Collection/installment payment/supplier payment vouchers are excluded from \"sales\" (they are not sales revenue).';

  @override
  String get rptCustomerDistributionTitle => 'Customer Sales Distribution';

  @override
  String get rptCustomerDistributionDesc =>
      'Interactive pie — shows top 6 customers and remaining as \"Others\"';

  @override
  String get rptTopCustomersTitle => 'Top Customers by Purchase (invoice name)';

  @override
  String get rptTopCustomersSubtitle =>
      'Sorted by total — from invoice data in the period';

  @override
  String get rptCustomerNameNote =>
      'Note: Name is taken from the invoice \"customer name\" field; for more precise linking use customer selection from the register.';

  @override
  String get rptCustomerBalancesSubtitle =>
      'Table — balances recorded in the customer register';

  @override
  String get rptInstallmentPlansSubtitle =>
      'Table — installment plans linked to period invoices';

  @override
  String get rptUnknownStaff => '(Unknown)';

  @override
  String get rptStaffDistributionTitle => 'Staff Sales Distribution';

  @override
  String get rptStaffDistributionDesc =>
      'Interactive pie — by staff name on invoice (sales invoices only)';

  @override
  String get rptNoStaffData =>
      'No sales recorded under a staff name in this period';

  @override
  String get rptStaffShareTitle => 'Staff Share of Total Sales';

  @override
  String get rptStaffShareSubtitle =>
      'Gauges — consistent with pie chart percentages and table';

  @override
  String get rptStaffTrendTitle => 'Staff Sales Trend Over Time';

  @override
  String get rptStaffTrendSubtitle =>
      'Stacked — top 5 staff only to avoid chart clutter';

  @override
  String get rptStaffInvoicesTitle =>
      'Invoices Registered by Staff (invoice field)';

  @override
  String get rptStaffInvoicesSubtitle =>
      'Table — registration performance by staff name on invoice';

  @override
  String get rptMarginGaugeSubtitle =>
      'Gauges — relative distribution showing where each revenue unit goes';

  @override
  String get rptMarginTrendStacked =>
      'Stacked — each day shows revenue composition vs expenses';

  @override
  String get rptMarginTrendStackedExpense =>
      'Stacked — each day shows revenue composition vs expenses';

  @override
  String get rptMarginSortNote =>
      'Sorted by net margin (revenue − cost) after discount allocation and returns deduction';

  @override
  String get rptMarginPercent => 'Margin %';

  @override
  String rptLoyaltyDiscounts(Object amount) {
    return 'Loyalty discounts on invoices: $amount FDJ';
  }

  @override
  String rptLoyaltyPointsEarned(Object count) {
    return 'Points granted (total on invoices): $count';
  }

  @override
  String get rptCostBasisNote =>
      'Item cost is determined by: (1) fixed at sale, (2) weighted average purchase price (WAC), (3) last purchase price in product card';

  @override
  String get rptCostBasisNote2 =>
      'New invoices automatically fix cost at creation time, so the past is not affected by purchase price changes.';

  @override
  String get rptInvoiceDiscountNote =>
      'Invoice-level discount (invoice discount + loyalty discount) is distributed proportionally across each line item.';

  @override
  String get rptReturnsNote =>
      'Returns (isReturned = 1) are deducted from both revenue and cost to get the true net.';

  @override
  String get rptVouchersExcludedNote =>
      'Vouchers (collection/installment/supplier payment) are excluded because they are not sales.';

  @override
  String get rptNetTotalNote =>
      'Net = Total Margin − Total Expenses in the period.';

  @override
  String get rptItemRevenueSubtitle =>
      'Table — sorted by item revenue in the period';

  @override
  String get rptCostConfidenceSubtitle =>
      'The higher the share of fixed-cost lines, the more accurate the number';

  @override
  String rptCostAccuracyLine1(Object known, Object total) {
    return 'Out of $total sales lines in the period, $known have a known cost.';
  }

  @override
  String rptCostAccuracyLine2(Object count) {
    return '$count lines with no known cost — complete purchase prices in product cards or link lines to products to improve margin accuracy.';
  }

  @override
  String rptFixedCostLabel(Object count) {
    return 'Fixed at sale: $count';
  }

  @override
  String rptCurrentPriceCostLabel(Object count) {
    return 'Based on current purchase price: $count';
  }

  @override
  String rptNoCostLabel(Object count) {
    return 'No cost (treated as 0): $count';
  }

  @override
  String rptCostAccuracyNote(Object count) {
    return 'There are $count lines without a known cost — complete purchase prices in product cards or link lines to products to improve margin accuracy.';
  }

  @override
  String get rptSavePeriodNote =>
      'On save, the current period is updated and stored for next time.';

  @override
  String get rptStaffRecorder => 'Staff / Recorder';

  @override
  String rptHaveKnownCost(Object count) {
    return '$count have a known cost.';
  }

  @override
  String get rptDefaultPeriodSubtitle =>
      'When saved, the current period is updated and stored for the next time.';

  @override
  String get expReportTitle => 'Expense Report';

  @override
  String get expPeriodLabel => 'Period';

  @override
  String get expCreatedLabel => 'Created';

  @override
  String expPageLabel(Object current, Object total) {
    return 'Page $current/$total';
  }

  @override
  String get expCategory => 'Category';

  @override
  String get expTotal => 'Total';

  @override
  String get expPercentage => 'Percentage';

  @override
  String get expOperationsCount => 'Operations';

  @override
  String get expPaid => 'Paid';

  @override
  String get expPending => 'Pending';

  @override
  String get expDate => 'Date';

  @override
  String get expAmount => 'Amount';

  @override
  String get expDescription => 'Description';

  @override
  String get expStaff => 'Staff';

  @override
  String get expExpenseReason => 'Expense Reason (Note)';

  @override
  String get expNoNoteHint => 'No note - consider adding an expense reason.';

  @override
  String get expDaily => 'Daily';

  @override
  String get expWeekly => 'Weekly';

  @override
  String get expMonthly => 'Monthly';

  @override
  String get expYearly => 'Yearly';

  @override
  String get expPrintReport => 'Print Expense Report';

  @override
  String get expChoosePeriod => 'Choose the time period for the invoice:';

  @override
  String get expCustom => 'Custom';

  @override
  String get expSelectedPeriod => 'Selected period:';

  @override
  String get expCancel => 'Cancel';

  @override
  String get expPrint => 'Print';

  @override
  String debtsListFiltered(Object filtered, Object total) {
    return '$filtered of $total invoices (search or filter)';
  }

  @override
  String get debtsAggregateHint =>
      'Aggregate by customer: products, sellers, partial payment from details screen. QR on receipt for registered customers only.';

  @override
  String debtsCustomersFiltered(Object filtered, Object total) {
    return '$filtered of $total customers';
  }

  @override
  String get debtsNoRemainingAged =>
      'No remaining aged balance aggregated with customers';

  @override
  String get debtsUnlinkedToCustomerTable =>
      'Not linked to customer table (by name)';

  @override
  String debtsAgeWarningActive(Object days) {
    return ' The age warning starts after $days days from the invoice date.';
  }

  @override
  String get debtsAgeWarningDisabled =>
      ' Enable \"Invoice Age Warning Days\" in debt settings to flag old invoices.';

  @override
  String debtsHowCalculated(Object ageHint) {
    return 'Debts are calculated from \"credit / deferred\" type invoices. Remaining = total − advance. Sale limits are set in debt settings.$ageHint';
  }

  @override
  String get debtsShowAllInvoices => 'Show all invoices';

  @override
  String get debtsAgeWarning => 'Age Warning';

  @override
  String get debtsFilterAge => 'Filter: age warning';

  @override
  String get debtsClosed => 'Closed';

  @override
  String get debtsAgeAlert => 'Age Alert';

  @override
  String get debtsOpen => 'Open';

  @override
  String get debtsReceipt => 'Receipt';

  @override
  String debtsInvoiceDays(Object date, Object days, Object id) {
    return 'Invoice #$id · $date · $days days';
  }

  @override
  String debtsAdvanceOverTotal(Object advance, Object total) {
    return 'Advance $advance / $total Fdj';
  }

  @override
  String get debtsTapForInvoiceDetails => 'Tap to view invoice details';

  @override
  String get debtsNoMatchingInvoices =>
      'No invoices match the current search or filter';

  @override
  String get debtsNoCreditInvoices => 'No credit invoices recorded';

  @override
  String instDueAmount(Object amount) {
    return 'Due: $amount Fdj';
  }

  @override
  String get instFullBoxOnly =>
      'Recorded in full in the cashbox (no partial payment currently).';

  @override
  String instMustPayFull(Object amount) {
    return 'You must pay the full installment ($amount Fdj)';
  }

  @override
  String get instPayFailed =>
      'Payment failed (installment may already be paid)';

  @override
  String get instCustomer => 'Customer';

  @override
  String instLinkedToCustomer(Object id) {
    return 'Linked to customer record #$id';
  }

  @override
  String instRegisteredBalance(Object amount) {
    return 'Registered customer balance: $amount Fdj';
  }

  @override
  String get instNoCustomerMatch =>
      'No match in customer table — name is taken from the invoice only. You can link a customer when creating a new plan from the \"Add Plan\" screen.';

  @override
  String instInvoiceNumber(Object id) {
    return 'Invoice #$id';
  }

  @override
  String get instDate => 'Date';

  @override
  String get instTotal => 'Total';

  @override
  String instAdvanceCollected(Object amount) {
    return 'Advance collected: $amount Fdj';
  }

  @override
  String instSaleQty(Object qty) {
    return 'Sale: $qty';
  }

  @override
  String instStock(Object qty) {
    return 'Stock: $qty';
  }

  @override
  String get instInterestRate => 'Interest rate';

  @override
  String get instPlannedMonths => 'Planned months';

  @override
  String get instFinancedAtSale => 'Financed at sale';

  @override
  String get instInterestAmount => 'Interest amount';

  @override
  String get instTotalWithInterest => 'Total with interest';

  @override
  String get instSuggestedMonthly => 'Suggested monthly installment';

  @override
  String get instEstimateNote =>
      'Note: figures above are estimates at sale time. The actual payment schedule is distributed over \"invoice total − advance\" and may differ by pennies.';

  @override
  String get instAdvance => 'Advance';

  @override
  String get instFromSchedule => 'Installments from schedule';

  @override
  String get instPaid => 'Paid';

  @override
  String get instRemaining => 'Remaining';

  @override
  String instInstallment(Object index) {
    return 'Installment #$index';
  }

  @override
  String get instDueDate => 'Due date';

  @override
  String get instPaidOn => 'Paid on';

  @override
  String get instPayButton => 'Pay';

  @override
  String get mpImportSuccess => 'Imported successfully';

  @override
  String get mpBundledSuccess => 'Bundled materials imported successfully';

  @override
  String get mpErrorEmptyPath => 'Enter the database file path first';

  @override
  String get mpErrorMissingFile =>
      'File not found. If the file is inside a RAR/ZIP archive, extract the .db file first, then enter its path or name.';

  @override
  String get mpErrorNoProducts =>
      'The file does not contain a products table. Choose a valid database file';

  @override
  String get mpErrorReadFailed =>
      'Could not read the file. Make sure it is a valid, unprotected SQLite database';

  @override
  String mpErrorGeneric(Object s) {
    return 'Import error: $s';
  }

  @override
  String get mpTitle => 'Import materials & prices';

  @override
  String get mpBundledDesc =>
      'This option imports a ready-made embedded materials database (≈ 3500 items from the most popular market products with their prices). It is recommended to review prices after import since market prices change.';

  @override
  String get mpBundledRestoreTitle => 'Restore embedded materials database';

  @override
  String get mpBundledRestoreDesc =>
      'With one click: the app will extract the embedded file and add materials to your inventory. If an item already exists with the same barcode, only its name/price/category will be updated (no duplicates).';

  @override
  String get mpBundledButtonBusy => 'Importing...';

  @override
  String get mpBundledButtonIdle => 'Import bundled materials';

  @override
  String get mpAdvancedTileTitle => 'Advanced import: from external file';

  @override
  String get mpAdvancedTileSubtitle =>
      'If you have a Market POS .db file outside the app';

  @override
  String get mpDbPathLabel => 'Database file path';

  @override
  String get mpDbPathHint =>
      'Example: /Users/you/Documents/supermarket_backup_2026-04-15_20-05-15.db';

  @override
  String get mpImportExternal => 'Import from external file';

  @override
  String get mpTipHint =>
      'Tip: you can write just the filename and it will be searched in Documents/Downloads/Desktop.';

  @override
  String get mpResultTitle => 'Import result';

  @override
  String mpResultTotal(Object total) {
    return 'Total records read: $total';
  }

  @override
  String mpResultNew(Object inserted) {
    return 'New materials: $inserted';
  }

  @override
  String mpResultUpdated(Object updated) {
    return 'Updated materials: $updated';
  }

  @override
  String mpResultSkipped(Object skipped) {
    return 'Skipped: $skipped';
  }

  @override
  String mpResultCategories(Object createdCategories) {
    return 'Categories created: $createdCategories';
  }

  @override
  String get cdTitle => 'Customer Debt Details';

  @override
  String get cdOriginalAmount => 'Original amount';

  @override
  String get cdCurrentBalance => 'Current balance';

  @override
  String get cdInstallments => 'Installments';

  @override
  String get cdPaid => 'Paid';

  @override
  String get cdRemaining => 'Remaining';

  @override
  String get cdDueDate => 'Due date';

  @override
  String get cdOverdue => 'Overdue';

  @override
  String get cdPaidOn => 'Paid on';

  @override
  String get cdStatus => 'Status';

  @override
  String get cdPaidStatus => 'Paid';

  @override
  String get cdPendingStatus => 'Pending';

  @override
  String get cdOverdueStatus => 'Overdue';

  @override
  String get cdPaidInstallments => 'Paid installments';

  @override
  String get cdPendingInstallments => 'Pending installments';

  @override
  String get cdOverdueInstallments => 'Overdue installments';

  @override
  String get cdNoInstallments => 'No installments found';

  @override
  String get cdTotalPaid => 'Total paid';

  @override
  String get cdTotalRemaining => 'Total remaining';

  @override
  String get cdConfirmPayment => 'Confirm payment';

  @override
  String get cdPaymentAmount => 'Payment amount';

  @override
  String get cfTitle => 'Financial Details';

  @override
  String get cfTotalPurchases => 'Total purchases';

  @override
  String get cfTotalPaid => 'Total paid';

  @override
  String get cfTotalDebt => 'Total debt';

  @override
  String get cfLastPurchase => 'Last purchase';

  @override
  String get cfAverageOrder => 'Average order value';

  @override
  String get cfPurchaseCount => 'Number of purchases';

  @override
  String get cfInvoiceHistory => 'Invoice history';

  @override
  String get cfPaymentHistory => 'Payment history';

  @override
  String get cfNoInvoices => 'No invoices found';

  @override
  String get cfNoPayments => 'No payments found';

  @override
  String get cfDate => 'Date';

  @override
  String get cfAmount => 'Amount';

  @override
  String get cfBalance => 'Balance';

  @override
  String get cfInvoice => 'Invoice';

  @override
  String get cfPayment => 'Payment';

  @override
  String get cfViewDetails => 'View details';

  @override
  String get cfNoData => 'No financial data available';

  @override
  String get cfDebtWarning => 'Outstanding debt';

  @override
  String get cfCreditAvailable => 'Available credit';

  @override
  String get cfContactInfo => 'Contact information';

  @override
  String get saTitle => 'Supplier Accounts';

  @override
  String get saTotalDebt => 'Total debt';

  @override
  String get saTotalPaid => 'Total paid';

  @override
  String get saOutstanding => 'Outstanding balance';

  @override
  String get saPaymentHistory => 'Payment history';

  @override
  String get saRecordPayment => 'Record payment';

  @override
  String get saInvoiceHistory => 'Purchase history';

  @override
  String get saNoSuppliers => 'No suppliers found';

  @override
  String get saNoPayments => 'No payments recorded';

  @override
  String get saNoInvoices => 'No purchase invoices';

  @override
  String get saSupplierName => 'Supplier name';

  @override
  String get saDate => 'Date';

  @override
  String get saAmount => 'Amount';

  @override
  String get saRemaining => 'Remaining';

  @override
  String get saPayment => 'Payment';

  @override
  String get saPurchase => 'Purchase';

  @override
  String get saViewDetails => 'View details';

  @override
  String get saPayDebt => 'Pay debt';

  @override
  String get saDebtLabel => 'Debt';

  @override
  String get saPaidLabel => 'Paid';

  @override
  String get isTitle => 'Inventory Settings';

  @override
  String get isStockTracking => 'Stock tracking';

  @override
  String get isStockTrackingDesc => 'Enable tracking of product quantities';

  @override
  String get isBarcodeRequired => 'Barcode required';

  @override
  String get isBarcodeRequiredDesc => 'Require barcode when adding products';

  @override
  String get isAutoDeduct => 'Auto-deduct stock';

  @override
  String get isAutoDeductDesc =>
      'Automatically reduce stock when invoice is confirmed';

  @override
  String get isLowStockAlert => 'Low stock alert';

  @override
  String get isLowStockAlertDesc =>
      'Show warning when stock falls below threshold';

  @override
  String get isThreshold => 'Alert threshold';

  @override
  String get isDefaultWarehouse => 'Default warehouse';

  @override
  String get isUnits => 'Units of measurement';

  @override
  String get isSave => 'Save settings';

  @override
  String get isSaved => 'Settings saved';

  @override
  String get isWeightUnit => 'Weight unit';

  @override
  String get isLengthUnit => 'Length unit';

  @override
  String get isVolumeUnit => 'Volume unit';

  @override
  String get asTitle => 'Add Service';

  @override
  String get asEditTitle => 'Edit Service';

  @override
  String get asNameLabel => 'Service name';

  @override
  String get asNameHint => 'Enter service name';

  @override
  String get asPriceLabel => 'Price';

  @override
  String get asPriceHint => 'Enter price';

  @override
  String get asDescLabel => 'Description';

  @override
  String get asDescHint => 'Enter description (optional)';

  @override
  String get asCategoryLabel => 'Category';

  @override
  String get asCategoryHint => 'Select category';

  @override
  String get asDurationLabel => 'Duration (minutes)';

  @override
  String get asDurationHint => 'Enter duration';

  @override
  String get asSave => 'Save';

  @override
  String get asSaving => 'Saving...';

  @override
  String get asSaved => 'Service saved successfully';

  @override
  String get asError => 'Error saving service';

  @override
  String get asDelete => 'Delete service';

  @override
  String get asConfirmDelete => 'Are you sure you want to delete this service?';

  @override
  String cdCustomerFallback(Object id) {
    return 'Customer #$id';
  }

  @override
  String get cdPayDebt => 'Pay debt';

  @override
  String cdCurrentRemaining(Object amount) {
    return 'Current remaining: $amount Fdj';
  }

  @override
  String get cdAutoDistributeHint =>
      'Distributed automatically from oldest to newest invoices.';

  @override
  String get cdNothingToPay => 'Nothing remaining to pay or amount is invalid';

  @override
  String get cdCustomerDebts => 'Customer debts';

  @override
  String get cdOpenInvoices => 'Open invoices';

  @override
  String get cdTakenOnCredit => 'Products taken on credit';

  @override
  String get cdNoItemsRecorded => 'No items recorded.';

  @override
  String get cdInvoicesChip => 'Invoices';

  @override
  String get cdOpenChip => 'Open';

  @override
  String cdInvoiceNumber(Object id) {
    return 'Invoice #$id';
  }

  @override
  String get cdSettled => 'Settled';

  @override
  String get cdRemainingShort => 'Remaining';

  @override
  String cdInvoiceLineSummary(Object date, Object id) {
    return 'Invoice #$id · $date';
  }

  @override
  String cdSellerLabel(Object name) {
    return 'Seller: $name';
  }

  @override
  String cdQuantityLabel(Object qty) {
    return 'Qty: $qty';
  }

  @override
  String cdPriceLabel(Object price) {
    return 'Price: $price';
  }

  @override
  String cdPayDebtButton(Object amount) {
    return 'Pay debt (remaining $amount Fdj)';
  }

  @override
  String get cfOutstandingDebt => 'Outstanding debt';

  @override
  String get cfPurchaseHistory => 'Purchase history';

  @override
  String get cfFdj => 'Fdj';

  @override
  String saInvoiceId(Object id) {
    return 'Invoice #$id';
  }

  @override
  String get cfFullDebtScreen => 'Full debt screen (payment & details)';

  @override
  String get cfCreditSales => 'Credit sales (debt)';

  @override
  String get cfCreditSalesDesc =>
      'Each invoice is linked to a sale receipt — tap to view details';

  @override
  String get cfNoCreditInvoices =>
      'No credit invoices linked to this customer. Use credit sale and select the customer from the list.';

  @override
  String get cfInstallments => 'Installments';

  @override
  String get cfInstallmentsDesc => 'Installment plans linked to sale invoices';

  @override
  String get cfNoInstallmentPlans =>
      'No installment plans linked to this customer. Use installment sale and select the customer.';

  @override
  String get cfEditCustomer => 'Edit customer info';

  @override
  String get cfClosePanel => 'Close panel (Esc)';

  @override
  String get cfSelectCustomer => 'Select a customer from the list';

  @override
  String get cfDebtDetailsWillAppear =>
      'Customer debt details and installments will appear here.';

  @override
  String get cfPhone => 'Phone';

  @override
  String get cfEmail => 'Email';

  @override
  String get cfWalletBalance => 'Wallet balance';

  @override
  String cfSaleInvoice(Object id) {
    return 'Sale invoice #$id';
  }

  @override
  String get cfSettledShort => 'Settled';

  @override
  String cfRemainingBalance(Object balance) {
    return 'Remaining: $balance';
  }

  @override
  String get cfViewReceipt => 'View receipt / invoice details';

  @override
  String cfInstallmentInvoice(Object id) {
    return 'Installment invoice #$id';
  }

  @override
  String cfInstallmentSummary(Object paid, Object total) {
    return 'Total: $total · Paid: $paid';
  }

  @override
  String cfInstallmentDetail(Object n, Object paidCount, Object remaining) {
    return 'Installments: $paidCount / $n paid · Approx remaining: $remaining';
  }

  @override
  String get cfInstallmentSchedule => 'Installment schedule';

  @override
  String get saNewSupplier => 'New supplier';

  @override
  String get saNameRequired => 'Supplier name *';

  @override
  String get saPhoneOptional => 'Phone (optional)';

  @override
  String get saNotes => 'Notes';

  @override
  String get saCancel => 'Cancel';

  @override
  String get saSave => 'Save';

  @override
  String get saEnterName => 'Enter supplier name';

  @override
  String get saSaveError => 'Save failed';

  @override
  String get saCreditAccounts => 'Credit accounts (suppliers)';

  @override
  String get saCreditAccountsDesc =>
      'Record supplier receipts (their number and date), then record payments on settlement. The cashbox can be linked automatically on payment.';

  @override
  String saTotalOwed(Object amount) {
    return 'Total owed to suppliers: $amount Fdj';
  }

  @override
  String get saSearchHint => 'Search by supplier name...';

  @override
  String get saNoSuppliersYet => 'No suppliers yet — tap + to add a supplier';

  @override
  String saSupplierSummary(Object billed, Object paid) {
    return 'Billed: $billed · Paid: $paid';
  }

  @override
  String get saReceiptLabel => 'Receipt';

  @override
  String get saPaymentLabel => 'Payment';

  @override
  String get saReturnLabel => 'Return';

  @override
  String get saDueToSupplier => 'Due to supplier';

  @override
  String get saBalanced => 'Balanced';

  @override
  String get saSupplierChip => 'Supplier';

  @override
  String get isFullSettingsHint =>
      'Full product settings (configuration, tracking, permissions, defaults) are available from the main \"Product Settings\" card in the inventory settings grid.';

  @override
  String get isCategoriesMoved =>
      'Category management has been moved to a dedicated screen. Open \"Categories\" from the main inventory settings menu.';

  @override
  String get isBrandsMoved =>
      'Brand management has been moved to a dedicated screen. Open \"Brands\" from the main menu.';

  @override
  String get isBarcodeConfigMoved =>
      'Barcode configuration has been moved to a dedicated screen. Open \"Barcode Settings\" from the main menu.';

  @override
  String get isDefaultWarehouses => 'Default warehouses for employees';

  @override
  String get isForceDefaultWarehouse =>
      'Force a default warehouse when recording movements';

  @override
  String get isWarehouseRecommendation =>
      'It is recommended to link each employee to a default warehouse to track permissions and movements.';

  @override
  String get isUnitsTemplatesMoved =>
      'Unit template management (base and conversion) from the dedicated screen. Open \"Unit Templates\" from the main inventory settings menu.';

  @override
  String get isAllowDifferentPurchaseUnits =>
      'Allow purchase units different from sale units';

  @override
  String get isShowConversionsOnPurchase =>
      'Show conversions on purchase invoice';

  @override
  String get isPrinting => 'Printing';

  @override
  String get isIncludeStoreLogo => 'Include store logo in documents';

  @override
  String get isPrintBarcodeOnReceipts => 'Print barcode on withdrawal receipts';

  @override
  String get isExtraFields => 'Extra fields';

  @override
  String get isShowExtraFieldsInLists => 'Show extra fields in product lists';

  @override
  String get isIncludeInExportReports => 'Include in exportable reports';

  @override
  String get isNoExtraSettings =>
      'No additional settings for this category yet.';

  @override
  String get asMinPriceError => 'Minimum sale price cannot exceed sale price';

  @override
  String get asSavedSuccess => 'Service saved';

  @override
  String get asAddTitle => 'Add technical service';

  @override
  String get asAddDescription =>
      'Add a service for direct sale from the sales screen (fixed quantity 1, no stock).';

  @override
  String get asNameRequired => 'Enter a service name';

  @override
  String get asSalePriceLabel => 'Sale price';

  @override
  String get asInvalidPrice => 'Invalid price';

  @override
  String get asRefCostLabel => 'Reference cost for the service';

  @override
  String get asRefCostDesc =>
      'Technician fee or default consumed materials — for margin calculation in reports (like product purchase price).';

  @override
  String get asMinSalePriceLabel => 'Minimum sale price';

  @override
  String get asMinSalePriceDesc => 'If left empty, the sale price is used.';

  @override
  String get asDescriptionLabel => 'Description or details';

  @override
  String get asDescriptionHint => 'Working time, terms, notes...';

  @override
  String get asSaveButton => 'Save service';
}
