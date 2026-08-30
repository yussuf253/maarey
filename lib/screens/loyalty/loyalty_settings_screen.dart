import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:naboo/l10n/generated/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../models/loyalty_settings_data.dart';
import '../../providers/loyalty_settings_provider.dart';
import '../../theme/design_tokens.dart';

/// إعدادات برنامج نقاط الولاء — منفصل عن خصومات البنود وأرباح المنتجات (خصم تسويقي بالنقاط).
class LoyaltySettingsScreen extends StatefulWidget {
  const LoyaltySettingsScreen({super.key});

  @override
  State<LoyaltySettingsScreen> createState() => _LoyaltySettingsScreenState();
}

class _LoyaltySettingsScreenState extends State<LoyaltySettingsScreen> {
  AppLocalizations get loc => AppLocalizations.of(context)!;
  late bool _enabled;
  late TextEditingController _per1000Ctrl;
  late TextEditingController _iqdPerPointCtrl;
  late TextEditingController _minRedeemCtrl;
  late TextEditingController _maxPctCtrl;
  late bool _earnCash;
  late bool _earnDelivery;
  late bool _earnInstallment;
  late bool _earnCreditDown;
  bool _dirty = false;

  @override
  void initState() {
    super.initState();
    final p = context.read<LoyaltySettingsProvider>().data;
    _enabled = p.enabled;
    _per1000Ctrl = TextEditingController(text: p.pointsPer1000Dinar.toString());
    _iqdPerPointCtrl = TextEditingController(text: p.iqDPerPoint.toString());
    _minRedeemCtrl = TextEditingController(text: p.minRedeemPoints.toString());
    _maxPctCtrl =
        TextEditingController(text: p.maxRedeemPercentOfNet.toString());
    _earnCash = p.earnOnCash;
    _earnDelivery = p.earnOnDelivery;
    _earnInstallment = p.earnOnInstallment;
    _earnCreditDown = p.earnOnCreditWithDownPayment;
  }

  @override
  void dispose() {
    _per1000Ctrl.dispose();
    _iqdPerPointCtrl.dispose();
    _minRedeemCtrl.dispose();
    _maxPctCtrl.dispose();
    super.dispose();
  }

  LoyaltySettingsData _collect() {
    return LoyaltySettingsData(
      enabled: _enabled,
      pointsPer1000Dinar:
          double.tryParse(_per1000Ctrl.text.trim()) ?? 10,
      iqDPerPoint: double.tryParse(_iqdPerPointCtrl.text.trim()) ?? 25,
      minRedeemPoints: int.tryParse(_minRedeemCtrl.text.trim()) ?? 50,
      maxRedeemPercentOfNet:
          double.tryParse(_maxPctCtrl.text.trim()) ?? 30,
      earnOnCash: _earnCash,
      earnOnDelivery: _earnDelivery,
      earnOnInstallment: _earnInstallment,
      earnOnCreditWithDownPayment: _earnCreditDown,
    );
  }

  Future<void> _save() async {
    final nav = ScaffoldMessenger.of(context);
    try {
      await context.read<LoyaltySettingsProvider>().save(_collect());
      if (!mounted) return;
      setState(() => _dirty = false);
      nav.showSnackBar(
        SnackBar(
          content: Text(loc.lsSaveSuccess),
          behavior: SnackBarBehavior.floating,
        ),
      );
    } catch (e) {
      if (mounted) {
        nav.showSnackBar(SnackBar(content: Text(loc.lsSaveFailed(e.toString()))));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(loc.lsTitle),
        actions: [
          FilledButton(
            onPressed: _dirty ? _save : null,
            child: Text(loc.lsSave),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: AppShape.none,
              side: BorderSide(
                color: isDark ? AppColors.borderDark : AppColors.borderLight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    loc.lsWhyNotSpoilTitle,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    loc.lsWhyNotSpoilBody,
                    style: TextStyle(
                      fontSize: 13,
                      color: isDark ? Colors.grey.shade400 : Colors.grey.shade700,
                      height: 1.35,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          SwitchListTile(
            title: Text(loc.lsEnablePoints),
            subtitle: Text(loc.lsEnablePointsSubtitle),
            value: _enabled,
            activeThumbColor: AppColors.primary,
            onChanged: (v) => setState(() {
              _enabled = v;
              _dirty = true;
            }),
          ),
          const Divider(),
          TextField(
            controller: _per1000Ctrl,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[\d.]')),
            ],
            onChanged: (_) => setState(() => _dirty = true),
            decoration: InputDecoration(
              labelText: loc.lsPointsPerThousand,
              border: const OutlineInputBorder(borderRadius: AppShape.none),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _iqdPerPointCtrl,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[\d.]')),
            ],
            onChanged: (_) => setState(() => _dirty = true),
            decoration: InputDecoration(
              labelText: loc.lsRedemptionValue,
              border: const OutlineInputBorder(borderRadius: AppShape.none),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _minRedeemCtrl,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (_) => setState(() => _dirty = true),
            decoration: InputDecoration(
              labelText: loc.lsMinRedemption,
              border: const OutlineInputBorder(borderRadius: AppShape.none),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _maxPctCtrl,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[\d.]')),
            ],
            onChanged: (_) => setState(() => _dirty = true),
            decoration: InputDecoration(
              labelText: loc.lsMaxRedemptionPercent,
              border: const OutlineInputBorder(borderRadius: AppShape.none),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            loc.lsAwardWhenTitle,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          SwitchListTile(
            title: Text(loc.lsAwardCashSale),
            value: _earnCash,
            activeThumbColor: AppColors.primary,
            onChanged: (v) => setState(() {
              _earnCash = v;
              _dirty = true;
            }),
          ),
          SwitchListTile(
            title: Text(loc.lsAwardDelivery),
            value: _earnDelivery,
            activeThumbColor: AppColors.primary,
            onChanged: (v) => setState(() {
              _earnDelivery = v;
              _dirty = true;
            }),
          ),
          SwitchListTile(
            title: Text(loc.lsAwardInstallment),
            value: _earnInstallment,
            activeThumbColor: AppColors.primary,
            onChanged: (v) => setState(() {
              _earnInstallment = v;
              _dirty = true;
            }),
          ),
          SwitchListTile(
            title: Text(loc.lsAwardCreditWithAdvance),
            value: _earnCreditDown,
            activeThumbColor: AppColors.primary,
            onChanged: (v) => setState(() {
              _earnCreditDown = v;
              _dirty = true;
            }),
          ),
        ],
      ),
    );
  }
}
