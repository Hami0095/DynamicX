
import 'package:flutter/material.dart';
import 'package:dynamicx_forms/core/models/question_type.dart';

// class QuestionEditorData {
//   String label;
//   QuestionType type;

//   QuestionEditorData({required this.label, required this.type});
// }

// class QuestionEditor extends StatefulWidget {
//   final QuestionEditorData data;
//   final ValueChanged<QuestionEditorData> onChanged;

//   const QuestionEditor({
//     super.key,
//     required this.data,
//     required this.onChanged,
//   });

//   @override
//   State<QuestionEditor> createState() => _QuestionEditorState();
// }

// class _QuestionEditorState extends State<QuestionEditor> {
//   late TextEditingController labelController;
//   late QuestionType selectedType;

//   @override
//   void initState() {
//     super.initState();
//     labelController = TextEditingController(text: widget.data.label);
//     selectedType = widget.data.type;
//   }

//   void _notifyChange() {
//     widget.onChanged(
//       QuestionEditorData(label: labelController.text, type: selectedType),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(16),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             TextFormField(
//               controller: labelController,
//               decoration: const InputDecoration(labelText: 'Question Label'),
//               onChanged: (_) => _notifyChange(),
//             ),
//             const SizedBox(height: 12),
//             DropdownButtonFormField<QuestionType>(
//               value: selectedType,
//               decoration: const InputDecoration(labelText: 'Question Type'),
//               items: QuestionType.values
//                   .map(
//                     (type) =>
//                         DropdownMenuItem(value: type, child: Text(type.label)),
//                   )
//                   .toList(),
//               onChanged: (type) {
//                 if (type != null) {
//                   setState(() => selectedType = type);
//                   _notifyChange();
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

enum QuestionType { text, options, date }

class QuestionEditor extends StatefulWidget {
  // Creation mode
  final void Function(String label, QuestionType type, List<String> options)?
  onSave;

  // Edit mode
  final QuestionEditorData? data;
  final void Function(QuestionEditorData)? onChanged;

  const QuestionEditor.create({super.key, required this.onSave})
    : data = null,
      onChanged = null;

  const QuestionEditor.edit({
    super.key,
    required this.data,
    required this.onChanged,
  }) : onSave = null;

  @override
  State<QuestionEditor> createState() => _QuestionEditorState();
}

class QuestionEditorData {
  final String label;
  final QuestionType type;
  final List<String> options;

  QuestionEditorData({
    required this.label,
    required this.type,
    required this.options,
  });

  QuestionEditorData copyWith({
    String? label,
    QuestionType? type,
    List<String>? options,
  }) {
    return QuestionEditorData(
      label: label ?? this.label,
      type: type ?? this.type,
      options: options ?? this.options,
    );
  }
}

class _QuestionEditorState extends State<QuestionEditor> {
  late TextEditingController _labelController;
  late TextEditingController _optionController;
  late QuestionType _selectedType;
  List<String> _options = [];

  bool get isEditing => widget.onSave == null;

  @override
  void initState() {
    super.initState();
    _labelController = TextEditingController(text: widget.data?.label ?? '');
    _optionController = TextEditingController();
    _selectedType = widget.data?.type ?? QuestionType.text;
    _options = List.from(widget.data?.options ?? []);
  }

  void _addOption() {
    final text = _optionController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _options.add(text);
        _optionController.clear();
      });
      _notifyChanged();
    }
  }

  void _notifyChanged() {
    if (isEditing) {
      widget.onChanged!(
        QuestionEditorData(
          label: _labelController.text,
          type: _selectedType,
          options: _options,
        ),
      );
    }
  }

  void _saveQuestion() {
    widget.onSave!(
      _labelController.text.trim(),
      _selectedType,
      List.from(_options),
    );
    _labelController.clear();
    _optionController.clear();
    setState(() {
      _options.clear();
      _selectedType = QuestionType.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _labelController,
          onChanged: (_) => _notifyChanged(),
          decoration: const InputDecoration(labelText: 'Question Label'),
        ),
        const SizedBox(height: 16),
        DropdownButton<QuestionType>(
          value: _selectedType,
          items: QuestionType.values.map((type) {
            return DropdownMenuItem(
              value: type,
              child: Text(type.name.toUpperCase()),
            );
          }).toList(),
          onChanged: (val) {
            setState(() => _selectedType = val!);
            _notifyChanged();
          },
        ),
        if (_selectedType == QuestionType.options) ...[
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _optionController,
                  decoration: const InputDecoration(labelText: 'Add Option'),
                ),
              ),
              IconButton(icon: const Icon(Icons.add), onPressed: _addOption),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: _options.length,
            itemBuilder: (_, i) => ListTile(
              title: Text(_options[i]),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => setState(() {
                  _options.removeAt(i);
                  _notifyChanged();
                }),
              ),
            ),
          ),
        ],
        if (!isEditing) ...[
          const SizedBox(height: 24),
          ElevatedButton.icon(
            icon: const Icon(Icons.save),
            label: const Text("Save Question"),
            onPressed: _saveQuestion,
          ),
        ],
      ],
    );
  }
}
