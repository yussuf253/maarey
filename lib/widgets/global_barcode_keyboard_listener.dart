import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';
import '../providers/global_barcode_route_bridge.dart';
import '../providers/hardware_scanner_provider.dart';
import '../utils/barcode_keystroke_decoder.dart';

/// يستمع لضربات لوحة المفاتيح السريعة من قارئ الباركود العتادي (USB HID) ويُجمّع
/// الباركود حتى المُنهي المُعدّ (Enter / Tab) أو مهلة الخمول (وضع «بدون لاحقة»).
///
/// يعمل على **جميع المنصّات بما فيها الويب** — قارئات USB HID تُصدر أحداث لوحة
/// مفاتيح على الويب أيضًا. يُسجَّل بعد [IdleSessionShell] ليُستدعى قبل معالج
/// السكون (LIFO). الحرف الأول قد يظهر في الحقل المُركَّز؛ باقي الرموز تُستهلك
/// هنا حتى لا يُفسد المسح الحقول.
class GlobalBarcodeKeyboardListener extends StatefulWidget {
  const GlobalBarcodeKeyboardListener({super.key, required this.child});

  final Widget child;

  @override
  State<GlobalBarcodeKeyboardListener> createState() =>
      _GlobalBarcodeKeyboardListenerState();
}

class _GlobalBarcodeKeyboardListenerState
    extends State<GlobalBarcodeKeyboardListener> {
  final BarcodeKeystrokeDecoder _decoder = BarcodeKeystrokeDecoder();
  BarcodeCaptureSettings _settings = const BarcodeCaptureSettings();

  Timer? _idleTimer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        HardwareKeyboard.instance.addHandler(_onKey);
        _reloadSettings();
      }
    });
  }

  @override
  void dispose() {
    _idleTimer?.cancel();
    HardwareKeyboard.instance.removeHandler(_onKey);
    super.dispose();
  }

  void _reloadSettings() {
    final p = Provider.of<HardwareScannerProvider>(context, listen: false);
    _settings = p.capture;
    p.addListener(_onSettingsChanged);
  }

  void _onSettingsChanged() {
    if (!mounted) return;
    final p = Provider.of<HardwareScannerProvider>(context, listen: false);
    _settings = p.capture;
    // إعدادات المُنهي تغيّرت — تفريغ الالتقاط الجاري لتفادي تسليم كود قديم.
    _decoder.reset();
  }

  bool _onKey(KeyEvent event) {
    if (event is! KeyDownEvent) return false;
    if (!mounted) return false;
    if (!_settings.enabled) return false;

    if (!Provider.of<AuthProvider>(context, listen: false).isLoggedIn) {
      return false;
    }
    final bridge = Provider.of<GlobalBarcodeRouteBridge>(context, listen: false);

    final hk = HardwareKeyboard.instance;
    if (hk.isControlPressed || hk.isMetaPressed || hk.isAltPressed) {
      _decoder.reset();
      return false;
    }

    final isEnter =
        event.logicalKey == LogicalKeyboardKey.enter ||
        event.logicalKey == LogicalKeyboardKey.numpadEnter;
    final isTab = event.logicalKey == LogicalKeyboardKey.tab;

    if (isEnter || isTab) {
      final st = _decoder.onKey(
        Keystroke('', isEnter: isEnter, isTab: isTab),
        DateTime.now(),
        _settings,
      );
      if (st.code != null) {
        _dispatch(bridge, st.code!);
        return true;
      }
      return st.consumed;
    }

    final ch = _charFromPhysicalUsLayout(event) ?? _charFromLocalizedFallback(event);
    if (ch == null) {
      _decoder.reset();
      return false;
    }

    final st = _decoder.onKey(Keystroke(ch), DateTime.now(), _settings);
    if (st.code != null) {
      _dispatch(bridge, st.code!);
      _idleTimer?.cancel();
    } else if (st.isCapturing) {
      _restartIdleTimer(bridge);
    }
    return st.consumed;
  }

  void _dispatch(GlobalBarcodeRouteBridge bridge, String code) {
    unawaited(bridge.dispatch(code));
    SchedulerBinding.instance.scheduleFrame();
  }

  /// مؤقت الخمول: يسلّم الباركود المُجمَّع عند عدم وصول ضربات خلال مهلة الوضع
  /// (ضروري لوضع «بدون لاحقة» في القارئ المكتبي — الحركة السريعة).
  void _restartIdleTimer(GlobalBarcodeRouteBridge bridge) {
    _idleTimer?.cancel();
    _idleTimer = Timer(
      Duration(milliseconds: BarcodeCaptureSettings.flushDelayFor(_settings.suffix)),
      () {
        _idleTimer = null;
        if (!mounted) return;
        final st = _decoder.onIdleFlush(DateTime.now(), _settings);
        if (st.code != null) {
          _dispatch(bridge, st.code!);
        }
      },
    );
  }

  /// قارئ HID يرسل ضربات كأنها لوحة **إنجليزية فيزيائية**؛ [KeyEvent.character]
  /// يتبع لغة الإدخال (عربي…) فتُنتج حروفاً غير متوافقة مع نمط الباركود. نقرأ
  /// بدل ذلك [PhysicalKeyboardKey] (موضع المفتاح الفيزيائي).
  String? _charFromPhysicalUsLayout(KeyEvent event) {
    final pk = event.physicalKey;
    final shift = HardwareKeyboard.instance.isShiftPressed;

    String letter(bool upper, String lower) =>
        upper ? lower.toUpperCase() : lower;

    // أرقام الصف العلوي والنمط الرقمي
    final topDigits = <PhysicalKeyboardKey, String>{
      PhysicalKeyboardKey.digit0: '0',
      PhysicalKeyboardKey.digit1: '1',
      PhysicalKeyboardKey.digit2: '2',
      PhysicalKeyboardKey.digit3: '3',
      PhysicalKeyboardKey.digit4: '4',
      PhysicalKeyboardKey.digit5: '5',
      PhysicalKeyboardKey.digit6: '6',
      PhysicalKeyboardKey.digit7: '7',
      PhysicalKeyboardKey.digit8: '8',
      PhysicalKeyboardKey.digit9: '9',
      PhysicalKeyboardKey.numpad0: '0',
      PhysicalKeyboardKey.numpad1: '1',
      PhysicalKeyboardKey.numpad2: '2',
      PhysicalKeyboardKey.numpad3: '3',
      PhysicalKeyboardKey.numpad4: '4',
      PhysicalKeyboardKey.numpad5: '5',
      PhysicalKeyboardKey.numpad6: '6',
      PhysicalKeyboardKey.numpad7: '7',
      PhysicalKeyboardKey.numpad8: '8',
      PhysicalKeyboardKey.numpad9: '9',
    };
    final d = topDigits[pk];
    if (d != null) return d;

    final punct = <PhysicalKeyboardKey, String>{
      PhysicalKeyboardKey.minus: '-',
      PhysicalKeyboardKey.equal: '=',
      PhysicalKeyboardKey.period: '.',
      PhysicalKeyboardKey.slash: '/',
    };
    final p = punct[pk];
    if (p != null) return p;

    final letters = <PhysicalKeyboardKey, String>{
      PhysicalKeyboardKey.keyA: 'a',
      PhysicalKeyboardKey.keyB: 'b',
      PhysicalKeyboardKey.keyC: 'c',
      PhysicalKeyboardKey.keyD: 'd',
      PhysicalKeyboardKey.keyE: 'e',
      PhysicalKeyboardKey.keyF: 'f',
      PhysicalKeyboardKey.keyG: 'g',
      PhysicalKeyboardKey.keyH: 'h',
      PhysicalKeyboardKey.keyI: 'i',
      PhysicalKeyboardKey.keyJ: 'j',
      PhysicalKeyboardKey.keyK: 'k',
      PhysicalKeyboardKey.keyL: 'l',
      PhysicalKeyboardKey.keyM: 'm',
      PhysicalKeyboardKey.keyN: 'n',
      PhysicalKeyboardKey.keyO: 'o',
      PhysicalKeyboardKey.keyP: 'p',
      PhysicalKeyboardKey.keyQ: 'q',
      PhysicalKeyboardKey.keyR: 'r',
      PhysicalKeyboardKey.keyS: 's',
      PhysicalKeyboardKey.keyT: 't',
      PhysicalKeyboardKey.keyU: 'u',
      PhysicalKeyboardKey.keyV: 'v',
      PhysicalKeyboardKey.keyW: 'w',
      PhysicalKeyboardKey.keyX: 'x',
      PhysicalKeyboardKey.keyY: 'y',
      PhysicalKeyboardKey.keyZ: 'z',
    };
    final low = letters[pk];
    if (low != null) return letter(shift, low);

    return null;
  }

  /// إن فشل المسار الفيزيائي (منصّة نادرة): نستخدم الحرف إن وافق نمط الباركود
  /// (مثلاً لوحة إنجليزية).
  String? _charFromLocalizedFallback(KeyEvent event) {
    final ch = event.character;
    if (ch == null || ch.isEmpty || ch.length != 1) return null;
    if (ch == '\r' || ch == '\n') return null;
    if (!isPlausibleBarcode(ch)) return null;
    return ch;
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
