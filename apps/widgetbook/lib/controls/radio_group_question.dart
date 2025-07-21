import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forms_core/forms_core.dart';
import '../core/providers.dart';

class RadioGroupQuestionWidget extends ConsumerWidget {
  final Question question;

  const RadioGroupQuestionWidget({super.key, required this.question});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(formAnswersProvider)[question.questionId];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question.label, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        ...question.options.map((opt) {
          return RadioListTile<String>(
            value: opt,
            groupValue: selected,
            title: Text(opt, style: TextStyle(color: Colors.white)),
            onChanged: (value) {
              ref
                  .read(formAnswersProvider.notifier)
                  .updateAnswer(question.questionId, value ?? "");
            },
          );
        }),
      ],
    );
  }
}
