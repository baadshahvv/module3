import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Screen')),
      body: const Center(
        child: Text(
          'Slide Transition Complete',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
