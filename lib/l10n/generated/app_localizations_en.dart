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
  String get invoiceSettingsSubtitle => 'Starting number, footer, tax, discount';

  @override
  String get businessFeatures => 'Business Features';

  @override
  String get businessFeaturesSubtitle => 'Customers, loyalty, tax, discount, debt, installment, weight, clothing, and services';

  @override
  String get customizeDashboard => 'Customize Dashboard';

  @override
  String get customizeDashboardSubtitle => 'Show or hide dashboard sections and reorder by drag';

  @override
  String get appColorsIdentity => 'App Colors & Identity';

  @override
  String get appColorsIdentitySubtitle => 'Ready-made schemes, custom, and card corners — applies to all screens';

  @override
  String get compactSnackNotifications => 'Page Notifications Shape (All App)';

  @override
  String get compactSnackNotificationsSubtitleOn => 'Narrow floating bars on all screens — from app-wide settings here, not from POS settings';

  @override
  String get compactSnackNotificationsSubtitleOff => 'Classic mode: fixed bottom screen alert bar on all pages';

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
  String get floatingWindowSubtitleOn => 'Multiple windows can be opened together; yellow minimize tile places below screen with icon for each page — disable to open inside content';

  @override
  String get floatingWindowSubtitleOff => 'These screens open inside content. Enable to use floating windows and tiles';

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
  String get appDescription => 'Integrated app for sales, inventory, and accounting management.';

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
  String get noExpirationDate => 'Active subscription without a specific expiration date in cloud.';

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
  String get autoSyncDescription => 'A full database copy is uploaded from each device; the latest in cloud is imported to other devices after \'Sync Now\' or within ~1 minute. Not real-time per entry. SQL sync file must be executed in Supabase, and internet enabled.';

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
  String get notificationsBuildFromDb => 'Notifications are built from database when opening notification panel from home screen.';

  @override
  String get lowStockAlert => 'Low Stock Alert';

  @override
  String get lowStockAlertSubtitle => 'Products at minimum level or out of stock (with inventory tracking)';

  @override
  String get negativeStockSaleAlert => 'Negative Stock Sale Alert';

  @override
  String get negativeStockSaleAlertSubtitle => 'After saving sales invoice: invoice number, seller, customer, items and quantities before/after balance';

  @override
  String get financedSaleAlert => 'Financed Sale Alert';

  @override
  String get financedSaleAlertSubtitle => 'When saving a credit or installment invoice from POS screen: invoice number, seller, customer, amounts, lines, and installment plan if exists';

  @override
  String get expiryAlert => 'Product Expiry Alert';

  @override
  String get expiryAlertSubtitle => 'Expired, or within \'alert window\' before date (per product or default below)';

  @override
  String get defaultExpiryDaysLabel => 'Default days before expiry date to show \'near expiry\' alert (used when adding product if not set for item, 1-365).';

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
  String get customerDebtAlertSubtitle => 'Customer credit balance, according to debt settings: invoice age, total limit per customer, single invoice limit';

  @override
  String get returnsAlert => 'Returns Registration';

  @override
  String get returnsAlertSubtitle => 'Latest returns registered (21 days)';

  @override
  String get dailyReportAlert => 'Daily Sales Summary';

  @override
  String get dailyReportAlertSubtitle => 'Total sales invoices for today (excluding returns)';

  @override
  String get shiftLifecycleAlert => 'Shift Open/Close';

  @override
  String get shiftLifecycleAlertSubtitle => 'Notify employee shift and amounts (system balance, inventory, added, withdrawn, remaining)';

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
  String get deviceKickedOutTitle => 'This device was disconnected from the account';

  @override
  String get deviceKickedOutBody => 'Your session on this device has ended. The next time you open the app, you\'ll see the usual login screen.';

  @override
  String get goToLoginAction => 'Go to login';

  @override
  String get exitAction => 'Exit';

  @override
  String get closeWindowHint => 'You can close this window or use the button above.';

  @override
  String get appWillCloseHint => 'The app will close';

  @override
  String get deviceRevokedTitle => 'This device has been removed from the account';

  @override
  String get deviceRevokedBody => 'You can\'t sign in from this device until one of the account\'s active devices approves it, from Settings → Account & Subscription → \"Allow Return\".';

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
  String get forgotPasswordSendCodeHint => 'We\'ll send you a verification code to reset your password';

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
  String get onboardingChangeLaterHint => 'You can change these options later from Settings → Business Features.';

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
  String get onboardingStep1Question => 'Do you use customers in your business?';

  @override
  String get onboardingStep1Paragraph1 => 'When enabled, you get the full customer module: a card for each customer, purchase history, and quick tracking from the invoice.';

  @override
  String get onboardingStep1Paragraph2 => 'You can link every sale to a specific customer, which makes reporting easier later and creates a more consistent experience for repeat customers.';

  @override
  String get onboardingStep1Paragraph3 => 'If you do a quick cash sale without a name, that stays available — enabling this doesn\'t force you to pick a customer every time.';

  @override
  String get onboardingStep1Example1 => 'Example: a regular customer who buys daily — you save their name and quickly see their latest invoices.';

  @override
  String get onboardingStep1Example2 => 'Example: when there\'s a debt or loyalty points, they show up linked to the same customer instead of manual searching.';

  @override
  String get onboardingStep1SwitchLabel => 'Enable customer module';

  @override
  String get onboardingStep2Question => 'Do you want a loyalty points program?';

  @override
  String get onboardingStep2Paragraph1 => 'Loyalty gives customers points on purchases, which they can redeem according to rules you set in Settings.';

  @override
  String get onboardingStep2Paragraph2 => 'The program is linked to customer profiles — the clearer your customer data, the easier it is to track.';

  @override
  String get onboardingStep2Paragraph3 => 'You can turn the feature on now and adjust the earn/redeem rates later without redoing this wizard.';

  @override
  String get onboardingStep2Example1 => 'Example: every 10,000 IQD earns 10 points, based on the rule you choose.';

  @override
  String get onboardingStep2Example2 => 'Example: a customer who\'s collected enough points redeems them for a discount on a later invoice.';

  @override
  String get onboardingStep2SwitchLabel => 'Enable loyalty points';

  @override
  String get onboardingStep2Footnote => 'Requires the customer module enabled in the previous step; if it isn\'t, loyalty won\'t work until you re-enable customers.';

  @override
  String get onboardingStep3Question => 'Do you charge tax on sales?';

  @override
  String get onboardingStep3Paragraph1 => 'When enabled, a clear tax field appears on the sales invoice so it\'s calculated consistently with the total.';

  @override
  String get onboardingStep3Paragraph2 => 'Suitable for stores that apply a known tax rate on goods or services.';

  @override
  String get onboardingStep3Paragraph3 => 'You can fine-tune the detailed behavior from POS settings after finishing this quick setup.';

  @override
  String get onboardingStep3Example1 => 'Example: an invoice worth 100,000 IQD with a set tax percentage added on top.';

  @override
  String get onboardingStep3Example2 => 'Example: the staff member sees the tax and final total within the same sales invoice.';

  @override
  String get onboardingStep3SwitchLabel => 'Show tax on sales invoice';

  @override
  String get onboardingStep4Question => 'Do you allow a discount on the invoice total?';

  @override
  String get onboardingStep4Paragraph1 => 'An overall discount is useful for seasonal offers or negotiating price in front of the customer without changing each item\'s price.';

  @override
  String get onboardingStep4Paragraph2 => 'The field appears on the sales screen so it completes the invoice without adding extra complexity for staff.';

  @override
  String get onboardingStep4Paragraph3 => 'You can turn it off later if you decide to work with fixed prices only.';

  @override
  String get onboardingStep4Example1 => 'Example: you give a flat 5,000 IQD discount on a large invoice.';

  @override
  String get onboardingStep4Example2 => 'Example: a one-day special offer without changing the base product prices.';

  @override
  String get onboardingStep4SwitchLabel => 'Show overall discount on invoice';

  @override
  String get onboardingStep5Question => 'Do you sell on credit (deferred payment)?';

  @override
  String get onboardingStep5Paragraph1 => 'Enabling this opens the debts panel and tracks amounts owed by each customer, with adjustable alerts and limits.';

  @override
  String get onboardingStep5Paragraph2 => 'Suits merchants who trust known customers and need a clear record of deferred sales.';

  @override
  String get onboardingStep5Paragraph3 => 'It doesn\'t stop cash sales — it just adds the option to record a sale as debt when selecting a customer with the right permissions.';

  @override
  String get onboardingStep5Example1 => 'Example: a customer takes goods today and pays at the end of the week.';

  @override
  String get onboardingStep5Example2 => 'Example: you check a customer\'s statement and clearly see what\'s paid and what\'s still owed.';

  @override
  String get onboardingStep5SwitchLabel => 'Enable credit sales and debts';

  @override
  String get onboardingStep6Question => 'Do you sell on installments?';

  @override
  String get onboardingStep6Paragraph1 => 'Installment plans let you split an invoice\'s price into scheduled payments while tracking what\'s left owed by the customer.';

  @override
  String get onboardingStep6Paragraph2 => 'Useful for higher-priced goods or long-term contracts.';

  @override
  String get onboardingStep6Paragraph3 => 'The fine details of scheduling are managed from dedicated modules after finishing this setup.';

  @override
  String get onboardingStep6Example1 => 'Example: a device worth 600,000 IQD paid over 6 monthly installments.';

  @override
  String get onboardingStep6Example2 => 'Example: you see upcoming and overdue payments for each customer in one place.';

  @override
  String get onboardingStep6SwitchLabel => 'Enable installment sales';

  @override
  String get onboardingStep7Question => 'Do you sell by weight (kilo, gram, etc.)?';

  @override
  String get onboardingStep7Paragraph1 => 'Enabling this prepares the sales interface and barcodes to support weights and decimal quantities where needed.';

  @override
  String get onboardingStep7Paragraph2 => 'Suitable for groceries, hardware, or any business that relies on a scale.';

  @override
  String get onboardingStep7Paragraph3 => 'You can configure weight-based barcode formats from advanced settings after this wizard.';

  @override
  String get onboardingStep7Example1 => 'Example: selling 1.250 kg of a product instead of a single piece.';

  @override
  String get onboardingStep7Example2 => 'Example: scanning a scale barcode that automatically contains the product\'s weight and price.';

  @override
  String get onboardingStep7SwitchLabel => 'Enable sales by weight';

  @override
  String get onboardingStep8Question => 'Do you sell clothing (colors and sizes)?';

  @override
  String get onboardingStep8Paragraph1 => 'Enabling this prepares product and sales screens to support item variants (different colors and sizes of the same model).';

  @override
  String get onboardingStep8Paragraph2 => 'Makes it easier to track stock for each color or size separately and shows a quick interactive picker at the time of sale.';

  @override
  String get onboardingStep8Example1 => 'Example: a shirt available in blue and black, in sizes S, M, and L.';

  @override
  String get onboardingStep8Example2 => 'Example: selecting a clothing item opens a quick popup to pick the available size and color in stock.';

  @override
  String get onboardingStep8SwitchLabel => 'Enable clothing and sizes module';

  @override
  String get onboardingStep9Question => 'Do you offer specific services (repairs, workshop, etc.)?';

  @override
  String get onboardingStep9Paragraph1 => 'Enabling this reveals the full services and maintenance module: work tickets, service requests, and a services and pricing catalog.';

  @override
  String get onboardingStep9Paragraph2 => 'Useful for workshops, service centers, and any business that provides services to customers alongside selling goods.';

  @override
  String get onboardingStep9Example1 => 'Example: opening a maintenance ticket for a computer or car and setting the job status.';

  @override
  String get onboardingStep9Example2 => 'Example: adding an installation or quick maintenance service to a sales invoice.';

  @override
  String get onboardingStep9SwitchLabel => 'Enable services and maintenance tickets';

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
  String get barcodeScanTooltip => 'Scan barcode (camera on mobile, or reader window on desktop)';

  @override
  String get hideKeyboardTooltip => 'Hide keyboard';

  @override
  String get keyboardDragPinHint => 'Arabic / English keyboard — drag by the handle or pin it';

  @override
  String get clearSearchTooltip => 'Clear search';

  @override
  String get searchToolsTooltip => 'Search tools';

  @override
  String get showKeyboardTooltip => 'Show keyboard (Arabic / English)';

  @override
  String get quickSearchHint => 'Quick search: modules, products, customers…';

  @override
  String get fullSearchHint => 'Search: modules, products, customers, staff, barcode…';

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
  String get invoiceAlreadyReturned => 'This invoice is already recorded as returned';

  @override
  String get invoiceNotOpenableAsReturn => 'This voucher can\'t be opened as a sales return — reverse the payment from the supplier screen or installments management depending on its type.';

  @override
  String salesInvoiceNumber(Object id) {
    return 'Sales invoice #$id';
  }

  @override
  String get emptyPlaceholder => '(empty)';

  @override
  String returnInvoiceDialogBody(Object customer, Object paymentType, Object total) {
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
  String get noParkedSalesHint => 'From the sale screen, tap «Park sale» to save the current work and serve another customer.';

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
  String get cannotShowInvoiceNoId => 'Can\'t display an invoice without a number';

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
  String get searchInvoicesHint => 'Search by customer name, invoice number, or customer phone...';

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
  String get createReturnInvoiceTooltip => 'Create a return invoice for this invoice';

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
  String get enterEmailForRecovery => 'Enter your email to recover your password';

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
  String get passwordResetSent => 'Password reset code has been sent to your email';

  @override
  String get passwordResetSuccess => 'Password reset successfully';

  @override
  String get accountAlreadyExists => 'An account with this email already exists';

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
  String get signupSubtitle => 'You\'ll receive a verification code on your email to confirm your account';

  @override
  String get loginSubtitle => 'Enter your email and password to login';

  @override
  String get haveAccountBackToLogin => 'Have an account? Back to login';

  @override
  String get noAccountCreateNew => 'Don\'t have an account? Create new account';

  @override
  String get requiredField => 'This field is required';

  @override
  String get minLength3Chars => 'Must be at least 3 characters';

  @override
  String get nameRequired => 'Name is required';

  @override
  String get nameRequiredMin3 => 'Name is required (at least 3 characters)';

  @override
  String get emailRequiredShort => 'Email is required';

  @override
  String get iraqMobileInvalid => 'Iraqi mobile: 11 digits starting with 07 (e.g., 07701234567)';

  @override
  String get passwordRequired => 'Password is required';

  @override
  String get passwordDoesNotMeetRequirements => 'Password does not meet requirements';

  @override
  String get passwordsDoNotMatch => 'Passwords don\'t match';

  @override
  String get enterPasswordAgain => 'Please re-enter your password';

  @override
  String get iraqDialTooltip => '+964 Iraq — other country codes will be available later';

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
  String get groupByCategoryDesc => 'Filter pinned products by a single category';

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
  String get noBrandsYet => 'No brands yet';

  @override
  String get chooseBrand => 'Choose a brand';

  @override
  String get brandFallback => 'Brand';

  @override
  String get groupAlreadyExists => 'This group already exists';

  @override
  String get noMatchingActivityYet => 'No matching activity yet';

  @override
  String get noActivityHint => 'Record sales, cash movements, or any activity in the app to see them here chronologically.';

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
  String get dragToReorderCards => 'Drag items up or down to reorder. Order is saved on this device.';

  @override
  String get saveOrder => 'Save order';

  @override
  String get reorderCards => 'Reorder cards';

  @override
  String get refreshNumbers => 'Refresh numbers';

  @override
  String get glanceOverview => 'Quick overview';

  @override
  String get dragHeightHint => 'Drag up or down to change the height of the pinned products list';

  @override
  String get pinnedProductsHeightHandle => 'Handle to change pinned products list height';

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
  String get restrictedModeBanner => 'Restricted mode — connect to the internet to verify';

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
  String get timeTamperMessage => 'A time settings conflict was detected. Contact support to help re-verify.';

  @override
  String get accountSuspendedMessage => 'Your account has been suspended. Contact technical support.';

  @override
  String get subscriptionExpiredMessage => 'Your subscription has expired. Renew to continue.';

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
  String get offlineMessage => 'The app is running with the last saved license data.\nMake sure to connect as soon as possible.';

  @override
  String get enterWithoutConnection => 'Enter without connection';

  @override
  String get activateLicenseTitle => 'Activate license';

  @override
  String get enterLicenseKeyToContinue => 'Enter your license key to continue';

  @override
  String get contactTeamForLicense => 'To get a license key, contact the NaBoo team.';

  @override
  String get subscriptionPlansTitle => 'Subscription plans';

  @override
  String get chooseRightPlan => 'Choose the right plan for your business';

  @override
  String get plansDescriptionJwt => 'The cards below are for comparison and pricing only. After payment you receive a signed token (JWT) — paste it in the activation field below the cards.';

  @override
  String get plansDescriptionLegacy => 'The first card is a free 15-day trial (2 devices). The following cards are paid plans — after payment enter the key in the unified field below the page.';

  @override
  String get howToSubscribe => 'How to subscribe';

  @override
  String get subscribeStepsJwt => '1. Contact the NaBoo team via the methods below\n2. Complete payment for the plan you want\n3. Receive the full activation token (JWT) from management\n4. Paste the token in the unified field below the plan cards — plan and device limit are inferred from the token';

  @override
  String get subscribeStepsLegacy => '1. Contact the NaBoo team via the methods below\n2. Tell us the plan you want and complete payment\n3. Receive the license key from management\n4. Paste the key in the unified field below the plan cards then press \"Activate key\"';

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
  String get activateTokenDescription => 'Paste the full token sent by management. Plan and device limit are inferred from inside the token, not from the card shape.';

  @override
  String get pasteTokenHint => 'Paste activation token here';

  @override
  String get activateTokenButton => 'Activate token';

  @override
  String get pasteKeyOrTokenFirst => 'Paste the license key or activation token first';

  @override
  String get activateKeyTitle => 'Activate key';

  @override
  String get activateKeyDescription => 'Paste the license key you received after payment, or the JWT token if available. The plans above are for display and comparison only.';

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
  String get trialAutoStartsMessage => 'The trial starts automatically — no key needed. When upgrading, receive the token from management and paste it in the unified field below the cards.';

  @override
  String get jwtPlanDescription => 'This card is for display and comparison only. After payment, paste the activation token (JWT) in the unified field below the cards.';

  @override
  String get legacyPlanDescription => 'This card is for display and comparison only. After payment, paste the license key in the unified field below the cards.';

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
  String get subSettingsSubtitle => 'Detailed settings for each aspect of inventory';

  @override
  String get productAddSettingsTitle => 'Product Add Settings';

  @override
  String get productAddSettingsDesc => 'Default fields, default warehouse, required fields';

  @override
  String get barcodeSettingsTitle => 'Barcode Settings';

  @override
  String get barcodeSettingsDesc => 'Barcode standard, fields embedded in barcode';

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
  String get unitTemplatesDesc => 'Define sale and purchase units and conversion factors';
}
