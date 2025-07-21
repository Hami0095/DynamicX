import 'package:dynamicx_forms/core/models/question_type.dart' hide QuestionType;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:dynamicx_forms/features/forms/form_controls/text_question.dart';
import 'package:dynamicx_forms/features/forms/form_controls/radio_group_question.dart';
import 'package:dynamicx_forms/features/forms/form_renderer.dart';
import 'package:dynamicx_forms/core/providers.dart';
import 'package:dynamicx_forms/core/theme.dart';
import 'package:forms_core/forms_core.dart';

void main() {
  runApp(const ProviderScope(child: HotReloadWidgetbook()));
}

class HotReloadWidgetbook extends StatelessWidget {
  const HotReloadWidgetbook({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      lightTheme: lightLiquidTheme,
      darkTheme: darkLiquidTheme,
      themeMode: ThemeMode.light,
      directories: [
        WidgetbookComponent(
          name: 'TextQuestion',
          useCases: [
            WidgetbookUseCase(
              name: 'Default',
              builder: (_) => TextQuestionWidget(
                question: Question()
                  ..questionId = 'q1'
                  ..label = 'Your name?'
                  ..type = QuestionType.TEXT,
              ),
            ),
          ],
        ),
        WidgetbookComponent(
          name: 'RadioGroupQuestion',
          useCases: [
            WidgetbookUseCase(
              name: 'Options',
              builder: (_) => RadioGroupQuestionWidget(
                question: Question()
                  ..questionId = 'q2'
                  ..label = 'Choose one'
                  ..type = QuestionType.RADIO
                  ..options.addAll(['Yes', 'No']),
              ),
            ),
          ],
        ),
        WidgetbookComponent(
          name: 'FormRenderer',
          useCases: [
            WidgetbookUseCase(
              name: 'Full Form (from Proto)',
              builder: (context) => ProviderScope(
                child: Consumer(
                  builder: (context, ref, _) {
                    final form = ref.watch(formSchemaProvider);
                    return form.when(
                      data: (form) => FormRenderer(form: form),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (e, st) => Text('Error: $e'),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
