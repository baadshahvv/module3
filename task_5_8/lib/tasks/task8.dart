import 'package:flutter/material.dart';

class task8 extends StatelessWidget {
  const task8({super.key});

  final List<String> names = const [
    "Alice",
    "Bob",
    "Charlie",
    "David",
    "Emma",
    "Frank",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 8 ")),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(names[index]),
            onTap: () {
              print("${names[index]} tapped");
            },
          );
        },
      ),
    );
  }
}
