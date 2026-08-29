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
      'Example: every 10,000 IQD earns 10 points, based on the rule you choose.';

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
      'Example: an invoice worth 100,000 IQD with a set tax percentage added on top.';

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
      'Example: you give a flat 5,000 IQD discount on a large invoice.';

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
      'Example: a device worth 600,000 IQD paid over 6 monthly installments.';

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
    return 'Sell $price IQD';
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
    return '$count items · ≈ $total IQD';
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
    return '$amount IQD';
  }

  @override
  String itemsAndDiscountLine(Object count, Object discount) {
    return '$count items · discount $discount IQD';
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
  String get welcomeToNaBoo => 'Welcome to NaBoo';

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
  String get allRightsReserved => 'NaBoo v2.0 — All rights reserved';

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
      'To get a license key, contact the NaBoo team.';

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
      '1. Contact the NaBoo team via the methods below\n2. Complete payment for the plan you want\n3. Receive the full activation token (JWT) from management\n4. Paste the token in the unified field below the plan cards — plan and device limit are inferred from the token';

  @override
  String get subscribeStepsLegacy =>
      '1. Contact the NaBoo team via the methods below\n2. Tell us the plan you want and complete payment\n3. Receive the license key from management\n4. Paste the key in the unified field below the plan cards then press \"Activate key\"';

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
  String get currencyLabel => 'IQD';

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
  String get iqd => 'IQD';

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
    return '$price IQD';
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
    return '$qty × $price IQD';
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
  String get iqdCurrency => 'IQD';

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
      'Enter the tax amount in dinars if applicable; added to total after invoice discount.';

  @override
  String get taxAmountLabel => 'Tax amount (IQD)';

  @override
  String get discountSectionLabel => 'Invoice discount';

  @override
  String get advanceDownPaymentLabel => 'Advance / Down payment (IQD)';

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
  String get receivedAmountLabel => 'Amount received (IQD)';

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
  String get amountDueLabel => 'Amount due (IQD)';

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
      'Enter tax amount in dinars if applicable; added to the subtotal after invoice discount.';

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
  String get iqdCurrencySymbol => 'IQD';

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
}
