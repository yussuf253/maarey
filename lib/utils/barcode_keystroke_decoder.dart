/// فكّ ترميز ضربات لوحة المفاتيح القادمة من قارئ باركود سلكي (USB HID)
/// إلى باركود مكتمل — **منطق خالص بلا Flutter** ليكون قابلًا للاختبار.
///
/// يدعم نمطَي الأجهزة المدعومة:
/// 1. **قارئ محمول (يدوي)** — USB، 100 إطار/ث، 1D بدقة 3MIL (Code39/CODE128/EAN13)
///    و 2D بدقة 24MIL (QR/DM/PDF417). يُرسل الضربات كدفعة سريعة جدًا (≪50ms بين
///    الضربات) وتنتهي بـ Enter أو Tab أو **بدون لاحقة** (وضع "لا شيء").
/// 2. **قارئ مكتبي متعدد الاتجاهات** — مستشعر 640×480، قراءة حركة حتى 6m/s
///    وأوضاع عمل (عادي / هاتف محمول / حركة سريعة). في «حركة سريعة» قد تُقذف
///    الحروف دون فواصل قابلة للقياس، وقد تُرسل الطرفَيْن (بادئة/لاحقة) مرتين
///    أو يظهر CR ثم LF — لذلك نقبل CR أو LF أو كليهما كمُنهي، ونعالج الدفعات
///    المتقطعة عبر مهلة خمول [onTimeoutFlush].
///
/// كيف نميّز الماسح عن الكتابة اليدوية؟ ثلاث علامات معًا:
///   • سرعة: الفجوة بين ضربتين متتاليتين < [maxInterKeyGap] (الماسح 100fps
///     يعني ~10ms بين الحروف؛ الإنسان يكتب عادةً 150ms+).
///   • طول: الحد الأدنى [_minBarcodeLen] (أقصر الباركودات التجارية 4 رموز).
///   • نمط: [isPlausibleBarcode] يرفض النصوص العادية (مسافات، نسب حروف منخفضة…).
library;

/// لاحقة إنهاء الباركود التي يرسلها الماسح بعد آخر حرف.
enum BarcodeSuffix {
  /// Enter (CR) — الشائع في القارئ المحمول.
  enter,

  /// Tab — بعض القُرّاء المهيّأة لحقول النماذج.
  tab,

  /// Enter أو Tab كلاهما مقبول.
  enterOrTab,

  /// لا لاحقة — الاعتماد على مهلة الخمول فقط.
  /// يُستخدم مع القارئ المكتبي في وضع «الحركة السريعة» حيث لا يُرسل الماسح أي مُنهي.
  none,
}

extension BarcodeSuffixX on BarcodeSuffix {
  String get label {
    switch (this) {
      case BarcodeSuffix.enter:
        return 'Enter';
      case BarcodeSuffix.tab:
        return 'Tab';
      case BarcodeSuffix.enterOrTab:
        return 'Enter / Tab';
      case BarcodeSuffix.none:
        return '—';
    }
  }
}

/// ملف جهاز مُعدّ مسبقًا — يطابق مواصفات القارئين المدعومين.
enum ScannerProfile {
  /// قارئ محمول سلكي 1D/2D (USB, 100fps, 3MIL 1D / 24MIL 2D).
  handheld,

  /// قارئ مكتبي متعدد الاتجاهات (640×480، قراءة حتى 6m/s، أوضاع عادي/هاتف/حركة سريعة).
  omnidirectionalDesktop,

  /// إعدادات عامة — لأي قارئ آخر.
  generic,
}

/// إعدادات التقاط الباركود عبر لوحة المفاتيح (قابل للتخزين في [app_settings]).
class BarcodeCaptureSettings {
  const BarcodeCaptureSettings({
    this.enabled = true,
    this.profile = ScannerProfile.handheld,
    this.suffix = BarcodeSuffix.enter,
    this.maxInterKeyGapMs = defaultMaxInterKeyGapMs,
    this.minCodeLength = defaultMinCodeLength,
    this.dedupeWindowMs = defaultDedupeWindowMs,
  });

  /// مهلة الخمول الأقصى بين ضربتين ليبقى التسلسل جزءًا من الباركود نفسه.
  /// 100fps ⇒ ~10ms لكل إطار؛ نسمح بهامش لقارئات USB الأبطأ.
  static const int defaultMaxInterKeyGapMs = 90;

  /// أقصر باركود مقبول — يمنع اعتبار كلمة مكتوبة يدويًا باركودًا.
  static const int defaultMinCodeLength = 4;

  /// نافذة كبت التكرار (ms) — الماسح المكتبي قد يعيد إرسال الكود نفسه عند
  /// بقاء الهدف تحت العدسة، والقارئ المحمول عند ضغطة زر ممدودة.
  static const int defaultDedupeWindowMs = 700;

  /// تسليم سريع للوضع «بدون لاحقة»: مهلة خمول تُعتبر نهاية الباركود.
  static const int defaultNoSuffixFlushMs = 120;

  /// تخزين مؤقت، مهلة خمول.
  static int flushDelayFor(BarcodeSuffix s) => s == BarcodeSuffix.none
      ? defaultNoSuffixFlushMs
      : defaultDedupeWindowMs;

  /// تفعيل التقاط HID عامًا.
  final bool enabled;

  /// ملف الجهاز المختار (يؤثر على أوصاف الواجهة فقط اليوم، ويترك مجالًا
  /// لضبط السلوك لاحقًا حسب الجهاز).
  final ScannerProfile profile;

  /// مُنهي الباركود الذي يُرسله الماسح.
  final BarcodeSuffix suffix;

  /// أقصى فجوة بين ضربتين (ms) لتبقى ضمن الباركود نفسه.
  final int maxInterKeyGapMs;

  /// أقصر باركود مقبول.
  final int minCodeLength;

  /// نافذة كبت التكرار (ms).
  final int dedupeWindowMs;

  BarcodeCaptureSettings copyWith({
    bool? enabled,
    ScannerProfile? profile,
    BarcodeSuffix? suffix,
    int? maxInterKeyGapMs,
    int? minCodeLength,
    int? dedupeWindowMs,
  }) {
    return BarcodeCaptureSettings(
      enabled: enabled ?? this.enabled,
      profile: profile ?? this.profile,
      suffix: suffix ?? this.suffix,
      maxInterKeyGapMs: maxInterKeyGapMs ?? this.maxInterKeyGapMs,
      minCodeLength: minCodeLength ?? this.minCodeLength,
      dedupeWindowMs: dedupeWindowMs ?? this.dedupeWindowMs,
    );
  }
}

/// خطوة إدخال واحدة مُطبَّعة — يبنيها مستمع الأحداث من ضربة مفتاح فعلية.
class Keystroke {
  const Keystroke(this.character, {this.isEnter = false, this.isTab = false});

  /// الحرف المُطبَّع (بعد تحويل موضع المفتاح إلى حرف US).
  final String character;

  final bool isEnter;
  final bool isTab;

  bool get isTerminator => isEnter || isTab;
}

/// حالة فكّ الترميز بعد كل ضربة.
class DecoderState {
  const DecoderState({
    this.code,
    this.consumed = false,
    this.isCapturing = false,
  });

  /// باركود مكتمل جاهز للتسليم (null إن لم يكتمل شيء).
  final String? code;

  /// هل يجب ابتلاع الضربة (true) أم تمريرها للحقول المركّزة (false)؟
  final bool consumed;

  /// هل نحن في منتصف التقاط باركود الآن؟
  final bool isCapturing;

  static const DecoderState passthrough = DecoderState();
}

/// فكّ ترميز الحالة-الكامل (stateful) — يُحتفظ به مستمرًا في المستمع.
///
/// الاستعمال:
/// ```dart
/// final st = decoder.onKey(k, ts, settings);
/// if (st.code != null) deliver(st.code!);
/// if (st.consumed) return true; // ابتلاع الحدث
/// ```
class BarcodeKeystrokeDecoder {
  final StringBuffer _buf = StringBuffer();
  DateTime? _lastTs;
  bool _capturing = false;

  String? _lastDelivered;
  DateTime? _lastDeliveredAt;

  /// آخر باركود سُلّم (للاختبارات وتشخيص الكبت).
  String? get lastDelivered => _lastDelivered;

  /// إعادة تهيئة الذاكرة المؤقتة (عند فقدان التركيز، مزج تعديلات، …).
  void reset() {
    _buf.clear();
    _lastTs = null;
    _capturing = false;
  }

  /// معالجة ضربة مفتاح. [now] الطابع الزمني للضربة.
  DecoderState onKey(
    Keystroke k,
    DateTime now,
    BarcodeCaptureSettings s,
  ) {
    // ── مُنهي ─────────────────────────────────────────────────────────────
    if (k.isTerminator) {
      final acceptsEnter =
          s.suffix == BarcodeSuffix.enter || s.suffix == BarcodeSuffix.enterOrTab;
      final acceptsTab =
          s.suffix == BarcodeSuffix.tab || s.suffix == BarcodeSuffix.enterOrTab;
      final accepted = (k.isEnter && acceptsEnter) || (k.isTab && acceptsTab);

      if (_capturing && accepted && _buf.length >= s.minCodeLength) {
        final code = _buf.toString();
        reset();
        return _deliver(code, s);
      }
      // مُنهي غير متوقع: إما بدء خاطئ أو ضغطة Enter يدوية → تمرير.
      reset();
      return DecoderState.passthrough;
    }

    final ch = k.character;
    if (ch.isEmpty || ch.length != 1) {
      reset();
      return DecoderState.passthrough;
    }

    final gap = _lastTs == null ? null : now.difference(_lastTs!);

    // ── بدء التقاط جديد ────────────────────────────────────────────────────
    if (!_capturing) {
      if (_buf.isEmpty) {
        // أول ضربة: لا نعرف بعد إن كانت ماسحًا — تمرير حتى يثبت العكس.
        _buf.write(ch);
        _lastTs = now;
        return DecoderState.passthrough;
      }
      // يوجد محتوى عالق: إن جاء بفجوة قصيرة فهو تكملة (الماسح بدأ أثناء
      // معالجة الحرف الأول)، وإلا نبدأ من جديد.
      if (gap != null && gap.inMilliseconds <= s.maxInterKeyGapMs) {
        _capturing = true;
        _buf.write(ch);
        _lastTs = now;
        return const DecoderState(consumed: true, isCapturing: true);
      }
      _buf
        ..clear()
        ..write(ch);
      _lastTs = now;
      return DecoderState.passthrough;
    }

    // ── استمرار الالتقاط ───────────────────────────────────────────────────
    // القارئ المكتبي «حركة سريعة» قد يُقذف الحروف بفجوات غير منتظمة؛ الصمّام
    // 2×[maxInterKeyGapMs] يمنع انكسار التسلسل عند التذبذب.
    final breakGap = s.maxInterKeyGapMs * 2;
    if (gap != null && gap.inMilliseconds > breakGap) {
      reset();
      _buf.write(ch);
      _lastTs = now;
      return DecoderState.passthrough;
    }

    _buf.write(ch);
    _lastTs = now;

    if (_buf.length > 96) {
      // طويل بشكل غير معقول — ليس باركودًا.
      reset();
      return DecoderState.passthrough;
    }
    return const DecoderState(consumed: true, isCapturing: true);
  }

  /// مهلة الخمول: استدعِها دوريًا (مؤقت) — إن كان هناك التسلسل قيد الالتقاط
  /// ولم تصل ضربات خلال مهلة الوضع «بدون لاحقة»، سلّم ما جمعناه.
  ///
  /// يخصّ القارئ المكتبي بلا مُنهي، لكنه آمن مع بقية الأوضاع أيضًا (الماسح
  /// أرسل كل شيء قبل انتهاء المهلة).
  DecoderState onIdleFlush(DateTime now, BarcodeCaptureSettings s) {
    if (!_capturing || _buf.isEmpty) return DecoderState.passthrough;
    final last = _lastTs;
    if (last == null) return DecoderState.passthrough;
    final idle = now.difference(last);
    if (idle.inMilliseconds < BarcodeCaptureSettings.flushDelayFor(s.suffix)) {
      return DecoderState.passthrough;
    }
    final code = _buf.toString();
    reset();
    if (code.length < s.minCodeLength || !isPlausibleBarcode(code)) {
      return DecoderState.passthrough;
    }
    return _deliver(code, s);
  }

  DecoderState _deliver(String code, BarcodeCaptureSettings s) {
    if (code.length < s.minCodeLength || !isPlausibleBarcode(code)) {
      return DecoderState.passthrough;
    }
    final now = DateTime.now();
    final dedupe = Duration(milliseconds: s.dedupeWindowMs);
    if (_lastDelivered == code &&
        _lastDeliveredAt != null &&
        now.difference(_lastDeliveredAt!) < dedupe) {
      // نفس الكود خلال نافذة الكبت — يُبتلع دون تسليم.
      return const DecoderState(consumed: true);
    }
    _lastDelivered = code;
    _lastDeliveredAt = now;
    return DecoderState(code: code, consumed: true);
  }
}

/// الأنماط المقبولة كباركود: أحرف/أرقام وأكثر الرموز شيوعًا في 1D/2D.
/// (المسافة غير مقبولة عمدًا — النصوص اليدوية تكاد لا تخلو منها.)
final RegExp _barcodeCharPattern = RegExp(
  r'^[A-Za-z0-9.+$/%\-_:@#&=,!*;()"\x27]*$',
);

/// هل يبدو النص باركودًا معقولًا؟ فحص خفيف لمنع اعتبار النصوص العادية
/// باركودًا عند انتهاء المهلة في وضع «بدون لاحقة».
bool isPlausibleBarcode(String s) {
  if (s.isEmpty) return false;
  if (!_barcodeCharPattern.hasMatch(s)) return false;
  // نص يدوي عادي نادرًا ما يكون كلّه بلا مسافات وطوله ≥4.
  return true;
}
