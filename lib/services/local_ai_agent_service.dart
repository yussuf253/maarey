import 'dart:math' as math;

import 'package:sqflite/sqflite.dart';

import '../l10n/app_l10n.dart';
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
    final l = AppL10n.current;
    final source = factualMessage.dataSources.isEmpty
        ? l.aiLocalAppData
        : factualMessage.dataSources.join(' + ');
    final confidencePct = (factualMessage.confidence.clamp(0, 1) * 100).round();
    return '${factualMessage.answer}\n\n'
        '${l.aiRewriteNote(confidencePct, source)}';
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
    final l = AppL10n.current;
    if (_hasAny(q, ['today']) || _hasAny(raw, ['اليوم'])) {
      return AiDateWindow(label: l.today, from: now, to: now);
    }
    if (_hasAny(q, ['yesterday']) || _hasAny(raw, ['أمس', 'امس'])) {
      final d = now.subtract(const Duration(days: 1));
      return AiDateWindow(label: l.yesterday, from: d, to: d);
    }
    if (_hasAny(q, ['week']) || _hasAny(raw, ['الأسبوع', 'اسبوع', 'أسبوع'])) {
      return AiDateWindow(
        label: l.aiLast7Days,
        from: now.subtract(const Duration(days: 6)),
        to: now,
      );
    }
    if (_hasAny(q, ['year']) || _hasAny(raw, ['السنة', 'عام'])) {
      return AiDateWindow(
        label: l.aiThisYear,
        from: DateTime(now.year),
        to: now,
      );
    }
    if (_hasAny(q, ['last month']) || _hasAny(raw, ['الشهر الماضي'])) {
      final firstThisMonth = DateTime(now.year, now.month);
      final lastMonthEnd = firstThisMonth.subtract(const Duration(days: 1));
      return AiDateWindow(
        label: l.aiLastMonth,
        from: DateTime(lastMonthEnd.year, lastMonthEnd.month),
        to: lastMonthEnd,
      );
    }
    return AiDateWindow(
      label: l.thisMonth,
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
      answer: AppL10n.current.aiSalesSummaryAnswer(
        _money(avg),
        invoices,
        _money(margin),
        _money(revenue),
        window.label,
      ),
      insights: [
        AiAgentInsight(label: AppL10n.current.salesTitle, value: _money(revenue)),
        AiAgentInsight(label: AppL10n.current.invoiceCount, value: '$invoices'),
        AiAgentInsight(label: AppL10n.current.aiAvgInvoice, value: _money(avg)),
        AiAgentInsight(
          label: AppL10n.current.aiEstMargin,
          value: _money(margin),
          severity: margin >= 0
              ? AiInsightSeverity.positive
              : AiInsightSeverity.warning,
        ),
      ],
      actions: [
        AppL10n.current.aiAskTopProductsThisMonth,
        AppL10n.current.aiAskWhatMayRunOut,
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
    final l = AppL10n.current;
    if (products.isEmpty) {
      return AiAgentMessage(
        intent: AiAgentIntent.topProducts,
        answer: l.aiNoProductSalesIn(window.label),
        insights: const [],
        actions: [l.aiTryOtherPeriod],
        dataSources: const ['invoice_items', 'invoices'],
        confidence: 0.72,
      );
    }
    final leader = products.first;
    return AiAgentMessage(
      intent: AiAgentIntent.topProducts,
      answer: l.aiTopPerformerAnswer(
        leader.name,
        _qty(leader.quantity),
        _money(leader.revenue),
        window.label,
      ),
      insights: products
          .map(
            (p) => AiAgentInsight(
              label: p.name,
              value: _money(p.revenue),
              detail: l.aiQtyMarginDetail(_money(p.margin), _qty(p.quantity)),
              severity: p.margin >= 0
                  ? AiInsightSeverity.positive
                  : AiInsightSeverity.warning,
            ),
          )
          .toList(),
      actions: [l.aiReviewRestock, l.aiAskPo],
      dataSources: const ['invoice_items', 'invoices', 'products'],
      confidence: 0.9,
    );
  }

  Future<AiAgentMessage> _shortageRisk(Database db, int tenantId) async {
    final risks = await _shortageRisks(db, tenantId, limit: 8);
    final l = AppL10n.current;
    if (risks.isEmpty) {
      return AiAgentMessage(
        intent: AiAgentIntent.shortageRisk,
        answer: l.aiNoShortageRisk,
        insights: const [],
        actions: [l.aiKeepReviewingFastMovers],
        dataSources: const ['products', 'invoice_items', 'invoices'],
        confidence: 0.78,
      );
    }
    final first = risks.first;
    return AiAgentMessage(
      intent: AiAgentIntent.shortageRisk,
      answer: l.aiTopShortageAnswer(
        _days(first.daysLeft),
        first.name,
        _qty(first.qty),
        _qty(first.salesPerDay),
      ),
      insights: risks
          .map(
            (r) => AiAgentInsight(
              label: r.name,
              value: l.aiDaysRemaining(_days(r.daysLeft)),
              detail: l.aiStockDetail(
                _qty(r.qty),
                _qty(r.salesPerDay),
                _qty(r.suggestedOrderQty),
              ),
              severity: r.daysLeft <= 3
                  ? AiInsightSeverity.critical
                  : AiInsightSeverity.warning,
            ),
          )
          .toList(),
      actions: [l.aiCreatePoForCritical, l.aiRaiseAlertThreshold],
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
    final l = AppL10n.current;

    final insights = <AiAgentInsight>[
      ...risks.map(
        (r) => AiAgentInsight(
          label: l.aiOrderLabel(r.name),
          value: _qty(r.suggestedOrderQty),
          detail: l.aiStockWillLast(_days(r.daysLeft), _historyDays),
          severity: r.daysLeft <= 3
              ? AiInsightSeverity.critical
              : AiInsightSeverity.warning,
        ),
      ),
      ...top
          .take(math.max(0, 5 - risks.length))
          .map(
            (p) => AiAgentInsight(
              label: l.aiPushSalesLabel(p.name),
              value: _money(p.revenue),
              detail: l.aiStrongProductDetail(window.label),
              severity: AiInsightSeverity.positive,
            ),
          ),
    ];

    final answer = insights.isEmpty
        ? l.aiNoStrongRecs
        : l.aiTopRecAnswer(insights.first.label, window.label);

    return AiAgentMessage(
      intent: AiAgentIntent.recommendations,
      answer: answer,
      insights: insights,
      actions: [
        l.aiStartWithCritical,
        l.aiAskSalesSummaryThisMonth,
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
    final l = AppL10n.current;
    if (rows.isEmpty) {
      return AiAgentMessage(
        intent: AiAgentIntent.lowStock,
        answer: l.aiNoLowStockNow,
        insights: const [],
        actions: [l.aiAskShortageRisk],
        dataSources: const ['products'],
        confidence: 0.9,
      );
    }
    return AiAgentMessage(
      intent: AiAgentIntent.lowStock,
      answer: l.aiLowStockFound(rows.length),
      insights: rows
          .map(
            (r) => AiAgentInsight(
              label: r['name']?.toString() ?? '',
              value: _qty((r['qty'] as num?)?.toDouble() ?? 0),
              detail:
                  '${l.alertThresholdLabel} ${_qty((r['lowStockThreshold'] as num?)?.toDouble() ?? 0)}',
              severity: AiInsightSeverity.warning,
            ),
          )
          .toList(),
      actions: [l.aiReviewPurchaseOrders],
      dataSources: const ['products'],
      confidence: 0.95,
    );
  }

  AiAgentMessage _help() {
    final l = AppL10n.current;
    return AiAgentMessage(
      intent: AiAgentIntent.help,
      answer: l.aiHelpAnswer,
      insights: [
        AiAgentInsight(
          label: l.aiExample,
          value: 'Which product performed this month?',
        ),
        AiAgentInsight(label: l.aiExample, value: l.aiSuggestLowStock),
        AiAgentInsight(label: l.aiExample, value: l.aiSuggestPurchaseOrder),
      ],
      actions: [l.aiAnswersFromLocalDb],
      dataSources: const ['local agent tools'],
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
        COALESCE(NULLIF(TRIM(ii.productName), ''), p.name,
          '${AppL10n.current.unnamedProduct}') AS name,
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
    final l = AppL10n.current;
    if (!value.isFinite) return l.csNotSpecified;
    if (value < 1) return l.aiLessThanDay;
    final rounded = value.round();
    return l.aiDaysCount(rounded);
  }
}
