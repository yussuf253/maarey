import 'package:flutter/foundation.dart';

import '../services/app_settings_repository.dart';
import '../utils/barcode_keystroke_decoder.dart';

/// يوفّر إعدادات قارئ الباركود العتادي للواجهة والمستمع العام، ويُحدّث
/// [AppSettingsRepository] عند الحفظ.
class HardwareScannerProvider extends ChangeNotifier {
  HardwareScannerProvider() {
    Future.microtask(() => load());
  }

  HardwareScannerSettingsData _data = HardwareScannerSettingsData.defaults();
  bool _ready = false;

  HardwareScannerSettingsData get data => _data;
  bool get isReady => _ready;

  BarcodeCaptureSettings get capture => _data.toCaptureSettings();

  Future<void> load() async {
    try {
      _data = await HardwareScannerSettingsData.load(
        AppSettingsRepository.instance,
      );
    } catch (_) {
      _data = HardwareScannerSettingsData.defaults();
    }
    _ready = true;
    notifyListeners();
  }

  Future<void> save(HardwareScannerSettingsData d) async {
    await d.save(AppSettingsRepository.instance);
    _data = d;
    notifyListeners();
  }
}
