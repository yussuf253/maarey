import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../services/license_service.dart';
import '../../l10n/generated/app_localizations.dart';
import '../../widgets/secure_screen.dart';

class ActivateLicenseScreen extends StatefulWidget {
  const ActivateLicenseScreen({super.key, this.showBackButton = false});
  final bool showBackButton;

  @override
  State<ActivateLicenseScreen> createState() => _ActivateLicenseScreenState();
}

class _ActivateLicenseScreenState extends State<ActivateLicenseScreen> {
  final _keyCtrl = TextEditingController();
  final _focusNode = FocusNode();
  bool _loading = false;

  AppLocalizations get _loc => AppLocalizations.of(context)!;
  String? _error;

  @override
  void dispose() {
    _keyCtrl.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _activate() async {
    if (_loading) return;
    final key = _keyCtrl.text.trim();
    if (key.isEmpty) {
      setState(() => _error = _loc.licEnterKey);
      return;
    }
    setState(() {
      _loading = true;
      _error = null;
    });
    final isJwt = key.split('.').length == 3;
    final result = isJwt
        ? await LicenseService.instance.activateSignedToken(key)
        : await LicenseService.instance.activateLicense(key);
    if (!mounted) return;
    setState(() => _loading = false);
    if (!result.ok) {
      setState(() => _error = result.message);
    }
    // إذا نجح التفعيل → LicenseGate تعيد البناء تلقائياً
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return SecureScreen(
      child: Scaffold(
        backgroundColor: cs.primary,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsetsDirectional.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Maarey',
                style: TextStyle(
                  color: cs.onPrimary,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              ),
              Text(
                _loc.licStoreSystem,
                style: TextStyle(
                  color: cs.onPrimary.withOpacity(0.75),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 40),

              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 460),
                child: Card(
                  margin: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Icon(
                          Icons.lock_open_outlined,
                          size: 48,
                          color: cs.primary,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          _loc.licActivation,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: cs.primary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          _loc.licEnterKeyToContinue,
                          style: TextStyle(
                            color: cs.onSurfaceVariant,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),

                        TextField(
                          controller: _keyCtrl,
                          focusNode: _focusNode,
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          maxLines: 3,
                          minLines: 1,
                          decoration: InputDecoration(
                            hintText: _loc.licKeyHint,
                            errorText: _error,
                            suffixIcon: _keyCtrl.text.isNotEmpty
                                ? IconButton(
                                    icon: const Icon(Icons.clear, size: 18),
                                    onPressed: () {
                                      _keyCtrl.clear();
                                      setState(() => _error = null);
                                    },
                                  )
                                : null,
                          ),
                          onChanged: (_) => setState(() => _error = null),
                          onSubmitted: (_) => _activate(),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z0-9\-\._]'),
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        SizedBox(
                          height: 48,
                          child: FilledButton(
                            onPressed: _loading ? null : _activate,
                            child: _loading
                                ? const SizedBox(
                                    width: 22,
                                    height: 22,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  )
                                : Text(
                                    _loc.licActivate,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                          ),
                        ),

                        const SizedBox(height: 16),
                        Divider(color: cs.outlineVariant),
                        const SizedBox(height: 12),

                        Row(
                          children: [
                            Icon(
                              Icons.info_outline,
                              size: 16,
                              color: cs.onSurfaceVariant,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                _loc.licContactSupport,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: cs.onSurfaceVariant,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),
              Text(
                _loc.licAllRightsReserved,
                style: TextStyle(
                  color: cs.onPrimary.withOpacity(0.45),
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
