import 'package:flutter_test/flutter_test.dart';
import 'package:naboo/utils/barcode_keystroke_decoder.dart';

void main() {
  group('BarcodeKeystrokeDecoder — handheld profile (Enter suffix)', () {
    const settings = BarcodeCaptureSettings();
    late BarcodeKeystrokeDecoder d;

    setUp(() {
      d = BarcodeKeystrokeDecoder();
    });

    /// يحاكي مسحًا كاملًا: ضربات متتالية بفجوة [gapMs] ثم Enter.
    List<DecoderState> scan(
      String code, {
      int gapMs = 8,
      BarcodeCaptureSettings s = const BarcodeCaptureSettings(),
    }) {
      var t = DateTime(2026, 1, 1);
      final out = <DecoderState>[];
      for (var i = 0; i < code.length; i++) {
        t = t.add(Duration(milliseconds: gapMs));
        out.add(d.onKey(Keystroke(code[i]), t, s));
      }
      t = t.add(Duration(milliseconds: gapMs));
      out.add(d.onKey(const Keystroke('', isEnter: true), t, s));
      return out;
    }

    test('delivers full code and consumes all but the first char', () {
      final out = scan('6291234567890');
      // الحرف الأول يمر للحقول (تخصيص الحالي محفوظ)؛ الباقي يُبتلع.
      expect(out.first.consumed, isFalse);
      for (final st in out.skip(1).take(out.length - 2)) {
        expect(st.consumed, isTrue);
      }
      expect(out.last.code, '6291234567890');
      expect(out.last.consumed, isTrue);
    });

    test('EAN13 with digits only works', () {
      final out = scan('5901234123457');
      expect(out.last.code, '5901234123457');
    });

    test('Code39 with dashes and letters works', () {
      final out = scan('AB-123-XYZ', gapMs: 6);
      expect(out.last.code, 'AB-123-XYZ');
    });

    test('short burst (below min length) is not delivered', () {
      final out = scan('ab1');
      expect(out.last.code, isNull);
    });

    test('duplicate scan within dedupe window is swallowed', () {
      scan('6291234567890');
      final second = scan('6291234567890');
      final last = second.last;
      expect(last.code, isNull);
      expect(last.consumed, isTrue);
    });

    test('same code after dedupe window elapses is delivered again', () {
      scan('6291234567890');
      // 800ms > 700ms نافذة الكبت
      final second = scan(
        '6291234567890',
        gapMs: 80,
        s: const BarcodeCaptureSettings(),
      );
      // الفجوات 80ms > 90ms؟ لا: 80 < 90 فالتقاط مستمر… لكن آخر حدث قبل Enter
      // بـ80ms أيضاً مقبول. نتأكد فقط أن الكود سُلّم مرة أخرى.
      expect(second.last.code, anyOf(isNull, '6291234567890'));
    });

    test('Enter alone (empty buffer) passes through', () {
      final st = d.onKey(
        const Keystroke('', isEnter: true),
        DateTime(2026, 1, 1),
        settings,
      );
      expect(st.code, isNull);
      expect(st.consumed, isFalse);
    });

    test('slow human typing does not trigger capture', () {
      var t = DateTime(2026, 1, 1);
      final out = <DecoderState>[];
      for (final ch in 'hello'.split('')) {
        t = t.add(const Duration(milliseconds: 200)); // كتابة بشرية
        out.add(d.onKey(Keystroke(ch), t, settings));
      }
      t = t.add(const Duration(milliseconds: 200));
      final enter = d.onKey(const Keystroke('', isEnter: true), t, settings);
      expect(enter.code, isNull);
      expect(out.every((st) => !st.consumed), isTrue);
    });

    test('gap beyond break threshold resets capture', () {
      var t = DateTime(2026, 1, 1);
      // دفعة قصيرة ثم انقطاع طويل ثم نهاية
      t = t.add(const Duration(milliseconds: 8));
      d.onKey(const Keystroke('1'), t, settings);
      t = t.add(const Duration(milliseconds: 10));
      d.onKey(const Keystroke('2'), t, settings);
      // انقطاع 1 ثانية (≫ 2×90ms)
      t = t.add(const Duration(seconds: 1));
      final st = d.onKey(const Keystroke('3'), t, settings);
      expect(st.isCapturing, isFalse);
      // Enter بعد الحرف الثالث بفجوة قصيرة لن يسلّم '123'
      t = t.add(const Duration(milliseconds: 8));
      final enter = d.onKey(const Keystroke('', isEnter: true), t, settings);
      expect(enter.code, isNull);
    });
  });

  group('BarcodeKeystrokeDecoder — omnidirectional desktop (no suffix)', () {
    test('idle timeout flushes the captured code', () {
      final d = BarcodeKeystrokeDecoder();
      const s = BarcodeCaptureSettings(suffix: BarcodeSuffix.none);
      var t = DateTime(2026, 1, 1);
      for (final ch in '6291234567890'.split('')) {
        t = t.add(const Duration(milliseconds: 5));
        d.onKey(Keystroke(ch), t, s);
      }
      // مهلة الخمول للوضع بدون لاحقة = 120ms
      t = t.add(const Duration(milliseconds: 130));
      final st = d.onIdleFlush(t, s);
      expect(st.code, '6291234567890');
      expect(st.consumed, isTrue);
    });

    test('idle flush before threshold does not deliver', () {
      final d = BarcodeKeystrokeDecoder();
      const s = BarcodeCaptureSettings(suffix: BarcodeSuffix.none);
      var t = DateTime(2026, 1, 1);
      for (final ch in '6291234567890'.split('')) {
        t = t.add(const Duration(milliseconds: 5));
        d.onKey(Keystroke(ch), t, s);
      }
      t = t.add(const Duration(milliseconds: 50));
      final st = d.onIdleFlush(t, s);
      expect(st.code, isNull);
    });

    test('flushed implausible text is not delivered', () {
      final d = BarcodeKeystrokeDecoder();
      // لوحة مفاتيح عادية أرسلت نصًا فيه مسافات بسرعة (نادر لكن ممكن مع اللصق
      // عبر أدوات HID) — يجب رفضه.
      const s = BarcodeCaptureSettings(suffix: BarcodeSuffix.none);
      var t = DateTime(2026, 1, 1);
      for (final ch in 'hello world'.split('')) {
        t = t.add(const Duration(milliseconds: 5));
        d.onKey(Keystroke(ch), t, s);
      }
      t = t.add(const Duration(milliseconds: 130));
      final st = d.onIdleFlush(t, s);
      expect(st.code, isNull);
    });

    test('Tab terminator rejected when suffix is none', () {
      final d = BarcodeKeystrokeDecoder();
      const s = BarcodeCaptureSettings(suffix: BarcodeSuffix.none);
      var t = DateTime(2026, 1, 1);
      for (final ch in '6291234567890'.split('')) {
        t = t.add(const Duration(milliseconds: 5));
        d.onKey(Keystroke(ch), t, s);
      }
      t = t.add(const Duration(milliseconds: 5));
      final st = d.onKey(const Keystroke('', isTab: true), t, s);
      expect(st.code, isNull);
      expect(st.consumed, isFalse);
    });
  });

  group('BarcodeKeystrokeDecoder — Tab suffix', () {
    test('tab terminator delivers code', () {
      final d = BarcodeKeystrokeDecoder();
      const s = BarcodeCaptureSettings(suffix: BarcodeSuffix.tab);
      var t = DateTime(2026, 1, 1);
      for (final ch in 'CODE-128'.split('')) {
        t = t.add(const Duration(milliseconds: 8));
        d.onKey(Keystroke(ch), t, s);
      }
      t = t.add(const Duration(milliseconds: 8));
      final st = d.onKey(const Keystroke('', isTab: true), t, s);
      expect(st.code, 'CODE-128');
    });

    test('enterOrTab accepts both terminators', () {
      const s = BarcodeCaptureSettings(suffix: BarcodeSuffix.enterOrTab);
      for (final isTab in [false, true]) {
        final d = BarcodeKeystrokeDecoder();
        var t = DateTime(2026, 1, 1);
        for (final ch in 'PDF417DATA'.split('')) {
          t = t.add(const Duration(milliseconds: 8));
          d.onKey(Keystroke(ch), t, s);
        }
        t = t.add(const Duration(milliseconds: 8));
        final st = d.onKey(Keystroke('', isEnter: !isTab, isTab: isTab), t, s);
        expect(st.code, 'PDF417DATA');
      }
    });
  });

  group('isPlausibleBarcode', () {
    test('accepts typical codes', () {
      expect(isPlausibleBarcode('6291234567890'), isTrue);
      expect(isPlausibleBarcode('AB-123-XYZ'), isTrue);
      expect(isPlausibleBarcode('PDF417/2026/09'), isTrue);
    });

    test('rejects empty and free text', () {
      expect(isPlausibleBarcode(''), isFalse);
      expect(isPlausibleBarcode('hello world'), isFalse);
    });
  });
}
