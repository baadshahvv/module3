import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  final List<Map<String, dynamic>> products = const [
    {'name': 'Smart Watch', 'image': 'https://picsum.photos/200?image=1011'},
    {'name': 'Headphones', 'image': 'https://picsum.photos/200?image=1027'},
    {'name': 'Laptop', 'image': 'https://picsum.photos/200?image=1050'},
    {'name': 'Camera', 'image': 'https://picsum.photos/200?image=1074'},
    {'name': 'Shoes', 'image': 'https://picsum.photos/200?image=1084'},
    {'name': 'Bag', 'image': 'https://picsum.photos/200?image=1042'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(
                  product['image'],
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.broken_image, size: 80, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product['name'],
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
        );
      },
    );
  }
}
