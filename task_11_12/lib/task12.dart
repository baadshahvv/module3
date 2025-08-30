import 'package:flutter/material.dart';

class task12 extends StatefulWidget {
  const task12({super.key});

  @override
  State<task12> createState() => _task12State();
}

class _task12State extends State<task12> {
  bool isSwitched = false;

  void toggleBackground(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSwitched ? Colors.lightBlue : Colors.white,
      appBar: AppBar(
        title: const Text("Task 12"),
        actions: [
          Row(
            children: [
              const Text("Background Color"),
              Switch(value: isSwitched, onChanged: toggleBackground),
            ],
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Toggle the switch in appbar to change background color",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
