import 'package:flutter/material.dart';
import 'screens/pulsing_button_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PulsingButtonScreen(),
    );
  }
}
