import 'package:flutter/material.dart';

class AvatarBadge extends StatelessWidget {
  final String imageUrl;
  final bool isOnline;
  final double size;

  const AvatarBadge({
    super.key,
    required this.imageUrl,
    this.isOnline = false,
    this.size = 90,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: size / 2,
          backgroundImage: NetworkImage(imageUrl),
          backgroundColor: Colors.grey.shade300,
        ),
        Positioned(
          right: 4,
          bottom: 4,
          child: Container(
            width: size * 0.22,
            height: size * 0.22,
            decoration: BoxDecoration(
              color: isOnline ? Colors.green : Colors.red,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3),
            ),
          ),
        )
      ],
    );
  }
}
