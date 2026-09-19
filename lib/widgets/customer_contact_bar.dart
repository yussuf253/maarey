import 'package:flutter/material.dart';
import 'package:naboo/l10n/generated/app_localizations.dart';

import '../theme/design_tokens.dart';
import '../utils/customer_phone_launch.dart';

/// شريط سفلي: اتصال + واتساب (نفس الأرقام مع اختيار عند التعدد).
class CustomerContactBar extends StatelessWidget {
  const CustomerContactBar({
    super.key,
    required this.phones,
    this.surfaceColor,
  });

  final List<String> phones;
  final Color? surfaceColor;

  bool get _hasPhones => phones.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final bg = surfaceColor ?? cs.surface;

    Widget wrapDisabled(Widget child) {
      if (_hasPhones) return child;
      return Tooltip(
        message:
            AppLocalizations.of(context)?.noCustomerPhone ??
            'لا يوجد رقم للعميل',
        child: child,
      );
    }

    return Material(
      elevation: 6,
      color: bg,
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 10),
          child: Row(
            children: [
              Expanded(
                child: wrapDisabled(
                  FilledButton.tonalIcon(
                    onPressed: _hasPhones
                        ? () => launchCustomerDial(context, phones)
                        : null,
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: const RoundedRectangleBorder(
                        borderRadius: AppShape.none,
                      ),
                    ),
                    icon: const Icon(Icons.phone_rounded),
                    label: Text(
                      AppLocalizations.of(context)?.callLabel ?? 'اتصال',
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: wrapDisabled(
                  FilledButton.tonalIcon(
                    onPressed: _hasPhones
                        ? () => launchCustomerWhatsApp(context, phones)
                        : null,
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: const RoundedRectangleBorder(
                        borderRadius: AppShape.none,
                      ),
                    ),
                    icon: const Icon(
                      Icons.chat_rounded,
                      color: Color(0xFF25D366),
                    ),
                    label: Text(
                      AppLocalizations.of(context)?.whatsappLabel ?? 'واتساب',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
