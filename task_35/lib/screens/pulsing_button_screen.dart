import 'package:flutter/material.dart';

class PulsingButtonScreen extends StatefulWidget {
  @override
  State<PulsingButtonScreen> createState() => _PulsingButtonScreenState();
}

class _PulsingButtonScreenState extends State<PulsingButtonScreen> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pulsing Button')),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 1, end: animate ? 1.2 : 1),
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOut,
          onEnd: () {
            setState(() {
              animate = !animate;
            });
          },
          builder: (context, value, child) {
            return Transform.scale(
              scale: value,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Pulse'),
              ),
            );
          },
        ),
      ),
    );
  }
}
