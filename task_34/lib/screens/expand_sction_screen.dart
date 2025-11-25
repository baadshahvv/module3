import 'package:flutter/material.dart';

class ExpandSectionScreen extends StatefulWidget {
  const ExpandSectionScreen({super.key});

  @override
  State<ExpandSectionScreen> createState() => _ExpandSectionScreenState();
}

class _ExpandSectionScreenState extends State<ExpandSectionScreen> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expand / Collapse Section')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  expanded = !expanded;
                });
              },
              child: Text(expanded ? 'Hide Details' : 'Show Details'),
            ),
            const SizedBox(height: 20),
            AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              height: expanded ? 180 : 0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: expanded
                  ? Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Expanded Content', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('This section appears and disappears using AnimatedContainer.'),
                  ],
                ),
              )
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
