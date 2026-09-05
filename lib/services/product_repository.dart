import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:uuid/uuid.dart';
import 'sync_queue_service.dart';

import 'cloud_sync_service.dart';
import 'database_helper.dart';
import 'tenant_context_service.dart';
import '../models/new_product_extra_unit.dart';
import '../utils/iqd_money.dart';

class ProductRepository {
  final DatabaseHelper _dbHelper = DatabaseHelper();
  final TenantContextService _tenant = TenantContextService.instance;

  Future<Database> get _db async => _dbHelper.database;

  /// باركود داخلي ثابت للمنتجات التي لا تملك باركود.
  /// - Code128: يدعم الحروف والأرقام
  /// - فريد: tenantId + productId
  static String internalBarcodeValue({
    required int tenantId,
    required int productId,
  }) {
    final t = tenantId.clamp(1, 9999).toString().padLeft(2, '0');
    final p = productId.clamp(1, 999999999).toString().padLeft(8, '0');
    return 'P$t$p';
  }

  Future<void> _ensureInternalBarcodeIfMissing(
    DatabaseExecutor e,
    int productId,
  ) async {
    final rows = await e.query(
      'products',
      columns: ['barcode', 'tenantId'],
      where: 'id = ? AND isActive = 1',
      whereArgs: [productId],
      limit: 1,
    );
    if (rows.isEmpty) return;
    final r = rows.first;
    final bc = (r['barcode'] as String?)?.trim() ?? '';
    if (bc.isNotEmpty) return;
    final tenantId = (r['tenantId'] as num?)?.toInt() ?? _tenant.activeTenantId;
    final code = internalBarcodeValue(tenantId: tenantId, productId: productId);
    await e.update(
      'products',
      {'barcode': code, 'updatedAt': DateTime.now().toIso8601String()},
      where: 'id = ?',
      whereArgs: [productId],
    );
  }

  Future<List<Map<String, dynamic>>> listProductsMissingBarcode({
    required int tenantId,
    int limit = 500,
  }) async {
    final db = await _db;
    return db.rawQuery(
      '''
      SELECT id, name, barcode, sellPrice, qty, stockBaseKind, trackInventory
      FROM products
      WHERE tenantId = ? AND isActive = 1
        AND (barcode IS NULL OR TRIM(barcode) = '')
      ORDER BY name COLLATE NOCASE ASC
      LIMIT ?
      ''',
      [tenantId, limit],
    );
  }

  Future<void> assignInternalBarcodesToMissing({
    required int tenantId,
  }) async {
    final db = await _db;
    final rows = await db.rawQuery(
      '''
      SELECT id FROM products
      WHERE tenantId = ? AND isActive = 1
        AND (barcode IS NULL OR TRIM(barcode) = '')
      ''',
      [tenantId],
    );
    if (rows.isEmpty) return;
    await db.transaction((txn) async {
      for (final r in rows) {
        final id = (r['id'] as num?)?.toInt();
        if (id == null || id <= 0) continue;
        final code = internalBarcodeValue(tenantId: tenantId, productId: id);
        await txn.update(
          'products',
          {'barcode': code, 'updatedAt': DateTime.now().toIso8601String()},
          where: 'id = ?',
          whereArgs: [id],
        );
      }
    });
    CloudSyncService.instance.scheduleSyncSoon();
  }

  Future<void> assignInternalBarcodesForIds({
    required int tenantId,
    required List<int> productIds,
  }) async {
    final ids = productIds.where((e) => e > 0).toSet().toList();
    if (ids.isEmpty) return;
    final db = await _db;
    await db.transaction((txn) async {
      for (final id in ids) {
        final rows = await txn.query(
          'products',
          columns: ['barcode'],
          where: 'id = ? AND tenantId = ? AND isActive = 1',
          whereArgs: [id, tenantId],
          limit: 1,
        );
        if (rows.isEmpty) continue;
        final bc = (rows.first['barcode'] as String?)?.trim() ?? '';
        if (bc.isNotEmpty) continue;
        final code = internalBarcodeValue(tenantId: tenantId, productId: id);
        await txn.update(
          'products',
          {'barcode': code, 'updatedAt': DateTime.now().toIso8601String()},
          where: 'id = ?',
          whereArgs: [id],
        );
      }
    });
    CloudSyncService.instance.scheduleSyncSoon();
  }

  Future<List<Map<String, dynamic>>> listProductsWithBarcodeForLabels({
    required int tenantId,
    int limit = 500,
  }) async {
    final db = await _db;
    return db.rawQuery(
      '''
      SELECT id, name, barcode, sellPrice, qty, stockBaseKind, trackInventory
      FROM products
      WHERE tenantId = ? AND isActive = 1
        AND barcode IS NOT NULL AND TRIM(barcode) != ''
      ORDER BY name COLLATE NOCASE ASC
      LIMIT ?
      ''',
      [tenantId, limit],
    );
  }

  /// استعلام منتجات لواجهة طباعة الباركود (بحث + فلترة: له/بدون باركود).
  Future<List<Map<String, dynamic>>> queryProductsForBarcodeLabels({
    required int tenantId,
    required String query,
    required int hasBarcodeFilter, // 0=الكل، 1=له باركود، 2=بدون باركود
    int limit = 500,
  }) async {
    final db = await _db;
    final q = query.trim().toLowerCase();
    final where = <String>[
      'tenantId = ?',
      'isActive = 1',
    ];
    final args = <Object?>[tenantId];

    if (hasBarcodeFilter == 1) {
      where.add('barcode IS NOT NULL AND TRIM(barcode) != \'\'');
    } else if (hasBarcodeFilter == 2) {
      where.add('(barcode IS NULL OR TRIM(barcode) = \'\')');
    }

    if (q.isNotEmpty) {
      where.add(
        '(LOWER(name) LIKE ? OR LOWER(IFNULL(productCode, \'\')) LIKE ? OR IFNULL(barcode, \'\') LIKE ?)',
      );
      args.addAll(['%$q%', '%$q%', '%$q%']);
    }

    final whereSql = 'WHERE ${where.join(' AND ')}';
    return db.rawQuery(
      '''
      SELECT id, name, productCode, barcode, sellPrice, qty, stockBaseKind, trackInventory
      FROM products
      $whereSql
      ORDER BY name COLLATE NOCASE ASC
      LIMIT ?
      ''',
      [...args, limit],
    );
  }

  Future<List<Map<String, dynamic>>> getProductsForBarcodeLabelsByIds({
    required int tenantId,
    required List<int> productIds,
  }) async {
    if (productIds.isEmpty) return const [];
    final db = await _db;
    final ids = productIds.where((e) => e > 0).toSet().toList();
    if (ids.isEmpty) return const [];
    final placeholders = List.filled(ids.length, '?').join(',');
    return db.rawQuery(
      '''
      SELECT id, name, barcode, sellPrice, qty, stockBaseKind, trackInventory
      FROM products
      WHERE tenantId = ? AND isActive = 1
        AND id IN ($placeholders)
      ORDER BY name COLLATE NOCASE ASC
      ''',
      [tenantId, ...ids],
    );
  }

  /// يُستخدم لعمل تحديث فوري عند تثبيت/إلغاء تثبيت منتج عبر أي شاشة.
  static final ValueNotifier<int> pinnedVersion = ValueNotifier<int>(0);

  Future<void> seedIfEmpty() async {
    // No seed products — app starts with an empty product catalog.
    // Products are added via the add-product screen or bulk CSV import.
  }

  /// Import predefined medicines from the pharmacy inventory spreadsheet.
  /// Returns the number of products inserted.
  Future<int> importMedicines() async {
    final db = await _db;
    final now = DateTime.now().toIso8601String();
    final tid = _tenant.activeTenantId.clamp(1, 999999999);

    // Ensure "Médicaments" category exists.
    final catRow = await db.query(
      'categories', columns: ['id'],
      where: 'name = ? AND isActive = 1',
      whereArgs: ['Médicaments'], limit: 1,
    );
    int catId;
    if (catRow.isEmpty) {
      catId = await db.insert('categories', {
        'name': 'Médicaments',
        'isActive': 1,
        'tenantId': tid,
        'createdAt': now,
      });
    } else {
      catId = catRow.first['id'] as int;
    }

    // Check which products already exist (by name) to avoid duplicates.
    final existing = await db.rawQuery(
      'SELECT name FROM products WHERE isActive = 1',
    );
    final existingNames = <String>{
      for (final r in existing) (r['name'] as String).toLowerCase(),
    };

    final medicines = <Map<String, dynamic>>[
      {'name': 'Broncathiol 2% oral', 'qty': 11, 'price': 1250, 'exp': '2027-01-01'},
      {'name': 'Hydravit 10mg', 'qty': 32, 'price': 200, 'exp': '2028-01-01'},
      {'name': 'Hélicidine sans sucre oral', 'qty': 4, 'price': 1450, 'exp': '2028-09-01'},
      {'name': 'Trimetabol oral 150ml', 'qty': 5, 'price': 1100, 'exp': '2027-08-01'},
      {'name': 'Oroken oral 40mg/5ml', 'qty': 23, 'price': 2000, 'exp': '2027-05-01'},
      {'name': 'Efferalgan sirop 3%', 'qty': 5, 'price': 750, 'exp': '2028-09-01'},
      {'name': 'Augmentin enfant sirop 100mg', 'qty': 11, 'price': 1650, 'exp': '2027-06-01'},
      {'name': 'Dynamogen sirop 3mg', 'qty': 2, 'price': 1600, 'exp': '2029-10-01'},
      {'name': 'Maalox sachet', 'qty': 3, 'price': 1200, 'exp': '2027-12-01'},
      {'name': 'Astaph sirop 125mg', 'qty': 6, 'price': 700, 'exp': '2028-06-01'},
      {'name': 'Cooper sérum physiologique nasal', 'qty': 8, 'price': 1000, 'exp': '2027-07-01'},
      {'name': 'Ferbasi 200ml', 'qty': 7, 'price': 700, 'exp': '2027-04-01'},
      {'name': 'Vogalène sirop 0,1%', 'qty': 15, 'price': 1200, 'exp': '2027-04-01'},
      {'name': 'Vogalènd sirop 0,4%', 'qty': 11, 'price': 900, 'exp': '2027-02-01'},
      {'name': 'Flagyl sirop 125mg', 'qty': 8, 'price': 1100, 'exp': '2027-05-01'},
      {'name': 'Décontractyl méphésine comprimés', 'qty': 5, 'price': 1500, 'exp': '2026-09-01'},
      {'name': 'Zentel comprimés 400mg', 'qty': 5, 'price': 0, 'exp': null},
      {'name': 'Zentel sirop 0,4g', 'qty': 8, 'price': 900, 'exp': '2027-09-01'},
      {'name': 'Difal 50mg comprimé', 'qty': 3, 'price': 700, 'exp': null},
      {'name': 'Atarax 25mg', 'qty': 3, 'price': 1000, 'exp': '2027-08-01'},
      {'name': 'Cotareg 80mg comprimés', 'qty': 1, 'price': 1500, 'exp': '2027-06-01'},
      {'name': 'Humex 0,30g oral', 'qty': 2, 'price': 1100, 'exp': '2026-12-01'},
      {'name': 'Finastéride Viatris comprimés', 'qty': 4, 'price': 1500, 'exp': '2028-02-01'},
      {'name': 'Albencare comprimés 400mg', 'qty': 6, 'price': 2350, 'exp': '2027-07-01'},
      {'name': 'Pediakid sirop 22 vitamines', 'qty': 3, 'price': 0, 'exp': '2026-09-01'},
      {'name': 'Janumet 50/850mg comprimés', 'qty': 4, 'price': 0, 'exp': null},
      {'name': 'Insumed seringue 0,3ml', 'qty': 2, 'price': 0, 'exp': '2029-09-01'},
      {'name': 'Trialgic comprimés', 'qty': 34, 'price': 0, 'exp': '2027-04-01'},
      {'name': 'Healax cream 100g', 'qty': 3, 'price': 0, 'exp': '2026-08-01'},
      {'name': 'Facidine 2% pommade', 'qty': 3, 'price': 0, 'exp': '2027-11-01'},
      {'name': 'Mag 2 comprimés', 'qty': 3, 'price': 0, 'exp': '2028-02-01'},
      {'name': 'Tardyferon 80mg comprimés', 'qty': 7, 'price': 0, 'exp': '2028-04-01'},
      {'name': 'Efferalgan 500mg comprimés', 'qty': 4, 'price': 0, 'exp': '2027-11-01'},
      {'name': 'Ery 500mg comprimés 20', 'qty': 20, 'price': 0, 'exp': '2027-06-01'},
      {'name': 'Coveram 10mg 30', 'qty': 1, 'price': 0, 'exp': '2028-11-01'},
      {'name': 'Pervital 20 comprimés', 'qty': 4, 'price': 0, 'exp': '2028-02-01'},
      {'name': 'Feroglobin B12 sirop', 'qty': 2, 'price': 0, 'exp': '2027-04-01'},
      {'name': 'Feroglobin capsules', 'qty': 4, 'price': 0, 'exp': '2028-09-01'},
      {'name': 'Alvityl 12 vitamines 40 comprimés', 'qty': 9, 'price': 0, 'exp': '2028-05-01'},
      {'name': 'Alvityl sirop 11 vitamines', 'qty': 3, 'price': 0, 'exp': '2027-08-01'},
      {'name': 'Gaviscon buvable 24 sachets', 'qty': 1, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Nuravit sirop 125ml', 'qty': 6, 'price': 0, 'exp': '2027-06-01'},
      {'name': 'Nurabol sirop 2mg/5ml 125ml', 'qty': 4, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Disten 300/380mg 50 comprimés', 'qty': 5, 'price': 0, 'exp': '2029-12-01'},
      {'name': 'Nexium 20mg 28 comprimés', 'qty': 6, 'price': 0, 'exp': '2026-10-01'},
      {'name': 'Oméprazole Cristers 20mg', 'qty': 7, 'price': 0, 'exp': '2028-01-01'},
      {'name': 'Oméprazole Viatris 20mg', 'qty': 5, 'price': 0, 'exp': '2027-10-01'},
      {'name': 'Acide folique 5mg', 'qty': 1, 'price': 0, 'exp': '2027-11-01'},
      {'name': 'Neopred 20mg', 'qty': 2, 'price': 0, 'exp': '2028-02-01'},
      {'name': 'UPSA-C 1000mg', 'qty': 18, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Deltacortril 5mg', 'qty': 3, 'price': 0, 'exp': '2026-07-01'},
      {'name': 'Ketum 100mg', 'qty': 2, 'price': 0, 'exp': '2027-04-01'},
      {'name': 'Navidoxine 25mg', 'qty': 4, 'price': 0, 'exp': '2028-04-01'},
      {'name': 'Neurobion comprimés', 'qty': 3, 'price': 0, 'exp': '2027-01-01'},
      {'name': 'Crosscal 50mg', 'qty': 1, 'price': 0, 'exp': '2027-07-01'},
      {'name': 'Bactrim 400/80mg', 'qty': 1, 'price': 0, 'exp': '2028-11-01'},
      {'name': 'Flagyl 500mg comprimés', 'qty': 7, 'price': 0, 'exp': '2027-01-01'},
      {'name': 'Clamoxyl 500mg 42 gélules', 'qty': 16, 'price': 0, 'exp': '2026-10-01'},
      {'name': 'Augmentin adultes 500mg', 'qty': 10, 'price': 0, 'exp': '2027-05-01'},
      {'name': 'Oflocet auriculaire 1,5mg', 'qty': 2, 'price': 0, 'exp': '2027-08-01'},
      {'name': 'Otofa rifamycine auriculaire', 'qty': 2, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Otipax phénazone auriculaire', 'qty': 4, 'price': 0, 'exp': '2028-12-01'},
      {'name': 'Cérulyse 5g auriculaire', 'qty': 2, 'price': 0, 'exp': '2028-05-01'},
      {'name': 'Indocollyre 0,1%', 'qty': 8, 'price': 0, 'exp': '2027-04-01'},
      {'name': 'Janumet 50/1000mg', 'qty': 5, 'price': 0, 'exp': null},
      {'name': 'Duphalac sirop 200ml', 'qty': 2, 'price': 0, 'exp': '2028-04-01'},
      {'name': 'Tributine 250ml suspension buvable', 'qty': 1, 'price': 0, 'exp': '2027-04-01'},
      {'name': 'Duphalac 10g/15ml 20 sachets', 'qty': 3, 'price': 0, 'exp': '2028-06-01'},
      {'name': 'Fervex adultes 8 sachets', 'qty': 1, 'price': 0, 'exp': '2028-09-01'},
      {'name': 'Brufen 400mg', 'qty': 3, 'price': 0, 'exp': '2028-02-01'},
      {'name': 'Ibuprofène 400mg', 'qty': 41, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Doliprane 500mg comprimés', 'qty': 17, 'price': 0, 'exp': '2028-03-01'},
      {'name': 'Paracétamol 500mg gélules', 'qty': 4, 'price': 0, 'exp': '2027-03-01'},
      {'name': 'Gelphore sirop 125ml', 'qty': 1, 'price': 0, 'exp': '2027-05-01'},
      {'name': 'Glucophage 850mg', 'qty': 3, 'price': 0, 'exp': '2029-04-01'},
      {'name': 'Aspirin 100mg', 'qty': 2, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Doliprane 1000mg', 'qty': 4, 'price': 0, 'exp': '2027-05-01'},
      {'name': 'Glucophage 500mg', 'qty': 3, 'price': 0, 'exp': '2029-05-01'},
      {'name': 'Clotri-denk 1% cream 20g', 'qty': 5, 'price': 0, 'exp': '2027-10-01'},
      {'name': 'Tramagen 50 comprimés', 'qty': 5, 'price': 0, 'exp': null},
      {'name': 'Amaryl 3mg', 'qty': 1, 'price': 0, 'exp': '2027-03-01'},
      {'name': 'Diamicron MR 60mg', 'qty': 14, 'price': 0, 'exp': '2028-05-01'},
      {'name': 'Toco 500mg', 'qty': 3, 'price': 0, 'exp': '2029-08-01'},
      {'name': 'Claril 500mg', 'qty': 9, 'price': 0, 'exp': null},
      {'name': 'Polygynax capsule vaginal', 'qty': 8, 'price': 0, 'exp': '2027-01-01'},
      {'name': 'Tamsulosine Viatris 0,4mg', 'qty': 4, 'price': 0, 'exp': '2026-10-01'},
      {'name': 'Tributine 150mg 20 sachets', 'qty': 4, 'price': 0, 'exp': '2029-10-01'},
      {'name': 'Maxidex 0,1% collyre', 'qty': 4, 'price': 0, 'exp': '2027-10-01'},
      {'name': 'Ofrivid 10ml collyre', 'qty': 10, 'price': 0, 'exp': '2026-12-01'},
      {'name': 'Flucon collyre', 'qty': 4, 'price': 0, 'exp': '2027-03-01'},
      {'name': 'Maxidrol collyre', 'qty': 13, 'price': 0, 'exp': '2027-12-01'},
      {'name': 'Chibroxine collyre 0,3%', 'qty': 9, 'price': 0, 'exp': '2028-04-01'},
      {'name': 'Cutacnyl gel 10%', 'qty': 2, 'price': 0, 'exp': '2026-09-01'},
      {'name': 'Cutacnyl gel 5%', 'qty': 1, 'price': 0, 'exp': '2026-08-01'},
      {'name': 'Nozinan 25mg comprimés', 'qty': 9, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Nozinan 100mg comprimés', 'qty': 5, 'price': 0, 'exp': '2027-02-01'},
      {'name': 'Norodol 5mg', 'qty': 1, 'price': 0, 'exp': '2028-03-01'},
      {'name': 'Gynanfort vaginal 10 ovules', 'qty': 2, 'price': 0, 'exp': null},
      {'name': 'Flexdol comprimés', 'qty': 3, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Advilmed sirop enfants/nourrissons 20mg', 'qty': 15, 'price': 0, 'exp': '2028-03-01'},
      {'name': 'Glucose 5%', 'qty': 19, 'price': 0, 'exp': '2027-01-01'},
      {'name': 'Sodium chloride 0,9% 500ml', 'qty': 8, 'price': 0, 'exp': '2029-02-01'},
      {'name': 'Ringer L injection 500ml', 'qty': 21, 'price': 0, 'exp': '2029-03-01'},
      {'name': 'RL sodium 500ml', 'qty': 3, 'price': 0, 'exp': '2028-05-01'},
      {'name': 'NS sodium 500ml', 'qty': 1, 'price': 0, 'exp': '2028-05-01'},
      {'name': 'Dakin 250ml', 'qty': 3, 'price': 0, 'exp': '2026-11-01'},
      {'name': 'Eau oxygénée 250ml', 'qty': 6, 'price': 0, 'exp': '2028-03-01'},
      {'name': 'Paracétamol infusion 100ml', 'qty': 15, 'price': 0, 'exp': '2027-07-01'},
      {'name': 'Betadine 125ml', 'qty': 9, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Süsinna sweetener 1200 tablets', 'qty': 2, 'price': 0, 'exp': '2028-08-01'},
      {'name': 'KOP', 'qty': 7, 'price': 0, 'exp': '2030-12-01'},
      {'name': 'ECIB', 'qty': 13, 'price': 0, 'exp': '2030-12-01'},
      {'name': 'NRC cannula', 'qty': 79, 'price': 0, 'exp': '2028-02-01'},
      {'name': 'Helpha 12ml', 'qty': 95, 'price': 0, 'exp': '2026-12-01'},
      {'name': 'Doliprane 150mg 8-12kg', 'qty': 10, 'price': 0, 'exp': '2027-08-01'},
      {'name': 'Doliprane 300mg', 'qty': 5, 'price': 0, 'exp': '2026-12-01'},
      {'name': 'Mixtard 30 100ml', 'qty': 59, 'price': 0, 'exp': '2027-10-01'},
      {'name': 'Novomix FlexPen', 'qty': 25, 'price': 0, 'exp': '2027-01-01'},
      {'name': 'Insulin glargine 3ml', 'qty': 0, 'price': 0, 'exp': '2028-02-01'},
      {'name': 'Efferalgan 80mg', 'qty': 8, 'price': 0, 'exp': '2028-07-01'},
      {'name': 'Hemax 4000 UI', 'qty': 7, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Parogencyl menthe 75ml', 'qty': 3, 'price': 0, 'exp': null},
      {'name': 'Parogencyl nouvelle formule 75ml', 'qty': 1, 'price': 0, 'exp': null},
      {'name': 'Sensodyne 75ml', 'qty': 1, 'price': 0, 'exp': null},
      {'name': 'Fluocaril 145mg 6-13 ans', 'qty': 3, 'price': 0, 'exp': null},
      {'name': 'Dorco toothbrush 12 pièces', 'qty': 1, 'price': 0, 'exp': null},
      {'name': 'Rabirchamber Small', 'qty': 4, 'price': 0, 'exp': null},
      {'name': 'Oxalair 125 microgrammes 120 doses', 'qty': 1, 'price': 0, 'exp': '2027-06-01'},
      {'name': 'Acyclovir 200mg comprimés', 'qty': 4, 'price': 0, 'exp': '2026-07-01'},
      {'name': 'GPRact 20mg comprimés', 'qty': 14, 'price': 0, 'exp': '2027-07-01'},
      {'name': 'Duphalast CP 10mg', 'qty': 8, 'price': 0, 'exp': '2029-08-01'},
      {'name': 'Biafine', 'qty': 3, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Rovamycine sachets', 'qty': 8, 'price': 0, 'exp': '2027-11-01'},
      {'name': 'Nozinan 25mg comprimés 2', 'qty': 10, 'price': 0, 'exp': '2028-07-01'},
      {'name': 'Fortal', 'qty': 8, 'price': 0, 'exp': '2027-01-01'},
      {'name': 'Magnésie poudre', 'qty': 6, 'price': 0, 'exp': '2028-12-01'},
      {'name': 'Becosterene 0,05% gouttes', 'qty': 5, 'price': 0, 'exp': '2027-11-01'},
      {'name': 'Smecta sachets', 'qty': 3, 'price': 0, 'exp': '2028-01-01'},
      {'name': 'On Call Plus appareil', 'qty': 3, 'price': 0, 'exp': '2026-11-01'},
      {'name': 'On Call Plus bandelettes', 'qty': 12, 'price': 0, 'exp': '2027-06-01'},
      {'name': 'Pédiasure sachets 80mg', 'qty': 10, 'price': 0, 'exp': '2026-08-01'},
      {'name': 'Ascobut solution', 'qty': 5, 'price': 0, 'exp': '2027-03-01'},
      {'name': 'Fungazone sirop', 'qty': 3, 'price': 0, 'exp': '2027-09-01'},
      {'name': 'Azithro sirop 200mg/5ml', 'qty': 3, 'price': 0, 'exp': '2028-11-01'},
      {'name': 'Apo-zopiclone CP 500mg', 'qty': 1, 'price': 0, 'exp': '2027-08-01'},
      {'name': 'Oroken sirop 100mg/5ml', 'qty': 5, 'price': 0, 'exp': '2027-03-01'},
      {'name': 'Tegretol CP 200mg', 'qty': 14, 'price': 0, 'exp': '2028-05-01'},
      {'name': 'Seretide', 'qty': 1, 'price': 0, 'exp': '2026-10-01'},
      {'name': 'Pevaryl crème 1%', 'qty': 4, 'price': 0, 'exp': '2026-10-01'},
      {'name': 'Flomozine crème', 'qty': 4, 'price': 0, 'exp': '2027-02-01'},
      {'name': 'Sedorrhoïde crème', 'qty': 3, 'price': 0, 'exp': '2027-01-01'},
      {'name': 'Maxilase sirop', 'qty': 3, 'price': 0, 'exp': '2027-05-01'},
      {'name': 'Phenergan sirop adultes', 'qty': 8, 'price': 0, 'exp': '2027-01-01'},
      {'name': 'Voltaren Emulgel 1%', 'qty': 1, 'price': 0, 'exp': '2028-10-01'},
      {'name': 'Affinité adulte', 'qty': 2, 'price': 0, 'exp': '2026-12-01'},
      {'name': 'Polygynax ovules', 'qty': 7, 'price': 0, 'exp': '2028-11-01'},
      {'name': 'Nevixal 0,1%', 'qty': 7, 'price': 0, 'exp': '2027-09-01'},
    ];

    int inserted = 0;
    for (final m in medicines) {
      final name = m['name'] as String;
      if (existingNames.contains(name.toLowerCase())) continue;
      final code = await _allocateTenantScopedProductCode(tid, db);
      await db.insert('products', {
        'name': name,
        'qty': m['qty'],
        'sellPrice': m['price'],
        'buyPrice': 0,
        'lowStockThreshold': 5,
        'categoryId': catId,
        'tenantId': tid,
        'trackInventory': 1,
        'isActive': 1,
        'createdAt': now,
        'updatedAt': now,
        'productCode': code,
        'expiryDate': m['exp'],
        'status': (m['qty'] as int) <= 5 ? 'low' : 'instock',
      });
      inserted++;
    }
    return inserted;
  }

  /// تصنيفات لإدارة الإعدادات (مع اسم الأب إن وُجد).
  Future<List<Map<String, dynamic>>> listCategoriesForSettings() async {
    final db = await _db;
    return db.rawQuery('''
      SELECT c.id, c.name, c.parentId, c.description, p.name AS parentName
      FROM categories c
      LEFT JOIN categories p ON p.id = c.parentId
      WHERE c.isActive = 1
      ORDER BY c.name COLLATE NOCASE ASC
    ''');
  }

  /// إضافة تصنيف. يُرجع `null` عند النجاح أو رسالة خطأ عربية.
  Future<String?> insertCategory({
    required String name,
    int? parentId,
    String? description,
  }) async {
    final trimmed = name.trim();
    if (trimmed.isEmpty) return 'اسم التصنيف مطلوب';
    final db = await _db;
    final clash = await db.query(
      'categories',
      columns: ['id'],
      where: 'name = ? AND isActive = 1',
      whereArgs: [trimmed],
      limit: 1,
    );
    if (clash.isNotEmpty) return 'هذا الاسم مستخدم مسبقاً';
    String? parentGlobalId;
    if (parentId != null) {
      final p = await db.query(
        'categories',
        columns: ['id', 'global_id'],
        where: 'id = ? AND isActive = 1',
        whereArgs: [parentId],
        limit: 1,
      );
      if (p.isEmpty) return 'التصنيف الرئيسي غير صالح';
      parentGlobalId = p.first['global_id'] as String?;
    }
    final now = DateTime.now().toIso8601String();
    String? desc;
    if (description != null && description.trim().isNotEmpty) {
      desc = description.trim();
    }
    
    final gid = const Uuid().v4();
    final row = {
      'name': trimmed,
      'code': 'CAT-${DateTime.now().millisecondsSinceEpoch}',
      'parentId': parentId,
      'description': desc,
      'createdAt': now,
      'global_id': gid,
      'updatedAt': now,
      'parent_global_id': parentGlobalId,
    };
    
    await db.transaction((txn) async {
      await txn.insert('categories', row);
      await SyncQueueService.instance.enqueueMutation(
        txn,
        entityType: 'category',
        operation: 'INSERT',
        globalId: gid,
        payload: row,
      );
    });
    CloudSyncService.instance.scheduleSyncSoon();
    return null;
  }

  /// حذف تصنيف بعد التحقق من الفروع والمنتجات.
  Future<String?> deleteCategory(int id) async {
    final db = await _db;
    final kids = await db.query(
      'categories',
      columns: ['id'],
      where: 'parentId = ? AND isActive = 1',
      whereArgs: [id],
      limit: 1,
    );
    if (kids.isNotEmpty) {
      return 'لا يمكن الحذف: يوجد تصنيفات فرعية';
    }
    final prods = await db.query(
      'products',
      columns: ['id'],
      where: 'categoryId = ?',
      whereArgs: [id],
      limit: 1,
    );
    if (prods.isNotEmpty) {
      return 'لا يمكن الحذف: التصنيف مرتبط بمنتجات';
    }
    await db.transaction((txn) async {
      final cRow = await txn.query('categories', columns: ['global_id'], where: 'id = ?', whereArgs: [id], limit: 1);
      if (cRow.isEmpty) return;
      final gid = cRow.first['global_id'] as String?;
      
      await txn.delete('categories', where: 'id = ?', whereArgs: [id]);
      
      if (gid != null) {
        await SyncQueueService.instance.enqueueMutation(
          txn,
          entityType: 'category',
          operation: 'DELETE',
          globalId: gid,
          payload: {},
        );
      }
    });
    CloudSyncService.instance.scheduleSyncSoon();
    return null;
  }

  /// علامات تجارية نشطة (لإدارة القائمة).
  Future<List<Map<String, dynamic>>> listBrandsForSettings() async {
    final db = await _db;
    return db.query(
      'brands',
      columns: ['id', 'name', 'code', 'createdAt'],
      where: 'isActive = 1',
      orderBy: 'name COLLATE NOCASE ASC',
    );
  }

  /// إضافة ماركة جديدة. يُرجع `null` عند النجاح أو رسالة خطأ عربية.
  Future<String?> insertBrandByName(String name) async {
    final trimmed = name.trim();
    if (trimmed.isEmpty) return 'اسم الماركة مطلوب';
    final db = await _db;
    final clash = await db.query(
      'brands',
      columns: ['id'],
      where: 'name = ? AND isActive = 1',
      whereArgs: [trimmed],
      limit: 1,
    );
    if (clash.isNotEmpty) return 'هذه الماركة موجودة مسبقاً';
    final now = DateTime.now().toIso8601String();
    final gid = const Uuid().v4();
    final row = {
      'name': trimmed,
      'code': 'BR-${DateTime.now().millisecondsSinceEpoch}',
      'createdAt': now,
      'global_id': gid,
      'updatedAt': now,
    };
    
    await db.transaction((txn) async {
      await txn.insert('brands', row);
      await SyncQueueService.instance.enqueueMutation(
        txn,
        entityType: 'brand',
        operation: 'INSERT',
        globalId: gid,
        payload: row,
      );
    });
    
    CloudSyncService.instance.scheduleSyncSoon();
    return null;
  }

  /// حذف ماركة (المنتجات المرتبطة تُفرّغ brandId تلقائياً).
  Future<String?> deleteBrand(int id) async {
    final db = await _db;
    await db.transaction((txn) async {
      final bRow = await txn.query('brands', columns: ['global_id'], where: 'id = ?', whereArgs: [id], limit: 1);
      if (bRow.isEmpty) return;
      final gid = bRow.first['global_id'] as String?;
      
      await txn.delete('brands', where: 'id = ?', whereArgs: [id]);
      
      if (gid != null) {
        await SyncQueueService.instance.enqueueMutation(
          txn,
          entityType: 'brand',
          operation: 'DELETE',
          globalId: gid,
          payload: {},
        );
      }
    });
    CloudSyncService.instance.scheduleSyncSoon();
    return null;
  }

  Future<List<Map<String, dynamic>>> getProducts() async {
    final db = await _db;
    final rows = await db.rawQuery('''
      SELECT
        p.id,
        p.name,
        p.barcode,
        p.productCode,
        IFNULL(p.isService, 0) AS isService,
        p.serviceKind AS serviceKind,
        p.sellPrice AS sell,
        p.buyPrice AS buy,
        p.qty,
        p.status,
        c.name AS categoryName,
        b.name AS brandName
      FROM products p
      LEFT JOIN categories c ON c.id = p.categoryId
      LEFT JOIN brands b ON b.id = p.brandId
      WHERE p.isActive = 1
      ORDER BY p.id DESC
    ''');
    return rows;
  }

  /// استعلام صفحات للمنتجات لإدارة المخزون (بدون تحميل كل الجدول).
  ///
  /// - [statusArabic]: "الكل" | "نشط" | "مخزون منخفض" | "نفذ من المخزون" | "معطّل"
  ///   (يتوافق مع القيم السابقة: "في المخزون" → نشط تقريباً، "منخفض" → مخزون منخفض)
  /// - [sortByArabic]: "الاسم" | "السعر" | "الكمية" | "تاريخ الإضافة"
  Future<List<Map<String, dynamic>>> queryProductsPage({
    required String keyword,
    required String barcode,
    required String productCode,
    required String categoryName,
    required String brandName,
    required String statusArabic,
    required String sortByArabic,
    required bool sortAscending,
    int? priceMinIqd,
    int? priceMaxIqd,
    required int limit,
    required int offset,
  }) async {
    final db = await _db;
    final tid = _tenant.activeTenantId;
    final where = <String>['p.tenantId = ?'];
    final args = <Object?>[tid];

    const effQtyExpr = 'COALESCE(v.sumQty, p.qty)';

    void addStatusAndActive() {
      switch (statusArabic) {
        case 'معطّل':
          where.add('p.isActive = 0');
          return;
        default:
          where.add('p.isActive = 1');
      }
      switch (statusArabic) {
        case 'نشط':
        case 'في المخزون':
          where.add("($effQtyExpr > 0 AND p.status = 'instock')");
          break;
        case 'مخزون منخفض':
        case 'منخفض':
          where.add("p.status = 'low'");
          break;
        case 'نفذ من المخزون':
          where.add('$effQtyExpr <= 0');
          break;
        case 'الكل':
        case 'معطّل':
          break;
      }
    }

    addStatusAndActive();

    final kwRaw = keyword.trim();
    final kw = kwRaw.toLowerCase();
    if (kw.isNotEmpty) {
      final safe = kwRaw.replaceAll('%', '').replaceAll('_', '');
      if (safe.isNotEmpty) {
        final like = '%$kw%';
        final likeRaw = '%$safe%';
        where.add('''
(
  LOWER(p.name) LIKE ? COLLATE NOCASE
  OR IFNULL(p.barcode, '') LIKE ?
  OR LOWER(IFNULL(p.productCode, '')) LIKE ? COLLATE NOCASE
  OR CAST(p.id AS TEXT) LIKE ?
)
''');
        args.addAll([like, likeRaw, like, '%$safe%']);
      }
    }

    final bc = barcode.trim();
    if (bc.isNotEmpty) {
      where.add('IFNULL(p.barcode, \'\') LIKE ?');
      args.add('%$bc%');
    }
    final pc = productCode.trim();
    if (pc.isNotEmpty) {
      where.add('LOWER(IFNULL(p.productCode, \'\')) LIKE ? COLLATE NOCASE');
      args.add('%${pc.toLowerCase()}%');
    }

    final cat = categoryName.trim();
    if (cat.isNotEmpty && cat != 'جميع التصنيفات') {
      where.add('IFNULL(TRIM(c.name), \'\') = ?');
      args.add(cat);
    }
    final br = brandName.trim();
    if (br.isNotEmpty && br != 'جميع الماركات') {
      where.add('IFNULL(TRIM(b.name), \'\') = ?');
      args.add(br);
    }

    if (priceMinIqd != null && priceMinIqd > 0) {
      where.add('p.sellPrice >= ?');
      args.add(priceMinIqd.toDouble());
    }
    if (priceMaxIqd != null && priceMaxIqd > 0) {
      where.add('p.sellPrice <= ?');
      args.add(priceMaxIqd.toDouble());
    }

    final asc = sortAscending ? 'ASC' : 'DESC';
    final orderBy = switch (sortByArabic) {
      'السعر' => 'p.sellPrice $asc, p.id DESC',
      'الكمية' => '$effQtyExpr $asc, p.id DESC',
      'تاريخ الإضافة' => 'p.createdAt $asc, p.id DESC',
      _ => 'p.name COLLATE NOCASE $asc, p.id DESC',
    };

    final whereSql = 'WHERE ${where.join(' AND ')}';
    return db.rawQuery('''
      SELECT
        p.id,
        p.name,
        p.barcode,
        p.productCode,
        IFNULL(p.isService, 0) AS isService,
        p.serviceKind AS serviceKind,
        IFNULL(p.trackInventory, 1) AS trackInventory,
        p.sellPrice AS sell,
        p.buyPrice AS buy,
        $effQtyExpr AS qty,
        p.status,
        p.isActive AS isActive,
        p.lowStockThreshold AS lowStockThreshold,
        IFNULL(p.isPinned, 0) AS isPinned,
        p.imagePath AS imagePath,
        p.imageUrl AS imageUrl,
        c.name AS categoryName,
        b.name AS brandName
      FROM products p
      LEFT JOIN (
        SELECT productId, SUM(quantity) AS sumQty
        FROM product_variants
        WHERE tenantId = ? AND deleted_at IS NULL
        GROUP BY productId
      ) v ON v.productId = p.id
      LEFT JOIN categories c ON c.id = p.categoryId
      LEFT JOIN brands b ON b.id = p.brandId
      $whereSql
      ORDER BY $orderBy
      LIMIT ? OFFSET ?
    ''', [tid, ...args, limit, offset]);
  }

  /// عدد المنتجات المطابقة لنفس شروط [queryProductsPage] (بدون LIMIT/OFFSET).
  Future<int> countInventoryProducts({
    required String keyword,
    required String barcode,
    required String productCode,
    required String categoryName,
    required String brandName,
    required String statusArabic,
    int? priceMinIqd,
    int? priceMaxIqd,
  }) async {
    final db = await _db;
    final tid = _tenant.activeTenantId;
    final where = <String>['p.tenantId = ?'];
    final args = <Object?>[tid];

    const effQtyExpr = 'COALESCE(v.sumQty, p.qty)';

    void addStatusAndActive() {
      switch (statusArabic) {
        case 'معطّل':
          where.add('p.isActive = 0');
          return;
        default:
          where.add('p.isActive = 1');
      }
      switch (statusArabic) {
        case 'نشط':
        case 'في المخزون':
          where.add("($effQtyExpr > 0 AND p.status = 'instock')");
          break;
        case 'مخزون منخفض':
        case 'منخفض':
          where.add("p.status = 'low'");
          break;
        case 'نفذ من المخزون':
          where.add('$effQtyExpr <= 0');
          break;
        case 'الكل':
        case 'معطّل':
          break;
      }
    }

    addStatusAndActive();

    final kwRaw = keyword.trim();
    final kw = kwRaw.toLowerCase();
    if (kw.isNotEmpty) {
      final safe = kwRaw.replaceAll('%', '').replaceAll('_', '');
      if (safe.isNotEmpty) {
        final like = '%$kw%';
        final likeRaw = '%$safe%';
        where.add('''
(
  LOWER(p.name) LIKE ? COLLATE NOCASE
  OR IFNULL(p.barcode, '') LIKE ?
  OR LOWER(IFNULL(p.productCode, '')) LIKE ? COLLATE NOCASE
  OR CAST(p.id AS TEXT) LIKE ?
)
''');
        args.addAll([like, likeRaw, like, '%$safe%']);
      }
    }

    final bc = barcode.trim();
    if (bc.isNotEmpty) {
      where.add('IFNULL(p.barcode, \'\') LIKE ?');
      args.add('%$bc%');
    }
    final pc = productCode.trim();
    if (pc.isNotEmpty) {
      where.add('LOWER(IFNULL(p.productCode, \'\')) LIKE ? COLLATE NOCASE');
      args.add('%${pc.toLowerCase()}%');
    }

    final cat = categoryName.trim();
    if (cat.isNotEmpty && cat != 'جميع التصنيفات') {
      where.add('IFNULL(TRIM(c.name), \'\') = ?');
      args.add(cat);
    }
    final br = brandName.trim();
    if (br.isNotEmpty && br != 'جميع الماركات') {
      where.add('IFNULL(TRIM(b.name), \'\') = ?');
      args.add(br);
    }

    if (priceMinIqd != null && priceMinIqd > 0) {
      where.add('p.sellPrice >= ?');
      args.add(priceMinIqd.toDouble());
    }
    if (priceMaxIqd != null && priceMaxIqd > 0) {
      where.add('p.sellPrice <= ?');
      args.add(priceMaxIqd.toDouble());
    }

    final whereSql = 'WHERE ${where.join(' AND ')}';
    final rows = await db.rawQuery(
      '''
      SELECT COUNT(*) AS c
      FROM products p
      LEFT JOIN (
        SELECT productId, SUM(quantity) AS sumQty
        FROM product_variants
        WHERE tenantId = ? AND deleted_at IS NULL
        GROUP BY productId
      ) v ON v.productId = p.id
      LEFT JOIN categories c ON c.id = p.categoryId
      LEFT JOIN brands b ON b.id = p.brandId
      $whereSql
      ''',
      [tid, ...args],
    );
    final v = rows.isEmpty ? null : rows.first['c'];
    return (v as num?)?.toInt() ?? 0;
  }

  /// إجمالي المنتجات النشطة (للمقارنة «من أصل X»).
  Future<int> countActiveProductsForTenant() async {
    final db = await _db;
    final tid = _tenant.activeTenantId;
    final rows = await db.rawQuery(
      '''
      SELECT COUNT(*) AS c
      FROM products p
      WHERE p.tenantId = ? AND p.isActive = 1
      ''',
      [tid],
    );
    final v = rows.isEmpty ? null : rows.first['c'];
    return (v as num?)?.toInt() ?? 0;
  }

  /// إعادة تفعيل منتج كان معطّلاً حذفاً منطقياً.
  Future<void> activateProduct(int productId) async {
    final db = await _db;
    await db.transaction((txn) async {
      await txn.update(
        'products',
        {
          'isActive': 1,
          'updatedAt': DateTime.now().toIso8601String(),
        },
        where: 'id = ?',
        whereArgs: [productId],
      );
      await _enqueueProductMutation(txn, productId, 'UPDATE');
    });
    CloudSyncService.instance.scheduleSyncSoon();
  }

  /// صفحات لشاشة «تحديث منتج موجود»: بحث موحّد (اسم / باركود / رمز / معرف) أو كل الأصناف عند فراغ النص.
  Future<List<Map<String, dynamic>>> queryProductsQuickEditPage({
    required String search,
    required int limit,
    required int offset,
  }) async {
    final db = await _db;
    final t = search.trim();
    final where = <String>['p.isActive = 1'];
    final args = <Object?>[];
    if (t.isNotEmpty) {
      final safe = t.replaceAll('%', '').replaceAll('_', '');
      if (safe.isEmpty) return [];
      final like = '%${safe.toLowerCase()}%';
      final likeRaw = '%$safe%';
      where.add('''
(
  LOWER(p.name) LIKE ? COLLATE NOCASE
  OR IFNULL(p.barcode, '') LIKE ?
  OR LOWER(IFNULL(p.productCode, '')) LIKE ? COLLATE NOCASE
  OR LOWER(IFNULL(p.supplierItemCode, '')) LIKE ? COLLATE NOCASE
  OR CAST(p.id AS TEXT) LIKE ?
)
''');
      args.addAll([like, likeRaw, like, like, '%$safe%']);
    }
    return db.rawQuery(
      '''
      SELECT
        p.id,
        p.name,
        p.barcode,
        p.productCode,
        p.sellPrice AS sell,
        p.buyPrice AS buy,
        p.minSellPrice AS minSell,
        p.qty,
        p.lowStockThreshold,
        p.trackInventory,
        p.stockBaseKind AS stockBaseKind,
        p.status,
        c.name AS categoryName
      FROM products p
      LEFT JOIN categories c ON c.id = p.categoryId
      WHERE ${where.join(' AND ')}
      ORDER BY p.name COLLATE NOCASE ASC, p.id DESC
      LIMIT ? OFFSET ?
''',
      [...args, limit, offset],
    );
  }

  /// صف واحد لشاشة التحديث السريع (مثلاً بعد مسح باركود).
  Future<Map<String, dynamic>?> getProductQuickEditRow(int productId) async {
    final db = await _db;
    final rows = await db.rawQuery(
      '''
      SELECT
        p.id,
        p.name,
        p.barcode,
        p.productCode,
        p.sellPrice AS sell,
        p.buyPrice AS buy,
        p.minSellPrice AS minSell,
        p.qty,
        p.lowStockThreshold,
        p.trackInventory,
        p.stockBaseKind AS stockBaseKind,
        p.status,
        c.name AS categoryName
      FROM products p
      LEFT JOIN categories c ON c.id = p.categoryId
      WHERE p.isActive = 1 AND p.id = ?
      LIMIT 1
      ''',
      [productId],
    );
    if (rows.isEmpty) return null;
    return rows.first;
  }

  /// قائمة أصناف نشطة للوحة الجانبية على الشاشات العريضة (بدون فلتر نصّي).
  Future<List<Map<String, dynamic>>> listActiveProductsForQuickPick({
    int limit = 500,
  }) async {
    final db = await _db;
    return db.rawQuery(
      '''
      SELECT
        p.id,
        p.name,
        p.barcode,
        p.productCode,
        p.sellPrice AS sell,
        p.minSellPrice AS minSell,
        p.buyPrice AS buy,
        p.qty,
        p.trackInventory,
        p.allowNegativeStock,
        p.stockBaseKind AS stockBaseKind,
        IFNULL(p.isPinned, 0) AS isPinned,
        p.pinnedAt AS pinnedAt,
        p.categoryId,
        p.brandId,
        p.imagePath,
        dv.id AS defaultVariantId,
        dv.factorToBase AS defaultUnitFactor,
        TRIM(
          CASE
            WHEN IFNULL(TRIM(dv.unitSymbol), '') = '' THEN dv.unitName
            ELSE dv.unitName || ' (' || dv.unitSymbol || ')'
          END
        ) AS defaultUnitLabel,
        IFNULL(p.isService, 0) AS isService,
        p.serviceKind AS serviceKind,
        p.status
      FROM products p
      LEFT JOIN product_unit_variants dv
        ON dv.id = (
          SELECT v.id
          FROM product_unit_variants v
          WHERE v.productId = p.id
            AND v.isActive = 1
          ORDER BY v.isDefault DESC, v.id ASC
          LIMIT 1
        )
      WHERE p.isActive = 1
      ORDER BY p.name COLLATE NOCASE ASC
      LIMIT ?
      ''',
      [limit],
    );
  }

  /// المنتجات المثبّتة للقائمة الجانبية في البيع (بنفس أعمدة quick pick).
  Future<List<Map<String, dynamic>>> listPinnedProductsForQuickPick({
    int limit = 200,
  }) async {
    final db = await _db;
    return db.rawQuery(
      '''
      SELECT
        p.id,
        p.name,
        p.barcode,
        p.productCode,
        p.sellPrice AS sell,
        p.minSellPrice AS minSell,
        p.buyPrice AS buy,
        p.qty,
        p.trackInventory,
        p.allowNegativeStock,
        p.stockBaseKind AS stockBaseKind,
        IFNULL(p.isPinned, 0) AS isPinned,
        p.pinnedAt AS pinnedAt,
        p.categoryId,
        p.brandId,
        p.imagePath,
        dv.id AS defaultVariantId,
        dv.factorToBase AS defaultUnitFactor,
        TRIM(
          CASE
            WHEN IFNULL(TRIM(dv.unitSymbol), '') = '' THEN dv.unitName
            ELSE dv.unitName || ' (' || dv.unitSymbol || ')'
          END
        ) AS defaultUnitLabel,
        IFNULL(p.isService, 0) AS isService,
        p.serviceKind AS serviceKind,
        p.status
      FROM products p
      LEFT JOIN product_unit_variants dv
        ON dv.id = (
          SELECT v.id
          FROM product_unit_variants v
          WHERE v.productId = p.id
            AND v.isActive = 1
          ORDER BY v.isDefault DESC, v.id ASC
          LIMIT 1
        )
      WHERE p.isActive = 1
        AND IFNULL(p.isPinned, 0) = 1
      ORDER BY IFNULL(p.pinnedAt, 0) DESC, p.name COLLATE NOCASE ASC
      LIMIT ?
      ''',
      [limit],
    );
  }

  /// بحث سريع بالاسم أو الباركود أو رمز المنتج (للشريط العلوي).
  Future<List<Map<String, dynamic>>> searchProducts(String query,
      {int limit = 25}) async {
    final q = query.trim();
    if (q.isEmpty) return [];
    final safe = q.replaceAll('%', '').replaceAll('_', '');
    if (safe.isEmpty) return [];
    final like = '%$safe%';
    final db = await _db;
    return db.rawQuery(
      '''
      SELECT
        p.id,
        p.name,
        p.barcode,
        p.productCode,
        p.sellPrice AS sell,
        p.minSellPrice AS minSell,
        p.buyPrice AS buy,
        p.qty,
        p.trackInventory,
        p.allowNegativeStock,
        p.stockBaseKind AS stockBaseKind,
        IFNULL(p.isPinned, 0) AS isPinned,
        p.pinnedAt AS pinnedAt,
        p.categoryId,
        p.brandId,
        p.imagePath,
        dv.id AS defaultVariantId,
        dv.factorToBase AS defaultUnitFactor,
        TRIM(
          CASE
            WHEN IFNULL(TRIM(dv.unitSymbol), '') = '' THEN dv.unitName
            ELSE dv.unitName || ' (' || dv.unitSymbol || ')'
          END
        ) AS defaultUnitLabel,
        IFNULL(p.isService, 0) AS isService,
        p.serviceKind AS serviceKind,
        p.status
      FROM products p
      LEFT JOIN product_unit_variants dv
        ON dv.id = (
          SELECT v.id
          FROM product_unit_variants v
          WHERE v.productId = p.id
            AND v.isActive = 1
          ORDER BY v.isDefault DESC, v.id ASC
          LIMIT 1
        )
      WHERE p.isActive = 1
        AND (
          p.name LIKE ? COLLATE NOCASE
          OR IFNULL(p.barcode, '') LIKE ?
          OR IFNULL(p.productCode, '') LIKE ? COLLATE NOCASE
          OR IFNULL(p.supplierItemCode, '') LIKE ? COLLATE NOCASE
        )
      ORDER BY p.name COLLATE NOCASE ASC
      LIMIT ?
      ''',
      [like, like, like, like, limit],
    );
  }

  /// Returns category id, creating a row if the name is new (respects UNIQUE name).
  Future<int> getOrCreateCategoryId(String name) async {
    final trimmed = name.trim();
    final db = await _db;
    final existing = await db.query(
      'categories',
      columns: ['id'],
      where: 'name = ?',
      whereArgs: [trimmed],
      limit: 1,
    );
    if (existing.isNotEmpty) return existing.first['id'] as int;
    final now = DateTime.now().toIso8601String();
    return db.insert('categories', {
      'name': trimmed,
      'code': 'CAT-${DateTime.now().millisecondsSinceEpoch}',
      'createdAt': now,
    });
  }

  /// Returns brand id, creating a row if the name is new.
  Future<int> getOrCreateBrandId(String name) async {
    final trimmed = name.trim();
    final db = await _db;
    final existing = await db.query(
      'brands',
      columns: ['id'],
      where: 'name = ?',
      whereArgs: [trimmed],
      limit: 1,
    );
    if (existing.isNotEmpty) return existing.first['id'] as int;
    final now = DateTime.now().toIso8601String();
    return db.insert('brands', {
      'name': trimmed,
      'code': 'BR-${DateTime.now().millisecondsSinceEpoch}',
      'createdAt': now,
    });
  }

  /// تلميح واجهة: رموز المنتج تُولَّد تلقائياً (ليست `MAX(id)+1`) — `N{tenantId}-…` فريد.
  String defaultProductCodeDisplayHint() {
    final t = _tenant.activeTenantId.clamp(1, 999999999);
    return 'N$t-…';
  }

  /// @nodoc — للتوافق المؤقت مع شاشات قديمة تعتمد رقماً تقديرياً.
  Future<int> peekNextSkuNumber() async {
    final v = DateTime.now().microsecondsSinceEpoch % 1000000000;
    return v.toInt();
  }

  Future<List<String>> listCategoryNames() async {
    final db = await _db;
    final rows = await db.query('categories',
        columns: ['name'],
        where: 'isActive = 1',
        orderBy: 'name');
    return rows.map((e) => e['name'] as String).toList();
  }

  Future<List<String>> listBrandNames() async {
    final db = await _db;
    final rows = await db.query('brands',
        columns: ['name'],
        where: 'isActive = 1',
        orderBy: 'name');
    return rows.map((e) => e['name'] as String).toList();
  }

  Future<List<Map<String, dynamic>>> listWarehouses() async {
    final db = await _db;
    return db.query('warehouses',
        columns: ['id', 'name'],
        where: 'isActive = 1',
        orderBy: 'isDefault DESC, name');
  }

  /// قوائم أسعار نشطة (إعدادات افتراضية، إلخ).
  Future<List<Map<String, dynamic>>> listPriceListsForSettings() async {
    final db = await _db;
    return db.query(
      'price_lists',
      where: 'isActive = 1',
      orderBy: 'isDefault DESC, name COLLATE NOCASE ASC',
    );
  }

  Future<List<String>> listDistinctSupplierNames() async {
    final db = await _db;
    final rows = await db.rawQuery('''
      SELECT DISTINCT supplierName AS n FROM products
      WHERE supplierName IS NOT NULL AND TRIM(supplierName) != ''
      ORDER BY supplierName
    ''');
    return rows
        .map((e) => (e['n'] as String?)?.trim())
        .whereType<String>()
        .where((s) => s.isNotEmpty)
        .toList();
  }

  Future<List<Map<String, dynamic>>> listUnitTemplatesForSettings() async {
    final db = await _db;
    return db.query('unit_templates', orderBy: 'name COLLATE NOCASE ASC');
  }

  Future<Map<String, dynamic>?> getUnitTemplateById(int id) async {
    final db = await _db;
    final rows = await db.query(
      'unit_templates',
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );
    if (rows.isEmpty) return null;
    return rows.first;
  }

  Future<List<Map<String, dynamic>>> listUnitTemplateConversions(int templateId) async {
    final db = await _db;
    return db.query(
      'unit_template_conversions',
      where: 'templateId = ?',
      whereArgs: [templateId],
      orderBy: 'sortOrder ASC',
    );
  }

  Future<String?> insertUnitTemplate({
    required String name,
    required String baseUnitName,
    required String baseUnitSymbol,
    required bool isActive,
    required List<Map<String, dynamic>> conversions,
  }) async {
    final n = name.trim();
    final bn = baseUnitName.trim();
    final bs = baseUnitSymbol.trim();
    if (n.isEmpty) return 'اسم القالب مطلوب';
    if (bn.isEmpty) return 'اسم الوحدة الأساسية مطلوب';
    if (bs.isEmpty) return 'تمييز الوحدة الأساسية مطلوب';
    for (var i = 0; i < conversions.length; i++) {
      final c = conversions[i];
      final un = (c['unitName'] as String?)?.trim() ?? '';
      final sym = (c['unitSymbol'] as String?)?.trim() ?? '';
      final f = (c['factorToBase'] as num?)?.toDouble() ?? 0;
      if (un.isEmpty || sym.isEmpty) {
        return 'أكمل اسم التمييز لكل وحدة تحويل أو احذف الصف الفارغ';
      }
      if (f <= 0) {
        return 'معامل التحويل يجب أن يكون أكبر من صفر';
      }
    }
    final db = await _db;
    final now = DateTime.now().toIso8601String();
    await db.transaction((txn) async {
      final tid = await txn.insert('unit_templates', {
        'name': n,
        'baseUnitName': bn,
        'baseUnitSymbol': bs,
        'isActive': isActive ? 1 : 0,
        'createdAt': now,
      });
      for (var i = 0; i < conversions.length; i++) {
        final c = conversions[i];
        await txn.insert('unit_template_conversions', {
          'templateId': tid,
          'sortOrder': i,
          'unitName': (c['unitName'] as String).trim(),
          'unitSymbol': (c['unitSymbol'] as String).trim(),
          'factorToBase': (c['factorToBase'] as num).toDouble(),
        });
      }
    });
    return null;
  }

  Future<String?> updateUnitTemplate({
    required int id,
    required String name,
    required String baseUnitName,
    required String baseUnitSymbol,
    required bool isActive,
    required List<Map<String, dynamic>> conversions,
  }) async {
    final n = name.trim();
    final bn = baseUnitName.trim();
    final bs = baseUnitSymbol.trim();
    if (n.isEmpty) return 'اسم القالب مطلوب';
    if (bn.isEmpty) return 'اسم الوحدة الأساسية مطلوب';
    if (bs.isEmpty) return 'تمييز الوحدة الأساسية مطلوب';
    for (final c in conversions) {
      final un = (c['unitName'] as String?)?.trim() ?? '';
      final sym = (c['unitSymbol'] as String?)?.trim() ?? '';
      final f = (c['factorToBase'] as num?)?.toDouble() ?? 0;
      if (un.isEmpty || sym.isEmpty) {
        return 'أكمل اسم التمييز لكل وحدة تحويل أو احذف الصف الفارغ';
      }
      if (f <= 0) {
        return 'معامل التحويل يجب أن يكون أكبر من صفر';
      }
    }
    final db = await _db;
    await db.transaction((txn) async {
      await txn.update(
        'unit_templates',
        {
          'name': n,
          'baseUnitName': bn,
          'baseUnitSymbol': bs,
          'isActive': isActive ? 1 : 0,
        },
        where: 'id = ?',
        whereArgs: [id],
      );
      await txn.delete(
        'unit_template_conversions',
        where: 'templateId = ?',
        whereArgs: [id],
      );
      for (var i = 0; i < conversions.length; i++) {
        final c = conversions[i];
        await txn.insert('unit_template_conversions', {
          'templateId': id,
          'sortOrder': i,
          'unitName': (c['unitName'] as String).trim(),
          'unitSymbol': (c['unitSymbol'] as String).trim(),
          'factorToBase': (c['factorToBase'] as num).toDouble(),
        });
      }
    });
    return null;
  }

  Future<void> deleteUnitTemplate(int id) async {
    final db = await _db;
    await db.delete('unit_templates', where: 'id = ?', whereArgs: [id]);
  }

  /// معلومات مخزون وقواعد البيع (للتحقق من الكمية في شاشة البيع).
  Future<Map<String, dynamic>?> getProductById(int id) async {
    final db = await _db;
    final rows = await db.query(
      'products',
      columns: [
        'id',
        'name',
        'qty',
        'trackInventory',
        'allowNegativeStock',
        'sellPrice',
        'minSellPrice',
        'stockBaseKind',
      ],
      where: 'id = ? AND isActive = 1',
      whereArgs: [id],
      limit: 1,
    );
    if (rows.isEmpty) return null;
    return rows.first;
  }

  /// تفاصيل المنتج لإظهارها في شاشة التفاصيل (إدارة المنتجات).
  Future<Map<String, dynamic>?> getProductDetailsById(int id) async {
    final db = await _db;
    final rows = await db.rawQuery(
      '''
      SELECT
        p.*,
        c.name AS categoryName,
        b.name AS brandName
      FROM products p
      LEFT JOIN categories c ON c.id = p.categoryId
      LEFT JOIN brands b ON b.id = p.brandId
      WHERE p.id = ? AND p.isActive = 1
      LIMIT 1
      ''',
      [id],
    );
    if (rows.isEmpty) return null;
    return rows.first;
  }

  Future<List<Map<String, dynamic>>> getWarehouseStockForProduct(
    int productId,
  ) async {
    final db = await _db;
    final rows = await db.rawQuery(
      '''
      SELECT w.id AS warehouseId, w.name AS warehouseName, s.qty AS qty
      FROM product_warehouse_stock s
      LEFT JOIN warehouses w ON w.id = s.warehouseId
      WHERE s.productId = ?
      ORDER BY w.name COLLATE NOCASE
      ''',
      [productId],
    );
    return rows;
  }

  Future<List<Map<String, dynamic>>> getRecentProductBatches(
    int productId, {
    int limit = 20,
  }) async {
    final db = await _db;
    final rows = await db.rawQuery(
      '''
      SELECT batchNumber, qty, unitCost, createdAt
      FROM product_batches
      WHERE productId = ?
      ORDER BY createdAt DESC, id DESC
      LIMIT ?
      ''',
      [productId, limit],
    );
    return rows;
  }

  Future<List<Map<String, dynamic>>> getRecentProductSales(
    int productId, {
    int limit = 20,
  }) async {
    final db = await _db;
    final rows = await db.rawQuery(
      '''
      SELECT inv.id AS invoiceId,
             inv.date AS date,
             ii.quantity AS qty,
             ii.total AS total,
             IFNULL(inv.isReturned, 0) AS isReturned
      FROM invoice_items ii
      INNER JOIN invoices inv ON inv.id = ii.invoiceId
      WHERE ii.productId = ?
      ORDER BY inv.date DESC, inv.id DESC
      LIMIT ?
      ''',
      [productId, limit],
    );
    return rows;
  }

  /// تثبيت/إزالة تثبيت منتج — يظهر في بطاقة لوحة التحكم للوصول السريع.
  Future<void> setProductPinned(int productId, bool pinned) async {
    final db = await _db;
    await db.update(
      'products',
      {
        'isPinned': pinned ? 1 : 0,
        'pinnedAt': pinned ? DateTime.now().millisecondsSinceEpoch : null,
        'updatedAt': DateTime.now().toIso8601String(),
      },
      where: 'id = ?',
      whereArgs: [productId],
    );
    CloudSyncService.instance.scheduleSyncSoon();
    pinnedVersion.value = pinnedVersion.value + 1;
  }

  /// المنتجات المثبّتة بترتيب آخر تثبيت (الأحدث أولاً).
  Future<List<Map<String, dynamic>>> getPinnedProducts() async {
    final db = await _db;
    // الملابس لا تستخدم products.qty؛ نعرض كمية “القطعة” بمجموع variants إن وجد.
    // لا نؤثر على باقي المنتجات (تبقى qty كما هي).
    final tid = _tenant.activeTenantId;
    return db.rawQuery(
      '''
      SELECT
        p.*,
        COALESCE(v.sumQty, p.qty) AS qty
      FROM products p
      LEFT JOIN (
        SELECT productId, SUM(quantity) AS sumQty
        FROM product_variants
        WHERE tenantId = ? AND deleted_at IS NULL
        GROUP BY productId
      ) v ON v.productId = p.id
      WHERE p.isPinned = 1 AND p.isActive = 1 AND p.tenantId = ?
      ORDER BY p.pinnedAt DESC
      ''',
      [tid, tid],
    );
  }

  /// تحديث سريع لحقول المنتج الأساسية (لشاشة التعديل السريعة).
  Future<void> updateProductBasic({
    required int productId,
    required String name,
    String? barcode,
    required double buyPrice,
    required double sellPrice,
    required double minSellPrice,
    required double qty,
    required double lowStockThreshold,
    required bool trackInventory,
    int? stockBaseKind,
  }) async {
    final db = await _db;
    final bc = barcode?.trim();
    if (bc != null && bc.isNotEmpty) {
      if (await isBarcodeTakenAnywhere(bc, excludeProductId: productId)) {
        throw StateError('duplicate_barcode');
      }
    }

    final status = qty <= lowStockThreshold ? 'low' : 'instock';
    final patch = <String, Object?>{
      'name': name.trim(),
      'barcode': (bc != null && bc.isNotEmpty) ? bc : null,
      'buyPrice': buyPrice,
      'sellPrice': sellPrice,
      'minSellPrice': minSellPrice,
      'qty': trackInventory ? qty : 0.0,
      'lowStockThreshold': trackInventory ? lowStockThreshold : 0.0,
      'status': trackInventory ? status : 'instock',
      'trackInventory': trackInventory ? 1 : 0,
      'updatedAt': DateTime.now().toIso8601String(),
    };
    if (stockBaseKind != null) {
      patch['stockBaseKind'] = stockBaseKind.clamp(0, 1);
    }
    await db.transaction((txn) async {
      await txn.update(
        'products',
        patch,
        where: 'id = ? AND isActive = 1',
        whereArgs: [productId],
      );
      await _enqueueProductMutation(txn, productId, 'UPDATE');
    });
    CloudSyncService.instance.scheduleSyncSoon();
  }

  /// حذف منطقي: تعطيل المنتج بدل حذفه لتفادي كسر روابط الفواتير.
  Future<void> deactivateProduct(int productId) async {
    final db = await _db;
    await db.transaction((txn) async {
      await txn.update(
        'products',
        {
          'isActive': 0,
          'updatedAt': DateTime.now().toIso8601String(),
        },
        where: 'id = ?',
        whereArgs: [productId],
      );
      await _enqueueProductMutation(txn, productId, 'UPDATE');
    });
    CloudSyncService.instance.scheduleSyncSoon();
  }

  Future<bool> isBarcodeTaken(String barcode) async {
    final bc = barcode.trim();
    if (bc.isEmpty) return false;
    final db = await _db;
    final rows = await db.query(
      'products',
      columns: ['id'],
      where: 'barcode = ?',
      whereArgs: [bc],
      limit: 1,
    );
    return rows.isNotEmpty;
  }

  Future<bool> isVariantBarcodeTaken(
    String barcode, {
    int? excludeVariantId,
    DatabaseExecutor? executor,
  }) async {
    final bc = barcode.trim();
    if (bc.isEmpty) return false;
    final e = executor ?? await _db;
    final rows = await e.query(
      'product_unit_variants',
      columns: ['id'],
      where: excludeVariantId == null
          ? 'barcode = ? AND isActive = 1'
          : 'barcode = ? AND isActive = 1 AND id != ?',
      whereArgs:
          excludeVariantId == null ? [bc] : [bc, excludeVariantId],
      limit: 1,
    );
    return rows.isNotEmpty;
  }

  Future<bool> isBarcodeTakenAnywhere(
    String barcode, {
    int? excludeProductId,
    int? excludeVariantId,
    DatabaseExecutor? executor,
  }) async {
    final bc = barcode.trim();
    if (bc.isEmpty) return false;
    final e = executor ?? await _db;
    final prod = await e.query(
      'products',
      columns: ['id'],
      where: excludeProductId == null ? 'barcode = ?' : 'barcode = ? AND id != ?',
      whereArgs: excludeProductId == null ? [bc] : [bc, excludeProductId],
      limit: 1,
    );
    if (prod.isNotEmpty) return true;
    return isVariantBarcodeTaken(
      bc,
      excludeVariantId: excludeVariantId,
      executor: e,
    );
  }

  /// أول منتج يملك هذا الباركود (جدول منتج أو وحدات بيع)، لاستثناء [excludeProductId] عند التحرير.
  Future<int?> findConflictingProductIdForBarcode(
    String barcode, {
    int? excludeProductId,
  }) async {
    final bc = barcode.trim().toUpperCase();
    if (bc.isEmpty) return null;
    final db = await _db;
    final prod = await db.query(
      'products',
      columns: ['id'],
      where: excludeProductId == null
          ? 'UPPER(IFNULL(barcode, "")) = ? AND isActive = 1'
          : 'UPPER(IFNULL(barcode, "")) = ? AND isActive = 1 AND id != ?',
      whereArgs:
          excludeProductId == null ? [bc] : [bc, excludeProductId],
      limit: 1,
    );
    if (prod.isNotEmpty) return prod.first['id'] as int?;
    final vRows = await db.rawQuery(
      '''
      SELECT v.productId AS pid
      FROM product_unit_variants v
      JOIN products p ON p.id = v.productId
      WHERE UPPER(IFNULL(v.barcode, "")) = ?
        AND v.isActive = 1
        AND p.isActive = 1
      LIMIT 1
      ''',
      [bc],
    );
    if (vRows.isEmpty) return null;
    final pid = (vRows.first['pid'] as num?)?.toInt();
    if (excludeProductId != null && pid == excludeProductId) return null;
    return pid;
  }

  Future<Map<String, dynamic>?> findProductByBarcode(String barcode) async {
    final bc = barcode.trim();
    if (bc.isEmpty) return null;
    final db = await _db;
    final rows = await db.rawQuery(
      '''
      SELECT id, name, barcode, sellPrice, minSellPrice, buyPrice,
             qty, trackInventory, allowNegativeStock, stockBaseKind
      FROM products
      WHERE barcode = ? AND isActive = 1
      LIMIT 1
      ''',
      [bc],
    );
    if (rows.isEmpty) return null;
    return rows.first;
  }

  /// Resolve a scanned barcode to either:
  /// - a unit-variant barcode (preferred), or
  /// - the base product barcode.
  ///
  /// Returns:
  /// - `product`: product row (same shape as [findProductByBarcode])
  /// - `variant`: nullable variant row
  ///   `{id, productId, unitName, unitSymbol, factorToBase, barcode, sellPrice, minSellPrice}`
  Future<Map<String, dynamic>?> resolveProductByAnyBarcode(String barcode) async {
    final bc = barcode.trim();
    if (bc.isEmpty) return null;
    final db = await _db;

    // 0) Clothing variant barcode (color+size).
    try {
      final tid = _tenant.activeTenantId;
      final rows = await db.rawQuery(
        '''
        SELECT
          v.id AS clothingVariantId,
          v.productId AS productId,
          v.colorId AS colorId,
          v.size AS size,
          v.quantity AS quantity,
          v.barcode AS variantBarcode,
          v.sku AS sku,
          c.name AS colorName,
          c.hexCode AS colorHex,
          p.id AS id,
          p.name AS name,
          p.barcode AS barcode,
          p.sellPrice AS sellPrice,
          p.minSellPrice AS minSellPrice,
          p.buyPrice AS buyPrice,
          p.qty AS qty,
          p.trackInventory AS trackInventory,
          p.allowNegativeStock AS allowNegativeStock,
          p.stockBaseKind AS stockBaseKind
        FROM product_variants v
        INNER JOIN product_colors c ON c.id = v.colorId
        INNER JOIN products p ON p.id = v.productId
        WHERE v.deleted_at IS NULL
          AND c.deleted_at IS NULL
          AND p.isActive = 1
          AND v.tenantId = ?
          AND c.tenantId = ?
          AND UPPER(TRIM(v.barcode)) = UPPER(TRIM(?))
        LIMIT 1
        ''',
        [tid, tid, bc],
      );
      if (rows.isNotEmpty) {
        final r = rows.first;
        final product = <String, dynamic>{
          'id': r['id'],
          'name': r['name'],
          'barcode': r['barcode'],
          'sellPrice': r['sellPrice'],
          'minSellPrice': r['minSellPrice'],
          'buyPrice': r['buyPrice'],
          'qty': r['qty'],
          'trackInventory': r['trackInventory'],
          'allowNegativeStock': r['allowNegativeStock'],
          'stockBaseKind': r['stockBaseKind'],
        };
        final clothingVariant = <String, dynamic>{
          'id': r['clothingVariantId'],
          'productId': r['productId'],
          'colorId': r['colorId'],
          'size': r['size'],
          'quantity': r['quantity'],
          'barcode': r['variantBarcode'],
          'sku': r['sku'],
          'colorName': r['colorName'],
          'colorHex': r['colorHex'],
        };
        return {'product': product, 'variant': null, 'clothingVariant': clothingVariant};
      }
    } catch (_) {}

    // 1) Variant barcode match (hybrid recommended).
    try {
      final varRows = await db.rawQuery(
        '''
        SELECT
          v.id AS variantId,
          v.productId AS productId,
          v.unitName AS unitName,
          v.unitSymbol AS unitSymbol,
          v.factorToBase AS factorToBase,
          v.barcode AS variantBarcode,
          v.sellPrice AS variantSellPrice,
          v.minSellPrice AS variantMinSellPrice,
          p.id AS id,
          p.name AS name,
          p.barcode AS barcode,
          p.sellPrice AS sellPrice,
          p.minSellPrice AS minSellPrice,
          p.buyPrice AS buyPrice,
          p.qty AS qty,
          p.trackInventory AS trackInventory,
          p.allowNegativeStock AS allowNegativeStock,
          p.stockBaseKind AS stockBaseKind
        FROM product_unit_variants v
        JOIN products p ON p.id = v.productId
        WHERE v.isActive = 1
          AND p.isActive = 1
          AND v.barcode = ?
        LIMIT 1
        ''',
        [bc],
      );
      if (varRows.isNotEmpty) {
        final r = varRows.first;
        final product = <String, dynamic>{
          'id': r['id'],
          'name': r['name'],
          'barcode': r['barcode'],
          'sellPrice': r['sellPrice'],
          'minSellPrice': r['minSellPrice'],
          'buyPrice': r['buyPrice'],
          'qty': r['qty'],
          'trackInventory': r['trackInventory'],
          'allowNegativeStock': r['allowNegativeStock'],
          'stockBaseKind': r['stockBaseKind'],
        };
        final variant = <String, dynamic>{
          'id': r['variantId'],
          'productId': r['productId'],
          'unitName': r['unitName'],
          'unitSymbol': r['unitSymbol'],
          'factorToBase': r['factorToBase'],
          'barcode': r['variantBarcode'],
          'sellPrice': r['variantSellPrice'],
          'minSellPrice': r['variantMinSellPrice'],
        };
        return {'product': product, 'variant': variant, 'clothingVariant': null};
      }
    } catch (_) {}

    // 2) Base product barcode match.
    final prod = await findProductByBarcode(bc);
    if (prod == null) return null;
    return {'product': prod, 'variant': null, 'clothingVariant': null};
  }

  Future<List<Map<String, dynamic>>> listActiveUnitVariantsForProduct(int productId) async {
    final db = await _db;
    return db.query(
      'product_unit_variants',
      where: 'productId = ? AND isActive = 1',
      whereArgs: [productId],
      orderBy: 'isDefault DESC, id ASC',
    );
  }

  Future<int> insertProductUnitVariant({
    required int productId,
    required String unitName,
    String? unitSymbol,
    required double factorToBase,
    String? barcode,
    double? sellPrice,
    double? minSellPrice,
    bool isDefault = false,
    bool isActive = true,
  }) async {
    final db = await _db;
    final now = DateTime.now().toIso8601String();
    String? nz(String? s) {
      final t = s?.trim();
      if (t == null || t.isEmpty) return null;
      return t;
    }
    if (!(factorToBase > 0)) {
      throw StateError('bad_unit_factor');
    }
    final bc = nz(barcode);
    if (bc != null && await isBarcodeTakenAnywhere(bc, excludeProductId: productId)) {
      throw StateError('duplicate_barcode');
    }
    final id = await db.insert('product_unit_variants', {
      'productId': productId,
      'unitName': unitName.trim(),
      'unitSymbol': nz(unitSymbol),
      'factorToBase': factorToBase,
      'barcode': nz(barcode),
      'sellPrice': sellPrice,
      'minSellPrice': minSellPrice,
      'isDefault': isDefault ? 1 : 0,
      'isActive': isActive ? 1 : 0,
      'createdAt': now,
    });
    CloudSyncService.instance.scheduleSyncSoon();
    return id;
  }

  Future<void> updateProductUnitVariant({
    required int id,
    String? unitName,
    String? unitSymbol,
    double? factorToBase,
    String? barcode,
    double? sellPrice,
    double? minSellPrice,
    bool? isDefault,
    bool? isActive,
  }) async {
    final db = await _db;
    final m = <String, Object?>{};
    String? nz(String? s) {
      final t = s?.trim();
      if (t == null || t.isEmpty) return null;
      return t;
    }
    if (factorToBase != null && !(factorToBase > 0)) {
      throw StateError('bad_unit_factor');
    }
    if (unitName != null) m['unitName'] = unitName.trim();
    if (unitSymbol != null) m['unitSymbol'] = nz(unitSymbol);
    if (factorToBase != null) m['factorToBase'] = factorToBase;
    if (barcode != null) {
      final bc = nz(barcode);
      m['barcode'] = bc;
      if (bc != null) {
        final rows = await db.query(
          'product_unit_variants',
          columns: ['productId'],
          where: 'id = ?',
          whereArgs: [id],
          limit: 1,
        );
        final pid = rows.isEmpty
            ? null
            : (rows.first['productId'] as num?)?.toInt();
        if (pid != null &&
            await isBarcodeTakenAnywhere(
              bc,
              excludeProductId: pid,
              excludeVariantId: id,
            )) {
          throw StateError('duplicate_barcode');
        }
      }
    }
    if (sellPrice != null) m['sellPrice'] = sellPrice;
    if (minSellPrice != null) m['minSellPrice'] = minSellPrice;
    if (isDefault != null) m['isDefault'] = isDefault ? 1 : 0;
    if (isActive != null) m['isActive'] = isActive ? 1 : 0;
    if (m.isEmpty) return;
    await db.update('product_unit_variants', m, where: 'id = ?', whereArgs: [id]);
    CloudSyncService.instance.scheduleSyncSoon();
  }

  /// Inserts one product. [barcode] may be null (SQLite allows multiple NULLs on UNIQUE).
  Future<int> insertProduct({
    required String name,
    String? barcode,
    String? productCode,
    int? categoryId,
    int? brandId,
    int? tenantId,
    required double buyPrice,
    required double sellPrice,
    double? minSellPrice,
    required double qty,
    required double lowStockThreshold,
    String? description,
    String? imagePath,
    String? imageUrl,
    String? internalNotes,
    String? tags,
    String? saleUnit,
    String? supplierName,
    double taxPercent = 0,
    double discountPercent = 0,
    double discountAmount = 0,
    String? buyConversionLabel,
    int trackInventory = 1,
    int allowNegativeStock = 0,
    String? supplierItemCode,
    double? netWeightGrams,
    String? manufacturingDate,
    String? expiryDate,
    String? grade,
    int? expiryAlertDaysBefore,
  }) async {
    final db = await _db;
    final now = DateTime.now().toIso8601String();
    final minP = minSellPrice ?? buyPrice;
    final status = qty <= lowStockThreshold ? 'low' : 'instock';
    final tid = (tenantId ?? _tenant.activeTenantId).clamp(1, 999999999);

    String? bc;
    final b = barcode?.trim();
    if (b != null && b.isNotEmpty) {
      if (await isBarcodeTakenAnywhere(b)) {
        throw StateError('duplicate_barcode');
      }
      bc = b;
    }

    final requestedCode = productCode?.trim() ?? '';
    final code = requestedCode.isNotEmpty
        ? requestedCode
        : await _allocateTenantScopedProductCode(tid, db);
    final clash = await db.query(
      'products',
      columns: ['id'],
      where: 'tenantId = ? AND productCode = ?',
      whereArgs: [tid, code],
      limit: 1,
    );
    if (clash.isNotEmpty) {
      throw StateError('duplicate_product_code');
    }

    String? nz(String? s) {
      final t = s?.trim();
      if (t == null || t.isEmpty) return null;
      return t;
    }

    final id = await db.transaction<int>((txn) async {
      final newId = await txn.insert('products', {
        'tenantId': tid,
        'name': name.trim(),
        'barcode': bc,
        'productCode': code,
        'categoryId': categoryId,
        'brandId': brandId,
        'buyPrice': buyPrice,
        'sellPrice': sellPrice,
        'minSellPrice': minP,
        'qty': qty,
        'lowStockThreshold': lowStockThreshold,
        'status': status,
        'createdAt': now,
        'updatedAt': now,
        'description': nz(description),
        'imagePath': nz(imagePath),
        'imageUrl': nz(imageUrl),
        'internalNotes': nz(internalNotes),
        'tags': nz(tags),
        'saleUnit': nz(saleUnit),
        'supplierName': nz(supplierName),
        'taxPercent': taxPercent,
        'discountPercent': discountPercent,
        'discountAmount': discountAmount,
        'buyConversionLabel': nz(buyConversionLabel),
        'trackInventory': trackInventory,
        'allowNegativeStock': allowNegativeStock,
        'supplierItemCode': nz(supplierItemCode),
        'netWeightGrams': netWeightGrams,
        'manufacturingDate': nz(manufacturingDate),
        'expiryDate': nz(expiryDate),
        'grade': nz(grade),
        'expiryAlertDaysBefore': expiryAlertDaysBefore,
        'global_id': const Uuid().v4(),
      });
      await _enqueueProductMutation(txn, newId, 'INSERT');
      return newId;
    });

    // وحدة افتراضية للبيع/المسح (factor=1). تُكمّل مهاجرات قواعد قديمة لكنها لا تغطي المنتجات الجديدة بعد إنشاء الجدول.
    try {
      final su = nz(saleUnit);
      final unitName = (su == null || su.isEmpty) ? 'قطعة' : su;
      await db.insert(
        'product_unit_variants',
        {
          'productId': id,
          'unitName': unitName,
          'unitSymbol': null,
          'factorToBase': 1.0,
          'barcode': null,
          'sellPrice': null,
          'minSellPrice': null,
          'isDefault': 1,
          'isActive': 1,
          'createdAt': now,
        },
      );
    } catch (_) {}

    if (bc == null) {
      await _ensureInternalBarcodeIfMissing(db, id);
    }

    CloudSyncService.instance.scheduleSyncSoon();
    return id;
  }

  Future<void> upsertProductWarehouseStock({
    required int productId,
    required int warehouseId,
    required double qty,
    DatabaseExecutor? executor,
    int? tenantId,
  }) async {
    final e = executor ?? await _db;
    final tid = (tenantId ?? _tenant.activeTenantId).clamp(1, 999999999);
    final now = DateTime.now().toIso8601String();
    await e.insert(
      'product_warehouse_stock',
      {
        'tenantId': tid,
        'productId': productId,
        'warehouseId': warehouseId,
        'qty': qty,
        'updatedAt': now,
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    if (executor == null) {
      CloudSyncService.instance.scheduleSyncSoon();
    }
  }

  /// يُدخل المنتج، [stockBaseKind]، وحدات البيع (الافتراضي + الإضافية)، ومخزون المخزن
  /// في **معاملة واحدة** — تراجع تلقائي عند أي فشل.
  Future<int> insertProductComplete({
    required String name,
    String? barcode,
    int? categoryId,
    int? brandId,
    int? tenantId,
    required double buyPrice,
    required double sellPrice,
    double? minSellPrice,
    required double qty,
    required double lowStockThreshold,
    String? description,
    String? imagePath,
    String? imageUrl,
    String? internalNotes,
    String? tags,
    String? saleUnit,
    String? supplierName,
    double taxPercent = 0,
    double discountPercent = 0,
    double discountAmount = 0,
    String? buyConversionLabel,
    int trackInventory = 1,
    int allowNegativeStock = 0,
    String? supplierItemCode,
    double? netWeightGrams,
    String? manufacturingDate,
    String? expiryDate,
    String? grade,
    int? expiryAlertDaysBefore,
    required int stockBaseKind,
    List<NewProductExtraUnit> extraUnits = const [],
    int? warehouseId,
    /// `1` = صف خدمة فنية (بدون مخزون؛ يُعرَض في البيع ككمية ثابتة 1).
    int isService = 0,
    String? serviceKind,
  }) async {
    final db = await _db;
    final now = DateTime.now().toIso8601String();
    final minP0 = minSellPrice ?? buyPrice;
    final buyN = IqdMoney.normalizeDinar(buyPrice);
    final sellN = IqdMoney.normalizeDinar(sellPrice);
    final minN = IqdMoney.normalizeDinar(minP0);
    final tid = (tenantId ?? _tenant.activeTenantId).clamp(1, 999999999);
    final k = stockBaseKind.clamp(0, 1);
    final svc = isService != 0;
    final storedTrack = svc ? 0 : (trackInventory != 0 ? 1 : 0);
    final tiEffective = storedTrack != 0;
    final qtyF = tiEffective ? qty : 0.0;
    final lowF = tiEffective ? lowStockThreshold : 0.0;
    final status =
        !tiEffective ? 'instock' : (qtyF <= lowF ? 'low' : 'instock');
    String? bc;
    final b0 = barcode?.trim();
    if (b0 != null && b0.isNotEmpty) {
      bc = b0;
    }

    String? nz(String? s) {
      final t = s?.trim();
      if (t == null || t.isEmpty) return null;
      return t;
    }

    // أوحد أسماء الوحدات الظاهرة في الواجهة
    for (final u in extraUnits) {
      if (u.unitName.trim().isEmpty) continue;
      if (!(u.factorToBase > 0)) {
        throw StateError('bad_unit_factor');
      }
    }
    String? nzb(String? s) {
      final t = s?.trim();
      if (t == null || t.isEmpty) return null;
      return t;
    }

    final bcs = <String>[];
    if (bc != null) bcs.add(bc);
    for (final u in extraUnits) {
      if (u.unitName.trim().isEmpty) continue;
      final b = nzb(u.barcode);
      if (b == null) continue;
      bcs.add(b);
    }
    final seenB = <String>{};
    for (final s in bcs) {
      if (!seenB.add(s)) {
        throw StateError('duplicate_barcode');
      }
    }

    final newId = await db.transaction<int>((txn) async {
      if (bc != null && extraUnits.any((u) => nzb(u.barcode) == bc)) {
        throw StateError('duplicate_barcode');
      }
      if (bc != null) {
        if (await isBarcodeTakenAnywhere(bc, executor: txn)) {
          throw StateError('duplicate_barcode');
        }
      }
      for (final u in extraUnits) {
        if (u.unitName.trim().isEmpty) continue;
        final ub = nzb(u.barcode);
        if (ub == null) continue;
        if (await isBarcodeTakenAnywhere(ub, executor: txn)) {
          throw StateError('duplicate_barcode');
        }
      }

      final productCode = await _allocateTenantScopedProductCode(tid, txn);
      final id = await txn.insert('products', {
        'tenantId': tid,
        'name': name.trim(),
        'barcode': bc,
        'productCode': productCode,
        'categoryId': categoryId,
        'brandId': brandId,
        'stockBaseKind': k,
        'buyPrice': buyN,
        'sellPrice': sellN,
        'minSellPrice': minN,
        'qty': qtyF,
        'lowStockThreshold': lowF,
        'status': status,
        'createdAt': now,
        'updatedAt': now,
        'description': nz(description),
        'imagePath': nz(imagePath),
        'imageUrl': nz(imageUrl),
        'internalNotes': nz(internalNotes),
        'tags': nz(tags),
        'saleUnit': nz(saleUnit),
        'supplierName': nz(supplierName),
        'taxPercent': taxPercent,
        'discountPercent': discountPercent,
        'discountAmount': discountAmount,
        'buyConversionLabel': nz(buyConversionLabel),
        'trackInventory': storedTrack,
        'allowNegativeStock': allowNegativeStock,
        'supplierItemCode': nz(supplierItemCode),
        'netWeightGrams': netWeightGrams,
        'manufacturingDate': nz(manufacturingDate),
        'expiryDate': nz(expiryDate),
        'grade': nz(grade),
        'expiryAlertDaysBefore': expiryAlertDaysBefore,
        'isService': svc ? 1 : 0,
        'serviceKind': nz(serviceKind),
        'global_id': const Uuid().v4(),
      });
      await _enqueueProductMutation(txn, id, 'INSERT');

      final defaultUnitName = k == 1 ? 'كيلوغرام' : 'قطعة';
      await txn.insert('product_unit_variants', {
        'productId': id,
        'unitName': defaultUnitName,
        'unitSymbol': null,
        'factorToBase': 1.0,
        'barcode': null,
        'sellPrice': null,
        'minSellPrice': null,
        'isDefault': 1,
        'isActive': 1,
        'createdAt': now,
      });

      for (final u in extraUnits) {
        if (u.unitName.trim().isEmpty) continue;
        final s = u.sellPrice == null
            ? null
            : IqdMoney.normalizeDinar(u.sellPrice!);
        final m = u.minSellPrice == null
            ? null
            : IqdMoney.normalizeDinar(u.minSellPrice!);
        await txn.insert('product_unit_variants', {
          'productId': id,
          'unitName': u.unitName.trim(),
          'unitSymbol': nz(u.unitSymbol),
          'factorToBase': u.factorToBase,
          'barcode': nz(u.barcode),
          'sellPrice': s,
          'minSellPrice': m,
          'isDefault': 0,
          'isActive': 1,
          'createdAt': now,
        });
      }

      if (bc == null) {
        await _ensureInternalBarcodeIfMissing(txn, id);
      }

      if (warehouseId != null && tiEffective && qtyF > 0) {
        await upsertProductWarehouseStock(
          productId: id,
          warehouseId: warehouseId,
          qty: qtyF,
          executor: txn,
          tenantId: tid,
        );
      }

      return id;
    });
    CloudSyncService.instance.scheduleSyncSoon();
    return newId;
  }

  Future<String> _allocateTenantScopedProductCode(
    int tenantId,
    DatabaseExecutor e,
  ) async {
    final t = tenantId.clamp(1, 999999999);
    for (var i = 0; i < 200; i++) {
      final suffix = i == 0
          ? DateTime.now().microsecondsSinceEpoch
          : '${DateTime.now().microsecondsSinceEpoch}-$i';
      final code = 'N$t-$suffix';
      final rows = await e.query(
        'products',
        columns: ['id'],
        where: 'tenantId = ? AND productCode = ?',
        whereArgs: [t, code],
        limit: 1,
      );
      if (rows.isEmpty) return code;
    }
    throw StateError('تعذر توليد رمز منتج فريد. حاول مجدداً.');
  }

  Future<void> _enqueueProductMutation(DatabaseExecutor txn, int productId, String operation) async {
    final rows = await txn.rawQuery('''
      SELECT p.*, 
             c.global_id AS category_global_id,
             b.global_id AS brand_global_id
      FROM products p
      LEFT JOIN categories c ON p.categoryId = c.id
      LEFT JOIN brands b ON p.brandId = b.id
      WHERE p.id = ?
      LIMIT 1
    ''', [productId]);
    
    if (rows.isEmpty) return;
    final payload = Map<String, dynamic>.from(rows.first);
    var globalId = payload['global_id'] as String?;
    // Backfill global_id for legacy rows that lack one so the
    // mutation can be enqueued for cloud sync.
    if (globalId == null || globalId.trim().isEmpty) {
      globalId = const Uuid().v4();
      await txn.update(
        'products',
        {'global_id': globalId},
        where: 'id = ?',
        whereArgs: [productId],
      );
      payload['global_id'] = globalId;
    }
    
    await SyncQueueService.instance.enqueueMutation(
      txn,
      entityType: 'product',
      operation: operation,
      globalId: globalId,
      payload: payload,
    );
  }
}

