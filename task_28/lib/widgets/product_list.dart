import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Smart Watch',
      'price': '\$120',
      'image': 'https://picsum.photos/200?image=1011'
    },
    {
      'name': 'Headphones',
      'price': '\$80',
      'image': 'https://picsum.photos/200?image=1027'
    },
    {
      'name': 'Laptop',
      'price': '\$950',
      'image': 'https://picsum.photos/200?image=1050'
    },
    {
      'name': 'Camera',
      'price': '\$400',
      'image': 'https://picsum.photos/200?image=1074'
    },
    {
      'name': 'Shoes',
      'price': '\$60',
      'image': 'https://picsum.photos/200?image=1084'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Container(
            width: 160,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Card(
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
                  const SizedBox(height: 5),
                  Text(product['price'], style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
