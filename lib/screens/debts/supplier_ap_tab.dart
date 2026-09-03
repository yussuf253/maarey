import '../../l10n/generated/app_localizations.dart';
import 'dart:async' show unawaited;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' hide TextDirection;
import 'package:provider/provider.dart';

import '../../services/database_helper.dart';
import '../../theme/design_tokens.dart';
import '../../utils/screen_layout.dart';
import '../../providers/suppliers_ap_provider.dart';
import 'supplier_detail_screen.dart';

final _numFmt = NumberFormat('#,##0', 'ar');

/// تبويب «موردون» ضمن شاشة الديون — ذمم دائنة (AP) ووصولات المورد.
class SupplierApTab extends StatefulWidget {
  const SupplierApTab({super.key});

  @override
  State<SupplierApTab> createState() => _SupplierApTabState();
}

class _SupplierApTabState extends State<SupplierApTab> {
  final TextEditingController _search = TextEditingController();

  @override
  void initState() {
    super.initState();
    _search.addListener(() {
      unawaited(context.read<SuppliersApProvider>().setQuery(_search.text));
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(context.read<SuppliersApProvider>().refresh());
    });
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  Future<void> _addSupplierDialog() async {
    final loc = AppLocalizations.of(context)!;
    final nameCtrl = TextEditingController();
    final phoneCtrl = TextEditingController();
    final noteCtrl = TextEditingController();
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => Directionality(
        textDirection: Directionality.of(context),
        child: AlertDialog(
          shape: const RoundedRectangleBorder(borderRadius: AppShape.none),
          title: Text(loc.saNewSupplier),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameCtrl,
                  decoration: InputDecoration(
                    labelText: loc.saNameRequired,
                    border: const OutlineInputBorder(borderRadius: AppShape.none),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: phoneCtrl,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: loc.saPhoneOptional,
                    border: const OutlineInputBorder(borderRadius: AppShape.none),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: noteCtrl,
                  maxLines: 2,
                  decoration: InputDecoration(
                    labelText: loc.saNotes,
                    border: const OutlineInputBorder(borderRadius: AppShape.none),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(loc.saCancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: Text(loc.saSave),
            ),
          ],
        ),
      ),
    );
    final name = nameCtrl.text.trim();
    final phone = phoneCtrl.text.trim();
    final note = noteCtrl.text.trim();
    nameCtrl.dispose();
    phoneCtrl.dispose();
    noteCtrl.dispose();
    if (ok != true || !mounted) return;
    if (name.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(loc.saEnterName)));
      return;
    }
    try {
      await DatabaseHelper().insertSupplier(
        name: name,
        phone: phone.isEmpty ? null : phone,
        notes: note.isEmpty ? null : note,
      );
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(loc.saSaveError)));
      }
      return;
    }
    if (!mounted) return;
    await context.read<SuppliersApProvider>().refresh();
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final isDark = theme.brightness == Brightness.dark;
    final card = isDark ? AppColors.cardDark : cs.surface;

    return Consumer<SuppliersApProvider>(
      builder: (context, prov, _) {
        final gap = ScreenLayout.of(context).pageHorizontalGap;
        final filtered = prov.items;
        final totalOpen = prov.totalOpen;
        if (prov.isLoading && filtered.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return Scaffold(
          body: RefreshIndicator(
            onRefresh: prov.refresh,
            child: NotificationListener<ScrollNotification>(
              onNotification: (n) {
                if (!prov.hasMore) return false;
                if (prov.isLoadingMore) return false;
                if (n.metrics.pixels >= n.metrics.maxScrollExtent - 420) {
                  unawaited(prov.loadMore());
                }
                return false;
              },
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsetsDirectional.only(
                  start: gap,
                  end: gap,
                  top: 12,
                  bottom: 100,
                ),
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: card,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: cs.outlineVariant),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loc.saCreditAccounts,
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          loc.saCreditAccountsDesc,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: cs.onSurfaceVariant,
                            height: 1.45,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
              'loc.saTotalOwed(\${_numFmt.format(totalOpen)})',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                            color: totalOpen > 1e-6
                                ? const Color(0xFFEA580C)
                                : const Color(0xFF16A34A),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _search,
                    decoration: InputDecoration(
                      hintText: loc.saSearchHint,
                      prefixIcon: const Icon(Icons.search_rounded),
                      suffixIcon: _search.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear_rounded),
                              onPressed: () => _search.clear(),
                            )
                          : null,
                      border: const OutlineInputBorder(
                        borderRadius: AppShape.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (filtered.isEmpty)
                    SizedBox(
                      height: 220,
                      child: Center(
                        child: Text(
                          loc.saNoSuppliersYet,
                          style: TextStyle(color: cs.onSurfaceVariant),
                        ),
                      ),
                    )
                  else
                    for (final s in filtered)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Material(
                          color: card,
                          elevation: isDark ? 2 : 0.5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: cs.outlineVariant),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (_) => SupplierDetailScreen(
                                    supplierId: s.supplier.id,
                                  ),
                                ),
                              );
                              if (context.mounted) unawaited(prov.refresh());
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(14),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.local_shipping_rounded,
                                    color: cs.primary,
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          s.supplier.name,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
              loc.saSupplierSummary(_numFmt.format(s.totalBilled), _numFmt.format(s.totalPaid)),
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: cs.onSurfaceVariant,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Wrap(
                                          spacing: 6,
                                          runSpacing: 6,
                                          children: [
                                            _quickActionChip(
                                              context,
                                              label: loc.saReceiptLabel,
                                              icon: Icons.receipt_long_rounded,
                                              onTap: () async {
                                                await Navigator.push<void>(
                                                  context,
                                                  MaterialPageRoute<void>(
                                                    builder: (_) =>
                                                        SupplierDetailScreen(
                                                          supplierId:
                                                              s.supplier.id,
                                                          initialAction:
                                                              SupplierDetailInitialAction
                                                                  .addBill,
                                                        ),
                                                  ),
                                                );
                                                if (context.mounted) {
                                                  unawaited(prov.refresh());
                                                }
                                              },
                                            ),
                                            _quickActionChip(
                                              context,
                                              label: loc.saPaymentLabel,
                                              icon: Icons.payments_rounded,
                                              onTap: () async {
                                                await Navigator.push<void>(
                                                  context,
                                                  MaterialPageRoute<void>(
                                                    builder: (_) =>
                                                        SupplierDetailScreen(
                                                          supplierId:
                                                              s.supplier.id,
                                                          initialAction:
                                                              SupplierDetailInitialAction
                                                                  .payout,
                                                        ),
                                                  ),
                                                );
                                                if (context.mounted) {
                                                  unawaited(prov.refresh());
                                                }
                                              },
                                            ),
                                            _quickActionChip(
                                              context,
                                              label: loc.saReturnLabel,
                                              icon: Icons
                                                  .assignment_return_outlined,
                                              onTap: () async {
                                                await Navigator.push<void>(
                                                  context,
                                                  MaterialPageRoute<void>(
                                                    builder: (_) =>
                                                        SupplierDetailScreen(
                                                          supplierId:
                                                              s.supplier.id,
                                                          initialAction:
                                                              SupplierDetailInitialAction
                                                                  .supplierReturn,
                                                        ),
                                                  ),
                                                );
                                                if (context.mounted) {
                                                  unawaited(prov.refresh());
                                                }
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '${_numFmt.format(s.openPayable)} Fdj',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 15,
                                          color: s.openPayable > 1e-6
                                              ? const Color(0xFFEA580C)
                                              : const Color(0xFF16A34A),
                                        ),
                                      ),
                                      Text(
                                        s.openPayable > 1e-6
              ? loc.saDueToSupplier
              : loc.saBalanced,
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: cs.onSurfaceVariant,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.chevron_left_rounded,
                                    color: cs.onSurfaceVariant,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  if (prov.isLoadingMore)
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: _addSupplierDialog,
            icon: const Icon(Icons.add_rounded),
            label: Text(loc.saSupplierChip),
          ),
        );
      },
    );
  }
}

Widget _quickActionChip(
  BuildContext context, {
  required String label,
  required IconData icon,
  required VoidCallback onTap,
}) {
  return ActionChip(
    avatar: Icon(icon, size: 16),
    label: Text(label, style: const TextStyle(fontSize: 12)),
    onPressed: onTap,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
  );
}
