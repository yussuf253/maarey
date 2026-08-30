import '../../l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/customer_validation.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'dart:async' show Timer, unawaited;

import '../../models/customer_record.dart';
import '../../theme/design_tokens.dart';
import '../../widgets/app_notifications_sheet.dart';
import '../../services/cloud_sync_service.dart';
import '../../services/database_helper.dart';
import '../../providers/customers_provider.dart';
import '../../utils/iraqi_currency_format.dart';
import '../../utils/screen_layout.dart';
import '../../widgets/brand/brand.dart';
import '../../widgets/inputs/app_input.dart';
import '../../widgets/adaptive/master_detail_layout.dart';
import 'package:provider/provider.dart';
import '../debts/customer_debt_detail_screen.dart';
import '../installments/installments_screen.dart';
import 'customer_financial_detail_panel.dart';
import 'customer_financial_detail_screen.dart';
import 'customer_form_screen.dart';

enum _CustomerSort {
  nameAsc,
  nameDesc,
  totalPurchasesDesc,
  balanceDesc,
  dateDesc,
}

// Intents لاختصارات لوحة المفاتيح — يحاكي نمط `invoices_screen.dart` (Golden).
class _NewCustomerIntent extends Intent {
  const _NewCustomerIntent();
}

class _FocusSearchIntent extends Intent {
  const _FocusSearchIntent();
}

class _CloseDetailIntent extends Intent {
  const _CloseDetailIntent();
}

class _RefreshCustomersIntent extends Intent {
  const _RefreshCustomersIntent();
}

class CustomersScreen extends StatefulWidget {
  const CustomersScreen({super.key});

  @override
  State<CustomersScreen> createState() => _CustomersScreenState();
}

class _CustomersScreenState extends State<CustomersScreen> {
  AppLocalizations get loc => AppLocalizations.of(context)!;
  Color get _pageBg => Theme.of(context).scaffoldBackgroundColor;
  Color get _surface => Theme.of(context).colorScheme.surface;
  Color get _primary => Theme.of(context).colorScheme.primary;
  Color get _onPrimary => Theme.of(context).colorScheme.onPrimary;
  Color get _filterBg => Theme.of(context).colorScheme.surfaceContainerHighest;
  Color get _textPrimary => Theme.of(context).colorScheme.onSurface;
  Color get _textSecondary => Theme.of(context).colorScheme.onSurfaceVariant;
  Color get _outline => Theme.of(context).colorScheme.outline;

  final Set<int> _selectedIds = {};
  final TextEditingController _searchCtrl = TextEditingController();
  final FocusNode _searchFocus = FocusNode();
  Timer? _searchDebounce;

  String _filterStatus = '';
  bool _didInitFilter = false;
  _CustomerSort _sort = _CustomerSort.nameAsc;

  /// العميل المختار حالياً للعرض في لوحة التفاصيل (MasterDetail).
  /// تنشط فقط على `isWideVariant`؛ على الموبايل يبقى `null` ويتم النفور
  /// إلى صفحة كاملة عبر `Navigator.push`.
  CustomerRecord? _selectedCustomer;
  int? get _selectedCustomerId => _selectedCustomer?.id;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      context.read<CustomersProvider>().refresh();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _searchFocus.canRequestFocus) {
          _searchFocus.requestFocus();
        }
      });
    });
    _searchCtrl.addListener(_onSearchChanged);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_didInitFilter) {
      _didInitFilter = true;
      _filterStatus = loc.all;
    }
  }

  void _onSearchChanged() {
    if (!mounted) return;
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 300), () {
      if (!mounted) return;
      _syncFilters();
    });
    setState(() {});
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    _searchCtrl.removeListener(_onSearchChanged);
    _searchCtrl.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  String _formatMoney(double v) {
    final fmt = NumberFormat('#,##0.##', 'en');
    return fmt.format(v);
  }

  String _shortDate(DateTime? d) {
    if (d == null) return '—';
    return DateFormat('yyyy/MM/dd', 'en').format(d);
  }

  String get _sortKey => switch (_sort) {
    _CustomerSort.nameDesc => 'name_desc',
    _CustomerSort.totalPurchasesDesc => 'total_purchases_desc',
    _CustomerSort.balanceDesc => 'balance_desc',
    _CustomerSort.dateDesc => 'date_desc',
    _ => 'name_asc',
  };

  void _syncFilters() {
    unawaited(
      context.read<CustomersProvider>().setFilters(
        query: _searchCtrl.text,
        idQuery: '',
        statusArabic: _filterStatus,
        sortKey: _sortKey,
      ),
    );
  }

  bool? get _headerCheckboxValue {
    final v = context.read<CustomersProvider>().items;
    if (v.isEmpty) return false;
    var n = 0;
    for (final c in v) {
      if (_selectedIds.contains(c.id)) n++;
    }
    if (n == 0) return false;
    if (n == v.length) return true;
    return null;
  }

  void _toggleSelectAllVisible(bool? checked) {
    setState(() {
      final ids = context
          .read<CustomersProvider>()
          .items
          .map((e) => e.id)
          .toSet();
      if (checked == true) {
        _selectedIds.addAll(ids);
      } else {
        _selectedIds.removeWhere((id) => ids.contains(id));
      }
    });
  }

  Future<void> _openEditor({CustomerRecord? customer}) async {
    final saved = await Navigator.of(context).push<CustomerRecord?>(
      MaterialPageRoute(builder: (_) => CustomerFormScreen(existing: customer)),
    );
    if (saved != null && mounted) {
      context.read<CustomersProvider>().onCustomerChanged();
    }
  }

  Future<void> _confirmDelete(CustomerRecord c) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(loc.csDeleteCustomer),
        content: Text('${loc.csDeleteCustomerConfirm(c.name)}'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(loc.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: TextButton.styleFrom(
              foregroundColor: AppSemanticColors.danger,
            ),
            child: Text(loc.delete),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    try {
      await DatabaseHelper().deleteCustomer(c.id);
      CloudSyncService.instance.scheduleSyncSoon();
      setState(() => _selectedIds.remove(c.id));
      context.read<CustomersProvider>().onCustomerChanged();
    } catch (e) {
      if (mounted) {
        AppMessenger.error(context, message: loc.csDeleteFailed(e.toString()));
      }
    }
  }

  Future<void> _confirmDeleteSelected() async {
    if (_selectedIds.isEmpty) return;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(loc.csDeleteSelectedCustomers),
        content: Text('${loc.csDeleteSelectedConfirm(_selectedIds.length.toString())}'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(loc.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: TextButton.styleFrom(
              foregroundColor: AppSemanticColors.danger,
            ),
            child: Text(loc.delete),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    try {
      await DatabaseHelper().deleteCustomers(_selectedIds);
      _selectedIds.clear();
      context.read<CustomersProvider>().onCustomerChanged();
    } catch (e) {
      if (mounted) {
        AppMessenger.error(context, message: loc.csDeleteFailed(e.toString()));
      }
    }
  }

  Color _statusColor(String label) {
    switch (label) {
      case 'indebted':
        return AppSemanticColors.warning;
      case 'creditor':
        return AppSemanticColors.info;
      case 'distinguished':
        return AppSemanticColors.success;
      default:
        return AppSemanticColors.info;
    }
  }

  Color _avatarColor(int id) {
    final cs = Theme.of(context).colorScheme;
    final colors = <Color>[
      cs.primary,
      cs.secondary,
      cs.tertiary,
      Color.lerp(cs.primary, cs.secondary, 0.45)!,
    ];
    return colors[id % colors.length];
  }

  void _openDebtDetail(CustomerRecord c) {
    Navigator.of(context).push<void>(
      MaterialPageRoute<void>(
        builder: (_) =>
            CustomerDebtDetailScreen.fromCustomerId(registeredCustomerId: c.id),
      ),
    );
  }

  void _openInstallmentsForCustomer(CustomerRecord c) {
    Navigator.of(context).push<void>(
      MaterialPageRoute<void>(
        builder: (_) => InstallmentsScreen(initialSearchQuery: c.name.trim()),
      ),
    );
  }

  /// يفتح تفاصيل العميل: على wide variants يظهر داخل لوحة MasterDetail
  /// (تحديث state)، على الموبايل push كامل.
  void _openCustomerFinancialDetail(CustomerRecord c) {
    final isWide = context.screenLayout.isWideVariant;
    if (isWide) {
      setState(() => _selectedCustomer = c);
      return;
    }
    Navigator.of(context).push<void>(
      MaterialPageRoute<void>(
        builder: (_) => CustomerFinancialDetailScreen(customer: c),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CustomersProvider>(
      builder: (context, prov, _) {
        final visible = prov.items;
        final total = visible.length;
        final loading = prov.isLoading && visible.isEmpty;

        final gap = ScreenLayout.of(context).pageHorizontalGap;

        return Directionality(
          textDirection: Directionality.of(context),
          child: Shortcuts(
            shortcuts: <ShortcutActivator, Intent>{
              const SingleActivator(LogicalKeyboardKey.keyN, control: true):
                  const _NewCustomerIntent(),
              const SingleActivator(LogicalKeyboardKey.keyN, meta: true):
                  const _NewCustomerIntent(),
              const SingleActivator(LogicalKeyboardKey.keyF, control: true):
                  const _FocusSearchIntent(),
              const SingleActivator(LogicalKeyboardKey.keyF, meta: true):
                  const _FocusSearchIntent(),
              const SingleActivator(LogicalKeyboardKey.escape):
                  const _CloseDetailIntent(),
              const SingleActivator(LogicalKeyboardKey.f5):
                  const _RefreshCustomersIntent(),
            },
            child: Actions(
              actions: <Type, Action<Intent>>{
                _NewCustomerIntent: CallbackAction<_NewCustomerIntent>(
                  onInvoke: (_) {
                    unawaited(_openEditor());
                    return null;
                  },
                ),
                _FocusSearchIntent: CallbackAction<_FocusSearchIntent>(
                  onInvoke: (_) {
                    if (_searchFocus.canRequestFocus) {
                      _searchFocus.requestFocus();
                    }
                    return null;
                  },
                ),
                _CloseDetailIntent: CallbackAction<_CloseDetailIntent>(
                  onInvoke: (_) {
                    if (_selectedCustomer != null) {
                      setState(() => _selectedCustomer = null);
                    }
                    return null;
                  },
                ),
                _RefreshCustomersIntent:
                    CallbackAction<_RefreshCustomersIntent>(
                  onInvoke: (_) {
                    unawaited(_refreshFromServer());
                    return null;
                  },
                ),
              },
              child: Focus(
                autofocus: true,
                child: AppInlineToastHost(
                  child: Scaffold(
                  backgroundColor: _pageBg,
                  appBar: _buildAppBar(prov),
                  // الـ Inline Toast يَلتصق فوق أي محتوى عبر `bottomNavigationBar`
                  // (Scaffold يَحجز مساحته دون إغلاقها). يَختفي تلقائياً عند
                  // غياب الـ toast لأن الـ widget يُرجع SizedBox.shrink.
                  bottomNavigationBar: const SafeArea(
                    top: false,
                    child: AppInlineToastBar(),
                  ),
                  body: loading
                      ? const Center(child: CircularProgressIndicator())
                      : Builder(builder: (innerCtx) {
                  final isWide = innerCtx.screenLayout.isWideVariant;
                  final listBody = NotificationListener<ScrollNotification>(
                    onNotification: (n) {
                      if (!prov.hasMore) return false;
                      if (prov.isLoadingMore) return false;
                      if (n.metrics.extentAfter < 420) {
                        unawaited(prov.loadMore());
                      }
                      return false;
                    },
                    child: CustomScrollView(
                      slivers: [
                        // شريط KPIs العام (Golden Pattern §9.2) — يلخّص حالة العملاء
                        // الكلية بصرف النظر عن الفلتر الحالي.
                        SliverPadding(
                          padding: EdgeInsets.fromLTRB(gap, 12, gap, 8),
                          sliver: SliverToBoxAdapter(
                            child: _CustomersStatsBar(
                              totalAll: prov.totalCustomersInDb,
                              indebted: prov.tabCounts.indebted,
                              creditor: prov.tabCounts.creditor,
                              distinguished: prov.tabCounts.distinguished,
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(child: _buildToolbar(prov)),
                        SliverPersistentHeader(
                          pinned: true,
                          delegate: _StickyStatusChipsDelegate(
                            background: _surface,
                            outline: _outline,
                            tabCounts: prov.tabCounts,
                            selectedStatus: _filterStatus,
                            onSelected: (s) {
                              setState(() => _filterStatus = s);
                              _syncFilters();
                            },
                          ),
                        ),
                        SliverPadding(
                          padding: EdgeInsets.fromLTRB(gap, 0, gap, 12),
                          sliver: SliverToBoxAdapter(
                            child: _buildFiltersCard(),
                          ),
                        ),
                        SliverPadding(
                          padding: EdgeInsets.fromLTRB(gap, 12, gap, 24),
                          sliver: total == 0
                              ? SliverToBoxAdapter(child: _buildEmptyState())
                              : SliverToBoxAdapter(
                                  child: LayoutBuilder(
                                    builder: (context, c) {
                                      if (c.maxWidth < 600) {
                                        return const SizedBox.shrink();
                                      }
                                      return Container(
                                        decoration: BoxDecoration(
                                          color: _surface,
                                          borderRadius: AppShape.none,
                                          border: Border.all(
                                            color: _outline.withValues(
                                              alpha: 0.35,
                                            ),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black.withValues(
                                                alpha: 0.04,
                                              ),
                                              blurRadius: 8,
                                              offset: const Offset(0, 2),
                                            ),
                                          ],
                                        ),
                                        child: _tableHeader(),
                                      );
                                    },
                                  ),
                                ),
                        ),
                        if (total > 0)
                          SliverPadding(
                            padding: EdgeInsets.fromLTRB(gap, 0, gap, 24),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate((
                                context,
                                i,
                              ) {
                                if (i >= visible.length) return null;
                                return Column(
                                  children: [
                                    if (i > 0)
                                      Divider(
                                        height: 1,
                                        color: _outline.withValues(alpha: 0.35),
                                      ),
                                    _tableRow(
                                      visible[i],
                                      finance: prov.financeById,
                                    ),
                                  ],
                                );
                              }, childCount: visible.length),
                            ),
                          ),
                        if (prov.isLoadingMore)
                          const SliverToBoxAdapter(
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Center(child: CircularProgressIndicator()),
                            ),
                          ),
                      ],
                    ),
                  );
                  if (isWide) {
                    return MasterDetailLayout<int>(
                      masterWidth: 480,
                      selectedItemId: _selectedCustomerId ?? -1,
                      masterBuilder: (_, __) => listBody,
                      detailBuilder: (_) => Container(
                        color: Theme.of(innerCtx).scaffoldBackgroundColor,
                        child: CustomerFinancialDetailPanel(
                          customer: _selectedCustomer,
                          onClose: () =>
                              setState(() => _selectedCustomer = null),
                          onEdit: _selectedCustomer == null
                              ? null
                              : () =>
                                  _openEditor(customer: _selectedCustomer),
                        ),
                      ),
                    );
                  }
                  return listBody;
                }),
                ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _refreshFromServer() async {
    await CloudSyncService.instance.syncNow(
      forcePull: true,
      forcePush: true,
      forceImportOnPull: true,
    );
    if (!mounted) return;
    await context.read<CustomersProvider>().refresh();
  }

  AppBar _buildAppBar(CustomersProvider prov) {
    return AppBar(
      backgroundColor: _primary,
      foregroundColor: _onPrimary,
      elevation: 0,
      centerTitle: false,
      title: Text(
                              loc.customersTitle,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.refresh_rounded),
          tooltip: _refreshHint(prov.lastRefreshedAt),
          onPressed: _refreshFromServer,
        ),
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          tooltip: loc.csAlertsTooltip,
          onPressed: () => showAppNotificationsSheet(context),
        ),
        const SizedBox(width: 4),
      ],
    );
  }

  String _refreshHint(DateTime? t) {
    if (t == null) return loc.csRefreshFromCloud;
    final secs = DateTime.now().difference(t).inSeconds;
    if (secs < 40) return loc.csLastUpdatedNow;
    if (secs < 3600) return loc.csLastUpdatedMinutesAgo((secs ~/ 60).toString());
    final h = secs ~/ 3600;
    return loc.csLastUpdatedHoursAgo(h.toString());
  }

  Future<void> _dialCustomer(String? raw) async {
    final d = CustomerValidation.normalizePhoneDigits(raw);
    if (d == null || d.length < 7) return;
    final uri = Uri(scheme: 'tel', path: d);
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }

  Widget _buildToolbar(CustomersProvider prov) {
    final total = prov.items.length;
    final sel = _selectedIds.length;
    return LayoutBuilder(
      builder: (context, c) {
        final isNarrow = c.maxWidth < 600;
        return Material(
          color: _surface,
          elevation: 1,
          shadowColor: Colors.black.withValues(alpha: 0.08),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isNarrow ? 8 : 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                Checkbox(
                  value: _headerCheckboxValue,
                  tristate: true,
                  activeColor: _primary,
                  onChanged: _toggleSelectAllVisible,
                ),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    sel == 0
                        ? (isNarrow
                              ? '${loc.csTotalShowing(prov.totalCustomersInDb.toString(), prov.matchingCount.toString())}'
                              : '${loc.csTotalCustomersShowing(prov.totalCustomersInDb.toString(), prov.matchingCount.toString())}')
                        : (isNarrow
                              ? '${loc.csSelectedCount(sel.toString(), total.toString())}'
                              : '${loc.csSelectedCountPage(sel.toString(), total.toString())}'),
                    style: TextStyle(fontSize: 13, color: _textSecondary),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (sel > 0) ...[
                  if (isNarrow)
                    IconButton(
                      tooltip: loc.csDeleteSelectedTooltip,
                      onPressed: _confirmDeleteSelected,
                      icon: const Icon(
                        Icons.delete_outline,
                        color: AppSemanticColors.danger,
                      ),
                    )
                  else
                    TextButton.icon(
                      onPressed: _confirmDeleteSelected,
                      icon: const Icon(Icons.delete_outline, size: 20),
                      label: Text(loc.csDeleteSelectedLabel),
                      style: TextButton.styleFrom(
                        foregroundColor: AppSemanticColors.danger,
                      ),
                    ),
                  const SizedBox(width: 4),
                ],
                if (isNarrow)
                  FilledButton(
                    onPressed: () => _openEditor(),
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 12,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: AppShape.none,
                      ),
                    ),
                    child: const Icon(
                      Icons.person_add_alt_1_outlined,
                      size: 20,
                    ),
                  )
                else
                  FilledButton.icon(
                    onPressed: () => _openEditor(),
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: AppShape.none,
                      ),
                    ),
                    icon: const Icon(Icons.person_add_alt_1_outlined, size: 20),
                    label: Text(
                      loc.csAddCustomer,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  // ملاحظة: شرائح الحالة تُبنى داخل SliverPersistentHeaderDelegate لتجنب
  // إعادة استخدام عناصر (Elements) بشكل غير متوقع بعد hot restart.

  Widget _buildFiltersCard() {
    return LayoutBuilder(
      builder: (context, c) {
        final isNarrow = c.maxWidth < 600;
        final header = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              loc.csSearchFilter,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: _textPrimary,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              loc.csSearchDescription,
              style: TextStyle(fontSize: 12.5, color: _textSecondary),
            ),
          ],
        );

        final sortBlock = Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              loc.csSortLabel,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: _textPrimary,
              ),
            ),
            const SizedBox(height: 6),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: _surface,
                borderRadius: AppShape.none,
                border: Border.all(color: _outline.withValues(alpha: 0.55)),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<_CustomerSort>(
                  isExpanded: true,
                  value: _sort,
                  items: [
                    DropdownMenuItem(
                      value: _CustomerSort.nameAsc,
                      child: Text(loc.csSortNameAZ),
                    ),
                    DropdownMenuItem(
                      value: _CustomerSort.nameDesc,
                      child: Text(loc.csSortNameZA),
                    ),
                    DropdownMenuItem(
                      value: _CustomerSort.totalPurchasesDesc,
                      child: Text(loc.csSortMostPurchased),
                    ),
                    DropdownMenuItem(
                      value: _CustomerSort.balanceDesc,
                      child: Text(loc.csSortLargestDebts),
                    ),
                    DropdownMenuItem(
                      value: _CustomerSort.dateDesc,
                      child: Text(loc.csSortNewest),
                    ),
                  ],
                  onChanged: (v) {
                    if (v == null) return;
                    setState(() => _sort = v);
                    _syncFilters();
                  },
                ),
              ),
            ),
          ],
        );

        return Container(
          padding: EdgeInsets.all(isNarrow ? 12 : 16),
          decoration: BoxDecoration(
            color: _filterBg,
            borderRadius: AppShape.none,
            border: Border.all(color: _outline.withValues(alpha: 0.45)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (isNarrow) ...[
                header,
                const SizedBox(height: 12),
                sortBlock,
              ] else
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: header),
                    const SizedBox(width: 12),
                    SizedBox(width: 220, child: sortBlock),
                  ],
                ),
              const SizedBox(height: 14),
              AppInput(
                label: loc.csSearch,
                                subtitle: loc.csSearchApplyHint,
                hint: loc.csSearchInputHint,
                controller: _searchCtrl,
                focusNode: _searchFocus,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: _searchCtrl.text.trim().isEmpty
                    ? null
                    : IconButton(
                        tooltip: loc.csClearTooltip,
                        onPressed: () {
                          _searchCtrl.clear();
                          _syncFilters();
                        },
                        icon: const Icon(Icons.close),
                      ),
                onFieldSubmitted: (_) => _syncFilters(),
                textInputAction: TextInputAction.search,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  OutlinedButton.icon(
                    onPressed: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      _syncFilters();
                    },
                    icon: const Icon(Icons.search, size: 18),
                    label: Text(loc.csApplySearchLabel),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: _textPrimary,
                      side: BorderSide(color: _outline),
                      shape: const RoundedRectangleBorder(
                        borderRadius: AppShape.none,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _searchCtrl.clear();
                        _filterStatus = loc.all;
                        _sort = _CustomerSort.nameAsc;
                      });
                      _syncFilters();
                    },
                    child: Text(
                      loc.csClearFilter,
                      style: TextStyle(color: _primary),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    final noData = context.read<CustomersProvider>().items.isEmpty;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
      decoration: BoxDecoration(
        color: _surface,
        borderRadius: AppShape.none,
        border: Border.all(color: _outline.withValues(alpha: 0.35)),
      ),
      child: Column(
        children: [
          Icon(Icons.groups_2_outlined, size: 56, color: _textSecondary),
          const SizedBox(height: 12),
          Text(
            noData
                ? loc.csNoCustomersYet
                : loc.csNoMatchingCustomers,
            textAlign: TextAlign.center,
            style: TextStyle(color: _textSecondary, fontSize: 15),
          ),
          if (noData) ...[
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: () => _openEditor(),
              icon: const Icon(Icons.add),
              label: Text(loc.addFirstCustomer),
            ),
          ],
        ],
      ),
    );
  }

  Widget _tableHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(color: _filterBg),
      child: Row(
        children: [
          SizedBox(
            width: 42,
            child: Checkbox(
              value: _headerCheckboxValue,
              tristate: true,
              activeColor: _primary,
              onChanged: _toggleSelectAllVisible,
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              loc.csColName,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              loc.csColPhone,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              loc.csColTotalPurchases,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              loc.csColDueBalance,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            ),
          ),
          SizedBox(
            width: 88,
            child: Text(
              loc.csColStatus,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            ),
          ),
          const SizedBox(width: 40),
        ],
      ),
    );
  }

  Widget _tableRow(
    CustomerRecord c, {
    required Map<int, ({int creditInvoices, int installmentPlans})> finance,
  }) {
    final initial = c.name.isNotEmpty ? c.name.substring(0, 1) : '?';
    final idStr = '#${c.id.toString().padLeft(5, '0')}';
    final phone = (c.phone?.trim().isNotEmpty == true) ? c.phone! : '—';
    final selected = _selectedIds.contains(c.id);
    final av = _avatarColor(c.id);
    final st = c.statusLabel;
    final fin = finance[c.id] ?? (creditInvoices: 0, installmentPlans: 0);

    Widget statusBadge({double fontSize = 12}) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: _statusColor(st),
        borderRadius: AppShape.none,
      ),
      child: Text(
        st,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: fontSize,
        ),
      ),
    );

    return LayoutBuilder(
      builder: (context, cnst) {
        final isNarrow = cnst.maxWidth < 600;

        final avatar = Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(color: av, borderRadius: AppShape.none),
          child: Text(
            initial,
            style: TextStyle(
              color: ThemeData.estimateBrightnessForColor(av) == Brightness.dark
                  ? Colors.white
                  : Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        );

        // Card Action Pills (Golden §9.2.1) — توفّر اختصارات للديون والتقسيط
        // مع تمييز بصري دلالي. تستبدل ActionChip القديمة الباهتة.
        final hasPhone = (c.phone?.trim().isNotEmpty == true) &&
            (CustomerValidation.normalizePhoneDigits(c.phone)?.length ?? 0) >= 7;
        final financePills = <Widget>[
          if (fin.creditInvoices > 0)
            _CustomerActionPill(
              icon: Icons.account_balance_wallet_rounded,
              label: loc.csDebtsLabel(fin.creditInvoices.toString()),
              color: AppSemanticColors.warning,
              tooltip: loc.csOpenDebtsTooltip,
              onPressed: () => _openDebtDetail(c),
            ),
          if (fin.installmentPlans > 0)
            _CustomerActionPill(
              icon: Icons.event_repeat_rounded,
              label: loc.csInstallmentsLabel(fin.installmentPlans.toString()),
              color: AppSemanticColors.info,
              tooltip: loc.csOpenInstallmentsTooltip,
              onPressed: () => _openInstallmentsForCustomer(c),
            ),
          if (hasPhone)
            _CustomerActionPill(
              icon: Icons.call_rounded,
              label: loc.csCallLabel,
              color: Theme.of(context).colorScheme.primary,
              tooltip: loc.csCallTooltip(c.phone ?? ''),
              onPressed: () => unawaited(_dialCustomer(c.phone)),
            ),
        ];

        final nameBlock = Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    c.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: _textPrimary,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (isNarrow) ...[
                  const SizedBox(width: 6),
                  statusBadge(fontSize: 10.5),
                ],
              ],
            ),
            const SizedBox(height: 2),
            Text(
              loc.csCustomerInfo(idStr.toString(), c.loyaltyPoints.toString(), _shortDate(c.createdAt) ?? ''),
              style: TextStyle(fontSize: 11.5, color: _textSecondary),
              overflow: TextOverflow.ellipsis,
            ),
            if (isNarrow) ...[
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.phone_rounded, size: 13, color: _textSecondary),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      phone,
                      style: TextStyle(fontSize: 12, color: _textPrimary),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 13,
                    color: _textSecondary,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    _formatMoney(c.balance),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: _textPrimary,
                    ),
                  ),
                ],
              ),
            ],
            if (financePills.isNotEmpty) ...[
              const SizedBox(height: 8),
              Wrap(spacing: 6, runSpacing: 6, children: financePills),
            ],
          ],
        );

        // قائمة overflow — تحوي فقط الإجراءات النادرة بعد ترقية المتكرّرة
        // إلى Card Action Pills (اتصال/ديون/تقسيط ⇐ Pills في البطاقة).
        final popup = SizedBox(
          width: 40,
          height: 36,
          child: PopupMenuButton<String>(
            padding: EdgeInsets.zero,
            icon: Icon(Icons.more_vert, color: _textSecondary, size: 22),
            tooltip: loc.csMoreTooltip,
            onSelected: (v) {
              if (v == 'view') _openCustomerFinancialDetail(c);
              if (v == 'edit') _openEditor(customer: c);
              if (v == 'delete') _confirmDelete(c);
            },
            itemBuilder: (_) => [
              PopupMenuItem(value: 'view', child: Text(loc.viewDetails)),
              PopupMenuItem(value: 'edit', child: Text(loc.csEditData)),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 'delete',
                child: Text(
                  loc.delete,
                  style: const TextStyle(color: AppSemanticColors.danger),
                ),
              ),
            ],
          ),
        );

        final checkbox = SizedBox(
          width: 42,
          child: Checkbox(
            value: selected,
            activeColor: _primary,
            onChanged: (v) {
              setState(() {
                if (v == true) {
                  _selectedIds.add(c.id);
                } else {
                  _selectedIds.remove(c.id);
                }
              });
            },
          ),
        );

        // إبراز البطاقة المختارة في وضع MasterDetail (الديسكتوب) — يميّز البطاقة
        // النشطة في اللوحة اليسرى عن البطاقات الأخرى. يبقى تأثير bulk-select
        // (selected) منفصلاً، فإذا اجتمع الاثنان نُعطي الأولوية للـ MasterDetail.
        final isOpenedInPanel =
            _selectedCustomerId != null && _selectedCustomerId == c.id;
        return Material(
          color: isOpenedInPanel
              ? _primary.withValues(alpha: 0.14)
              : (selected ? _primary.withValues(alpha: 0.08) : _surface),
          child: InkWell(
            onTap: () => _openCustomerFinancialDetail(c),
            child: Container(
              decoration: isOpenedInPanel
                  ? BoxDecoration(
                      border: BorderDirectional(
                        end: BorderSide(color: _primary, width: 3),
                      ),
                    )
                  : null,
              padding: EdgeInsets.symmetric(
                horizontal: isNarrow ? 6 : 8,
                vertical: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  checkbox,
                  if (isNarrow) ...[
                    avatar,
                    const SizedBox(width: 10),
                    Expanded(child: nameBlock),
                    popup,
                  ] else ...[
                    Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          avatar,
                          const SizedBox(width: 10),
                          Expanded(child: nameBlock),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Tooltip(
                        message: loc.csCall,
                        child: InkWell(
                          onTap: () => _dialCustomer(c.phone),
                          borderRadius: AppShape.none,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 6,
                              horizontal: 4,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.call_outlined,
                                  size: 16,
                                  color: _primary,
                                ),
                                const SizedBox(width: 6),
                                Expanded(
                                  child: Text(
                                    phone,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: _textPrimary,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        IraqiCurrencyFormat.formatIqd(c.purchaseTotalApprox),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.5,
                          fontWeight: FontWeight.w700,
                          color: _textPrimary,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            c.balance.abs() < 0.01
                                ? loc.csNoDues
                                : (c.balance > 0.01
                                      ? '${loc.csDebtPrefix}: ${IraqiCurrencyFormat.formatIqd(c.balance)}'
                                      : '${loc.csCreditPrefix}: ${IraqiCurrencyFormat.formatIqd(-c.balance)}'),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: c.balance.abs() < 0.01
                                  ? AppSemanticColors.success
                                  : (c.balance > 0.01
                                        ? AppSemanticColors.danger
                                        : AppSemanticColors.info),
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 88, child: Center(child: statusBadge())),
                    popup,
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// ── شريحة الحالة Sticky أعلى القائمة ─────────────────────────────────────────
class _StickyStatusChipsDelegate extends SliverPersistentHeaderDelegate {
  _StickyStatusChipsDelegate({
    required this.background,
    required this.outline,
    required this.tabCounts,
    required this.selectedStatus,
    required this.onSelected,
  });

  final Color background;
  final Color outline;
  final ({int all, int indebted, int creditor, int distinguished}) tabCounts;
  final String selectedStatus;
  final ValueChanged<String> onSelected;

  @override
  double get minExtent => 49;

  @override
  double get maxExtent => 49;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final cs = Theme.of(context).colorScheme;
    final primary = cs.primary;

    return SizedBox.expand(
      child: Material(
        color: background,
        elevation: overlapsContent ? 2 : 0,
        shadowColor: Colors.black.withValues(alpha: 0.1),
        child: _StatusChipsStrip(
          background: background,
          outline: outline,
          tabCounts: tabCounts,
          selectedStatus: selectedStatus,
          onSelected: onSelected,
          primary: primary,
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant _StickyStatusChipsDelegate oldDelegate) {
    return oldDelegate.background != background ||
        oldDelegate.outline != outline ||
        oldDelegate.tabCounts.all != tabCounts.all ||
        oldDelegate.tabCounts.indebted != tabCounts.indebted ||
        oldDelegate.tabCounts.creditor != tabCounts.creditor ||
        oldDelegate.tabCounts.distinguished != tabCounts.distinguished ||
        oldDelegate.selectedStatus != selectedStatus ||
        oldDelegate.onSelected != onSelected;
  }
}

class _StatusChipsStrip extends StatelessWidget {
  const _StatusChipsStrip({
    required this.background,
    required this.outline,
    required this.tabCounts,
    required this.selectedStatus,
    required this.onSelected,
    this.primary,
  });

  final Color background;
  final Color outline;
  final ({int all, int indebted, int creditor, int distinguished}) tabCounts;
  final String selectedStatus;
  final ValueChanged<String> onSelected;
  final Color? primary;

  int _badgeForLabel(BuildContext context, String label) {
    final l = AppLocalizations.of(context)!;
    if (label == l.all) return tabCounts.all;
    if (label == 'indebted') return tabCounts.indebted;
    if (label == 'creditor') return tabCounts.creditor;
    return tabCounts.distinguished;
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final l = AppLocalizations.of(context)!;
    final effectivePrimary = primary ?? cs.primary;
    final statusOptions = [l.all, 'indebted', 'creditor', 'distinguished'];

    return Focus(
      onKeyEvent: (node, event) {
        if (event is! KeyDownEvent) return KeyEventResult.ignored;
        final ix = statusOptions.indexOf(selectedStatus);
        if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
          if (ix <= 0) return KeyEventResult.ignored;
          onSelected(statusOptions[ix - 1]);
          return KeyEventResult.handled;
        }
        if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
          if (ix < 0 || ix >= statusOptions.length - 1) {
            return KeyEventResult.ignored;
          }
          onSelected(statusOptions[ix + 1]);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        decoration: BoxDecoration(
          color: background,
          border: Border(
            bottom: BorderSide(color: outline.withValues(alpha: 0.35)),
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (final s in statusOptions) ...[
                FilterChip(
                  padding: EdgeInsets.zero,
                  label: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 4, end: 4),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(s),
                        const SizedBox(width: 6),
                        _TabCountBadge(
                          count: _badgeForLabel(context, s),
                          urgentRed: s == 'indebted',
                          goldAccent: s == 'distinguished',
                          fallback: effectivePrimary,
                        ),
                      ],
                    ),
                  ),
                  selected: selectedStatus == s,
                  onSelected: (_) => onSelected(s),
                  selectedColor: effectivePrimary.withValues(alpha: 0.18),
                  checkmarkColor: effectivePrimary,
                  shape: const RoundedRectangleBorder(
                    borderRadius: AppShape.none,
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _TabCountBadge extends StatelessWidget {
  const _TabCountBadge({
    required this.count,
    required this.fallback,
    this.urgentRed = false,
    this.goldAccent = false,
  });

  final int count;
  final Color fallback;
  final bool urgentRed;
  final bool goldAccent;

  @override
  Widget build(BuildContext context) {
    var bg = fallback.withValues(alpha: 0.82);
    if (urgentRed) bg = AppSemanticColors.danger;
    if (goldAccent && !urgentRed) bg = AppColors.accentGold;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Text(
        '$count',
        style: const TextStyle(
          fontSize: 11.5,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
    );
  }
}

// ── Card Action Pill ──────────────────────────────────────────────────────────
/// زر فعل صغير (Pill) يظهر داخل بطاقة العميل بدلاً من سهم التنقل العام.
///
/// يلتزم نمط `_ReturnActionPill` في `invoices_screen.dart` (Golden §9.2.1):
/// - lozenge مدور (أيقونة + نص قصير).
/// - لون دلالي (`AppSemanticColors.*` أو `cs.primary`).
/// - يوقف انتشار الحدث حتى لا يُفعّل onTap الأصلي للبطاقة.
class _CustomerActionPill extends StatelessWidget {
  const _CustomerActionPill({
    required this.icon,
    required this.label,
    required this.color,
    required this.onPressed,
    this.tooltip,
  });

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onPressed;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    final pill = Material(
      color: color.withValues(alpha: 0.12),
      borderRadius: BorderRadius.circular(999),
      child: InkWell(
        borderRadius: BorderRadius.circular(999),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 15, color: color),
              const SizedBox(width: 5),
              Text(
                label,
                style: TextStyle(
                  fontSize: 11.5,
                  fontWeight: FontWeight.w700,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return tooltip == null ? pill : Tooltip(message: tooltip!, child: pill);
  }
}

// ── شريط الإحصاءات (KPIs) ─────────────────────────────────────────────────────
/// شريط إحصاءات قابل للتجاوب مع `DeviceVariant` — يعرض 4 KPIs للعملاء.
///
/// يتبع نمط `_StatsBar` في `invoices_screen.dart` (Golden):
/// - على `phoneVariant` أو `maxWidth < 600`: شبكة 2×2.
/// - على tabletLG+: صف أفقي بـ 4 chips.
class _CustomersStatsBar extends StatelessWidget {
  const _CustomersStatsBar({
    required this.totalAll,
    required this.indebted,
    required this.creditor,
    required this.distinguished,
  });

  final int totalAll;
  final int indebted;
  final int creditor;
  final int distinguished;

  @override
  Widget build(BuildContext context) {
    final layout = ScreenLayout.of(context);
    final cs = Theme.of(context).colorScheme;
    final l = AppLocalizations.of(context)!;
    final fmt = NumberFormat.decimalPattern('en');

    final chips = <Widget>[
      _StatChip(
        icon: Icons.groups_2_rounded,
        label: l.totalCustomers,
        value: fmt.format(totalAll),
        color: cs.primary,
      ),
      _StatChip(
        icon: Icons.warning_amber_rounded,
        label: l.csIndebtedPlural,
        value: fmt.format(indebted),
        color: AppSemanticColors.warning,
      ),
      _StatChip(
        icon: Icons.savings_rounded,
        label: l.csCreditorPlural,
        value: fmt.format(creditor),
        color: AppSemanticColors.info,
      ),
      _StatChip(
        icon: Icons.workspace_premium_rounded,
        label: l.csDistinguishedPlural,
        value: fmt.format(distinguished),
        color: AppColors.accentGold,
      ),
    ];

    return LayoutBuilder(
      builder: (ctx, c) {
        final useTwoByTwo = layout.isPhoneVariant || c.maxWidth < 600;
        if (useTwoByTwo) {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(child: chips[0]),
                  const SizedBox(width: 8),
                  Expanded(child: chips[1]),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(child: chips[2]),
                  const SizedBox(width: 8),
                  Expanded(child: chips[3]),
                ],
              ),
            ],
          );
        }
        return Row(
          children: [
            for (int i = 0; i < chips.length; i++) ...[
              Expanded(child: chips[i]),
              if (i < chips.length - 1) const SizedBox(width: 10),
            ],
          ],
        );
      },
    );
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  final IconData icon;
  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: AppShape.none,
        border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.6)),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.12),
              borderRadius: AppShape.none,
            ),
            child: Icon(icon, size: 20, color: color),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 11.5,
                    color: cs.onSurfaceVariant,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: cs.onSurface,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
