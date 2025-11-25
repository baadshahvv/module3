import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final total = context.watch<Cart>().total;
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      color: Colors.blueGrey.shade50,
      child: Text(
        'Total: ₹$total',
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
