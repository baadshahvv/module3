import 'package:flutter/material.dart';
import '../widgets/icon_above_text_button.dart';

class CustomButtonScreen extends StatelessWidget {
  const CustomButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon Above Text Button')),
      body: Center(
        child: IconAboveTextButton(
          width: 140,
          height: 140,
          label: 'Upload',
          icon: Icons.cloud_upload,
          onPressed: () {},
        ),
      ),
    );
  }
}
