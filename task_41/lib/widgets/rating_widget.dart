import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {
  final int maxRating;
  final double size;
  final Color color;

  const RatingWidget({
    super.key,
    this.maxRating = 5,
    this.size = 40,
    this.color = Colors.amber,
  });

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.maxRating,
            (index) {
          final filled = index < rating;
          return GestureDetector(
            onTap: () {
              setState(() {
                rating = index + 1;
              });
            },
            child: Icon(
              filled ? Icons.star : Icons.star_border,
              size: widget.size,
              color: widget.color,
            ),
          );
        },
      ),
    );
  }
}
