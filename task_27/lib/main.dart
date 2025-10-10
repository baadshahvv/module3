import 'package:flutter/material.dart';
import 'widgets/custom_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Styled List')),
        body: const Padding(
          padding: EdgeInsets.all(8),
          child: CustomList(),
        ),
      ),
    );
  }
}
