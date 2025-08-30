import 'package:flutter/material.dart';
import 'package:task9/calculator_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Calculator',
      debugShowCheckedModeBanner: false,
      home: const CalculatorScreen(),
    );
  }
}

