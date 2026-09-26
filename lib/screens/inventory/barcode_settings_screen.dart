import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'dart:async';

import '../../l10n/generated/app_localizations.dart';

import '../../providers/global_barcode_route_bridge.dart';
import '../../providers/hardware_scanner_provider.dart';
import '../../services/app_settings_repository.dart';
import '../../utils/barcode_keystroke_decoder.dart';

/// تهيئة الباركود — إعدادات حقيقية في [app_settings].
class BarcodeSettingsScreen extends StatefulWidget {
  const BarcodeSettingsScreen({super.key});

  @override
  State<BarcodeSettingsScreen> createState() => _BarcodeSettingsScreenState();
}

class _BarcodeSettingsScreenState extends State<BarcodeSettingsScreen> {
  final _repo = AppSettingsRepository.instance;
  final _patternCtrl = TextEditingController();
  final _weightDivCtrl = TextEditingController();
  final _currencyDivCtrl = TextEditingController();

  bool _loading = true;
  bool _saving = false;

  AppLocalizations get loc => AppLocalizations.of(context)!;
  String _standard = 'code128';
  bool _weightEmbed = false;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() => _loading = true);
    try {
      final d = await BarcodeSettingsData.load(_repo);
      if (!mounted) return;
      setState(() {
        _standard = d.standard;
        _weightEmbed = d.weightEmbedEnabled;
        _patternCtrl.text = d.embedPattern;
        _weightDivCtrl.text = _fmtNum(d.weightDivisor);
        _currencyDivCtrl.text = _fmtNum(d.currencyDivisor);
      });
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  String _fmtNum(double x) {
    if (x == x.roundToDouble()) return x.toInt().toString();
    return x.toString();
  }

  @override
  void dispose() {
    _patternCtrl.dispose();
    _weightDivCtrl.dispose();
    _currencyDivCtrl.dispose();
    super.dispose();
  }

  bool _validatePattern(String s) {
    final t = s.trim().toUpperCase();
    if (t.isEmpty) return false;
    return RegExp(r'^[XWPN]+$').hasMatch(t);
  }

  Future<void> _save() async {
    final pattern = _patternCtrl.text.trim().toUpperCase();
    if (!_validatePattern(pattern)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            loc.bsFormatError,
          ),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    final wd = double.tryParse(_weightDivCtrl.text.replaceAll(',', '.'));
    final cd = double.tryParse(_currencyDivCtrl.text.replaceAll(',', '.'));
    if (wd == null || wd <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(loc.bsWeightUnitError),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }
    if (cd == null || cd <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(loc.bsCurrencyDivError),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    setState(() => _saving = true);
    try {
      final data = BarcodeSettingsData(
        standard: _standard,
        weightEmbedEnabled: _weightEmbed,
        embedPattern: pattern,
        weightDivisor: wd,
        currencyDivisor: cd,
      );
      await data.save(_repo);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(loc.bsSaveSuccess),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('\${loc.bsSaveError}: \$e'),
          behavior: SnackBarBehavior.floating,
        ),
      );
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    return Directionality(
      textDirection: Directionality.of(context),
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
          elevation: 0,
          title: Text(
            loc.bsTitle,
            style: theme.textTheme.titleMedium?.copyWith(
              color: cs.onPrimary,
              fontWeight: FontWeight.w700,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, size: 18),
            onPressed: _saving ? null : () => Navigator.pop(context),
          ),
        ),
        body: _loading
            ? const Center(child: CircularProgressIndicator())
            : ListView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                children: [
                  Text(
                    loc.bsSubtitle,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: cs.onSurfaceVariant,
                      height: 1.55,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      loc.bsTypeTitle,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  LayoutBuilder(
                    builder: (_, c) {
                      final row = c.maxWidth >= 560;
                      final c128 = _FormatCard(
                        selected: _standard == 'code128',
                        title: 'Code 128',
                        description:
                            loc.bsTypeCode128Desc,
                        onTap: () => setState(() => _standard = 'code128'),
                      );
                      final ean = _FormatCard(
                        selected: _standard == 'ean13',
                        title: 'EAN 13',
                        description:
                            loc.bsTypeEan13Desc,
                        onTap: () => setState(() => _standard = 'ean13'),
                      );
                      if (row) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: c128),
                            const SizedBox(width: 12),
                            Expanded(child: ean),
                          ],
                        );
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          c128,
                          const SizedBox(height: 12),
                          ean,
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 12),
                  Text(
                    loc.bsTypeLabel,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: cs.onSurfaceVariant,
                      height: 1.45,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 28),
                  _Panel(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                loc.bsWeightEmbedded,
                                style: theme.textTheme.titleSmall?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Switch(
                              value: _weightEmbed,
                              onChanged: (v) =>
                                  setState(() => _weightEmbed = v),
                              activeThumbColor: Colors.green.shade600,
                              activeTrackColor: Colors.green.shade200,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              _weightEmbed ? loc.bsWeightEnabled : loc.bsWeightDisabled,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: _weightEmbed
                                    ? Colors.green.shade700
                                    : cs.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          loc.bsWeightDesc,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: cs.onSurfaceVariant,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      loc.bsWeightFormat,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _patternCtrl,
                    textAlign: TextAlign.right,
                    textCapitalization: TextCapitalization.characters,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[XWPNxwpn]')),
                    ],
                    onChanged: (_) => setState(() {}),
                    decoration: const InputDecoration(
                      hintText: 'XXXXXXXXWWWWWWPPPPN',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                     loc.bsWeightFormatDesc,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: cs.onSurfaceVariant,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 8),
                  Text(
                     loc.bsWeightExample,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: cs.onSurfaceVariant,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      loc.bsWeightUnit,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _weightDivCtrl,
                    textAlign: TextAlign.right,
                    keyboardType: const TextInputType.numberWithOptions(
                        decimal: true),
                    decoration: InputDecoration(
                      hintText: loc.bsWeightUnitExample + ': 1000',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                     loc.bsWeightUnitDesc,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: cs.onSurfaceVariant,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      loc.bsCurrencyDivision,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _currencyDivCtrl,
                    textAlign: TextAlign.right,
                    keyboardType: const TextInputType.numberWithOptions(
                        decimal: true),
                    decoration: InputDecoration(
                      hintText: loc.bsCurrencyExample + ': 100',
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                     loc.bsCurrencyDesc,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: cs.onSurfaceVariant,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.right,
                  ),
                  const SizedBox(height: 24),
                  const _HardwareScannerSection(),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: _saving ? null : _save,
                      icon: _saving
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Icon(Icons.save_rounded),
                      label: Text(_saving ? loc.savingLabel : loc.saveSettings),
                      style: FilledButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        backgroundColor: cs.primary,
                        foregroundColor: cs.onPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
      ),
    );
  }
}

class _Panel extends StatelessWidget {
  const _Panel({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cs.surface,
        borderRadius: BorderRadius.zero,
        border: Border.all(color: cs.outlineVariant),
      ),
      child: child,
    );
  }
}

class _FormatCard extends StatelessWidget {
  const _FormatCard({
    required this.selected,
    required this.title,
    required this.description,
    required this.onTap,
  });

  final bool selected;
  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final primary = cs.primary;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.zero,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: cs.surface,
            borderRadius: BorderRadius.zero,
            border: Border.all(
              color: selected ? primary : cs.outlineVariant,
              width: selected ? 2 : 1,
            ),
            boxShadow: selected
                ? [
                    BoxShadow(
                      color: primary.withValues(alpha: 0.12),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 16,
                        color: selected ? primary : cs.onSurface,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    selected
                        ? Icons.radio_button_checked
                        : Icons.radio_button_off,
                    color: selected ? primary : cs.outline,
                    size: 22,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(
                  fontSize: 13,
                  height: 1.5,
                  color: cs.onSurfaceVariant,
                ),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// قسم إعدادات قارئ الباركود العتادي (USB HID) — قارئ محمول أو مكتبي متعدد
/// الاتجاهات أو أي قارئ لوحة مفاتيح آخر. يشمل لوحة اختبار مباشر بالمسح الحقيقي.
class _HardwareScannerSection extends StatefulWidget {
  const _HardwareScannerSection();

  @override
  State<_HardwareScannerSection> createState() =>
      _HardwareScannerSectionState();
}

class _HardwareScannerSectionState extends State<_HardwareScannerSection> {
  static const _testMaxLen = 40;

  StreamSubscription<String>? _scanSub;
  String _lastScanned = '';
  int _scanCount = 0;

  @override
  void initState() {
    super.initState();
    _scanSub = context.read<GlobalBarcodeRouteBridge>().scanStream.listen(
      _onTestScan,
    );
  }

  @override
  void dispose() {
    _scanSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final loc = AppLocalizations.of(context)!;
    final data = context.watch<HardwareScannerProvider>().data;

    return _Panel(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  loc.hwScanTitle,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
              Switch(
                value: data.enabled,
                onChanged: (v) => _update(data.copyWith(enabled: v)),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            loc.hwScanDesc,
            style: theme.textTheme.bodySmall?.copyWith(
              color: cs.onSurfaceVariant,
              height: 1.5,
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 16),
          // بطاقتا الجهازين المدعومين
          LayoutBuilder(
            builder: (_, c) {
              final handheld = _ScannerTypeCard(
                selected: data.profile == ScannerProfile.handheld,
                icon: Icons.settings_remote_rounded,
                title: loc.hwScanHandheld,
                description: loc.hwScanHandheldDesc,
                onTap: () =>
                    _update(data.copyWith(profile: ScannerProfile.handheld)),
              );
              final desktop = _ScannerTypeCard(
                selected:
                    data.profile == ScannerProfile.omnidirectionalDesktop,
                icon: Icons.sensors_rounded,
                title: loc.hwScanDesktop,
                description: loc.hwScanDesktopDesc,
                onTap: () => _update(
                  data.copyWith(profile: ScannerProfile.omnidirectionalDesktop),
                ),
              );
              if (c.maxWidth >= 560) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: handheld),
                    const SizedBox(width: 12),
                    Expanded(child: desktop),
                  ],
                );
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  handheld,
                  const SizedBox(height: 12),
                  desktop,
                ],
              );
            },
          ),
          const SizedBox(height: 16),
          Text(
            loc.hwScanSuffixLabel,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<BarcodeSuffix>(
            initialValue: data.suffix,
            decoration: const InputDecoration(
              isDense: true,
              filled: true,
              border: OutlineInputBorder(borderRadius: BorderRadius.zero),
            ),
            items: [
              DropdownMenuItem(
                value: BarcodeSuffix.enter,
                child: Text(loc.hwScanSuffixEnter),
              ),
              DropdownMenuItem(
                value: BarcodeSuffix.tab,
                child: Text(loc.hwScanSuffixTab),
              ),
              DropdownMenuItem(
                value: BarcodeSuffix.enterOrTab,
                child: Text(loc.hwScanSuffixBoth),
              ),
              DropdownMenuItem(
                value: BarcodeSuffix.none,
                child: Text(loc.hwScanSuffixNone),
              ),
            ],
            onChanged: (v) {
              if (v != null) _update(data.copyWith(suffix: v));
            },
          ),
          const SizedBox(height: 8),
          Text(
            loc.hwScanSuffixDesc,
            style: theme.textTheme.bodySmall?.copyWith(
              color: cs.onSurfaceVariant,
              height: 1.5,
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 16),
          Text(
            loc.hwScanTestTitle,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: cs.surfaceContainerHighest.withValues(alpha: 0.45),
              borderRadius: BorderRadius.zero,
              border: Border.all(color: cs.outlineVariant),
            ),
            child: _lastScanned.isEmpty
                ? Text(
                    loc.hwScanTestEmpty,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: cs.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  )
                : Column(
                    children: [
                      Text(
                        _lastScanned,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w800,
                          letterSpacing: 0.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        loc.hwScanTestCount(_scanCount),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: cs.primary,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
          ),
          const SizedBox(height: 8),
          Text(
            loc.hwScanTestHint,
            style: theme.textTheme.bodySmall?.copyWith(
              color: cs.onSurfaceVariant,
              height: 1.5,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }

  void _update(HardwareScannerSettingsData d) {
    context.read<HardwareScannerProvider>().save(d);
  }

  /// لوحة الاختبار: يستمع لنفس تدفق HID العالمي عبر الرسائل المرسلة للجسر.
  void _onTestScan(String code) {
    if (!mounted) return;
    setState(() {
      _lastScanned = code.length > _testMaxLen
          ? '${code.substring(0, _testMaxLen)}…'
          : code;
      _scanCount++;
    });
  }
}

class _ScannerTypeCard extends StatelessWidget {
  const _ScannerTypeCard({
    required this.selected,
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });

  final bool selected;
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final primary = cs.primary;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.zero,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: selected
                ? primary.withValues(alpha: 0.06)
                : cs.surface,
            borderRadius: BorderRadius.zero,
            border: Border.all(
              color: selected ? primary : cs.outlineVariant,
              width: selected ? 2 : 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 22,
                    color: selected ? primary : cs.onSurfaceVariant,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                        color: selected ? primary : cs.onSurface,
                      ),
                    ),
                  ),
                  Icon(
                    selected
                        ? Icons.radio_button_checked
                        : Icons.radio_button_off,
                    color: selected ? primary : cs.outline,
                    size: 20,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12,
                  height: 1.5,
                  color: cs.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
