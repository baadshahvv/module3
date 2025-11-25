import 'package:flutter/material.dart';
import '../routes/slide_route.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              SlideRoute(page: SecondScreen()),
            );
          },
          child: const Text('Go to Second Screen'),
        ),
      ),
    );
  }
}
