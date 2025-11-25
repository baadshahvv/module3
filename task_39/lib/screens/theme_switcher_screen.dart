import 'package:flutter/material.dart';
import '../widgets/toggle_theme_button.dart';

class ThemeSwitcherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme Switcher')),
      body: Center(
        child: ToggleThemeButton(),
      ),
    );
  }
}
