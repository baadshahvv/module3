import 'package:flutter/material.dart';
import '../widgets/rating_widget.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rating Widget')),
      body: const Center(
        child: RatingWidget(),
      ),
    );
  }
}
