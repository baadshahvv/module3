import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/theme_provider.dart';

class ToggleThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>();
    return ElevatedButton(
      onPressed: () {
        context.read<ThemeProvider>().toggle();
      },
      child: Text(theme.isDark ? 'Switch to Light Mode' : 'Switch to Dark Mode'),
    );
  }
}
