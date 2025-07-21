import 'package:flutter_riverpod/flutter_riverpod.dart';

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
