import 'package:flutter_test/flutter_test.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import 'package:naboo/services/database_helper.dart';
import 'package:naboo/services/product_repository.dart';
import 'package:naboo/services/tenant_context_service.dart';

void main() {
  setUpAll(() {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  });

  test('importProductsBulk imports rows in one transaction', () async {
    final dh = DatabaseHelper();
    await dh.closeAndDeleteDatabaseFile();
    await TenantContextService.instance.load();

    final repo = ProductRepository();
    final progress = <(int, int)>[];

    final result = await repo.importProductsBulk(
      const [
        BulkImportProductRow(
          name: 'كولا',
          barcode: '629100001',
          categoryName: 'مشروبات',
          buyPrice: 100,
          sellPrice: 150,
          qty: 0,
          lowStockThreshold: 5,
          expiryDate: '2026-12-31',
          saleUnit: 'قطعة',
        ),
        BulkImportProductRow(
          name: 'خبز',
          buyPrice: 5,
          sellPrice: 10,
          qty: 5,
          lowStockThreshold: 2,
        ),
        // باركود مكرر — يجب أن يُحسب فاشلًا دون إسقاط المعاملة كلها.
        BulkImportProductRow(
          name: 'كولا مكرر',
          barcode: '629100001',
          buyPrice: 100,
          sellPrice: 150,
          qty: 0,
          lowStockThreshold: 5,
        ),
      ],
      onProgress: (imported, failed) => progress.add((imported, failed)),
    );

    expect(result.imported, 2);
    expect(result.failed, 1);
    expect(progress, isNotEmpty);
    expect(progress.last, (2, 1));

    final db = await dh.database;
    final products = await db.query(
      'products',
      where: 'name IN (?, ?, ?)',
      whereArgs: ['كولا', 'خبز', 'كولا مكرر'],
    );
    expect(products.length, 2);

    final cola = products.firstWhere((r) => r['name'] == 'كولا');
    expect(cola['barcode'], '629100001');
    expect(cola['expiryDate'], '2026-12-31');
    expect(cola['categoryId'], isNotNull);
    expect(cola['productCode'], isNotNull);

    // منتج بلا باركود في الملف يحصل على باركود داخلي.
    final bread = products.firstWhere((r) => r['name'] == 'خبز');
    expect(bread['barcode'], isNotNull);
    expect((bread['barcode'] as String).isNotEmpty, isTrue);

    // كل منتج ناجح له وحدة بيع افتراضية.
    final variants = await db.query('product_unit_variants');
    expect(variants.length, 2);

    // التصنيف أُنشئ مرة واحدة فقط.
    final categories = await db.query(
      'categories',
      where: 'name = ?',
      whereArgs: ['مشروبات'],
    );
    expect(categories.length, 1);

    await dh.closeAndDeleteDatabaseFile();
  });
}
