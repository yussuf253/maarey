import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const List<Locale> kSupportedLocales = [
  Locale('ar'),
  Locale('en'),
  Locale('fr'),
];

class LocaleProvider extends ChangeNotifier {
  static const _prefsKey = 'app_locale';
  Locale _locale = const Locale('ar');
  Locale get locale => _locale;

  LocaleProvider() {
    _loadPreference();
  }

  Future<void> _loadPreference() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString(_prefsKey);
    if (code != null && kSupportedLocales.any((l) => l.languageCode == code)) {
      _locale = Locale(code);
      notifyListeners();
    }
  }

  Future<void> setLocale(String languageCode) async {
    if (!kSupportedLocales.any((l) => l.languageCode == languageCode)) return;
    if (_locale.languageCode == languageCode) return;
    _locale = Locale(languageCode);
    notifyListeners();
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_prefsKey, languageCode);
  }

  static String labelFor(String languageCode) {
    switch (languageCode) {
      case 'ar':
        return 'العربية';
      case 'en':
        return 'English';
      case 'fr':
        return 'Français';
      default:
        return languageCode;
    }
  }
}
