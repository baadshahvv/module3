import 'package:flutter/material.dart';

class AssetImageScreen extends StatefulWidget {
  const AssetImageScreen({super.key});

  @override
  State<AssetImageScreen> createState() => _AssetImageScreenState();
}

class _AssetImageScreenState extends State<AssetImageScreen> {
  final fits = [BoxFit.cover, BoxFit.contain, BoxFit.fill];
  int index = 0;

  void changeFit() {
    setState(() {
      index = (index + 1) % fits.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Asset Image Viewer')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 200,
              color: Colors.grey[300],
              child: Image.asset('assets/sample.jpg', fit: fits[index]),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: changeFit, child: Text(fits[index].toString())),
          ],
        ),
      ),
    );
  }
}
