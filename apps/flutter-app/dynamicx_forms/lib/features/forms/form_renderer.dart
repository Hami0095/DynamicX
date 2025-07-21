import 'package:dynamicx_forms/features/forms/form_builder/question_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forms_core/forms_core.dart' hide QuestionType;
import '../../core/providers.dart';
import 'form_controls/text_question.dart';
import 'form_controls/radio_group_question.dart';
import 'form_controls/date_picker_question.dart';
import 'form_repository.dart' as fr;

typedef QuestionBuilder = Widget Function(Question question);

final _questionWidgetBuilders = <QuestionType, QuestionBuilder>{
  QuestionType.text: (q) => TextQuestionWidget(question: q),
  QuestionType.options: (q) => RadioGroupQuestionWidget(question: q),
  QuestionType.date: (q) => DatePickerQuestionWidget(question: q),
};

class FormRenderer extends ConsumerWidget {
  final FormDefinition form;

  const FormRenderer({super.key, required this.form});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final step = form.steps.isNotEmpty ? form.steps.first : null;
    if (step == null) return const Center(child: Text("No steps defined."));

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(step.title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 24),
        ...step.questions.map((q) {
          final builder = _questionWidgetBuilders[q.type];
          if (builder != null) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: builder(q),
            );
          } else {
            return Text("Unsupported question type: ${q.type}");
          }
        }),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () async {
            final answers = ref.read(formAnswersProvider);
            final response = await fr.FormRepository().submitForm(
              form.title,
              answers,
            );
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(response.message)));
          },
          child: const Text("Submit"),
        ),
      ],
    );
  }
}
