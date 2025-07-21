import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forms_core/forms_core.dart';
import '../features/forms/form_repository.dart' hide FormRepository;

final formSchemaProvider = FutureProvider.autoDispose<FormDefinition>((
  ref,
) async {
  final repo = FormRepository();
  return repo.fetchFormSchema('form_001');
});

final formAnswersProvider =
    StateNotifierProvider<FormAnswersNotifier, Map<String, String>>(
      (ref) => FormAnswersNotifier(),
    );

class FormAnswersNotifier extends StateNotifier<Map<String, String>> {
  FormAnswersNotifier() : super({});

  void updateAnswer(String questionId, String value) {
    state = {...state, questionId: value};
  }
}
