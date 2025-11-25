import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/theme_provider.dart';
import 'screens/theme_switcher_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, theme, _) {
          return MaterialApp(
            theme: theme.isDark ? ThemeData.dark() : ThemeData.light(),
            home: ThemeSwitcherScreen(),
          );
        },
      ),
    );
  }
}
