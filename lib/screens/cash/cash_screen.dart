import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' hide TextDirection;

import '../../services/database_helper.dart';
import '../../services/cloud_sync_service.dart';
import '../../theme/design_tokens.dart';
import '../../utils/iraqi_currency_format.dart';
import '../../utils/screen_layout.dart';
import '../../widgets/invoice_detail_sheet.dart';
import '../../l10n/generated/app_localizations.dart';

/// أرقام مبالغ وواجهات الصندوق بالأرقام اللاتينية مع فواصل آلاف.
final _numFmt = NumberFormat('#,##0', 'en');
final _dateFmt = DateFormat('dd/MM/yyyy HH:mm', 'en');

enum _ShiftLedgerBucket { invoices, manualIn, manualOut, other }

const List<_ShiftLedgerBucket> _kShiftLedgerBucketOrder = [
  _ShiftLedgerBucket.invoices,
  _ShiftLedgerBucket.manualIn,
  _ShiftLedgerBucket.manualOut,
  _ShiftLedgerBucket.other,
];

String _shiftLedgerBucketTitle(BuildContext context, _ShiftLedgerBucket b) {
  final loc = AppLocalizations.of(context)!;
  switch (b) {
    case _ShiftLedgerBucket.invoices:
      return loc.cashBucketInvoices;
    case _ShiftLedgerBucket.manualIn:
      return loc.manualDeposit;
    case _ShiftLedgerBucket.manualOut:
      return loc.manualWithdrawal;
    case _ShiftLedgerBucket.other:
      return loc.cashBucketOther;
  }
}

Map<_ShiftLedgerBucket, List<_CashTx>> _partitionShiftLedger(
  List<_CashTx> txs,
) {
  final m = {for (final b in _ShiftLedgerBucket.values) b: <_CashTx>[]};
  for (final t in txs) {
    if (t.invoiceId != null) {
      m[_ShiftLedgerBucket.invoices]!.add(t);
    } else if (t.transactionType == 'manual_in') {
      m[_ShiftLedgerBucket.manualIn]!.add(t);
    } else if (t.transactionType == 'manual_out') {
      m[_ShiftLedgerBucket.manualOut]!.add(t);
    } else {
      m[_ShiftLedgerBucket.other]!.add(t);
    }
  }
  for (final list in m.values) {
    list.sort((a, b) => b.date.compareTo(a.date));
  }
  return m;
}

double? _shiftRowDouble(Map<String, dynamic>? row, String key) {
  if (row == null) return null;
  final v = row[key];
  if (v == null) return null;
  if (v is num) return v.toDouble();
  return double.tryParse(v.toString());
}

String _sessionOpenerLabel(Map<String, dynamic> row) {
  final d = (row['sessionDisplayName'] as String?)?.trim();
  if (d != null && d.isNotEmpty) return d;
  final u = (row['sessionUsername'] as String?)?.trim();
  if (u != null && u.isNotEmpty) return u;
  return '—';
}

Widget _dialogSectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 8, bottom: 10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 4,
          height: 22,
          decoration: const BoxDecoration(color: AppColors.primary),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
              color: AppColors.primary,
              height: 1.25,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _dialogInsetBox({required bool isDark, required List<Widget> children}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: isDark ? AppColors.cardDark : AppColors.surfaceLight,
      border: Border.all(
        color: isDark ? AppColors.borderDark : AppColors.borderLight,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children,
    ),
  );
}

Widget _dialogSummaryMoneyRow({
  required String label,
  required double amount,
  required Color accent,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 6),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
          ),
        ),
        Text(
          IraqiCurrencyFormat.formatIqd(amount),
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 14,
            color: accent,
          ),
        ),
      ],
    ),
  );
}

Widget _dialogMovementBullet(BuildContext context, _CashTx t) {
  final loc = AppLocalizations.of(context)!;
  final inv = t.invoiceId != null ? ' · ${loc.cashLinkedInvoice}${t.invoiceId}' : '';
  final type = _ledgerTypeLabelAr(context, t.transactionType);
  final isIn = t.amount > 0;
  final flow = isIn ? loc.cashSummaryInflow : loc.cashSummaryOutflow;
  final amt = IraqiCurrencyFormat.formatInt(t.amount.abs());
  final sign = isIn ? '+' : '−';
  final color = isIn ? const Color(0xFF16A34A) : const Color(0xFFDC2626);
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Text.rich(
      TextSpan(
        style: const TextStyle(fontSize: 12.5, height: 1.45),
        children: [
          const TextSpan(text: '• '),
          TextSpan(
            text: flow,
            style: TextStyle(fontWeight: FontWeight.w800, color: color),
          ),
          TextSpan(text: ' — $type$inv — '),
          TextSpan(
            text: '$sign$amt Fdj',
            style: TextStyle(fontWeight: FontWeight.w700, color: color),
          ),
          TextSpan(
            text: ' — ${_dateFmt.format(t.date)}',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 11.5),
          ),
        ],
      ),
    ),
  );
}

String _invoiceIdsSummaryLine(BuildContext context, List<_CashTx> movements) {
  final loc = AppLocalizations.of(context)!;
  final ids =
      movements.map((t) => t.invoiceId).whereType<int>().toSet().toList()
        ..sort();
  if (ids.isEmpty) {
    return loc.cashNoLinkedEntries;
  }
  return '${loc.cashInvoiceIdsShown} ${ids.map((id) => '#$id').join(', ')} — ${loc.totalLabel}: ${ids.length}';
}

Future<void> _showCashShiftDetailDialog(
  BuildContext context, {
  required int? shiftId,
  required Map<String, dynamic>? shiftRow,
  required List<_CashTx> movements,
}) async {
  final bd = _ShiftCashBreakdown.fromTxs(movements);
  final n = movements.length;
  final sorted = List<_CashTx>.of(movements)
    ..sort((a, b) => b.date.compareTo(a.date));
  final inward = sorted.where((t) => t.amount > 0).toList();
  final outward = sorted.where((t) => t.amount < 0).toList();
  final buckets = _partitionShiftLedger(movements);

  await showDialog<void>(
    context: context,
    builder: (ctx) {
      final isDark = Theme.of(ctx).brightness == Brightness.dark;
      final loc = AppLocalizations.of(context)!;
      final manualTotals = _shiftManualDepositWithdrawTotals(movements);
      final titleText = shiftId == null
          ? AppLocalizations.of(context)!.movementsWithoutShift
          : '${loc.cashShiftDetails}$shiftId';

      final titleHGap = ScreenLayout.of(ctx).pageHorizontalGap;
      return Directionality(
        textDirection: Directionality.of(context),
        child: AlertDialog(
          backgroundColor: isDark ? AppColors.cardDark : AppColors.cardLight,
          titlePadding: EdgeInsets.zero,
          title: ColoredBox(
            color: AppColors.primary,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: titleHGap,
                vertical: 14,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.receipt_long_rounded,
                    color: Colors.white,
                    size: 22,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      titleText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          content: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (shiftId != null && shiftRow != null) ...[
                    _dialogSectionTitle(loc.shiftIdentity),
                    _dialogInsetBox(
                      isDark: isDark,
                      children: [
                        _detailLine(
                          loc.cashShiftEmployee,
                          _shiftStaffNameFromRow(context, shiftRow),
                        ),
                        _detailLine(
                          AppLocalizations.of(context)!.sessionOpenedBy,
                          _sessionOpenerLabel(shiftRow),
                        ),
                        _detailLine(
                          AppLocalizations.of(context)!.openTime,
                          _fmtShiftDate(shiftRow['openedAt']?.toString()),
                        ),
                        _detailLine(
                          AppLocalizations.of(context)!.closeTime,
                          _fmtShiftClosedLabel(context, 
                            shiftRow['closedAt']?.toString(),
                          ),
                        ),
                      ],
                    ),
                    _dialogSectionTitle(loc.inventoryAndCashbox),
                    _dialogInsetBox(
                      isDark: isDark,
                      children: [
                        _detailMoneyLine(
                          loc.systemBalanceAtOpen,
                          _shiftRowDouble(shiftRow, 'systemBalanceAtOpen'),
                        ),
                        _detailMoneyLine(
                          loc.declaredCashAtOpen,
                          _shiftRowDouble(shiftRow, 'declaredPhysicalCash'),
                        ),
                        _detailMoneyLine(
                          loc.amountAddedAtOpen,
                          _shiftRowDouble(shiftRow, 'addedCashAtOpen'),
                        ),
                        if (shiftRow['closedAt'] != null &&
                            shiftRow['closedAt']
                                .toString()
                                .trim()
                                .isNotEmpty) ...[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Divider(
                              height: 1,
                              color: isDark
                                  ? AppColors.borderDark
                                  : AppColors.borderLight,
                            ),
                          ),
                          _detailMoneyLine(
                            loc.systemBalanceAtClose,
                            _shiftRowDouble(shiftRow, 'systemBalanceAtClose'),
                          ),
                          _detailMoneyLine(
                            loc.cashDeclaredClosingCash,
                            _shiftRowDouble(shiftRow, 'declaredClosingCash'),
                          ),
                          _detailMoneyLine(
                            loc.withdrawnAtClose,
                            _shiftRowDouble(shiftRow, 'withdrawnAtClose'),
                          ),
                          _detailMoneyLine(
                            loc.declaredCashAfterWithdrawal,
                            _shiftRowDouble(
                              shiftRow,
                              'declaredCashInBoxAtClose',
                            ),
                          ),
                        ],
                      ],
                    ),
                  ] else if (shiftId != null) ...[
                    _dialogSectionTitle(loc.warningLabel),
                    _dialogInsetBox(
                      isDark: isDark,
                      children: [
                        Text(
                          loc.cashShiftLoadError,
                          style: TextStyle(
                            fontSize: 12.5,
                            height: 1.4,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ],
                  _dialogSectionTitle(loc.inboundOutboundSummary),
                  _dialogInsetBox(
                    isDark: isDark,
                    children: [
                      Text(
                        '${loc.cashTotalMovements} $n ${loc.cashMovementsCount}',
                        style: TextStyle(
                          fontSize: 12,
                          height: 1.35,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _dialogSummaryMoneyRow(
                        label: loc.inboundEntry,
                        amount: bd.wared,
                        accent: const Color(0xFF16A34A),
                      ),
                      _dialogSummaryMoneyRow(
                        label: loc.outboundExit,
                        amount: bd.sader,
                        accent: const Color(0xFFDC2626),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        loc.cashMovementStats,
                        style: TextStyle(
                          fontSize: 11.5,
                          height: 1.35,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                  _dialogSectionTitle(
                    shiftId == null
                        ? loc.manualDepositWithdrawalGroup
                        : loc.manualDepositWithdrawalInShift,
                  ),
                  _dialogInsetBox(
                    isDark: isDark,
                    children: [
                      _detailLine(
                        loc.manualDepositReceipt,
                        '${_numFmt.format(manualTotals.depositSum)} Fdj — ${manualTotals.depositCount} ${loc.cashMovementsTimes}',
                      ),
                      _detailLine(
                        loc.manualWithdrawalReceipt,
                        '${_numFmt.format(manualTotals.withdrawSum)} Fdj — ${manualTotals.withdrawCount} ${loc.cashMovementsTimes}',
                      ),
                    ],
                  ),
                  _dialogSectionTitle(loc.countByEntryType),
                  _dialogInsetBox(
                    isDark: isDark,
                    children: [
                      if (!buckets.values.any((l) => l.isNotEmpty))
                        Text(
                          loc.noMovementsInGroup,
                          style: TextStyle(
                            fontSize: 12.5,
                            color: Colors.grey.shade600,
                          ),
                        )
                      else
                        for (final bucket in _kShiftLedgerBucketOrder)
                          if (buckets[bucket]!.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(bottom: 6),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      _shiftLedgerBucketTitle(context, bucket),
                                      style: const TextStyle(
                                        fontSize: 12.5,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '${buckets[bucket]!.length}',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w800,
                                      color: AppColors.accent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                    ],
                  ),
                  _dialogSectionTitle(loc.invoicesInMovements),
                  _dialogInsetBox(
                    isDark: isDark,
                    children: [
                      Text(
                        _invoiceIdsSummaryLine(context, movements),
                        style: const TextStyle(
                          fontSize: 12.5,
                          height: 1.45,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  _dialogSectionTitle(loc.inboundLineByLine),
                  _dialogInsetBox(
                    isDark: isDark,
                    children: inward.isEmpty
                        ? [
                            Text(
                              loc.noInboundMovements,
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12.5,
                              ),
                            ),
                          ]
                        : inward.map((t) => _dialogMovementBullet(context, t)).toList(),
                  ),
                  _dialogSectionTitle(loc.outboundLineByLine),
                  _dialogInsetBox(
                    isDark: isDark,
                    children: outward.isEmpty
                        ? [
                            Text(
                              loc.noOutboundMovements,
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 12.5,
                              ),
                            ),
                          ]
                        : outward.map((t) => _dialogMovementBullet(context, t)).toList(),
                  ),
                ],
              ),
            ),
          ),
          actionsAlignment: MainAxisAlignment.start,
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(
                loc.closeLabel,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

String _shiftStaffNameFromRow(BuildContext context, Map<String, dynamic> row) {
  final name = (row['shiftStaffName'] as String?)?.trim();
  if (name != null && name.isNotEmpty) return name;
  return AppLocalizations.of(context)!.shiftStaffFallback;
}

String _fmtShiftDate(String? iso) {
  final d = DateTime.tryParse(iso ?? '');
  if (d == null) return '—';
  return _dateFmt.format(d);
}

String _fmtShiftClosedLabel(BuildContext context, String? iso) {
  if (iso == null || iso.isEmpty) return AppLocalizations.of(context)!.openStatus;
  final d = DateTime.tryParse(iso);
  if (d == null) return '—';
  return _dateFmt.format(d);
}

Widget _detailLine(String label, String value) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
        ),
        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        ),
      ],
    ),
  );
}

Widget _detailMoneyLine(String label, double? value) {
  if (value == null) return const SizedBox.shrink();
  return _detailLine(label, '${_numFmt.format(value)} Fdj');
}

String _ledgerTypeLabelAr(BuildContext context, String transactionType) {
  final loc = AppLocalizations.of(context)!;
  switch (transactionType) {
    case 'sale_cash':
      return loc.cashSalesCash;
    case 'sale_advance':
      return loc.cashFirstPayment;
    case 'sale_other':
      return loc.cashSale;
    case 'manual_in':
      return loc.manualDeposit;
    case 'manual_out':
      return loc.manualWithdrawal;
    case 'installment_payment':
      return loc.cashInstallmentPayment;
    case 'supplier_payment':
      return loc.cashSupplierPayment;
    case 'supplier_payment_reversal':
      return loc.cashSupplierPaymentReversal;
    case 'sale_return':
      return loc.cashReturn;
    default:
      return transactionType.isEmpty ? loc.cashMovement : transactionType;
  }
}

// ═════════════════════════════════════════════════════════════════════════════
class CashScreen extends StatefulWidget {
  const CashScreen({super.key});
  @override
  State<CashScreen> createState() => _CashScreenState();
}

class _CashScreenState extends State<CashScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabs;
  final DatabaseHelper _db = DatabaseHelper();

  List<_CashTx> _transactions = [];
  double _balance = 0;
  double _totalIn = 0;
  double _totalOut = 0;
  bool _loading = true;

  Map<int, Map<String, dynamic>> _shiftById = {};

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 3, vsync: this);
    _tabs.addListener(() {
      if (!_tabs.indexIsChanging) {
        setState(() {});
      }
    });
    _reload();
  }

  Future<void> _reload() async {
    setState(() => _loading = true);
    final sum = await _db.getCashSummary();
    final rows = await _db.getCashLedgerEntries(limit: 250);
    final invIds = rows.map((r) => r['invoiceId']).whereType<int>().toSet();
    final invShifts = await _db.getInvoiceShiftIdsByInvoiceIds(invIds);
    final txs = rows.map((r) => _CashTx.fromRow(r, invShifts)).toList();
    final shiftIds = txs.map((t) => t.workShiftId).whereType<int>().toSet();
    final shiftMap = await _db.getWorkShiftsMapByIds(shiftIds);
    if (!mounted) return;
    setState(() {
      _balance = sum['balance'] ?? 0;
      _totalIn = sum['totalIn'] ?? 0;
      _totalOut = sum['totalOut'] ?? 0;
      _transactions = txs;
      _shiftById = shiftMap;
      _loading = false;
    });
  }

  Future<void> _refreshFromServer() async {
    await CloudSyncService.instance.syncNow(
      forcePull: true,
      forcePush: true,
      forceImportOnPull: true,
    );
    if (!mounted) return;
    await _reload();
  }

  Future<void> _openInvoiceDetail(int invoiceId) async {
    await showInvoiceDetailSheet(context, _db, invoiceId);
  }

  int _compareShiftKeys(int? a, int? b) {
    if (a == null && b == null) return 0;
    if (a == null) return 1;
    if (b == null) return -1;
    final ta = DateTime.tryParse(_shiftById[a]?['openedAt']?.toString() ?? '');
    final tb = DateTime.tryParse(_shiftById[b]?['openedAt']?.toString() ?? '');
    if (ta == null && tb == null) return b.compareTo(a);
    if (ta == null) return 1;
    if (tb == null) return -1;
    return tb.compareTo(ta);
  }

  Future<void> _addTransaction({required bool initialIncome}) async {
    await showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => _AddTransactionSheet(
        initialIncome: initialIncome,
        onAdd: (tx) async {
          await _db.insertManualCashEntry(
            amount: tx.amount,
            description: tx.description,
            transactionType: tx.amount >= 0 ? 'manual_in' : 'manual_out',
          );
          if (!mounted) return;
          Navigator.pop(context);
          await _reload();
          await CloudSyncService.instance.syncNow();
        },
      ),
    );
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final bg = Theme.of(context).scaffoldBackgroundColor;
    final surface = cs.surface;
    final appBar = AppBar(
      backgroundColor: cs.primary,
      foregroundColor: cs.onPrimary,
      elevation: 0,
      centerTitle: false,
      title: Text(
        AppLocalizations.of(context)!.cashboxLabel,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.refresh_rounded),
          tooltip: AppLocalizations.of(context)!.updateAction,
          onPressed: _loading ? null : _refreshFromServer,
        ),
        const SizedBox(width: 4),
      ],
    );

    if (_loading) {
      return Directionality(
        textDirection: Directionality.of(context),
        child: Scaffold(
          backgroundColor: bg,
          appBar: appBar,
          body: const Center(child: CircularProgressIndicator()),
        ),
      );
    }

    return Directionality(
      textDirection: Directionality.of(context),
      child: Scaffold(
        backgroundColor: bg,
        appBar: appBar,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _BalanceCard(
                    balance: _balance,
                    totalIn: _totalIn,
                    totalOut: _totalOut,
                  ),
                  _QuickActions(
                    onDeposit: () => _addTransaction(initialIncome: true),
                    onWithdraw: () => _addTransaction(initialIncome: false),
                  ),
                ],
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _StickyCashTabBarDelegate(
                tabBar: _buildCashTabBar(cs, surface),
                backgroundColor: surface,
              ),
            ),
          ],
          body: TabBarView(
            controller: _tabs,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _CashLedgerList(
                txs: _transactions,
                shiftById: _shiftById,
                compareShiftKeys: _compareShiftKeys,
                onInvoiceTap: _openInvoiceDetail,
              ),
              _CashLedgerList(
                txs: _transactions.where((t) => t.amount > 0).toList(),
                shiftById: _shiftById,
                compareShiftKeys: _compareShiftKeys,
                onInvoiceTap: _openInvoiceDetail,
              ),
              _CashLedgerList(
                txs: _transactions.where((t) => t.amount < 0).toList(),
                shiftById: _shiftById,
                compareShiftKeys: _compareShiftKeys,
                onInvoiceTap: _openInvoiceDetail,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _addTransaction(initialIncome: true),
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
          icon: Icon(Icons.add_rounded, color: cs.onPrimary),
          label: Text(
            AppLocalizations.of(context)!.manualEntryLabel,
            style: TextStyle(color: cs.onPrimary, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _buildCashTabBar(ColorScheme cs, Color surface) {
    return Container(
      color: surface,
      child: TabBar(
        controller: _tabs,
        onTap: (_) => setState(() {}),
        isScrollable: true,
        labelColor: cs.secondary,
        unselectedLabelColor: cs.onSurfaceVariant,
        indicatorColor: cs.secondary,
        indicatorWeight: 3,
        labelStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 13),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
        tabs: [
          Tab(text: AppLocalizations.of(context)!.allFilter),
          Tab(text: AppLocalizations.of(context)!.entry),
          Tab(text: AppLocalizations.of(context)!.exit),
        ],
      ),
    );
  }
}

class _StickyCashTabBarDelegate extends SliverPersistentHeaderDelegate {
  _StickyCashTabBarDelegate({
    required this.tabBar,
    required this.backgroundColor,
  });

  final Widget tabBar;
  final Color backgroundColor;

  @override
  double get minExtent => 48;

  @override
  double get maxExtent => 48;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Material(
      color: backgroundColor,
      elevation: overlapsContent ? 2 : 0,
      shadowColor: Colors.black.withValues(alpha: 0.08),
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(covariant _StickyCashTabBarDelegate oldDelegate) {
    return oldDelegate.tabBar != tabBar ||
        oldDelegate.backgroundColor != backgroundColor;
  }
}

// ── بطاقة الرصيد ──────────────────────────────────────────────────────────────
class _BalanceCard extends StatelessWidget {
  final double balance, totalIn, totalOut;
  const _BalanceCard({
    required this.balance,
    required this.totalIn,
    required this.totalOut,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final p = cs.primary;
    final pDeep = Color.lerp(p, Colors.black, 0.22) ?? p;
    final gap = ScreenLayout.of(context).pageHorizontalGap;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: gap, vertical: 14),
      padding: EdgeInsets.symmetric(horizontal: gap, vertical: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [p, pDeep],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: AppShape.none,
        boxShadow: [
          BoxShadow(
            color: p.withValues(alpha: 0.35),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.currentBalance,
            style: TextStyle(color: Colors.white70, fontSize: 13),
          ),
          const SizedBox(height: 6),
          Text(
            '${_numFmt.format(balance)} Fdj',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            AppLocalizations.of(context)!.cashCashboxBalanceInfo,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.75),
              fontSize: 11,
              height: 1.35,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _MiniStat(
                  label: AppLocalizations.of(context)!.inboundLabel,
                  value: _numFmt.format(totalIn),
                  color: const Color(0xFF22C55E),
                  icon: Icons.south_west_rounded,
                ),
              ),
              Container(width: 1, height: 40, color: Colors.white24),
              Expanded(
                child: _MiniStat(
                  label: AppLocalizations.of(context)!.outboundLabel,
                  value: _numFmt.format(totalOut),
                  color: const Color(0xFFEF4444),
                  icon: Icons.north_east_rounded,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MiniStat extends StatelessWidget {
  final String label, value;
  final Color color;
  final IconData icon;
  const _MiniStat({
    required this.label,
    required this.value,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 16),
            const SizedBox(width: 4),
            Text(
              label,
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          '$value Fdj',
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

// ── إيداع / سحب فقط (بدون أزرار وهمية) ───────────────────────────────────────
class _QuickActions extends StatelessWidget {
  final VoidCallback onDeposit;
  final VoidCallback onWithdraw;
  const _QuickActions({required this.onDeposit, required this.onWithdraw});

  @override
  Widget build(BuildContext context) {
    final surface = Theme.of(context).colorScheme.surface;
    final gap = ScreenLayout.of(context).pageHorizontalGap;
    return Container(
      color: surface,
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: gap),
      child: Row(
        children: [
          Expanded(
            child: _QBtn(
              icon: Icons.add_circle_rounded,
              color: const Color(0xFF22C55E),
              label: AppLocalizations.of(context)!.depositLabel,
              onTap: onDeposit,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: _QBtn(
              icon: Icons.remove_circle_rounded,
              color: const Color(0xFFEF4444),
              label: AppLocalizations.of(context)!.withdrawalLabel,
              onTap: onWithdraw,
            ),
          ),
        ],
      ),
    );
  }
}

class _QBtn extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;
  final VoidCallback onTap;
  const _QBtn({
    required this.icon,
    required this.color,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color.withValues(alpha: 0.1),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color, size: 22),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── قائمة المعاملات ───────────────────────────────────────────────────────────

int? _shiftIdFromCashDescription(String d) {
  final open = RegExp(r'فتح الوردية\s*#(\d+)').firstMatch(d);
  if (open != null) return int.tryParse(open.group(1)!);
  final close = RegExp(r'إغلاق الوردية\s*#(\d+)').firstMatch(d);
  if (close != null) return int.tryParse(close.group(1)!);
  return null;
}

int? _ledgerShiftIdFromRow(Map<String, dynamic> r) {
  final raw = r['workShiftId'];
  if (raw == null) return null;
  if (raw is int) return raw;
  if (raw is num) return raw.toInt();
  return int.tryParse(raw.toString());
}

class _CashTx {
  final int? ledgerId;
  final String transactionType;
  final int? invoiceId;
  final String description;
  final double amount;
  final DateTime date;

  /// وردية مرتبطة بالحركة (من الفاتورة أو من وصف فتح/إغلاق الوردية).
  final int? workShiftId;

  const _CashTx({
    this.ledgerId,
    required this.transactionType,
    this.invoiceId,
    required this.description,
    required this.amount,
    required this.date,
    this.workShiftId,
  });

  factory _CashTx.fromRow(
    Map<String, dynamic> r,
    Map<int, int?> invoiceShiftById,
  ) {
    final amt = (r['amount'] as num).toDouble();
    final created = r['createdAt']?.toString();
    final iid = r['invoiceId'] as int?;
    int? wid = _ledgerShiftIdFromRow(r);
    wid ??= iid != null ? invoiceShiftById[iid] : null;
    wid ??= _shiftIdFromCashDescription(r['description']?.toString() ?? '');
    return _CashTx(
      ledgerId: r['id'] as int?,
      transactionType: r['transactionType']?.toString() ?? '',
      invoiceId: iid,
      description: r['description']?.toString() ?? '',
      amount: amt,
      date: DateTime.tryParse(created ?? '') ?? DateTime.now(),
      workShiftId: wid,
    );
  }

  bool get _isManual =>
      transactionType == 'manual_in' || transactionType == 'manual_out';

  String flowLabel(BuildContext context) => amount >= 0 ? AppLocalizations.of(context)!.cashMovementsDeposit : AppLocalizations.of(context)!.cashMovementsWithdrawal;
}

/// مجموع قيود `manual_in` و`manual_out` ضمن الحركات المعروضة للمجموعة.
({double depositSum, int depositCount, double withdrawSum, int withdrawCount})
_shiftManualDepositWithdrawTotals(List<_CashTx> movements) {
  var depositSum = 0.0;
  var withdrawSum = 0.0;
  var depositCount = 0;
  var withdrawCount = 0;
  for (final t in movements) {
    if (t.transactionType == 'manual_in') {
      depositSum += t.amount > 0 ? t.amount : 0;
      depositCount++;
    } else if (t.transactionType == 'manual_out') {
      withdrawSum += t.amount < 0 ? -t.amount : 0;
      withdrawCount++;
    }
  }
  return (
    depositSum: depositSum,
    depositCount: depositCount,
    withdrawSum: withdrawSum,
    withdrawCount: withdrawCount,
  );
}

/// ملخص مبالغ وأعداد لقائمة حركات ضمن وردية واحدة (واجهة الصندوق).
class _ShiftCashBreakdown {
  final double wared;
  final double sader;
  final int edkhalCount;
  final int ikhrajCount;
  final int manualCount;
  final int invoiceLinkedCount;

  const _ShiftCashBreakdown({
    required this.wared,
    required this.sader,
    required this.edkhalCount,
    required this.ikhrajCount,
    required this.manualCount,
    required this.invoiceLinkedCount,
  });

  factory _ShiftCashBreakdown.fromTxs(List<_CashTx> txs) {
    double w = 0, s = 0;
    var inC = 0, outC = 0, man = 0, inv = 0;
    for (final t in txs) {
      if (t.amount > 0) {
        w += t.amount;
        inC++;
      } else if (t.amount < 0) {
        s += -t.amount;
        outC++;
      }
      if (t._isManual) man++;
      if (t.invoiceId != null) inv++;
    }
    return _ShiftCashBreakdown(
      wared: w,
      sader: s,
      edkhalCount: inC,
      ikhrajCount: outC,
      manualCount: man,
      invoiceLinkedCount: inv,
    );
  }

  String get summaryLine =>
      'وارد ${_numFmt.format(wared)} Fdj  •  صادر ${_numFmt.format(sader)} Fdj  •  '
      'إدخال $edkhalCount  •  إخراج $ikhrajCount  •  يدوي $manualCount  •  فواتير $invoiceLinkedCount';
}

class _CashShiftSectionHeader extends StatelessWidget {
  final int? shiftId;
  final Map<String, dynamic>? shiftRow;
  final List<_CashTx> movements;
  final VoidCallback onOpenDetails;

  const _CashShiftSectionHeader({
    required this.shiftId,
    required this.shiftRow,
    required this.movements,
    required this.onOpenDetails,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final headerBg = cs.surfaceContainerHighest;
    final headerBorder = cs.outline.withValues(alpha: 0.45);
    final primary = cs.primary;
    final onV = cs.onSurfaceVariant;
    final n = movements.length;
    final gap = ScreenLayout.of(context).pageHorizontalGap;

    if (shiftId == null) {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onOpenDetails,
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 8, top: 4),
            padding: EdgeInsets.symmetric(horizontal: gap, vertical: 10),
            decoration: BoxDecoration(
              color: headerBg,
              border: Border.all(color: headerBorder),
            ),
            child: Row(
              children: [
                Icon(Icons.help_outline_rounded, size: 20, color: onV),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${AppLocalizations.of(context)!.cashNoShift} \xb7 $n ${AppLocalizations.of(context)!.cashMovementsShort}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        AppLocalizations.of(context)!.cashTapDetails,
                        style: TextStyle(fontSize: 11.5, color: onV),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.info_outline, size: 20, color: onV),
              ],
            ),
          ),
        ),
      );
    }

    if (shiftRow == null) {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onOpenDetails,
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 8, top: 4),
            padding: EdgeInsets.symmetric(horizontal: gap, vertical: 10),
            decoration: BoxDecoration(
              color: headerBg,
              border: Border.all(color: headerBorder),
            ),
            child: Row(
              children: [
                Icon(Icons.schedule_rounded, size: 20, color: primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text: AppLocalizations.of(context)!.cashShiftLabel,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 15,
                                color: primary,
                              ),
                            ),
                            TextSpan(
                              text: '#$shiftId',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 16,
                                color: primary,
                              ),
                            ),
                            TextSpan(
                              text: '  \xb7  $n ${AppLocalizations.of(context)!.cashMovementsShort}',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: onV,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        AppLocalizations.of(context)!.cashTapDetails,
                        style: TextStyle(fontSize: 11.5, color: onV),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.info_outline, color: primary, size: 22),
              ],
            ),
          ),
        ),
      );
    }

    final Map<String, dynamic> row = shiftRow!;
    final name = _shiftStaffNameFromRow(context, row);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onOpenDetails,
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(bottom: 8, top: 4),
          padding: EdgeInsets.symmetric(horizontal: gap, vertical: 12),
          decoration: BoxDecoration(
            color: headerBg,
            border: Border.all(color: headerBorder),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.schedule_rounded, size: 22, color: primary),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: [
                          TextSpan(
                            text: AppLocalizations.of(context)!.cashShiftLabel,
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: primary,
                            ),
                          ),
                          TextSpan(
                            text: '#$shiftId',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 16,
                              color: primary,
                            ),
                          ),
                          TextSpan(
                            text: '  \xb7  $n ${AppLocalizations.of(context)!.cashMovementsShort}',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: onV,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '${AppLocalizations.of(context)!.cashEmployeeLabel}$name',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: cs.onSurface,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      AppLocalizations.of(context)!.cashTapDetails,
                      style: TextStyle(fontSize: 11.5, color: onV),
                    ),
                  ],
                ),
              ),
              Icon(Icons.info_outline, color: primary, size: 22),
            ],
          ),
        ),
      ),
    );
  }
}

class _CashLedgerList extends StatelessWidget {
  final List<_CashTx> txs;
  final Map<int, Map<String, dynamic>> shiftById;
  final int Function(int? a, int? b) compareShiftKeys;
  final Future<void> Function(int invoiceId) onInvoiceTap;

  const _CashLedgerList({
    required this.txs,
    required this.shiftById,
    required this.compareShiftKeys,
    required this.onInvoiceTap,
  });

  @override
  Widget build(BuildContext context) {
    final gap = ScreenLayout.of(context).pageHorizontalGap;
    if (txs.isEmpty) {
      final h = MediaQuery.sizeOf(context).height;
      return ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsetsDirectional.only(
          start: gap,
          end: gap,
          top: 20,
          bottom: 100,
        ),
        children: [
          SizedBox(
            height: math.max(240, h * 0.38),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 48,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AppLocalizations.of(context)!.noMovements,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
    final cardBg = Theme.of(context).colorScheme.surface;

    /// ترتيب الحركات كما في القائمة المعروضة (الكل / إدخال / إخراج) دون إعادة ترتيب داخل الوردية.
    final groups = <int?, List<_CashTx>>{};
    for (final t in txs) {
      groups.putIfAbsent(t.workShiftId, () => []).add(t);
    }
    final keys = groups.keys.toList()..sort(compareShiftKeys);

    final children = <Widget>[];
    for (final k in keys) {
      final list = groups[k]!;
      children.add(
        _CashShiftSectionHeader(
          shiftId: k,
          shiftRow: k == null ? null : shiftById[k],
          movements: list,
          onOpenDetails: () => _showCashShiftDetailDialog(
            context,
            shiftId: k,
            shiftRow: k == null ? null : shiftById[k],
            movements: list,
          ),
        ),
      );
      for (final tx in list) {
        children.add(
          _TxCard(tx: tx, cardBg: cardBg, onInvoiceTap: onInvoiceTap),
        );
      }
    }

    return ListView(
      padding: EdgeInsetsDirectional.only(
        start: gap,
        end: gap,
        top: 12,
        bottom: 100,
      ),
      children: children,
    );
  }
}

class _TxCard extends StatelessWidget {
  final _CashTx tx;
  final Color cardBg;
  final Future<void> Function(int invoiceId) onInvoiceTap;
  const _TxCard({
    required this.tx,
    required this.cardBg,
    required this.onInvoiceTap,
  });

  @override
  Widget build(BuildContext context) {
    final isIn = tx.amount > 0;
    final color = isIn ? const Color(0xFF22C55E) : const Color(0xFFEF4444);
    final icon = isIn ? Icons.south_west_rounded : Icons.north_east_rounded;
    final typeLabel = _ledgerTypeLabelAr(context, tx.transactionType);

    return Material(
      color: cardBg,
      elevation: 0,
      child: InkWell(
        onTap: tx.invoiceId != null ? () => onInvoiceTap(tx.invoiceId!) : null,
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(
                context,
              ).colorScheme.outline.withValues(alpha: 0.4),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(color: color.withValues(alpha: 0.12)),
                child: Icon(icon, color: color, size: 22),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tx.description,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Wrap(
                      spacing: 6,
                      runSpacing: 4,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.accent.withValues(alpha: 0.12),
                          ),
                          child: Text(
                            typeLabel,
                            style: const TextStyle(
                              color: AppColors.accent,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        if (tx.invoiceId != null)
                          Text(
                            '${AppLocalizations.of(context)!.cashTapInvoice}${tx.invoiceId}',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.blue.shade700,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text(
                      _dateFmt.format(tx.date),
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${isIn ? '+' : '-'}${_numFmt.format(tx.amount.abs())} Fdj',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: color,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.12),
                    ),
                    child: Text(
                      tx.flowLabel(context),
                      style: TextStyle(
                        color: color,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── ورقة إضافة قيد ───────────────────────────────────────────────────────────
class _AddTransactionSheet extends StatefulWidget {
  final bool initialIncome;
  final Future<void> Function(_CashTxDraft) onAdd;
  const _AddTransactionSheet({
    required this.initialIncome,
    required this.onAdd,
  });
  @override
  State<_AddTransactionSheet> createState() => _AddTransactionSheetState();
}

class _CashTxDraft {
  final String description;
  final double amount;
  const _CashTxDraft({required this.description, required this.amount});
}

class _AddTransactionSheetState extends State<_AddTransactionSheet> {
  late String _type;
  final _desc = TextEditingController();
  final _amount = TextEditingController();

  bool _typeInitialized = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_typeInitialized) {
      _typeInitialized = true;
      _type = widget.initialIncome ? AppLocalizations.of(context)!.entry : AppLocalizations.of(context)!.exit;
    }
  }

  @override
  void dispose() {
    _desc.dispose();
    _amount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final gap = ScreenLayout.of(context).pageHorizontalGap;
    return Container(
      margin: EdgeInsetsDirectional.only(start: gap, end: gap, bottom: 12),
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      decoration: BoxDecoration(
        color: isDark ? AppColors.cardDark : AppColors.cardLight,
        borderRadius: AppShape.none,
        border: Border.all(
          color: isDark ? AppColors.borderDark : AppColors.borderLight,
        ),
      ),
      child: Directionality(
        textDirection: Directionality.of(context),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: gap, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppLocalizations.of(context)!.manualEntryLabel,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              Text(
                AppLocalizations.of(context)!.cashCashboxInfo,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                  height: 1.3,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [AppLocalizations.of(context)!.entry, AppLocalizations.of(context)!.exit].map((t) {
                  final sel = _type == t;
                  final c = t == AppLocalizations.of(context)!.entry
                      ? const Color(0xFF22C55E)
                      : const Color(0xFFEF4444);
                  return Expanded(
                    child: GestureDetector(
                      onTap: () => setState(() => _type = t),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 150),
                        margin: EdgeInsetsDirectional.only(
                          start: t == AppLocalizations.of(context)!.exit ? 0 : 8,
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: sel ? c : c.withValues(alpha: 0.08),
                          border: Border.all(color: c.withValues(alpha: 0.4)),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          t,
                          style: TextStyle(
                            color: sel ? Colors.white : c,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 14),
              TextField(
                controller: _desc,
                textDirection: Directionality.of(context),
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.expenseDescription,
                  prefixIcon: Icon(Icons.notes_rounded),
                  border: OutlineInputBorder(borderRadius: AppShape.none),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _amount,
                keyboardType: TextInputType.number,
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                  labelText: AppLocalizations.of(context)!.amountIQD,
                  prefixIcon: Icon(Icons.attach_money_rounded),
                  border: OutlineInputBorder(borderRadius: AppShape.none),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 12,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: const RoundedRectangleBorder(
                    borderRadius: AppShape.none,
                  ),
                ),
                child: Text(
                  AppLocalizations.of(context)!.addEntry,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _submit() async {
    final raw = _amount.text.replaceAll(',', '').trim();
    final amount = double.tryParse(raw) ?? 0;
    if (_desc.text.trim().isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.enterMovementDescription)));
      return;
    }
    if (amount <= 0) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(AppLocalizations.of(context)!.enterAmountGreaterThanZero)));
      return;
    }
    final signed = _type == AppLocalizations.of(context)!.entry ? amount : -amount;
    await widget.onAdd(
      _CashTxDraft(description: _desc.text.trim(), amount: signed),
    );
  }
}
