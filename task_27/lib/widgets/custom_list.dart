import 'package:flutter/material.dart';

class CustomList extends StatefulWidget {
  const CustomList({super.key});

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  final List<Map<String, dynamic>> _items = [
    {'title': 'Email from Alex', 'icon': Icons.email, 'color': Colors.blue},
    {'title': 'Meeting Reminder', 'icon': Icons.calendar_today, 'color': Colors.green},
    {'title': 'New Message', 'icon': Icons.message, 'color': Colors.orange},
    {'title': 'System Alert', 'icon': Icons.warning, 'color': Colors.red},
  ];

  void _deleteItem(int index) {
    setState(() {
      _items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 6),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: _items[index]['color'],
              child: Icon(_items[index]['icon'], color: Colors.white),
            ),
            title: Text(
              _items[index]['title'],
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () => _deleteItem(index),
            ),
          ),
        );
      },
    );
  }
}
