/*
  SUITE 3 — Performance: sync queue & realtime watchdog throughput.

  Each test PRINTS the actual time and asserts an upper bound from the
  user spec.
*/

import 'package:flutter_test/flutter_test.dart';
import 'package:naboo/services/realtime_watchdog.dart';

Stopwatch _start() => Stopwatch()..start();

void _print(String label, Stopwatch sw) {
  // ignore: avoid_print
  print('[perf] $label: ${sw.elapsedMilliseconds}ms');
}

void main() {
  group('Watchdog tick throughput', () {
    late RealtimeWatchdog wd;

    setUp(() {
      wd = RealtimeWatchdog(
        checkInterval: const Duration(seconds: 20),
        unhealthyAfter: const Duration(seconds: 30),
        baseBackoff: const Duration(seconds: 5),
        maxBackoff: const Duration(seconds: 60),
      );
    });

    tearDown(() => wd.stop());

    test('watchdog tick with 10 channels < 50ms', () {
      for (var i = 0; i < 10; i++) {
        wd.register('channel-$i', reconnect: () async {});
      }

      final sw = _start();
      wd.tick();
      sw.stop();
      _print('Watchdog tick', sw);

      // No errors, no markEvent — every channel's lastHealthyAt is ~now,
      // so no reconnect is scheduled.
      for (var i = 0; i < 10; i++) {
        expect(wd.consecutiveErrors('channel-$i'), 0);
        expect(wd.hasPendingReconnect('channel-$i'), isFalse);
      }
      expect(sw.elapsedMilliseconds, lessThan(50));
    });
  });
}
