import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  String imageUrl = 'https://picsum.photos/300/200';

  void changeImage() {
    setState(() {
      imageUrl = 'https://picsum.photos/300/200?random=${DateTime.now().millisecondsSinceEpoch}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Network Image Changer')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: changeImage,
              child: const Text('Change Image'),
            ),
          ],
        ),
      ),
    );
  }
}
