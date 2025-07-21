import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forms_core/forms_core.dart';
import '../../../core/providers.dart';
import 'package:intl/intl.dart';

class DatePickerQuestionWidget extends ConsumerWidget {
  final Question question;

  const DatePickerQuestionWidget({super.key, required this.question});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final answer = ref.watch(formAnswersProvider)[question.questionId];
    final controller = TextEditingController(text: answer);

    return TextFormField(
      controller: controller,
      readOnly: true,
      decoration: InputDecoration(
        labelText: question.label,
        suffixIcon: const Icon(Icons.calendar_today),
        border: const OutlineInputBorder(),
      ),
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
          initialDate: DateTime.now(),
        );
        if (picked != null) {
          final formatted = DateFormat('yyyy-MM-dd').format(picked);
          ref
              .read(formAnswersProvider.notifier)
              .updateAnswer(question.questionId, formatted);
        }
      },
    );
  }
}
