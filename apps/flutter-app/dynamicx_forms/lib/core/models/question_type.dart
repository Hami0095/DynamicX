enum QuestionType { text, options, date }

extension QuestionTypeExtension on QuestionType {
  String get label {
    switch (this) {
      case QuestionType.text:
        return 'Text';
      case QuestionType.options:
        return 'Options';
      case QuestionType.date:
        return 'Date';
    }
  }
}
