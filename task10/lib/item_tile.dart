import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({super.key, required this.itemName, required this.onAdd});

  final String itemName;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListTile(
        title: Text(itemName),
        trailing: ElevatedButton(
          onPressed: onAdd,
          child: const Text("Add to Cart"),
        ),
      ),
    );
  }
}
