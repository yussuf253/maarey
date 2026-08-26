import 'dart:math' as math;

import 'package:sqflite/sqflite.dart';

import '../utils/iraqi_currency_format.dart';
import 'database_helper.dart';
import 'tenant_context_service.dart';

enum AiAgentIntent {
  salesSummary,
  topProducts,
  shortageRisk,
  recommendations,
  lowStock,
  help,
}

class AiAgentMessage {
  const AiAgentMessage({
    required this.intent,
    required this.answer,
    required this.insights,
    required this.actions,
    this.dataSources = const [],
    this.confidence = 1,
  });

  final AiAgentIntent intent;
  final String answer;
  final List<AiAgentInsight> insights;
  final List<String> actions;
  final List<String> dataSources;
  final double confidence;

  AiAgentMessage copyWith({
    AiAgentIntent? intent,
    String? answer,
    List<AiAgentInsight>? insights,
    List<String>? actions,
    List<String>? dataSources,
    double? confidence,
  }) {
    return AiAgentMessage(
      intent: intent ?? this.intent,
      answer: answer ?? this.answer,
      insights: insights ?? this.insights,
      actions: actions ?? this.actions,
      dataSources: dataSources ?? this.dataSources,
      confidence: confidence ?? this.confidence,
    );
  }
}

class AiAgentInsight {
  const AiAgentInsight({
    required this.label,
    required this.value,
    this.detail,
    this.severity = AiInsightSeverity.neutral,
  });

  final String label;
  final String value;
  final String? detail;
  final AiInsightSeverity severity;
}

enum AiInsightSeverity { neutral, positive, warning, critical }

class AiDateWindow {
  const AiDateWindow({
    required this.label,
    required this.from,
    required this.to,
  });

  final String label;
  final DateTime from;
  final DateTime to;

  String get fromIso =>
      DateTime(from.year, from.month, from.day).toIso8601String();

  String get toIso =>
      DateTime(to.year, to.month, to.day, 23, 59, 59, 999).toIso8601String();
}

class AiProductPerformance {
  const AiProductPerformance({
    required this.name,
    required this.quantity,
    required this.revenue,
    required this.margin,
  });

  final String name;
  final double quantity;
  final double revenue;
  final double margin;
}

class AiShortageRisk {
  const AiShortageRisk({
    required this.productId,
    required this.name,
    required this.qty,
    required this.lowStockThreshold,
    required this.salesPerDay,
    required this.daysLeft,
    required this.suggestedOrderQty,
  });

  final int productId;
  final String name;
  final double qty;
  final double lowStockThreshold;
  final double salesPerDay;
  final double daysLeft;
  final double suggestedOrderQty;
}

abstract class LocalAiLanguageModel {
  Future<String?> rewrite({
    required String question,
    required AiAgentMessage factualMessage,
  });
}

class RuleBasedLocalAiLanguageModel implements LocalAiLanguageModel {
  const RuleBasedLocalAiLanguageModel();

  @override
  Future<String?> rewrite({
    required String question,
    required AiAgentMessage factualMessage,
  }) async {
    if (factualMessage.intent == AiAgentIntent.help) return null;
    final source = factualMessage.dataSources.isEmpty
        ? 'بيانات التطبيق المحلية'
        : factualMessage.dataSources.join(' + ');
    final confidencePct = (factualMessage.confidence.clamp(0, 1) * 100).round();
    return '${factualMessage.answer}\n\n'
        'قرأت $source، وثقتي في هذا الجواب $confidencePct%. '
        'الأرقام محسوبة من قاعدة البيانات ولا أعتمد على تخمين حر.';
  }
}

class LocalAiAgentService {
  LocalAiAgentService({
    Future<Database> Function()? databaseProvider,
    Future<int> Function()? tenantIdProvider,
    LocalAiLanguageModel? languageModel,
    DateTime Function()? now,
  }) : _databaseProvider = databaseProvider,
       _tenantIdProvider = tenantIdProvider,
       _languageModel = languageModel ?? const RuleBasedLocalAiLanguageModel(),
       _now = now ?? DateTime.now;

  LocalAiAgentService._singleton()
    : _databaseProvider = null,
      _tenantIdProvider = null,
      _languageModel = const RuleBasedLocalAiLanguageModel(),
      _now = DateTime.now;

  static final LocalAiAgentService instance = LocalAiAgentService._singleton();

  static const String _salesTypeInSql = 'inv.type IN (0,1,2,3)';
  static const int _forecastDays = 14;
  static const int _historyDays = 30;

  final DatabaseHelper _dbHelper = DatabaseHelper();
  final Future<Database> Function()? _databaseProvider;
  final Future<int> Function()? _tenantIdProvider;
  final LocalAiLanguageModel _languageModel;
  final DateTime Function() _now;

  Future<AiAgentMessage> ask(String rawQuestion) async {
    final question = rawQuestion.trim();
    if (question.isEmpty) {
      return _help();
    }

    final db = await (_databaseProvider?.call() ?? _dbHelper.database);
    final tenantId = await _tenantId();
    final intent = _detectIntent(question);
    final window = _detectDateWindow(question, _now());

    final AiAgentMessage factualMessage = await switch (intent) {
      AiAgentIntent.topProducts => _topProducts(db, tenantId, window),
      AiAgentIntent.shortageRisk => _shortageRisk(db, tenantId),
      AiAgentIntent.recommendations => _recommendations(db, tenantId, window),
      AiAgentIntent.lowStock => _lowStock(db, tenantId),
      AiAgentIntent.salesSummary => _salesSummary(db, tenantId, window),
      AiAgentIntent.help => _help(),
    };
    final rewritten = await _languageModel.rewrite(
      question: question,
      factualMessage: factualMessage,
    );
    if (rewritten == null || rewritten.trim().isEmpty) {
      return factualMessage;
    }
    return factualMessage.copyWith(answer: rewritten.trim());
  }

  Future<int> _tenantId() async {
    final tenantIdProvider = _tenantIdProvider;
    if (tenantIdProvider != null) return tenantIdProvider();
    final tenant = TenantContextService.instance;
    if (!tenant.loaded) {
      await tenant.load();
    }
    return tenant.requireActiveTenantId();
  }

  AiAgentIntent _detectIntent(String raw) {
    final q = raw.toLowerCase();
    final arabic = raw;
    if (_hasAny(q, ['shortage', 'shortages', 'run out', 'out of stock']) ||
        _hasAny(arabic, ['نقص', 'ينفد', 'نفاد', 'خلص', 'ستنتهي'])) {
      return AiAgentIntent.shortageRisk;
    }
    if (_hasAny(q, ['recommend', 'suggest', 'buy', 'order', 'purchase']) ||
        _hasAny(arabic, [
          'اقترح',
          'توصية',
          'توصيات',
          'اشتري',
          'شراء',
          'اطلب',
        ])) {
      return AiAgentIntent.recommendations;
    }
    if (_hasAny(q, ['low stock', 'critical stock']) ||
        _hasAny(arabic, ['مخزون منخفض', 'حد التنبيه', 'اقل من الحد'])) {
      return AiAgentIntent.lowStock;
    }
    if (_hasAny(q, ['top', 'best', 'perform', 'performance', 'product']) ||
        _hasAny(arabic, ['أفضل', 'افضل', 'منتج', 'اداء', 'أداء', 'مبيع'])) {
      return AiAgentIntent.topProducts;
    }
    if (_hasAny(q, [
          'sales',
          'revenue',
          'profit',
          'summary',
          'month',
          'today',
        ]) ||
        _hasAny(arabic, [
          'مبيعات',
          'ايراد',
          'إيراد',
          'ربح',
          'ملخص',
          'اليوم',
          'الشهر',
        ])) {
      return AiAgentIntent.salesSummary;
    }
    return AiAgentIntent.help;
  }

  bool _hasAny(String haystack, List<String> needles) =>
      needles.any((n) => haystack.contains(n));

  AiDateWindow _detectDateWindow(String raw, DateTime now) {
    final q = raw.toLowerCase();
    if (_hasAny(q, ['today']) || _hasAny(raw, ['اليوم'])) {
      return AiDateWindow(label: 'اليوم', from: now, to: now);
    }
    if (_hasAny(q, ['yesterday']) || _hasAny(raw, ['أمس', 'امس'])) {
      final d = now.subtract(const Duration(days: 1));
      return AiDateWindow(label: 'أمس', from: d, to: d);
    }
    if (_hasAny(q, ['week']) || _hasAny(raw, ['الأسبوع', 'اسبوع', 'أسبوع'])) {
      return AiDateWindow(
        label: 'آخر 7 أيام',
        from: now.subtract(const Duration(days: 6)),
        to: now,
      );
    }
    if (_hasAny(q, ['year']) || _hasAny(raw, ['السنة', 'عام'])) {
      return AiDateWindow(
        label: 'هذه السنة',
        from: DateTime(now.year),
        to: now,
      );
    }
    if (_hasAny(q, ['last month']) || _hasAny(raw, ['الشهر الماضي'])) {
      final firstThisMonth = DateTime(now.year, now.month);
      final lastMonthEnd = firstThisMonth.subtract(const Duration(days: 1));
      return AiDateWindow(
        label: 'الشهر الماضي',
        from: DateTime(lastMonthEnd.year, lastMonthEnd.month),
        to: lastMonthEnd,
      );
    }
    return AiDateWindow(
      label: 'هذا الشهر',
      from: DateTime(now.year, now.month),
      to: now,
    );
  }

  Future<AiAgentMessage> _salesSummary(
    Database db,
    int tenantId,
    AiDateWindow window,
  ) async {
    final sales = await db.rawQuery(
      '''
      SELECT
        COALESCE(SUM(inv.total), 0) AS revenue,
        COUNT(*) AS invoiceCount
      FROM invoices inv
      WHERE inv.tenantId = ?
        AND inv.deleted_at IS NULL
        AND IFNULL(inv.isReturned, 0) = 0
        AND $_salesTypeInSql
        AND inv.date >= ? AND inv.date <= ?
      ''',
      [tenantId, window.fromIso, window.toIso],
    );
    final margin = await _grossMargin(db, tenantId, window);
    final row = sales.first;
    final revenue = (row['revenue'] as num?)?.toDouble() ?? 0;
    final invoices = (row['invoiceCount'] as num?)?.toInt() ?? 0;
    final avg = invoices == 0 ? 0 : revenue / invoices;

    return AiAgentMessage(
      intent: AiAgentIntent.salesSummary,
      answer:
          'ملخص ${window.label}: المبيعات ${_money(revenue)} عبر $invoices فاتورة. متوسط الفاتورة ${_money(avg)}، والهامش التقريبي ${_money(margin)}.',
      insights: [
        AiAgentInsight(label: 'المبيعات', value: _money(revenue)),
        AiAgentInsight(label: 'عدد الفواتير', value: '$invoices'),
        AiAgentInsight(label: 'متوسط الفاتورة', value: _money(avg)),
        AiAgentInsight(
          label: 'الهامش التقريبي',
          value: _money(margin),
          severity: margin >= 0
              ? AiInsightSeverity.positive
              : AiInsightSeverity.warning,
        ),
      ],
      actions: const [
        'اسأل: أفضل المنتجات هذا الشهر',
        'اسأل: ما المنتجات التي قد تنفد؟',
      ],
      dataSources: const ['invoices', 'invoice_items', 'products'],
      confidence: invoices == 0 ? 0.65 : 0.92,
    );
  }

  Future<AiAgentMessage> _topProducts(
    Database db,
    int tenantId,
    AiDateWindow window,
  ) async {
    final products = await _productPerformance(db, tenantId, window, limit: 5);
    if (products.isEmpty) {
      return AiAgentMessage(
        intent: AiAgentIntent.topProducts,
        answer: 'لا توجد مبيعات منتجات في ${window.label}.',
        insights: const [],
        actions: const ['جرّب السؤال عن ملخص المبيعات أو فترة أخرى.'],
        dataSources: const ['invoice_items', 'invoices'],
        confidence: 0.72,
      );
    }
    final leader = products.first;
    return AiAgentMessage(
      intent: AiAgentIntent.topProducts,
      answer:
          'أفضل أداء في ${window.label}: ${leader.name} بإيراد ${_money(leader.revenue)} وكمية ${_qty(leader.quantity)}. هذه قائمة المنتجات الأقوى حسب الإيراد.',
      insights: products
          .map(
            (p) => AiAgentInsight(
              label: p.name,
              value: _money(p.revenue),
              detail: 'الكمية ${_qty(p.quantity)} | هامش ${_money(p.margin)}',
              severity: p.margin >= 0
                  ? AiInsightSeverity.positive
                  : AiInsightSeverity.warning,
            ),
          )
          .toList(),
      actions: const [
        'راجع مخزون هذه المنتجات حتى لا تتوقف المبيعات.',
        'اسأل: اقترح طلبية شراء',
      ],
      dataSources: const ['invoice_items', 'invoices', 'products'],
      confidence: 0.9,
    );
  }

  Future<AiAgentMessage> _shortageRisk(Database db, int tenantId) async {
    final risks = await _shortageRisks(db, tenantId, limit: 8);
    if (risks.isEmpty) {
      return const AiAgentMessage(
        intent: AiAgentIntent.shortageRisk,
        answer:
            'لا أرى خطر نفاد واضحاً من آخر 30 يوماً. المنتجات إما لا تبيع بسرعة أو مخزونها فوق حد الخطر.',
        insights: [],
        actions: ['استمر بمراجعة المنتجات سريعة البيع يومياً.'],
        dataSources: ['products', 'invoice_items', 'invoices'],
        confidence: 0.78,
      );
    }
    final first = risks.first;
    return AiAgentMessage(
      intent: AiAgentIntent.shortageRisk,
      answer:
          'أعلى خطر نفاد: ${first.name}. المتاح ${_qty(first.qty)}، ومعدل البيع ${_qty(first.salesPerDay)} يومياً، وقد يكفي حوالي ${_days(first.daysLeft)}.',
      insights: risks
          .map(
            (r) => AiAgentInsight(
              label: r.name,
              value: '${_days(r.daysLeft)} متبقية',
              detail:
                  'المتاح ${_qty(r.qty)} | معدل البيع ${_qty(r.salesPerDay)}/يوم | طلب مقترح ${_qty(r.suggestedOrderQty)}',
              severity: r.daysLeft <= 3
                  ? AiInsightSeverity.critical
                  : AiInsightSeverity.warning,
            ),
          )
          .toList(),
      actions: const [
        'أنشئ أمر شراء للمنتجات الحرجة.',
        'ارفع حد التنبيه للمنتجات سريعة الحركة.',
      ],
      dataSources: const ['products', 'invoice_items', 'invoices'],
      confidence: 0.86,
    );
  }

  Future<AiAgentMessage> _recommendations(
    Database db,
    int tenantId,
    AiDateWindow window,
  ) async {
    final risks = await _shortageRisks(db, tenantId, limit: 5);
    final top = await _productPerformance(db, tenantId, window, limit: 5);

    final insights = <AiAgentInsight>[
      ...risks.map(
        (r) => AiAgentInsight(
          label: 'اطلب ${r.name}',
          value: _qty(r.suggestedOrderQty),
          detail:
              'يكفي المخزون حوالي ${_days(r.daysLeft)} بناءً على آخر $_historyDays يوماً.',
          severity: r.daysLeft <= 3
              ? AiInsightSeverity.critical
              : AiInsightSeverity.warning,
        ),
      ),
      ...top
          .take(math.max(0, 5 - risks.length))
          .map(
            (p) => AiAgentInsight(
              label: 'ادفع مبيعات ${p.name}',
              value: _money(p.revenue),
              detail: 'منتج قوي في ${window.label}. حافظ على توفره.',
              severity: AiInsightSeverity.positive,
            ),
          ),
    ];

    final answer = insights.isEmpty
        ? 'لا توجد توصيات قوية الآن. أحتاج مبيعات أو مخزون أكثر لأقدم قراراً أفضل.'
        : 'أقوى توصية الآن: ${insights.first.label}. جمعت بين سرعة البيع والمخزون المتاح وأداء ${window.label}.';

    return AiAgentMessage(
      intent: AiAgentIntent.recommendations,
      answer: answer,
      insights: insights,
      actions: const [
        'ابدأ بالمنتجات الحرجة ثم المنتجات الأعلى مبيعاً.',
        'اسأل: ملخص المبيعات هذا الشهر',
      ],
      dataSources: const ['products', 'invoice_items', 'invoices'],
      confidence: insights.isEmpty ? 0.55 : 0.84,
    );
  }

  Future<AiAgentMessage> _lowStock(Database db, int tenantId) async {
    final rows = await db.rawQuery(
      '''
      SELECT id, name, qty, lowStockThreshold
      FROM products
      WHERE tenantId = ?
        AND deleted_at IS NULL
        AND IFNULL(isActive, 1) = 1
        AND IFNULL(trackInventory, 1) = 1
        AND IFNULL(lowStockThreshold, 0) > 0
        AND qty <= lowStockThreshold
      ORDER BY (qty / NULLIF(lowStockThreshold, 0)) ASC, name COLLATE NOCASE
      LIMIT 12
      ''',
      [tenantId],
    );
    if (rows.isEmpty) {
      return const AiAgentMessage(
        intent: AiAgentIntent.lowStock,
        answer: 'لا توجد منتجات تحت حد التنبيه حالياً.',
        insights: [],
        actions: ['اسأل عن خطر النفاد لمعرفة المنتجات التي قد تنخفض قريباً.'],
        dataSources: ['products'],
        confidence: 0.9,
      );
    }
    return AiAgentMessage(
      intent: AiAgentIntent.lowStock,
      answer: 'وجدت ${rows.length} منتجاً تحت حد التنبيه أو عنده.',
      insights: rows
          .map(
            (r) => AiAgentInsight(
              label: r['name']?.toString() ?? '',
              value: _qty((r['qty'] as num?)?.toDouble() ?? 0),
              detail:
                  'حد التنبيه ${_qty((r['lowStockThreshold'] as num?)?.toDouble() ?? 0)}',
              severity: AiInsightSeverity.warning,
            ),
          )
          .toList(),
      actions: const ['راجع أوامر الشراء لهذه المنتجات.'],
      dataSources: const ['products'],
      confidence: 0.95,
    );
  }

  AiAgentMessage _help() {
    return const AiAgentMessage(
      intent: AiAgentIntent.help,
      answer:
          'أستطيع تحليل المبيعات والمخزون محلياً من بيانات التطبيق. اسألني عن أفضل المنتجات، ملخص المبيعات، المنتجات التي قد تنفد، أو توصيات الشراء.',
      insights: [
        AiAgentInsight(
          label: 'مثال',
          value: 'Which product performed this month?',
        ),
        AiAgentInsight(label: 'مثال', value: 'ما المنتجات التي قد تنفد؟'),
        AiAgentInsight(label: 'مثال', value: 'اقترح طلبية شراء'),
      ],
      actions: ['كل الإجابات مبنية على قاعدة البيانات المحلية لهذا المتجر.'],
      dataSources: ['local agent tools'],
      confidence: 1,
    );
  }

  Future<double> _grossMargin(
    Database db,
    int tenantId,
    AiDateWindow window,
  ) async {
    final rows = await db.rawQuery(
      '''
      SELECT COALESCE(SUM(
        ii.total - (
          COALESCE(ii.unitCost, p.buyPrice, 0) *
          COALESCE(ii.baseQty, ii.quantity, 0)
        )
      ), 0) AS margin
      FROM invoice_items ii
      INNER JOIN invoices inv ON inv.id = ii.invoiceId
      LEFT JOIN products p ON p.id = ii.productId AND p.tenantId = inv.tenantId
      WHERE inv.tenantId = ?
        AND inv.deleted_at IS NULL
        AND ii.deleted_at IS NULL
        AND IFNULL(inv.isReturned, 0) = 0
        AND $_salesTypeInSql
        AND inv.date >= ? AND inv.date <= ?
      ''',
      [tenantId, window.fromIso, window.toIso],
    );
    return (rows.first['margin'] as num?)?.toDouble() ?? 0;
  }

  Future<List<AiProductPerformance>> _productPerformance(
    Database db,
    int tenantId,
    AiDateWindow window, {
    required int limit,
  }) async {
    final rows = await db.rawQuery(
      '''
      SELECT
        COALESCE(NULLIF(TRIM(ii.productName), ''), p.name, 'منتج غير مسمى') AS name,
        COALESCE(SUM(ii.quantity), 0) AS qty,
        COALESCE(SUM(ii.total), 0) AS revenue,
        COALESCE(SUM(
          ii.total - (
            COALESCE(ii.unitCost, p.buyPrice, 0) *
            COALESCE(ii.baseQty, ii.quantity, 0)
          )
        ), 0) AS margin
      FROM invoice_items ii
      INNER JOIN invoices inv ON inv.id = ii.invoiceId
      LEFT JOIN products p ON p.id = ii.productId AND p.tenantId = inv.tenantId
      WHERE inv.tenantId = ?
        AND inv.deleted_at IS NULL
        AND ii.deleted_at IS NULL
        AND IFNULL(inv.isReturned, 0) = 0
        AND $_salesTypeInSql
        AND inv.date >= ? AND inv.date <= ?
      GROUP BY COALESCE(ii.productId, ii.productName)
      ORDER BY revenue DESC
      LIMIT ?
      ''',
      [tenantId, window.fromIso, window.toIso, limit],
    );
    return rows
        .map(
          (r) => AiProductPerformance(
            name: r['name']?.toString() ?? '',
            quantity: (r['qty'] as num?)?.toDouble() ?? 0,
            revenue: (r['revenue'] as num?)?.toDouble() ?? 0,
            margin: (r['margin'] as num?)?.toDouble() ?? 0,
          ),
        )
        .toList();
  }

  Future<List<AiShortageRisk>> _shortageRisks(
    Database db,
    int tenantId, {
    required int limit,
  }) async {
    final now = _now();
    final from = now.subtract(const Duration(days: _historyDays));
    final rows = await db.rawQuery(
      '''
      WITH sales AS (
        SELECT
          ii.productId AS productId,
          COALESCE(SUM(COALESCE(ii.baseQty, ii.quantity, 0)), 0) AS soldQty
        FROM invoice_items ii
        INNER JOIN invoices inv ON inv.id = ii.invoiceId
        WHERE inv.tenantId = ?
          AND inv.deleted_at IS NULL
          AND ii.deleted_at IS NULL
          AND IFNULL(inv.isReturned, 0) = 0
          AND $_salesTypeInSql
          AND inv.date >= ? AND inv.date <= ?
          AND ii.productId IS NOT NULL
        GROUP BY ii.productId
      )
      SELECT
        p.id,
        p.name,
        p.qty,
        p.lowStockThreshold,
        COALESCE(s.soldQty, 0) AS soldQty,
        COALESCE(s.soldQty, 0) / $_historyDays.0 AS salesPerDay
      FROM products p
      LEFT JOIN sales s ON s.productId = p.id
      WHERE p.tenantId = ?
        AND p.deleted_at IS NULL
        AND IFNULL(p.isActive, 1) = 1
        AND IFNULL(p.trackInventory, 1) = 1
        AND IFNULL(p.allowNegativeStock, 0) = 0
        AND COALESCE(s.soldQty, 0) > 0
      ORDER BY
        CASE WHEN p.qty <= 0 THEN 0 ELSE p.qty / NULLIF((COALESCE(s.soldQty, 0) / $_historyDays.0), 0) END ASC,
        soldQty DESC
      LIMIT ?
      ''',
      [
        tenantId,
        from.toIso8601String(),
        now.toIso8601String(),
        tenantId,
        limit,
      ],
    );

    return rows
        .map((r) {
          final qty = (r['qty'] as num?)?.toDouble() ?? 0;
          final low = (r['lowStockThreshold'] as num?)?.toDouble() ?? 0;
          final perDay = (r['salesPerDay'] as num?)?.toDouble() ?? 0;
          final daysLeft = perDay <= 0 ? double.infinity : qty / perDay;
          final target = math.max(low, perDay * _forecastDays);
          final suggested = math.max<double>(0, target - qty);
          return AiShortageRisk(
            productId: (r['id'] as num?)?.toInt() ?? 0,
            name: r['name']?.toString() ?? '',
            qty: qty,
            lowStockThreshold: low,
            salesPerDay: perDay,
            daysLeft: daysLeft,
            suggestedOrderQty: suggested,
          );
        })
        .where((r) {
          return r.daysLeft <= _forecastDays ||
              (r.lowStockThreshold > 0 && r.qty <= r.lowStockThreshold);
        })
        .toList();
  }

  String _money(num value) => IraqiCurrencyFormat.formatIqd(value);

  String _qty(num value) {
    if (!value.isFinite) return '—';
    final d = value.toDouble();
    if ((d - d.round()).abs() < 0.001) return IraqiCurrencyFormat.formatInt(d);
    return IraqiCurrencyFormat.formatDecimal2(d);
  }

  String _days(double value) {
    if (!value.isFinite) return 'غير محدد';
    if (value < 1) return 'أقل من يوم';
    final rounded = value.round();
    return '$rounded يوم';
  }
}
