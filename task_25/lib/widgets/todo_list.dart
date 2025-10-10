import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _tasks = [];

  void _addTask() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _tasks.add(text);
        _controller.clear();
      });
    }
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
                controller: _controller,
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
                key: Key(_tasks[index]),
                direction: DismissDirection.endToStart,
                onDismissed: (_) => _removeTask(index),
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                child: Card(
                  child: ListTile(title: Text(_tasks[index])),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
