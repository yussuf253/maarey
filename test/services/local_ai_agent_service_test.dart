import 'package:flutter_test/flutter_test.dart';
import 'package:naboo/services/local_ai_agent_service.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class _NoopLanguageModel implements LocalAiLanguageModel {
  const _NoopLanguageModel();

  @override
  Future<String?> rewrite({
    required String question,
    required AiAgentMessage factualMessage,
  }) async {
    return null;
  }
}

void main() {
  late Database db;
  late LocalAiAgentService agent;

  setUp(() async {
    sqfliteFfiInit();
    db = await databaseFactoryFfi.openDatabase(inMemoryDatabasePath);
    await _createSchema(db);
    await _seedStore(db);
    agent = LocalAiAgentService(
      databaseProvider: () async => db,
      tenantIdProvider: () async => 1,
      languageModel: const _NoopLanguageModel(),
      now: () => DateTime(2026, 8, 15, 12),
    );
  });

  tearDown(() async {
    await db.close();
  });

  test('answers top product questions from current-month sales', () async {
    final answer = await agent.ask('Which product performed this month?');

    expect(answer.intent, AiAgentIntent.topProducts);
    expect(answer.answer, contains('Coffee Beans'));
    expect(answer.insights.first.label, 'Coffee Beans');
    expect(answer.insights.first.value, contains('300,000'));
    expect(answer.dataSources, contains('invoice_items'));
  });

  test('detects shortage risk from recent sales velocity', () async {
    final answer = await agent.ask('what products will run out soon?');

    expect(answer.intent, AiAgentIntent.shortageRisk);
    expect(answer.answer, contains('Coffee Beans'));
    expect(answer.insights.first.severity, AiInsightSeverity.critical);
    expect(answer.insights.first.detail, contains('طلب مقترح'));
  });

  test(
    'combines shortage and performance signals for recommendations',
    () async {
      final answer = await agent.ask('recommend what to buy');

      expect(answer.intent, AiAgentIntent.recommendations);
      expect(answer.insights.first.label, contains('Coffee Beans'));
      expect(answer.confidence, greaterThan(0.8));
    },
  );
}

Future<void> _createSchema(Database db) async {
  await db.execute('''
    CREATE TABLE invoices (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      tenantId INTEGER NOT NULL,
      date TEXT NOT NULL,
      type INTEGER NOT NULL,
      total REAL NOT NULL DEFAULT 0,
      isReturned INTEGER NOT NULL DEFAULT 0,
      deleted_at TEXT
    )
  ''');
  await db.execute('''
    CREATE TABLE invoice_items (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      invoiceId INTEGER NOT NULL,
      productId INTEGER,
      productName TEXT,
      quantity REAL NOT NULL DEFAULT 0,
      baseQty REAL,
      total REAL NOT NULL DEFAULT 0,
      unitCost REAL,
      deleted_at TEXT
    )
  ''');
  await db.execute('''
    CREATE TABLE products (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      tenantId INTEGER NOT NULL,
      name TEXT NOT NULL,
      buyPrice REAL NOT NULL DEFAULT 0,
      qty REAL NOT NULL DEFAULT 0,
      lowStockThreshold REAL NOT NULL DEFAULT 0,
      isActive INTEGER NOT NULL DEFAULT 1,
      trackInventory INTEGER NOT NULL DEFAULT 1,
      allowNegativeStock INTEGER NOT NULL DEFAULT 0,
      deleted_at TEXT
    )
  ''');
}

Future<void> _seedStore(Database db) async {
  await db.insert('products', {
    'id': 1,
    'tenantId': 1,
    'name': 'Coffee Beans',
    'buyPrice': 8000,
    'qty': 2,
    'lowStockThreshold': 5,
  });
  await db.insert('products', {
    'id': 2,
    'tenantId': 1,
    'name': 'Tea Box',
    'buyPrice': 3000,
    'qty': 40,
    'lowStockThreshold': 10,
  });

  await db.insert('invoices', {
    'id': 1,
    'tenantId': 1,
    'date': DateTime(2026, 8, 10).toIso8601String(),
    'type': 0,
    'total': 330000,
    'isReturned': 0,
  });
  await db.insert('invoice_items', {
    'invoiceId': 1,
    'productId': 1,
    'productName': 'Coffee Beans',
    'quantity': 30,
    'baseQty': 30,
    'total': 300000,
    'unitCost': 8000,
  });
  await db.insert('invoice_items', {
    'invoiceId': 1,
    'productId': 2,
    'productName': 'Tea Box',
    'quantity': 10,
    'baseQty': 10,
    'total': 30000,
    'unitCost': 3000,
  });
}
