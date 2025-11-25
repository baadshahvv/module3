import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const sampleImage = 'https://i.pravatar.cc/600?img=12';
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Card')),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: ProfileCard(
            name: 'Alex Johnson',
            imageUrl: sampleImage,
            bio: 'Mobile developer. Coffee enthusiast. Loves building beautiful UIs and teaching Flutter.',
          ),
        ),
      ),
    );
  }
}
