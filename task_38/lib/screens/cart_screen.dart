import 'package:flutter/material.dart';
import '../widgets/product_item.dart';
import '../widgets/cart_total.dart';
import '../models/product.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final List<Product> products = [
    Product(title: 'Shoes', price: 1200),
    Product(title: 'Watch', price: 2100),
    Product(title: 'Bag', price: 900),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shopping Cart')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductItem(product: products[index]);
              },
            ),
          ),
          const CartTotal()
        ],
      ),
    );
  }
}
