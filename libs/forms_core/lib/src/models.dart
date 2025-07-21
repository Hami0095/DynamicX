// class Question {
//   final String id;
//   final String label;
//   final QuestionType type;
//   final List<String>? options; // For options-based

//   Question({
//     required this.id,
//     required this.label,
//     required this.type,
//     this.options,
//   });
// }
// enum QuestionType {
//   text,
//   options,
//   date,
// }

enum QuestionType {
  text,
  options,
  date,
}

extension QuestionTypeX on QuestionType {
  String get label {
    switch (this) {
      case QuestionType.text:
        return 'Text';
      case QuestionType.options:
        return 'Multiple Choice';
      case QuestionType.date:
        return 'Date Picker';
    }
  }

  static QuestionType fromLabel(String label) {
    switch (label) {
      case 'Text':
        return QuestionType.text;
      case 'Multiple Choice':
        return QuestionType.options;
      case 'Date Picker':
        return QuestionType.date;
      default:
        return QuestionType.text;
    }
  }
}
