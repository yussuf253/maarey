import 'package:flutter/material.dart';
import 'package:naboo/l10n/generated/app_localizations.dart';

/// عنصر واحد في شريط فتات الخبز.
class BreadcrumbSegment {
  final String id;
  final String title;
  const BreadcrumbSegment({required this.id, required this.title});
}

/// عنوان يظهر في شريط فتات الخبز.
class BreadcrumbMeta {
  final String title;
  const BreadcrumbMeta(this.title);
}

/// معرّف ثابت لكل شاشة داخل مسار المحتوى (للتسلسل ومنع التكرار).
abstract class AppContentRoutes {
  static const home = 'app_home';
  static const invoices = 'app_invoices';
  static const addInvoice = 'app_add_invoice';
  static const parkedSales = 'app_parked_sales';
  static const salePosSettings = 'app_sale_pos_settings';
  static const customers = 'app_customers';

  /// نفس [customers] مع فتح حوار إضافة عميل عند الدخول (من القائمة الجانبية).
  static const customersAdd = 'app_customers_add';
  static const customerContacts = 'app_customer_contacts';
  static const loyaltySettings = 'app_loyalty_settings';
  static const loyaltyLedger = 'app_loyalty_ledger';
  static const installments = 'app_installments';
  static const installmentSettings = 'app_installment_settings';
  static const debts = 'app_debts';
  static const debtSettings = 'app_debt_settings';
  static const inventory = 'app_inventory';
  static const inventoryProducts = 'app_inventory_products';
  static const inventoryBarcodeLabels = 'app_inventory_barcode_labels';
  static const addProduct = 'app_add_product';

  /// تعديل سريع لأسعار وكميات منتجات موجودة (بحث + صفحات، باركود بسياق هذه الشاشة).
  static const quickUpdateProducts = 'app_inventory_quick_update';
  static const inventoryManagement = 'app_inventory_management';
  static const inventoryWarehouses = 'app_inventory_warehouses';
  static const inventoryPriceLists = 'app_inventory_price_lists';
  static const inventoryStocktaking = 'app_inventory_stocktaking';
  static const inventoryPurchaseOrders = 'app_inventory_purchase_orders';
  static const inventoryAnalytics = 'app_inventory_analytics';
  static const inventorySettings = 'app_inventory_settings';
  static const cash = 'app_cash';
  static const expenses = 'app_expenses';
  static const localAiAgent = 'app_local_ai_agent';
  static const users = 'app_users';
  static const staffShiftsWeek = 'app_staff_shifts_week';
  static const employeeIdentity = 'app_employee_identity';
  static const printing = 'app_printing';
  static const settings = 'app_settings';

  /// شاشات تُفتح من داخل [SettingsScreen] — لفتات الخبز (لا تُستخدم للقائمة الرئيسية).
  static const settingsStoreInfo = 'app_settings_store_info';
  static const settingsInvoice = 'app_settings_invoice';
  static const settingsSalePosAppearance = 'app_settings_sale_pos_appearance';
  static const settingsNotifications = 'app_settings_notifications';
  static const settingsPrintingInline = 'app_settings_printing_inline';
  static const settingsDashboardLayout = 'app_settings_dashboard_layout';
  static const settingsRestore = 'app_settings_restore';
  static const settingsSubscriptionAccount =
      'app_settings_subscription_account';
  static const settingsBusinessFeatures = 'app_settings_business_features';
  static const subscriptionPlans = 'app_subscription_plans';
  static const reportsPrefix = 'app_reports_';
  static String reports(int section) => '$reportsPrefix$section';
  static String processReturn(int invoiceId) => 'app_process_return_$invoiceId';

  // ── Services & Job Tickets ────────────────────────────────────────────────
  static const servicesHub = 'app_services_hub';

  /// إضافة خدمة فنية للبيع المباشر (مستقل عن إضافة منتج مخزني كامل).
  static const servicesAdd = 'app_services_add';
  static const servicesCatalog = 'app_services_catalog';
  static const serviceOrdersHub = 'app_service_orders_hub';
  static const serviceOrdersCreate = 'app_service_orders_create';
}

/// مسار محتوى بانتقال أسرع من [MaterialPageRoute] الافتراضي (~300ms) —
/// يحافظ على [PageTransitionsTheme] (مثل CupertinoSlide) من الثيم.
class FastContentPageRoute<T> extends MaterialPageRoute<T> {
  FastContentPageRoute({
    required super.builder,
    super.settings,
    super.fullscreenDialog,
    super.allowSnapshotting,
    super.maintainState,
  });

  static const Duration _kForward = Duration(milliseconds: 185);
  static const Duration _kReverse = Duration(milliseconds: 165);

  @override
  Duration get transitionDuration => _kForward;

  @override
  Duration get reverseTransitionDuration => _kReverse;
}

/// مسار Material مع اسم للتعرّف عليه في [Navigator.popUntil] وفتات الخبز.
FastContentPageRoute<T> contentMaterialRoute<T>({
  required String routeId,
  required String breadcrumbTitle,
  required WidgetBuilder builder,
}) {
  return FastContentPageRoute(
    settings: RouteSettings(
      name: routeId,
      arguments: BreadcrumbMeta(breadcrumbTitle),
    ),
    builder: builder,
  );
}

/// يُرجع true إذا أصبحت الشاشة الحالية هي نفس [routeId] (لم نحتج [Navigator.push]).
bool popUntilContentRoute(NavigatorState nav, String routeId) {
  var stoppedAtMatch = false;
  nav.popUntil((route) {
    final n = route.settings.name;
    if (n == routeId) {
      stoppedAtMatch = true;
      return true;
    }
    if (route.isFirst) {
      stoppedAtMatch = (n == routeId);
      return true;
    }
    return false;
  });
  return stoppedAtMatch;
}

// ── عناوين فتات الخبز الاحتياطية (عند غياب [BreadcrumbMeta]) ─────────────────

/// عنوان واجهة لفتات الخبز: يفضّل [BreadcrumbMeta] ثم التسمية حسب [RouteSettings.name].
String breadcrumbTitleForRouteSettings(RouteSettings settings, AppLocalizations loc) {
  final args = settings.arguments;
  if (args is BreadcrumbMeta) {
    final t = args.title.trim();
    if (t.isNotEmpty) return t;
  }
  final id = settings.name;
  if (id is! String) return '…';
  return breadcrumbFallbackTitleForRouteId(id, loc);
}

/// تسمية عربية لمعرّف المسار — يُكمّل التتبع حتى لو نُسيت [BreadcrumbMeta].
String breadcrumbFallbackTitleForRouteId(String id, AppLocalizations loc) {
  switch (id) {
    case AppContentRoutes.home:
      return loc.navHome;
    case AppContentRoutes.invoices:
      return loc.navInvoices;
    case AppContentRoutes.addInvoice:
      return loc.navAddInvoice;
    case AppContentRoutes.parkedSales:
      return loc.navParkedSales;
    case AppContentRoutes.salePosSettings:
      return loc.navSalePosSettings;
    case AppContentRoutes.customers:
      return loc.navCustomers;
    case AppContentRoutes.customerContacts:
      return loc.navCustomerContacts;
    case AppContentRoutes.loyaltySettings:
      return loc.navLoyaltySettings;
    case AppContentRoutes.loyaltyLedger:
      return loc.navLoyaltyLedger;
    case AppContentRoutes.installments:
      return loc.navInstallments;
    case AppContentRoutes.installmentSettings:
      return loc.navInstallmentSettings;
    case AppContentRoutes.debts:
      return loc.navDebts;
    case AppContentRoutes.debtSettings:
      return loc.navDebtSettings;
    case AppContentRoutes.inventory:
      return loc.navInventory;
    case AppContentRoutes.inventoryProducts:
      return loc.navInventoryProducts;
    case AppContentRoutes.inventoryBarcodeLabels:
      return loc.navInventoryBarcodeLabels;
    case AppContentRoutes.addProduct:
      return loc.navAddProduct;
    case AppContentRoutes.quickUpdateProducts:
      return loc.navQuickUpdateProducts;
    case AppContentRoutes.inventoryManagement:
      return loc.navInventoryManagement;
    case AppContentRoutes.inventoryWarehouses:
      return loc.navInventoryWarehouses;
    case AppContentRoutes.inventoryPriceLists:
      return loc.navInventoryPriceLists;
    case AppContentRoutes.inventoryStocktaking:
      return loc.navInventoryStocktaking;
    case AppContentRoutes.inventoryPurchaseOrders:
      return loc.navInventoryPurchaseOrders;
    case AppContentRoutes.inventoryAnalytics:
      return loc.navInventoryAnalytics;
    case AppContentRoutes.inventorySettings:
      return loc.navInventorySettings;
    case AppContentRoutes.cash:
      return loc.navCash;
    case AppContentRoutes.expenses:
      return loc.navExpenses;
    case AppContentRoutes.localAiAgent:
      return loc.navLocalAiAgent;
    case AppContentRoutes.users:
      return loc.navUsers;
    case AppContentRoutes.staffShiftsWeek:
      return loc.navStaffShiftsWeek;
    case AppContentRoutes.employeeIdentity:
      return loc.navEmployeeIdentity;
    case AppContentRoutes.printing:
      return loc.navPrinting;
    case AppContentRoutes.settings:
      return loc.navSettings;
    case AppContentRoutes.settingsStoreInfo:
      return loc.navSettingsStoreInfo;
    case AppContentRoutes.settingsInvoice:
      return loc.navSettingsInvoice;
    case AppContentRoutes.settingsSalePosAppearance:
      return loc.navSettingsSalePosAppearance;
    case AppContentRoutes.settingsNotifications:
      return loc.navSettingsNotifications;
    case AppContentRoutes.settingsPrintingInline:
      return loc.navSettingsPrintingInline;
    case AppContentRoutes.settingsDashboardLayout:
      return loc.navSettingsDashboardLayout;
    case AppContentRoutes.settingsSubscriptionAccount:
      return loc.navSettingsSubscriptionAccount;
    case AppContentRoutes.settingsBusinessFeatures:
      return loc.navSettingsBusinessFeatures;
    case AppContentRoutes.subscriptionPlans:
      return loc.navSubscriptionPlans;
    case AppContentRoutes.servicesHub:
      return loc.navServicesHub;
    case AppContentRoutes.servicesAdd:
      return loc.navServicesAdd;
    case AppContentRoutes.servicesCatalog:
      return loc.navServicesCatalog;
    case AppContentRoutes.serviceOrdersHub:
      return loc.navServiceOrdersHub;
    case AppContentRoutes.serviceOrdersCreate:
      return loc.navServiceOrdersCreate;
    default:
      break;
  }
  if (id.startsWith(AppContentRoutes.reportsPrefix)) {
    final tail = id.substring(AppContentRoutes.reportsPrefix.length);
    final labels = <String, String>{
      '0': loc.reportsTabDashboard,
      '1': loc.reportsTabSales,
      '2': loc.reportsTabCustomers,
      '3': loc.reportsTabDebts,
      '4': loc.reportsTabInstallments,
      '5': loc.reportsTabStaff,
      '6': loc.reportsTabAnalytics,
      '7': loc.reportsTabSettings,
    };
    return labels[tail] ?? loc.reportsTabDashboard;
  }
  if (id.startsWith('app_process_return_')) {
    final n = id.replaceFirst('app_process_return_', '');
    return loc.navProcessReturn(n);
  }
  return id;
}

/// أيقونة تلميحية لكل مسار — تُستخدم في شريط فتات الخبز.
IconData breadcrumbIconForRouteId(String id) {
  switch (id) {
    case AppContentRoutes.home:
      return Icons.home_rounded;
    case AppContentRoutes.invoices:
    case AppContentRoutes.addInvoice:
    case AppContentRoutes.parkedSales:
      return Icons.receipt_long_rounded;
    case AppContentRoutes.salePosSettings:
      return Icons.storefront_rounded;
    case AppContentRoutes.customers:
    case AppContentRoutes.customerContacts:
      return Icons.people_alt_rounded;
    case AppContentRoutes.loyaltySettings:
    case AppContentRoutes.loyaltyLedger:
      return Icons.card_giftcard_rounded;
    case AppContentRoutes.installments:
    case AppContentRoutes.installmentSettings:
      return Icons.calendar_month_rounded;
    case AppContentRoutes.debts:
    case AppContentRoutes.debtSettings:
      return Icons.balance_rounded;
    case AppContentRoutes.inventory:
    case AppContentRoutes.inventoryProducts:
    case AppContentRoutes.addProduct:
    case AppContentRoutes.quickUpdateProducts:
    case AppContentRoutes.inventoryManagement:
    case AppContentRoutes.inventoryWarehouses:
    case AppContentRoutes.inventoryPriceLists:
    case AppContentRoutes.inventoryStocktaking:
    case AppContentRoutes.inventoryPurchaseOrders:
    case AppContentRoutes.inventoryAnalytics:
    case AppContentRoutes.inventorySettings:
      return Icons.inventory_2_rounded;
    case AppContentRoutes.cash:
      return Icons.account_balance_wallet_rounded;
    case AppContentRoutes.expenses:
      return Icons.payments_rounded;
    case AppContentRoutes.localAiAgent:
      return Icons.auto_awesome_rounded;
    case AppContentRoutes.users:
    case AppContentRoutes.staffShiftsWeek:
    case AppContentRoutes.employeeIdentity:
      return Icons.manage_accounts_rounded;
    case AppContentRoutes.printing:
      return Icons.print_rounded;
    case AppContentRoutes.settings:
      return Icons.settings_rounded;
    case AppContentRoutes.settingsStoreInfo:
      return Icons.store_rounded;
    case AppContentRoutes.settingsInvoice:
      return Icons.receipt_long_rounded;
    case AppContentRoutes.settingsSalePosAppearance:
      return Icons.palette_outlined;
    case AppContentRoutes.settingsNotifications:
      return Icons.notifications_rounded;
    case AppContentRoutes.settingsPrintingInline:
      return Icons.print_rounded;
    case AppContentRoutes.settingsDashboardLayout:
      return Icons.dashboard_customize_rounded;
    case AppContentRoutes.settingsSubscriptionAccount:
      return Icons.star_rounded;
    case AppContentRoutes.settingsBusinessFeatures:
      return Icons.tune_rounded;
    case AppContentRoutes.subscriptionPlans:
      return Icons.upgrade_rounded;
    case AppContentRoutes.servicesHub:
    case AppContentRoutes.servicesAdd:
    case AppContentRoutes.servicesCatalog:
      return Icons.handyman_rounded;
    case AppContentRoutes.serviceOrdersHub:
    case AppContentRoutes.serviceOrdersCreate:
      return Icons.assignment_rounded;
    default:
      if (id.startsWith(AppContentRoutes.reportsPrefix)) {
        return Icons.bar_chart_rounded;
      }
      if (id.startsWith('app_process_return_')) {
        return Icons.assignment_return_rounded;
      }
      return Icons.layers_rounded;
  }
}
