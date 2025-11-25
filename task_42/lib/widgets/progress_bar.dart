import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double percentage;
  final double height;
  final Color backgroundColor;
  final Color progressColor;

  const ProgressBar({
    super.key,
    required this.percentage,
    this.height = 20,
    this.backgroundColor = Colors.black12,
    this.progressColor = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(height / 2),
      child: Container(
        height: height,
        color: backgroundColor,
        child: FractionallySizedBox(
          alignment: Alignment.centerLeft,
          widthFactor: percentage.clamp(0, 1),
          child: Container(
            color: progressColor,
          ),
        ),
      ),
    );
  }
}
