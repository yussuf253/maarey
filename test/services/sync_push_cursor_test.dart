import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:naboo/services/cloud_sync_service.dart';

/// يحاكي دورة رفع تزايدي واحدة كما في
/// `CloudSyncService._pushOnePerTableAttempt` (منطق المؤشر فقط).
Future<Set<int>> pushAllNew(Database db, {int limit = 200}) async {
  var ts = '1970-01-01T00:00:00Z';
  var id = '';
  final pushed = <int>{};
  for (var cycle = 0; cycle < 200; cycle++) {
    final batch = await CloudSyncService.fetchPushBatch(
      db,
      'push_rows',
      cursorTs: ts,
      cursorId: id,
      limit: limit,
    );
    if (batch.rows.isEmpty) break;
    for (final r in batch.rows) {
      final v = (r['updatedAt'] ?? '').toString().trim();
      if (v.isEmpty) {
        // يحاكي ختم الإنتاج للصفوف بلا updatedAt بعد رفعها.
        await db.update(
          'push_rows',
          {'updatedAt': DateTime.now().toUtc().toIso8601String()},
          where: 'id = ?',
          whereArgs: [r['id']],
        );
        continue;
      }
      pushed.add((r['id'] as num).toInt());
    }
    final next = CloudSyncService.advancePushCursor(
      cursorTs: ts,
      cursorId: id,
      pkCol: batch.pkCol,
      rows: batch.rows,
    );
    ts = next.ts;
    id = next.id;
  }
  return pushed;
}

/// الخوارزمية القديمة: updatedAt > cursor وحده، بلا فرز وبلا فاصل مساواة.
Future<Set<int>> pushAllLegacy(Database db, {int limit = 200}) async {
  var cursor = '1970-01-01T00:00:00Z';
  final pushed = <int>{};
  for (var cycle = 0; cycle < 200; cycle++) {
    final rows = await db.query(
      'push_rows',
      where: 'updatedAt IS NULL OR updatedAt > ?',
      whereArgs: [cursor],
      limit: limit,
    );
    if (rows.isEmpty) break;
    var maxTs = cursor;
    for (final r in rows) {
      final ts = (r['updatedAt'] ?? '').toString().trim();
      if (ts.isEmpty) continue;
      pushed.add((r['id'] as num).toInt());
      if (ts.compareTo(maxTs) > 0) maxTs = ts;
    }
    if (maxTs == cursor) break; // قديمًا: بلا تقدّم → نفس الدفعة للأبد
    cursor = maxTs;
  }
  return pushed;
}

/// بيانات تُحاكي استيراد 1389 منتجًا: 697 صفًا بطابع موحّد (باركود)
/// و692 صفًا بطوابع مختلفة (أُعيد ختمها عبر _ensureInternalBarcodeIfMissing).
Future<List<int>> seedImportLikeRows(Database db) async {
  const tiedTs = '2026-10-07T10:00:00.000000';
  final base = DateTime.parse('2026-10-07T10:00:01.000000');
  var tiedLeft = 697;
  var bumpedLeft = 692;
  var bumpIdx = 0;
  final ids = <int>[];
  var i = 0;
  while (tiedLeft > 0 || bumpedLeft > 0) {
    String? ts;
    if (i.isEven && tiedLeft > 0) {
      ts = tiedTs;
      tiedLeft--;
    } else if (bumpedLeft > 0) {
      ts = base.add(Duration(microseconds: bumpIdx++)).toIso8601String();
      bumpedLeft--;
    } else if (tiedLeft > 0) {
      ts = tiedTs;
      tiedLeft--;
    }
    final id = await db.insert('push_rows', {
      'updatedAt': ts,
      'global_id': 'g-$i',
    });
    ids.add(id);
    i++;
  }
  return ids;
}

void main() {
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  late Database db;

  setUp(() async {
    db = await openDatabase(
      inMemoryDatabasePath,
      version: 1,
      onCreate: (db, _) async {
        await db.execute('''
          CREATE TABLE push_rows (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            updatedAt TEXT,
            global_id TEXT
          )
        ''');
      },
    );
  });

  tearDown(() async {
    await db.close();
  });

  test('المؤشر الجديد يغطي كل الصفوف حتى مع طابع موحّد لكل الاستيراد', () async {
    final ids = await seedImportLikeRows(db);
    expect(ids.length, 1389);

    final pushed = await pushAllNew(db, limit: 200);

    expect(pushed.length, ids.length, reason: 'كل صف يجب أن يُرفع نهائيًا');
    expect(pushed.toSet(), ids.toSet());
  });

  test('المؤشر القديم (updatedAt وحده) يتخطّى الصفوف المتساوية — سبب ضياع 472 منتجًا', () async {
    final ids = await seedImportLikeRows(db);

    final pushed = await pushAllLegacy(db, limit: 200);

    expect(pushed.length, lessThan(ids.length), reason: 'السلوك القديم مكسور');
    final missing = ids.where((id) => !pushed.contains(id)).toSet();
    expect(missing, isNotEmpty);
    // كل الصفوف المتخطّاة هي صفوف الطابع المتساوي (باركود الاستيراد).
    final rows = await db.query(
      'push_rows',
      columns: ['id', 'updatedAt'],
      where:
          'id IN (${List.filled(missing.length, '?').join(',')})',
      whereArgs: missing.toList(),
    );
    expect(
      rows.map((r) => r['updatedAt']).toSet(),
      {'2026-10-07T10:00:00.000000'},
    );
  });

  test('صفوف updatedAt الفارغة تُختم ثم تُرفع في دورات لاحقة', () async {
    for (var i = 0; i < 10; i++) {
      await db.insert('push_rows', {
        'updatedAt': null,
        'global_id': 'null-$i',
      });
    }
    for (var i = 0; i < 30; i++) {
      await db.insert('push_rows', {
        'updatedAt':
            DateTime.parse('2026-10-07T10:00:00')
                .add(Duration(seconds: i))
                .toIso8601String(),
        'global_id': 'ts-$i',
      });
    }

    final pushed = await pushAllNew(db, limit: 7);

    expect(pushed.length, 40);
  });

  test('المساواة تُقارن مقارنة رقمية: id 1000 بعد id 999 لا قبلها', () {
    final next = CloudSyncService.advancePushCursor(
      cursorTs: '2026-10-07T10:00:00.000000',
      cursorId: '999',
      pkCol: 'id',
      rows: [
        {'id': 1000, 'updatedAt': '2026-10-07T10:00:00.000000'},
      ],
    );
    expect(next.ts, '2026-10-07T10:00:00.000000');
    expect(next.id, '1000');
  });
}
