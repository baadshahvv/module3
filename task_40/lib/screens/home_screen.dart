import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/auth_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<AuthProvider>().logout();
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              auth.isLoggedIn ? 'Welcome, ${auth.user}' : 'Not logged in',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Protected Action'),
            )
          ],
        ),
      ),
    );
  }
}
