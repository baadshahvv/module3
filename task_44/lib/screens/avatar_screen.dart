import 'package:flutter/material.dart';
import '../widgets/avatar_badge.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const img = 'https://i.pravatar.cc/300?img=5';
    return Scaffold(
      appBar: AppBar(title: const Text('Avatar Badge Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AvatarBadge(
              imageUrl: img,
              isOnline: true,
            ),
            SizedBox(height: 20),
            AvatarBadge(
              imageUrl: img,
              isOnline: false,
              size: 70,
            ),
          ],
        ),
      ),
    );
  }
}
