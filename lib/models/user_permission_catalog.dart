import '../l10n/app_l10n.dart';
import '../services/permission_service.dart';

/// مجموعات عرض الصلاحيات في واجهة المستخدم — النصوص تُحلّ عبر [AppL10n]
/// عند بناء القائمة لتعكس اللغة الحالية.
class PermissionGroupUi {
  PermissionGroupUi({
    required this.title,
    required this.items,
  });

  final String title;
  final List<PermissionItemUi> items;
}

class PermissionItemUi {
  const PermissionItemUi({
    required this.key,
    required this.label,
    this.subtitle,
  });

  final String key;
  final String label;
  final String? subtitle;
}

/// ترتيب المجموعات والعناوين — يتطابق مع [PermissionKeys.allKeys].
List<PermissionGroupUi> buildPermissionGroupsUi() {
  return [
    PermissionGroupUi(
      title: AppL10n.current.permGroupAppAccess,
      items: [
        PermissionItemUi(
          key: PermissionKeys.appDashboard,
          label: AppL10n.current.permDashboardNav,
          subtitle: AppL10n.current.permDashboardNavSub,
        ),
      ],
    ),
    PermissionGroupUi(
      title: AppL10n.current.customersTitle,
      items: [
        PermissionItemUi(
          key: PermissionKeys.customersView,
          label: AppL10n.current.permCustomersView,
        ),
        PermissionItemUi(
          key: PermissionKeys.customersManage,
          label: AppL10n.current.permCustomersEdit,
        ),
        PermissionItemUi(
          key: PermissionKeys.customersContacts,
          label: AppL10n.current.permCustomersContacts,
        ),
      ],
    ),
    PermissionGroupUi(
      title: AppL10n.current.customerLoyaltyLabel,
      items: [
        PermissionItemUi(
          key: PermissionKeys.loyaltyAccess,
          label: AppL10n.current.permLoyaltyPoints,
        ),
      ],
    ),
    PermissionGroupUi(
      title: AppL10n.current.salesTitle,
      items: [
        PermissionItemUi(
          key: PermissionKeys.salesPos,
          label: AppL10n.current.permPosScreen,
        ),
        PermissionItemUi(
          key: PermissionKeys.salesParked,
          label: AppL10n.current.permParkedSales,
        ),
        PermissionItemUi(
          key: PermissionKeys.salesReturns,
          label: AppL10n.current.returns,
        ),
      ],
    ),
    PermissionGroupUi(
      title: AppL10n.current.inventoryLabel,
      items: [
        PermissionItemUi(
          key: PermissionKeys.inventoryView,
          label: AppL10n.current.permProductsView,
        ),
        PermissionItemUi(
          key: PermissionKeys.inventoryProductsManage,
          label: AppL10n.current.permProductsManage,
        ),
        PermissionItemUi(
          key: PermissionKeys.inventoryVoucherIn,
          label: AppL10n.current.permStockIn,
        ),
        PermissionItemUi(
          key: PermissionKeys.inventoryVoucherOut,
          label: AppL10n.current.permStockOut,
        ),
        PermissionItemUi(
          key: PermissionKeys.inventoryVoucherTransfer,
          label: AppL10n.current.permWarehouseTransfer,
        ),
        PermissionItemUi(
          key: PermissionKeys.inventoryStocktakingManage,
          label: AppL10n.current.navInventoryStocktaking,
        ),
        PermissionItemUi(
          key: PermissionKeys.inventoryPoliciesManage,
          label: AppL10n.current.permStockPolicies,
        ),
      ],
    ),
    PermissionGroupUi(
      title: AppL10n.current.cashTitle,
      items: [
        PermissionItemUi(
          key: PermissionKeys.cashView,
          label: AppL10n.current.permCashView,
        ),
        PermissionItemUi(
          key: PermissionKeys.cashManual,
          label: AppL10n.current.permCashManual,
        ),
      ],
    ),
    PermissionGroupUi(
      title: AppL10n.current.permDebtsTitle,
      items: [
        PermissionItemUi(
          key: PermissionKeys.debtsPanel,
          label: AppL10n.current.permDebtsBoard,
        ),
        PermissionItemUi(
          key: PermissionKeys.debtsSettings,
          label: AppL10n.current.debtSettingsLabel,
        ),
      ],
    ),
    PermissionGroupUi(
      title: AppL10n.current.installmentsTitle,
      items: [
        PermissionItemUi(
          key: PermissionKeys.installmentsPlans,
          label: AppL10n.current.permInstallmentPlans,
        ),
        PermissionItemUi(
          key: PermissionKeys.installmentsSettings,
          label: AppL10n.current.navInstallmentSettings,
        ),
      ],
    ),
    PermissionGroupUi(
      title: AppL10n.current.permReportsPrint,
      items: [
        PermissionItemUi(
          key: PermissionKeys.reportsAccess,
          label: AppL10n.current.permReportsLedgers,
        ),
        PermissionItemUi(
          key: PermissionKeys.printingAccess,
          label: AppL10n.current.permPrintTemplates,
        ),
      ],
    ),
    PermissionGroupUi(
      title: AppL10n.current.permUsersShifts,
      items: [
        PermissionItemUi(
          key: PermissionKeys.usersView,
          label: AppL10n.current.permUsersView,
        ),
        PermissionItemUi(
          key: PermissionKeys.usersManage,
          label: AppL10n.current.permUsersManage,
        ),
        PermissionItemUi(
          key: PermissionKeys.shiftsAccess,
          label: AppL10n.current.staffShiftsLabel,
        ),
        PermissionItemUi(
          key: PermissionKeys.absencesAccess,
          label: AppL10n.current.permStaffAbsences,
        ),
      ],
    ),
    PermissionGroupUi(
      title: AppL10n.current.permSettingsGeneral,
      items: [
        PermissionItemUi(
          key: PermissionKeys.settingsApp,
          label: AppL10n.current.permSystemLicense,
        ),
      ],
    ),
  ];
}
