import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../l10n/app_l10n.dart';

/// مهلة عدم النشاط قبل عرض شاشة السكون (بالدقائق). 0 = معطّل.
class IdleTimeoutProvider extends ChangeNotifier {
  IdleTimeoutProvider() {
    _load();
  }

  static const String _prefKey = 'idle_timeout_minutes';
  static const List<int> options = [0, 5, 10, 15, 30];

  int _minutes = 5;

  int get minutes => _minutes;

  bool get enabled => _minutes > 0;

  Duration get duration => Duration(minutes: _minutes);

  static String labelForMinutes(int m) {
    final loc = AppL10n.current;
    switch (m) {
      case 0:
        return loc.disabledLabel;
      case 5:
        return loc.idl5Minutes;
      case 10:
        return loc.idl10Minutes;
      case 15:
        return loc.idl15Minutes;
      case 30:
        return loc.idl30Minutes;
      default:
        return loc.idlMinutesGeneric(m);
    }
  }

  String get currentLabel => labelForMinutes(_minutes);

  Future<void> _load() async {
    final p = await SharedPreferences.getInstance();
    final v = p.getInt(_prefKey);
    if (v != null && options.contains(v)) {
      _minutes = v;
    } else {
      _minutes = 5;
    }
    notifyListeners();
  }

  Future<void> setMinutes(int m) async {
    if (!options.contains(m)) return;
    _minutes = m;
    final p = await SharedPreferences.getInstance();
    await p.setInt(_prefKey, m);
    notifyListeners();
  }
}
