import 'dart:io';

import '../../l10n/generated/app_localizations.dart';

import 'package:flutter/material.dart';

import '../../services/market_pos_import_service.dart';

class MarketPosImportScreen extends StatefulWidget {
  const MarketPosImportScreen({super.key});

  @override
  State<MarketPosImportScreen> createState() => _MarketPosImportScreenState();
}

class _MarketPosImportScreenState extends State<MarketPosImportScreen> {
  final _pathCtrl = TextEditingController();
  bool _busy = false;
  String? _error;
  MarketPosImportResult? _last;

  Future<String?> _searchFileInDir(
    Directory dir,
    String fileName, {
    required int maxDepth,
  }) async {
    if (maxDepth < 0) return null;
    try {
      await for (final ent in dir.list(followLinks: false)) {
        if (ent is File) {
          try {
            if (ent.path.split(Platform.pathSeparator).last == fileName) {
              return ent.path;
            }
          } catch (_) {}
        } else if (ent is Directory) {
          final hit = await _searchFileInDir(
            ent,
            fileName,
            maxDepth: maxDepth - 1,
          );
          if (hit != null) return hit;
        }
      }
    } catch (_) {
      // Ignore permission / filesystem errors.
    }
    return null;
  }

  Future<String?> _resolvePath(String input) async {
    final raw = input.trim();
    if (raw.isEmpty) return null;

    // 1) Absolute or directly valid path.
    final direct = File(raw);
    if (await direct.exists()) return direct.path;

    // 2) User pasted a Windows path while on macOS (or vice versa) — keep it as-is.
    // We'll still attempt a basename lookup below.

    // 3) If only a filename was provided, search common folders.
    final base = raw.contains('/') || raw.contains('\\')
        ? raw.split(RegExp(r'[\\/]+')).where((e) => e.isNotEmpty).last
        : raw;
    if (base.isEmpty) return null;

    final home = Platform.environment['HOME'] ?? '';
    final candidates = <String>[
      if (home.isNotEmpty) '$home/Documents/$base',
      if (home.isNotEmpty) '$home/Downloads/$base',
      if (home.isNotEmpty) '$home/Desktop/$base',
      // Current working directory (useful on desktop/dev).
      base,
    ];

    for (final p in candidates) {
      final f = File(p);
      if (await f.exists()) return f.path;
    }

    // 4) Search within common folders (limited depth to stay fast).
    final searchRoots = <String>[
      if (home.isNotEmpty) '$home/Documents',
      if (home.isNotEmpty) '$home/Downloads',
      if (home.isNotEmpty) '$home/Desktop',
    ];
    for (final root in searchRoots) {
      final hit = await _searchFileInDir(
        Directory(root),
        base,
        maxDepth: 4,
      );
      if (hit != null) return hit;
    }
    return null;
  }

  @override
  void dispose() {
    _pathCtrl.dispose();
    super.dispose();
  }

  Future<void> _runImport() async {
    final loc = AppLocalizations.of(context)!;
    final input = _pathCtrl.text;
    setState(() {
      _busy = true;
      _error = null;
      _last = null;
    });
    try {
      if (input.trim().isEmpty) {
        throw const FormatException('empty_path');
      }
      final resolved = await _resolvePath(input);
      if (resolved == null) {
        throw const FormatException('missing_file');
      }
      final r = await MarketPosImportService.instance.importFromMarketPosDb(
        sourceDbPath: resolved,
      );
      if (!mounted) return;
      setState(() => _last = r);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(loc.mpImportSuccess),
          duration: Duration(milliseconds: 1200),
        ),
      );
    } catch (e) {
      if (!mounted) return;
      setState(() => _error = _humanError(e));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _runBundledImport() async {
    final loc = AppLocalizations.of(context)!;
    setState(() {
      _busy = true;
      _error = null;
      _last = null;
    });
    try {
      final r = await MarketPosImportService.instance.importFromBundledAsset();
      if (!mounted) return;
      setState(() => _last = r);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(loc.mpBundledSuccess),
          duration: Duration(milliseconds: 1400),
        ),
      );
    } catch (e) {
      if (!mounted) return;
      setState(() => _error = _humanError(e));
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  String _humanError(Object e) {
    final loc = AppLocalizations.of(context)!;
    final s = e.toString();
    if (s.contains('empty_path')) return loc.mpErrorEmptyPath;
    if (s.contains('missing_file')) {
      return loc.mpErrorMissingFile;
    }
    if (s.contains('no such table: products')) {
      return loc.mpErrorNoProducts;
    }
    if (s.contains('DatabaseException')) {
      return loc.mpErrorReadFailed;
    }
    return loc.mpErrorGeneric(s);
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;
    return Directionality(
      textDirection: Directionality.of(context),
      child: Scaffold(
        backgroundColor: cs.surface,
        appBar: AppBar(
          title: Text(loc.mpTitle),
          backgroundColor: cs.primary,
          foregroundColor: cs.onPrimary,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text(
              loc.mpBundledDesc,
              style: TextStyle(color: cs.onSurfaceVariant, height: 1.35),
            ),
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: cs.primary.withValues(alpha: 0.08),
                border: Border.all(color: cs.primary.withValues(alpha: 0.35)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Icon(Icons.inventory_2_rounded, color: cs.primary),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          loc.mpBundledRestoreTitle,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    loc.mpBundledRestoreDesc,
                    style: TextStyle(
                      color: cs.onSurfaceVariant,
                      fontSize: 12,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 10),
                  FilledButton.icon(
                    onPressed: _busy ? null : _runBundledImport,
                    icon: _busy
                        ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.cloud_download_rounded),
                    label: Text(
                      _busy ? loc.mpBundledButtonBusy : loc.mpBundledButtonIdle,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            ExpansionTile(
              tilePadding: EdgeInsets.zero,
              childrenPadding: const EdgeInsets.symmetric(vertical: 6),
              title: Text(
                loc.mpAdvancedTileTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: cs.onSurface,
                ),
              ),
              subtitle: Text(
                loc.mpAdvancedTileSubtitle,
                style: TextStyle(
                  fontSize: 12,
                  color: cs.onSurfaceVariant,
                ),
              ),
              children: [
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: cs.surfaceContainerHighest,
                    border: Border.all(
                      color: cs.outlineVariant.withValues(alpha: 0.5),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        loc.mpDbPathLabel,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: TextField(
                          controller: _pathCtrl,
                          decoration: InputDecoration(
                            hintText: loc.mpDbPathHint,
                            border: OutlineInputBorder(),
                            isDense: true,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      OutlinedButton.icon(
                        onPressed: _busy ? null : _runImport,
                        icon: const Icon(Icons.download_rounded),
                        label: Text(loc.mpImportExternal),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        loc.mpTipHint,
                        style: TextStyle(
                          color: cs.onSurfaceVariant,
                          fontSize: 12,
                          height: 1.35,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (_error != null) ...[
              const SizedBox(height: 12),
              Text(
                _error!,
                style: TextStyle(color: cs.error, fontWeight: FontWeight.w600),
              ),
            ],
            if (_last != null) ...[
              const SizedBox(height: 14),
              _ResultCard(r: _last!),
            ],
          ],
        ),
      ),
    );
  }
}

class _ResultCard extends StatelessWidget {
  const _ResultCard({required this.r});
  final MarketPosImportResult r;

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final cs = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: cs.surfaceContainerHighest,
        border: Border.all(color: cs.outlineVariant.withValues(alpha: 0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            loc.mpResultTitle,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(loc.mpResultTotal(r.total)),
          Text(loc.mpResultNew(r.inserted)),
          Text(loc.mpResultUpdated(r.updated)),
          Text(loc.mpResultSkipped(r.skipped)),
          Text(loc.mpResultCategories(r.createdCategories)),
        ],
      ),
    );
  }
}

