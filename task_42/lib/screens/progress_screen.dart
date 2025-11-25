import 'package:flutter/material.dart';
import '../widgets/progress_bar.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress Bar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProgressBar(
              percentage: value,
              height: 22,
              progressColor: Colors.green,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  value += 0.1;
                  if (value > 1) value = 0;
                });
              },
              child: const Text('Increase Progress'),
            )
          ],
        ),
      ),
    );
  }
}
