import 'package:flutter/material.dart';

class task2 extends StatefulWidget {
  @override
  State<task2> createState() => _task2State();
}

class _task2State extends State<task2> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task 2')),
      body: Center(
        child: Text('Counter: $counter', style: TextStyle(fontSize: 26)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ),
    );
  }
}
