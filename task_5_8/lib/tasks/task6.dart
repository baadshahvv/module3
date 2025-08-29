import 'package:flutter/material.dart';

class task6 extends StatelessWidget {
  const task6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task 6')),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    "https://i.pravatar.cc/150?img=3",
                  ),
                ),
                SizedBox(height: 10),
                Text('John Doe', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text('Flutter Developer', textAlign: TextAlign.center),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
