import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/counter_display.dart';
import '../widgets/counter_actions.dart';
import '../models/counter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<Counter>().value;
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Counter')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CounterDisplay(),
            const SizedBox(height: 20),
            Text('Current value from watch: $counter', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 30),
            const CounterActions()
          ],
        ),
      ),
    );
  }
}
