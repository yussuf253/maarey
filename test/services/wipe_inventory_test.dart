import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:naboo/services/database_helper.dart';
import 'package:naboo/services/product_repository.dart';
import 'package:naboo/services/tenant_context_service.dart';

void main() {
  setUpAll(() async {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
    // مجلد قواعد بيانات خاص بهذا الملف — يمنع تصادم ملف business_app.db
    // المشترك مع باقي ملفات الاختبار التي تعمل بالتوازي.
    final dir = await Directory.systemTemp.createTemp('wipe_inv_test');
    await databaseFactory.setDatabasesPath(dir.path);
  });

  test(
    'wipeAllProductsForCurrentTenant wipes active tenant only and records tombstones',
    () async {
      final dh = DatabaseHelper();
      await dh.closeAndDeleteDatabaseFile();
      await TenantContextService.instance.load();
      final activeTid = TenantContextService.instance.activeTenantId;
      expect(activeTid, greaterThan(0));

      final repo = ProductRepository();
      Future<int> seed(String name, String barcode, int? tid) {
        return repo.insertProduct(
          name: name,
          barcode: barcode,
          tenantId: tid,
          buyPrice: 1,
          sellPrice: 2,
          qty: 3,
          lowStockThreshold: 1,
        );
      }

      final idA1 = await seed('ACTIVE-1', 'A1', null);
      final idA2 = await seed('ACTIVE-2', 'A2', null);
      // مستأجر آخر (٩٩٩) لا يجوز أن يُمسّ — الحذف مقيّد بالمستأجر النشط.
      final idOther = await seed('OTHER-TENANT', 'O1', 999999);

      final db = await dh.database;

      // لون + مقاس لمنتج المستأجر النشط — يجب أن يُحذفا معه.
      final now = DateTime.now().toIso8601String();
      final colorId = await db.insert('product_colors', {
        'tenantId': activeTid,
        'global_id': 'gid-color-1',
        'productId': idA1,
        'name': 'أحمر',
        'createdAt': now,
        'updatedAt': now,
      });
      await db.insert('product_variants', {
        'tenantId': activeTid,
        'global_id': 'gid-variant-1',
        'productId': idA1,
        'colorId': colorId,
        'size': 'M',
        'quantity': 7,
        'createdAt': now,
        'updatedAt': now,
      });
      // لون في مستأجر آخر يجب أن يبقى.
      await db.insert('product_colors', {
        'tenantId': 999999,
        'global_id': 'gid-color-other',
        'productId': idOther,
        'name': 'أزرق',
        'createdAt': now,
        'updatedAt': now,
      });
      Future<void> stampGid(int id, String gid) async {
        await db.update(
          'products',
          {'global_id': gid},
          where: 'id = ?',
          whereArgs: [id],
        );
      }

      await stampGid(idA1, 'gid-active-1');
      await stampGid(idA2, 'gid-active-2');
      await stampGid(idOther, 'gid-other-1');

      final result = await repo.wipeAllProductsForCurrentTenant();
      expect(result.deletedLocal, 2);
      // بيئة الاختبار بلا Supabase — المسح السحابي يفشل ويُبلَّغ عنه دون رمي.
      expect(result.cloudPurged, isFalse);

      // منتجات المستأجر النشط اختفت.
      final activeLeft = await db.query(
        'products',
        where: 'tenantId = ?',
        whereArgs: [activeTid],
      );
      expect(activeLeft, isEmpty);

      // منتج المستأجر الآخر باقٍ تمامًا.
      final otherLeft = await db.query(
        'products',
        where: 'tenantId = ?',
        whereArgs: [999999],
      );
      expect(otherLeft.length, 1);
      expect(otherLeft.first['name'], 'OTHER-TENANT');

      // الحذفات الصلبة سُجّلت لكل global_id المحذوف فقط.
      final tombs = await db.query('sync_tombstones');
      final gids = tombs.map((t) => t['global_id']).toSet();
      expect(gids, containsAll(['gid-active-1', 'gid-active-2']));
      expect(gids, isNot(contains('gid-other-1')));

      // الألوان والمقاسات اختفت مع منتجات المستأجر النشط وبقيت لدى الآخر.
      final colorsLeft = await db.query('product_colors');
      expect(colorsLeft.length, 1);
      expect(colorsLeft.first['global_id'], 'gid-color-other');
      final variantsLeft = await db.query('product_variants');
      expect(variantsLeft, isEmpty);

      await dh.closeAndDeleteDatabaseFile();
    },
  );
}
