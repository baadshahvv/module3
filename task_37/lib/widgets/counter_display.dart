import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context.select<Counter, int>((c) => c.value);
    return Text('$value', style: const TextStyle(fontSize: 72, fontWeight: FontWeight.bold));
  }
}
