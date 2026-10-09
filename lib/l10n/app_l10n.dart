import 'package:flutter/widgets.dart';
import 'package:naboo/l10n/generated/app_localizations_ar.dart';
import 'package:naboo/l10n/generated/app_localizations_en.dart';
import 'package:naboo/l10n/generated/app_localizations_fr.dart';

import 'generated/app_localizations.dart';

/// [AppLocalizations] access from outside the widget tree.
///
/// Screens and widgets should keep using `AppLocalizations.of(context)`; this
/// holder exists for code that has no `BuildContext` (services, providers,
/// models) but still produces user-visible text — license and auth messages,
/// snackbar errors from the `db_*` layer, permission labels, etc.
///
/// [LocaleProvider] keeps it in sync with the language chosen in settings.
/// The default is Arabic (the template locale) so paths that run before the
/// stored preference is read — and unit tests, which never construct a
/// [LocaleProvider] — resolve to the template language instead of silently
/// switching to the app default.
class AppL10n {
  AppL10n._();

  static Locale _locale = const Locale('ar');
  static AppLocalizations? _cache;

  /// The locale currently used by [current].
  static Locale get locale => _locale;

  /// Called by [LocaleProvider] whenever the user language changes.
  static void setLocale(Locale locale) {
    if (locale.languageCode == _locale.languageCode) return;
    _locale = locale;
    _cache = null;
  }

  /// Localizations for the active locale (cached; no BuildContext needed).
  static AppLocalizations get current => _cache ??= _load(_locale.languageCode);

  /// كل اللغات المدعومة — لمقارنة/إعادة كتابة نصوص محفوظة كانت كُتبت
  /// بلغة أخرى (مثل أوصاف قيود الصندوق في شاشة الكاش).
  static final List<AppLocalizations> all = [
    AppLocalizationsAr(),
    AppLocalizationsEn(),
    AppLocalizationsFr(),
  ];

  static AppLocalizations _load(String code) => switch (code) {
    'en' => AppLocalizationsEn(),
    'fr' => AppLocalizationsFr(),
    _ => AppLocalizationsAr(),
  };
}
