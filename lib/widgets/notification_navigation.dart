import 'package:flutter/material.dart';

import '../l10n/generated/app_localizations.dart';
import '../navigation/content_navigation.dart';
import '../providers/notification_provider.dart';
import '../screens/cash/cash_screen.dart';
import '../screens/debts/debts_screen.dart';
import '../screens/inventory/inventory_products_screen.dart';
import '../screens/installments/installment_details_screen.dart';
import '../screens/installments/installments_screen.dart';
import '../screens/invoices/invoices_screen.dart';
import '../screens/reports/reports_screen.dart';

/// يفتح الشاشة المناسبة داخل [Navigator] المحتوى بعد اختيار تنبيه.
void navigateFromAppNotification(NavigatorState nav, AppNotification n) {
  switch (n.type) {
    case NotificationType.financedSale:
      final invId = _firstIntGroup(n.id, RegExp(r'^fin_sale_(\d+)'));
      if (invId != null) {
        nav.push(
          contentMaterialRoute(
            routeId: AppContentRoutes.invoices,
            breadcrumbTitle: AppLocalizations.of(nav.context)!.nnInvoices,
            builder: (_) => InvoicesScreen(openInvoiceIdAfterLoad: invId),
          ),
        );
      }
      return;
    case NotificationType.negativeStockSale:
      final invId = _firstIntGroup(n.id, RegExp(r'^negstk_(\d+)'));
      if (invId != null) {
        nav.push(
          contentMaterialRoute(
            routeId: AppContentRoutes.invoices,
            breadcrumbTitle: AppLocalizations.of(nav.context)!.nnInvoices,
            builder: (_) => InvoicesScreen(openInvoiceIdAfterLoad: invId),
          ),
        );
      }
      return;
    case NotificationType.saleReturn:
      final invId = _firstIntGroup(n.id, RegExp(r'^ret_(\d+)'));
      if (invId != null) {
        nav.push(
          contentMaterialRoute(
            routeId: AppContentRoutes.invoices,
            breadcrumbTitle: AppLocalizations.of(nav.context)!.nnInvoices,
            builder: (_) => InvoicesScreen(openInvoiceIdAfterLoad: invId),
          ),
        );
      }
      return;
    case NotificationType.lowInventory:
    case NotificationType.expiredProduct:
    case NotificationType.expirySoon:
      nav.push(
        contentMaterialRoute(
          routeId: AppContentRoutes.inventoryProducts,
          breadcrumbTitle: AppLocalizations.of(nav.context)!.nnProducts,
          builder: (_) => const InventoryProductsScreen(),
        ),
      );
      return;
    case NotificationType.installmentDue:
    case NotificationType.installmentLate:
      final planFromId =
          _firstIntGroup(n.id, RegExp(r'^inst_(?:late|due)_p(\d+)_i\d+$'));
      if (planFromId != null) {
        nav.push(
          contentMaterialRoute(
            routeId: AppContentRoutes.installments,
            breadcrumbTitle: AppLocalizations.of(nav.context)!.nnInstallments,
            builder: (_) => InstallmentDetailsScreen(planId: planFromId),
          ),
        );
      } else {
        nav.push(
          contentMaterialRoute(
            routeId: AppContentRoutes.installments,
            breadcrumbTitle: AppLocalizations.of(nav.context)!.nnInstallments,
            builder: (_) => const InstallmentsScreen(),
          ),
        );
      }
      return;
    case NotificationType.customerDebt:
    case NotificationType.debtInvoiceAged:
    case NotificationType.debtCustomerCeiling:
    case NotificationType.debtInvoiceCeiling:
      nav.push(
        contentMaterialRoute(
          routeId: AppContentRoutes.debts,
          breadcrumbTitle: AppLocalizations.of(nav.context)!.nnDebts,
          builder: (_) => const DebtsScreen(),
        ),
      );
      return;
    case NotificationType.newReport:
      nav.push(
        contentMaterialRoute(
          routeId: AppContentRoutes.reports(0),
          breadcrumbTitle: AppLocalizations.of(nav.context)!.nnReports,
          builder: (_) => const ReportsScreen(initialSection: 0),
        ),
      );
      return;
    case NotificationType.cashAlert:
      nav.push(
        contentMaterialRoute(
          routeId: AppContentRoutes.cash,
          breadcrumbTitle: AppLocalizations.of(nav.context)!.nnCash,
          builder: (_) => const CashScreen(),
        ),
      );
      return;
    case NotificationType.systemInfo:
      return;
  }
}

int? _firstIntGroup(String id, RegExp re) {
  final m = re.firstMatch(id);
  if (m == null) return null;
  return int.tryParse(m.group(1) ?? '');
}
