import 'package:flutter/material.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  final _taskController = TextEditingController();
  final List<Map<String, dynamic>> _tasks = [];

  void _addTask() {
    final text = _taskController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _tasks.add({'title': text, 'done': false});
        _taskController.clear();
      });
    }
  }

  void _toggleTask(int index, bool? value) {
    setState(() {
      _tasks[index]['done'] = value ?? false;
    });
  }

  void _removeTask(int index) {
    setState(() {
      _tasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _taskController,
                decoration: const InputDecoration(labelText: 'Enter task'),
              ),
            ),
            const SizedBox(width: 8),
            ElevatedButton(onPressed: _addTask, child: const Text('Add')),
          ],
        ),
        const SizedBox(height: 20),
        Expanded(
          child: _tasks.isEmpty
              ? const Center(child: Text('No tasks added yet'))
              : ListView.builder(
            itemCount: _tasks.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(_tasks[index]['title']),
                onDismissed: (_) => _removeTask(index),
                background: Container(color: Colors.red),
                child: CheckboxListTile(
                  title: Text(
                    _tasks[index]['title'],
                    style: TextStyle(
                      decoration: _tasks[index]['done']
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  value: _tasks[index]['done'],
                  onChanged: (value) => _toggleTask(index, value),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
