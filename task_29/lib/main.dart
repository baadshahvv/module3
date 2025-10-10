import 'package:flutter/material.dart';
import 'widgets/product_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Product Catalog')),
        body: const Padding(
          padding: EdgeInsets.all(12),
          child: ProductGrid(),
        ),
      ),
    );
  }
}
