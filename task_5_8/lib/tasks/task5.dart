import 'package:flutter/material.dart';

class task5 extends StatelessWidget {
  const task5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task 5')),
      body: Row(
        children: [
          Expanded(
              flex: 1,
              child: Container(color: Colors.cyan, height: 100)),
          Expanded(
              flex: 3,
              child: Container(color: Colors.amber, height: 100)),
          Expanded(
            flex: 3,
            child: Container(color: Colors.deepOrange, height: 100),
          ),
        ],
      ),
    );
  }
}
