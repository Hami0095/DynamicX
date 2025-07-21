import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forms_core/forms_core.dart';
import '../core/providers.dart';

class TextQuestionWidget extends ConsumerWidget {
  final Question question;

  const TextQuestionWidget({super.key, required this.question});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final answer = ref.watch(formAnswersProvider)[question.questionId] ?? "";

    return TextFormField(
      initialValue: answer,
      decoration: InputDecoration(
        labelText: question.label,
        border: const OutlineInputBorder(),
        labelStyle: TextStyle(color: Colors.white),
      ),
      onChanged: (value) {
        ref
            .read(formAnswersProvider.notifier)
            .updateAnswer(question.questionId, value);
      },
    );
  }
}
