import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter.dart';

class CounterActions extends StatelessWidget {
  const CounterActions({super.key});

  @override
  Widget build(BuildContext context) {
    final notifier = context.read<Counter>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: notifier.decrement, child: const Icon(Icons.remove)),
        const SizedBox(width: 16),
        ElevatedButton(onPressed: notifier.increment, child: const Icon(Icons.add)),
        const SizedBox(width: 16),
        ElevatedButton(onPressed: notifier.reset, child: const Icon(Icons.refresh)),
      ],
    );
  }
}
