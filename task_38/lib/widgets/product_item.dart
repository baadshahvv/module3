import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../models/cart.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = context.read<Cart>();
    return Card(
      child: ListTile(
        title: Text(product.title),
        subtitle: Text('₹${product.price}'),
        trailing: ElevatedButton(
          onPressed: () {
            cart.add(product);
          },
          child: const Text('Add'),
        ),
      ),
    );
  }
}
