import 'package:flutter/material.dart';
import 'widgets/task_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Task Manager')),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: TaskManager(),
        ),
      ),
    );
  }
}
