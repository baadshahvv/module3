import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({
    super.key,
    required this.onIncrement,
    required this.onDecrement,
  });

  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: onDecrement,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
          child: const Text("Decrement"),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: onIncrement,
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          child: const Text("Increment"),
        ),
      ],
    );
  }
}
