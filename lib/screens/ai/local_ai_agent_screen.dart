import 'dart:async';

import 'package:flutter/material.dart';

import '../../services/local_ai_agent_service.dart';

class LocalAiAgentScreen extends StatefulWidget {
  const LocalAiAgentScreen({super.key});

  @override
  State<LocalAiAgentScreen> createState() => _LocalAiAgentScreenState();
}

class _LocalAiAgentScreenState extends State<LocalAiAgentScreen> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final List<_ChatTurn> _turns = [];
  bool _loading = false;

  static const List<String> _suggestions = [
    'Which product performed this month?',
    'ملخص المبيعات هذا الشهر',
    'ما المنتجات التي قد تنفد؟',
    'اقترح طلبية شراء',
  ];

  @override
  void initState() {
    super.initState();
    _turns.add(
      const _ChatTurn.agent(
        AiAgentMessage(
          intent: AiAgentIntent.help,
          answer:
              'أنا مساعد محلي لتحليل المبيعات والمخزون. اسألني عن أفضل المنتجات، خطر النفاد، أو توصيات الشراء.',
          insights: [],
          actions: ['كل التحليل يتم من بيانات المتجر المحلية.'],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _ask([String? text]) async {
    final question = (text ?? _controller.text).trim();
    if (question.isEmpty || _loading) return;

    setState(() {
      _turns.add(_ChatTurn.user(question));
      _controller.clear();
      _loading = true;
    });

    try {
      final answer = await LocalAiAgentService.instance.ask(question);
      if (!mounted) return;
      setState(() => _turns.add(_ChatTurn.agent(answer)));
    } catch (e) {
      if (!mounted) return;
      setState(
        () => _turns.add(
          _ChatTurn.agent(
            AiAgentMessage(
              intent: AiAgentIntent.help,
              answer:
                  'لم أستطع إكمال التحليل الآن. تحقق من تحميل بيانات المتجر ثم جرّب مرة أخرى.\n$e',
              insights: const [],
              actions: const [],
            ),
          ),
        ),
      );
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SafeArea(
        child: Column(
          children: [
            _Header(onSuggestion: _ask, suggestions: _suggestions),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                itemCount: _turns.length + (_loading ? 1 : 0),
                itemBuilder: (context, index) {
                  if (_loading && index == _turns.length) {
                    return const _ThinkingBubble();
                  }
                  return _ChatBubble(turn: _turns[index]);
                },
              ),
            ),
            _Composer(
              controller: _controller,
              focusNode: _focusNode,
              loading: _loading,
              onSend: _ask,
            ),
          ],
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.suggestions, required this.onSuggestion});

  final List<String> suggestions;
  final ValueChanged<String> onSuggestion;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: cs.surface,
        border: Border(bottom: BorderSide(color: theme.dividerColor)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.auto_awesome_rounded, color: cs.primary),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'AI Sales Agent',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Tooltip(
                  message: 'Local analytics agent',
                  child: Icon(Icons.lock_outline_rounded, color: cs.secondary),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'مساعد ذكي يقرأ المبيعات والمخزون محلياً ويقترح قرارات عملية.',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: cs.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                for (final s in suggestions)
                  ActionChip(
                    avatar: const Icon(Icons.bolt_rounded, size: 16),
                    label: Text(s),
                    onPressed: () => onSuggestion(s),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({required this.turn});

  final _ChatTurn turn;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final isUser = turn.question != null;
    final bg = isUser ? cs.primary : cs.surfaceContainerHighest;
    final fg = isUser ? cs.onPrimary : cs.onSurface;

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 760),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 6),
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(8),
            border: isUser ? null : Border.all(color: theme.dividerColor),
          ),
          child: isUser
              ? Text(
                  turn.question!,
                  style: theme.textTheme.bodyLarge?.copyWith(color: fg),
                )
              : _AgentAnswer(message: turn.answer!),
        ),
      ),
    );
  }
}

class _AgentAnswer extends StatelessWidget {
  const _AgentAnswer({required this.message});

  final AiAgentMessage message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(message.answer, style: theme.textTheme.bodyLarge),
        if (message.dataSources.isNotEmpty) ...[
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: [
              _EvidenceChip(
                icon: Icons.storage_rounded,
                label: message.dataSources.join(' + '),
              ),
              _EvidenceChip(
                icon: Icons.verified_outlined,
                label:
                    'Confidence ${(message.confidence.clamp(0, 1) * 100).round()}%',
              ),
            ],
          ),
        ],
        if (message.insights.isNotEmpty) ...[
          const SizedBox(height: 12),
          LayoutBuilder(
            builder: (context, constraints) {
              final wide = constraints.maxWidth >= 560;
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: message.insights.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: wide ? 2 : 1,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 88,
                ),
                itemBuilder: (context, index) {
                  return _InsightTile(insight: message.insights[index]);
                },
              );
            },
          ),
        ],
        if (message.actions.isNotEmpty) ...[
          const SizedBox(height: 12),
          for (final action in message.actions)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check_circle_outline_rounded,
                    size: 18,
                    color: cs.secondary,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(action, style: theme.textTheme.bodyMedium),
                  ),
                ],
              ),
            ),
        ],
      ],
    );
  }
}

class _EvidenceChip extends StatelessWidget {
  const _EvidenceChip({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    return Container(
      constraints: const BoxConstraints(maxWidth: 320),
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 5),
      decoration: BoxDecoration(
        color: cs.surface.withValues(alpha: 0.68),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.dividerColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 15, color: cs.onSurfaceVariant),
          const SizedBox(width: 6),
          Flexible(
            child: Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelSmall?.copyWith(
                color: cs.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InsightTile extends StatelessWidget {
  const _InsightTile({required this.insight});

  final AiAgentInsight insight;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = _colorFor(context, insight.severity);
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.09),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withValues(alpha: 0.35)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            insight.label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.labelLarge?.copyWith(color: color),
          ),
          const SizedBox(height: 4),
          Text(
            insight.value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          if (insight.detail != null) ...[
            const SizedBox(height: 2),
            Text(
              insight.detail!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ],
        ],
      ),
    );
  }

  Color _colorFor(BuildContext context, AiInsightSeverity severity) {
    final cs = Theme.of(context).colorScheme;
    return switch (severity) {
      AiInsightSeverity.positive => Colors.green.shade700,
      AiInsightSeverity.warning => Colors.orange.shade800,
      AiInsightSeverity.critical => cs.error,
      AiInsightSeverity.neutral => cs.primary,
    };
  }
}

class _ThinkingBubble extends StatelessWidget {
  const _ThinkingBubble();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: theme.dividerColor),
        ),
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
            SizedBox(width: 10),
            Text('Analyzing...'),
          ],
        ),
      ),
    );
  }
}

class _Composer extends StatelessWidget {
  const _Composer({
    required this.controller,
    required this.focusNode,
    required this.loading,
    required this.onSend,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final bool loading;
  final Future<void> Function() onSend;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        border: Border(top: BorderSide(color: theme.dividerColor)),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 12),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  focusNode: focusNode,
                  minLines: 1,
                  maxLines: 4,
                  textInputAction: TextInputAction.send,
                  onSubmitted: (_) => unawaited(onSend()),
                  decoration: const InputDecoration(
                    hintText: 'Ask about sales, stock, shortages...',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              IconButton.filled(
                tooltip: 'Send',
                onPressed: loading ? null : () => unawaited(onSend()),
                icon: const Icon(Icons.send_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ChatTurn {
  const _ChatTurn.user(this.question) : answer = null;
  const _ChatTurn.agent(this.answer) : question = null;

  final String? question;
  final AiAgentMessage? answer;
}
