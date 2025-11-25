import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/auth_provider.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();
    if (auth.isLoggedIn) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (ModalRoute.of(context)?.settings.name != '/home') {
          Navigator.pushReplacementNamed(context, '/home');
        }
      });
      return const SizedBox.shrink();
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (ModalRoute.of(context)?.settings.name != '/login') {
          Navigator.pushReplacementNamed(context, '/login');
        }
      });
      return const SizedBox.shrink();
    }
  }
}
