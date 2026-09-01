import 'dart:async' show unawaited;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';
import '../../providers/shift_provider.dart';
import '../../services/app_settings_repository.dart';
import '../../services/cloud_sync_service.dart';
import '../../services/inventory_policy_settings.dart';
import '../../services/permission_service.dart';
import '../../services/tenant_context_service.dart';
import '../../utils/screen_layout.dart';

import 'add_product_screen.dart';
import 'quick_product_update_screen.dart';
import 'inventory_products_screen.dart';
import 'inventory_management_screen.dart';
import 'warehouses_screen.dart';
import 'price_lists_screen.dart';
import 'stocktaking_screen.dart';
import 'purchase_orders_screen.dart';
import 'stock_analytics_screen.dart';
import 'inventory_settings_screen.dart';
import '../../l10n/generated/app_localizations.dart';

class InventoryHubScreen extends StatefulWidget {
  const InventoryHubScreen({super.key});

  @override
  State<InventoryHubScreen> createState() => _InventoryHubScreenState();
}

class _InventoryHubScreenState extends State<InventoryHubScreen> {
  static const _hiddenModulesKey = 'inv.hub.hidden.modules';

  final _settings = AppSettingsRepository.instance;
  final _tenant   = TenantContextService.instance;

  InventoryPolicySettingsData _policy   = InventoryPolicySettingsData.defaults();
  Set<String> _deniedIds = <String>{};
  Set<String> _hiddenIds = <String>{};
  bool        _loading   = true;

  AppLocalizations get _loc => AppLocalizations.of(context)!;

  List<_InvModule> _modules() {
    final loc = _loc;
    return [
    _InvModule(
      id:       'products',
      title:    loc.hubProductsList,
      subtitle: loc.hubProductsListDesc,
      icon:     Icons.inventory_2_outlined,
      color:    Colors.teal,
      builder:  (_) => const InventoryProductsScreen(),
    ),
    _InvModule(
      id:       'add_product',
      title:    loc.hubAddProduct,
      subtitle: loc.hubAddProductDesc,
      icon:     Icons.add_box_outlined,
      color:    const Color(0xFF1E3A5F),
      builder:  (_) => const AddProductScreen(),
    ),
    _InvModule(
      id:       'quick_update',
      title:    loc.hubQuickUpdate,
      subtitle: loc.hubQuickUpdateDesc,
      icon:     Icons.edit_note_rounded,
      color:    const Color(0xFF0D9488),
      builder:  (_) => const QuickProductUpdateScreen(),
    ),
    _InvModule(
      id:       'vouchers',
      title:    loc.hubVouchers,
      subtitle: loc.hubVouchersDesc,
      icon:     Icons.swap_horiz_outlined,
      color:    Colors.indigo,
      builder:  (_) => const InventoryManagementScreen(),
    ),
    _InvModule(
      id:       'warehouses',
      title:    loc.hubWarehouses,
      subtitle: loc.hubWarehousesDesc,
      icon:     Icons.warehouse_outlined,
      color:    Colors.brown,
      builder:  (_) => const WarehousesScreen(),
    ),
    _InvModule(
      id:       'price_lists',
      title:    loc.hubPriceLists,
      subtitle: loc.hubPriceListsDesc,
      icon:     Icons.price_change_outlined,
      color:    Colors.green,
      builder:  (_) => PriceListsScreen(),
    ),
    _InvModule(
      id:       'stocktaking',
      title:    loc.hubStocktaking,
      subtitle: loc.hubStocktakingDesc,
      icon:     Icons.fact_check_outlined,
      color:    Colors.deepOrange,
      builder:  (_) => const StocktakingScreen(),
    ),
    _InvModule(
      id:       'purchase_orders',
      title:    loc.hubPurchaseOrders,
      subtitle: loc.hubPurchaseOrdersDesc,
      icon:     Icons.receipt_long_outlined,
      color:    Colors.purple,
      builder:  (_) => const PurchaseOrdersScreen(),
    ),
    _InvModule(
      id:       'analytics',
      title:    loc.hubAnalytics,
      subtitle: loc.hubAnalyticsDesc,
      icon:     Icons.bar_chart_outlined,
      color:    Colors.blue,
      builder:  (_) => const StockAnalyticsScreen(),
    ),
    _InvModule(
      id:       'settings',
      title:    loc.hubSettings,
      subtitle: loc.hubSettingsDesc,
      icon:     Icons.tune_outlined,
      color:    Colors.grey.shade700,
      builder:  (_) => const InventorySettingsScreen(),
    ),
  ];
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() => _loading = true);
    await _tenant.load();
    final raw = await _settings.getForTenant(
      _hiddenModulesKey,
      tenantId: _tenant.activeTenantId,
    );
    final policy = await InventoryPolicySettingsData.load(_settings);
    final denied = await _loadDeniedModules();
    final hidden = (raw ?? '')
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toSet();
    if (!mounted) return;
    setState(() {
      _hiddenIds = hidden;
      _policy    = policy;
      _deniedIds = denied;
      _loading   = false;
    });
  }

  Future<void> _refreshFromServer() async {
    await CloudSyncService.instance.syncNow(
      forcePull: true,
      forcePush: true,
      forceImportOnPull: true,
    );
    if (!mounted) return;
    await _load();
  }

  Future<Set<String>> _loadDeniedModules() async {
    final auth    = context.read<AuthProvider>();
    final userId  = auth.userId;
    final role    = auth.isAdmin ? 'admin' : 'staff';
    final denied  = <String>{};
    final checker = PermissionService.instance;

    final activeShift = context.read<ShiftProvider>().activeShift;

    Future<void> check(String moduleId, String permissionKey) async {
      final ok = await checker.canForSession(
        sessionUserId: userId,
        sessionRoleKey: role,
        activeShift: activeShift,
        permissionKey: permissionKey,
      );
      if (!ok) denied.add(moduleId);
    }

    await check('products',        PermissionKeys.inventoryView);
    await check('add_product',     PermissionKeys.inventoryProductsManage);
    await check('quick_update',    PermissionKeys.inventoryProductsManage);
    await check('vouchers',        PermissionKeys.inventoryVoucherIn);
    await check('warehouses',      PermissionKeys.inventoryView);
    await check('price_lists',     PermissionKeys.inventoryView);
    await check('stocktaking',     PermissionKeys.inventoryStocktakingManage);
    await check('purchase_orders', PermissionKeys.inventoryProductsManage);
    await check('analytics',       PermissionKeys.inventoryView);
    return denied;
  }

  Future<void> _openTenantSwitcher() async {
    await _tenant.load();
    if (!mounted) return;
    final selected = await showDialog<int>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(_loc.hubTenantSelect),
        content: SizedBox(
          width: MediaQuery.sizeOf(ctx).width < 560
              ? MediaQuery.sizeOf(ctx).width - 56
              : 420,
          child: ListView(
            shrinkWrap: true,
            children: [
              for (final t in _tenant.tenants)
                RadioListTile<int>(
                  value:      t.id,
                  groupValue: _tenant.activeTenantId,
                  title:      Text(t.name),
                  subtitle:   Text('ID: ${t.id} · ${t.code}'),
                  onChanged:  (v) {
                    if (v == null) return;
                    Navigator.pop(ctx, v);
                  },
                ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(_loc.hubTenantClose),
          ),
        ],
      ),
    );
    if (selected == null) return;
    await _tenant.switchTenant(selected);
    await _load();
  }

  Future<void> _saveHidden() async {
    final csv = _hiddenIds.join(',');
    await _settings.setForTenant(
      _hiddenModulesKey,
      csv,
      tenantId: _tenant.activeTenantId,
    );
  }

  Future<void> _openModuleManager() async {
    final next = Set<String>.from(_hiddenIds);
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) {
        return StatefulBuilder(
          builder: (_, setLocal) => AlertDialog(
            title: Text(_loc.hubCustomizeUnits),
            content: SizedBox(
              width: MediaQuery.sizeOf(ctx).width < 560
                  ? MediaQuery.sizeOf(ctx).width - 56
                  : 420,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Text(
                    _loc.hubCustomizeUnitsDesc,
                  ),
                  const SizedBox(height: 12),
                  for (final m in _modules())
                    CheckboxListTile(
                      value:    !next.contains(m.id),
                      title:    Text(m.title),
                      subtitle: Text(m.subtitle),
                      secondary: CircleAvatar(
                        backgroundColor: m.color.withOpacity(0.12),
                        radius: 18,
                        child: Icon(m.icon, color: m.color, size: 18),
                      ),
                      onChanged: (v) {
                        setLocal(() {
                          if (v == true) {
                            next.remove(m.id);
                          } else {
                            next.add(m.id);
                          }
                        });
                      },
                    ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(ctx, false),
                child: Text(_loc.hubCancel),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(ctx, true),
                child: Text(_loc.hubSave),
              ),
            ],
          ),
        );
      },
    );
    if (ok != true) return;
    setState(() => _hiddenIds = next);
    await _saveHidden();
  }

  bool _isEnabledByPolicy(String moduleId) {
    switch (moduleId) {
      case 'add_product':     return _policy.enableAddProduct;
      case 'products':        return _policy.enableProducts;
      case 'vouchers':        return _policy.enableVouchers;
      case 'price_lists':     return _policy.enablePriceLists;
      case 'warehouses':      return _policy.enableWarehouses;
      case 'stocktaking':     return _policy.enableStocktaking;
      case 'purchase_orders': return _policy.enablePurchaseOrders;
      case 'analytics':       return _policy.enableStockAnalytics;
      case 'settings':        return _policy.enableSettings;
      default:                return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final layout = context.screenLayout;
    final visible = _modules().where((m) {
      if (_hiddenIds.contains(m.id)) return false;
      if (_deniedIds.contains(m.id)) return false;
      return _isEnabledByPolicy(m.id);
    }).toList();

    return Directionality(
      textDirection: Directionality.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: Text(_loc.hubInventoryTitle),
          actions: [
            IconButton(
              onPressed: _refreshFromServer,
              tooltip: _loc.hubRefresh,
              icon: const Icon(Icons.refresh_outlined),
            ),
            IconButton(
              onPressed: _openModuleManager,
              tooltip: _loc.hubCustomize,
              icon: const Icon(Icons.view_quilt_outlined),
            ),
            IconButton(
              onPressed: _openTenantSwitcher,
              tooltip: _loc.hubSwitchTenant,
              icon: const Icon(Icons.apartment_outlined),
            ),
          ],
        ),
        body: _loading
            ? const Center(child: CircularProgressIndicator())
            : visible.isEmpty
                ? Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.inventory_2_outlined,
                            size: 64, color: Colors.grey.shade300),
                        const SizedBox(height: 12),
                        Text(
                          _loc.hubAllHidden,
                          style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 12),
                        FilledButton.icon(
                          onPressed: _openModuleManager,
                          icon: const Icon(Icons.view_quilt_outlined),
                          label: Text(_loc.hubManageUnits),
                        ),
                      ],
                    ),
                  )
                : LayoutBuilder(
                    builder: (context, c) {
                      final cols = c.maxWidth >= 1200
                          ? 3
                          : c.maxWidth >= 700
                              ? 2
                              : 1;
                      final gap = layout.pageHorizontalGap;
                      return ListView(
                        padding: EdgeInsets.all(gap),
                        children: [
                          GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount:  cols,
                              childAspectRatio: cols == 1 ? 3.5 : 2.8,
                              mainAxisSpacing:  12,
                              crossAxisSpacing: 12,
                            ),
                            itemCount: visible.length,
                            itemBuilder: (_, i) {
                              final m = visible[i];
                              return _ModuleCard(
                                module: m,
                                onTap: () async {
                                  await Navigator.of(context).push(
                                    MaterialPageRoute(builder: m.builder),
                                  );
                                  // أعد التحميل عند العودة (قد تغيرت الإعدادات)
                                  unawaited(_load());
                                },
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════

class _InvModule {
  const _InvModule({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.builder,
  });

  final String       id;
  final String       title;
  final String       subtitle;
  final IconData     icon;
  final Color        color;
  final WidgetBuilder builder;
}

class _ModuleCard extends StatelessWidget {
  const _ModuleCard({required this.module, required this.onTap});

  final _InvModule   module;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Material(
      color: cs.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: module.color.withOpacity(0.2)),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Row(
            children: [
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: module.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(module.icon, color: module.color, size: 24),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      module.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 13.5),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      module.subtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 11.5, color: cs.onSurfaceVariant),
                    ),
                  ],
                ),
              ),
              Icon(Icons.chevron_left_rounded,
                  color: module.color.withOpacity(0.5)),
            ],
          ),
        ),
      ),
    );
  }
}
