import 'package:flutter/material.dart';
import 'package:intl/intl.dart' hide TextDirection;

import '../../l10n/generated/app_localizations.dart';
import '../../services/database_helper.dart';

/// سجل حركات نقاط الولاء (جميع العملاء أو حسب التصفية لاحقاً).
class LoyaltyLedgerScreen extends StatefulWidget {
  const LoyaltyLedgerScreen({super.key});

  @override
  State<LoyaltyLedgerScreen> createState() => _LoyaltyLedgerScreenState();
}

class _LoyaltyLedgerScreenState extends State<LoyaltyLedgerScreen> {
  AppLocalizations get loc => AppLocalizations.of(context)!;
  final DatabaseHelper _db = DatabaseHelper();
  List<Map<String, dynamic>> _rows = [];
  Map<int, String> _names = {};
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() => _loading = true);
    try {
      final ledger = await _db.getLoyaltyLedger(limit: 800);
      final customers = await _db.getAllCustomers();
      final names = {
        for (final c in customers) c['id'] as int: c['name']?.toString() ?? '',
      };
      if (!mounted) return;
      setState(() {
        _rows = ledger;
        _names = names;
        _loading = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() => _loading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(loc.llLoadFailed(e.toString()))),
      );
    }
  }

  String _kindLabel(String? k) {
    switch (k) {
      case 'earn':
        return loc.llGranted;
      case 'redeem':
        return loc.llRedeemed;
      default:
        return k ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final df = DateFormat('yyyy/MM/dd HH:mm', 'en');
    return Scaffold(
      appBar: AppBar(
        title: Text(loc.llTitle),
        actions: [
          IconButton(
            onPressed: _loading ? null : _load,
            icon: const Icon(Icons.refresh_rounded),
            tooltip: loc.llRefresh,
          ),
        ],
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : _rows.isEmpty
              ? Center(
                  child: Text(
                    loc.llNoData,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                )
              : ListView.separated(
                  padding: const EdgeInsets.all(12),
                  itemCount: _rows.length,
                  separatorBuilder: (_, _) => const Divider(height: 1),
                  itemBuilder: (context, i) {
                    final r = _rows[i];
                    final cid = r['customerId'] as int? ?? 0;
                    final name = _names[cid] ?? loc.llCustomerId(cid.toString());
                    final pts = (r['points'] as num?)?.toInt() ?? 0;
                    final bal = (r['balanceAfter'] as num?)?.toInt() ?? 0;
                    final note = r['note']?.toString() ?? '';
                    final created = r['createdAt']?.toString() ?? '';
                    DateTime? dt;
                    try {
                      dt = DateTime.parse(created);
                    } catch (_) {}
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: pts >= 0
                            ? Colors.teal.shade100
                            : Colors.orange.shade100,
                        child: Icon(
                          pts >= 0 ? Icons.add_rounded : Icons.remove_rounded,
                          color: pts >= 0
                              ? Colors.teal.shade800
                              : Colors.orange.shade800,
                          size: 20,
                        ),
                      ),
                      title: Text(
                        name,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        '${_kindLabel(r['kind'] as String?)} · $note\n'
                        '${dt != null ? df.format(dt) : created}',
                        style: const TextStyle(fontSize: 12),
                      ),
                      isThreeLine: true,
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${pts >= 0 ? '+' : ''}$pts',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: pts >= 0 ? Colors.teal : Colors.deepOrange,
                            ),
                          ),
                          Text(
                            loc.llBalance(bal.toString()),
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
    );
  }
}
