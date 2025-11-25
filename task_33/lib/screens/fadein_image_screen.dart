import 'dart:typed_data';
import 'package:flutter/material.dart';

const List<int> _kTransparentImage = <int>[
  0x89,0x50,0x4E,0x47,0x0D,0x0A,0x1A,0x0A,
  0x00,0x00,0x00,0x0D,0x49,0x48,0x44,0x52,
  0x00,0x00,0x00,0x01,0x00,0x00,0x00,0x01,
  0x08,0x06,0x00,0x00,0x00,0x1F,0x15,0xC4,
  0x89,0x00,0x00,0x00,0x0A,0x49,0x44,0x41,
  0x54,0x78,0x9C,0x63,0x00,0x01,0x00,0x00,
  0x05,0x00,0x01,0x0D,0x0A,0x2D,0xB4,0x00,
  0x00,0x00,0x00,0x49,0x45,0x4E,0x44,0xAE
];

class FadeInImageScreen extends StatelessWidget {
  const FadeInImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const imageUrl = 'https://picsum.photos/800/500';
    return Scaffold(
      appBar: AppBar(title: const Text('Fade-in Network Image')),
      body: Center(
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: 350,
              height: 220,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  FadeInImage.memoryNetwork(
                    placeholder: Uint8List.fromList(_kTransparentImage),
                    image: imageUrl,
                    fit: BoxFit.cover,
                    fadeInDuration: const Duration(milliseconds: 600),
                    fadeOutDuration: const Duration(milliseconds: 200),
                    placeholderFit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 12,
                    bottom: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Nature Photo',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
