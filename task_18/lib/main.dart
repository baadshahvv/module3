import 'package:flutter/material.dart';
import 'widgets/feedback_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Feedback Form')),
        body: const Padding(
          padding: EdgeInsets.all(16),
          child: FeedbackForm(),
        ),
      ),
    );
  }
}
