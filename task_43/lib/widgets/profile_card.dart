import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String bio;
  final double width;

  const ProfileCard({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.bio,
    this.width = 340,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(blurRadius: 12, color: Colors.black26, offset: Offset(0, 6))
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: SizedBox(
                height: 180,
                width: double.infinity,
                child: Image.network(imageUrl, fit: BoxFit.cover, errorBuilder: (c, e, s) {
                  return Container(color: Colors.grey.shade300, child: const Icon(Icons.person, size: 80));
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(bio, textAlign: TextAlign.center, style: const TextStyle(fontSize: 14)),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () {}, child: const Text('Follow')),
                      const SizedBox(width: 12),
                      OutlinedButton(onPressed: () {}, child: const Text('Message')),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
