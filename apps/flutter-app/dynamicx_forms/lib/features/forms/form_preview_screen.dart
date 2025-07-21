// import 'package:flutter/material.dart';
// import '../forms/form_builder/question_editor.dart';

// class FormPreviewScreen extends StatelessWidget {
//   final List<QuestionEditorData> questions;

//   const FormPreviewScreen({super.key, required this.questions});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Preview & Submit')),
//       body: ListView.builder(
//         itemCount: questions.length,
//         itemBuilder: (context, index) {
//           final q = questions[index];
//           return ListTile(
//             title: Text(q.label),
//             subtitle: Text('Type: ${q.type.name}'),
//             trailing: const Icon(Icons.edit),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//          heroTag: 'submit_form_fab',
//         onPressed: () {
          
//           // TODO: Connect to gRPC SubmitForm
//           ScaffoldMessenger.of(context).showSnackBar(
//             const SnackBar(content: Text('Form submitted successfully!')),
//           );
//         },
//         icon: const Icon(Icons.check),
//         label: const Text('Submit Form'),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:dynamicx_forms/core/models/question_type.dart';
import 'package:dynamicx_forms/features/forms/form_builder/question_editor.dart';
import 'package:forms_core/forms_core.dart'; // Generated Protobuf models

class FormPreviewScreen extends StatelessWidget {
  final List<QuestionEditorData> questions;

  const FormPreviewScreen({super.key, required this.questions});

  Future<void> submitForm(BuildContext context) async {
    final client = GrpcClient.instance.formService;

    // For now we use a dummy formId
    final request = SubmitFormRequest()
      ..formId = 'preview_form'
      ..answers.addEntries(
        questions.asMap().entries.map((entry) {
          final index = entry.key.toString();
          final question = entry.value;
          return MapEntry(index, '[${question.type.name}] ${question.label}');
        }),
      );

    try {
      final response = await client.submitForm(request);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("✅ Submitted: ${response.message}")),
      );
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("❌ Submission failed: $e")));
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Preview')),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final q = questions[index];
          return Card(
            margin: const EdgeInsets.all(12),
            child: ListTile(
              title: Text(q.label),
              subtitle: Text(
                "Type: ${q.type.name}"
                "${q.options.isNotEmpty ? "\nOptions: ${q.options.join(', ')}" : ""}",
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => submitForm(context),
        icon: const Icon(Icons.send),
        label: const Text("Submit Form"),
      ),
    );
  }
}
