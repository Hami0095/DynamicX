// // import 'package:dynamicx_forms/features/forms/form_builder/question_editor.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_riverpod/flutter_riverpod.dart';

// // class FormBuilderScreen extends ConsumerWidget {
// //   const FormBuilderScreen({super.key});

// //   @override
// //   Widget build(BuildContext context, WidgetRef ref) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text('Create Your Form')),
// //       body: const QuestionEditor(),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:dynamicx_forms/core/models/question_type.dart';
// import 'question_editor.dart';
// import '../form_preview_screen.dart';

// class FormBuilderScreen extends StatefulWidget {
//   const FormBuilderScreen({super.key});

//   @override
//   State<FormBuilderScreen> createState() => _FormBuilderScreenState();
// }

// class _FormBuilderScreenState extends State<FormBuilderScreen> {
//   final List<QuestionEditorData> questions = [];

//   void addNewQuestion() {
//     setState(() {
//       questions.add(QuestionEditorData(label: '', type: QuestionType.text, options: []));
//     });
//   }

//   void updateQuestion(int index, QuestionEditorData updated) {
//     setState(() {
//       questions[index] = updated;
//     });
//   }

//   void goToPreview() {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (_) => FormPreviewScreen(questions: questions),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Form Builder')),
//       body: ListView.builder(
//         itemCount: questions.length,
//         itemBuilder: (context, index) {
//           return QuestionEditor.edit(
//             key: ValueKey(index),
//             data: QuestionEditorData(
//               label: questions[index].label,
//               type: questions[index].type,
//               options: questions[index].options,
//             ),
//             onChanged: (updated) {
//               setState(() {
//                 questions[index] = updated;
//               });
//             },
//           );
//         },
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           FloatingActionButton.extended(
//             heroTag: 'add_question_fab',
//             onPressed: addNewQuestion,
//             icon: const Icon(Icons.add),
//             label: const Text('Add Question'),
//           ),
//           const SizedBox(height: 12),
//           FloatingActionButton.extended(
//             heroTag: 'preview_form_fab',
//             onPressed: questions.isNotEmpty ? goToPreview : null,
//             icon: const Icon(Icons.preview),
//             label: const Text('Preview Form'),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:dynamicx_forms/core/models/question_type.dart';
import 'question_editor.dart';
import '../form_preview_screen.dart';

class FormBuilderScreen extends StatefulWidget {
  const FormBuilderScreen({super.key});

  @override
  State<FormBuilderScreen> createState() => _FormBuilderScreenState();
}

class _FormBuilderScreenState extends State<FormBuilderScreen> {
  final List<QuestionEditorData> questions = [];

  void addNewQuestion(QuestionEditorData newQuestion) {
    setState(() {
      questions.add(newQuestion);
    });
  }

  void updateQuestion(int index, QuestionEditorData updated) {
    setState(() {
      questions[index] = updated;
    });
  }

  void goToPreview() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => FormPreviewScreen(questions: questions),
      ),
    );
  }

  void showAddQuestionModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: QuestionEditor.create(
                onSave: (label, type, options) {
                  addNewQuestion(
                    QuestionEditorData(
                      label: label,
                      type: type,
                      options: options,
                    ),
                  );
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Builder')),
      body: questions.isEmpty
          ? const Center(child: Text('No questions yet. Add one!'))
          : ListView.builder(
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: QuestionEditor.edit(
                        key: ValueKey(index),
                        data: questions[index],
                        onChanged: (updated) => updateQuestion(index, updated),
                      ),
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            heroTag: 'add_question_fab',
            onPressed: showAddQuestionModal,
            icon: const Icon(Icons.add),
            label: const Text('Add Question'),
          ),
          const SizedBox(height: 12),
          FloatingActionButton.extended(
            heroTag: 'preview_form_fab',
            onPressed: questions.isNotEmpty ? goToPreview : null,
            icon: const Icon(Icons.preview),
            label: const Text('Preview Form'),
          ),
        ],
      ),
    );
  }
}
