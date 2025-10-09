import 'package:flutter/material.dart';

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  final _nameController = TextEditingController();
  final _commentController = TextEditingController();
  String _selectedCategory = 'App Performance';
  final _categories = ['App Performance', 'Design', 'Features', 'Other'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _nameController,
          decoration: const InputDecoration(labelText: 'Name'),
        ),
        const SizedBox(height: 10),
        DropdownButtonFormField<String>(
          value: _selectedCategory,
          items: _categories
              .map((category) => DropdownMenuItem(
            value: category,
            child: Text(category),
          ))
              .toList(),
          onChanged: (value) => setState(() => _selectedCategory = value!),
          decoration: const InputDecoration(labelText: 'Category'),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: _commentController,
          maxLines: 3,
          decoration: const InputDecoration(labelText: 'Comments'),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            if (_nameController.text.isNotEmpty &&
                _commentController.text.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                      'Feedback submitted for $_selectedCategory. Thank you, ${_nameController.text}!'),
                ),
              );
              _nameController.clear();
              _commentController.clear();
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Please fill all fields')),
              );
            }
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
