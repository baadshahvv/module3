import 'package:flutter/material.dart';
import 'package:task_11_12/widgets/counter_button.dart';

class task11 extends StatefulWidget {
  const task11({super.key});

  @override
  State<task11> createState() => _task11State();
}

class _task11State extends State<task11> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 11")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Counter Value:",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "$counter",
              style: TextStyle(fontSize: 40, color: Colors.blue),
            ),
            const SizedBox(height: 20),
            CounterButton(onIncrement: increment, onDecrement: decrement),
          ],
        ),
      ),
    );
  }
}
