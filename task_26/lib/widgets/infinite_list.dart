import 'package:flutter/material.dart';
import 'dart:async';

class InfiniteList extends StatefulWidget {
  const InfiniteList({super.key});

  @override
  State<InfiniteList> createState() => _InfiniteListState();
}

class _InfiniteListState extends State<InfiniteList> {
  final List<int> _items = List.generate(20, (index) => index);
  final ScrollController _controller = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (_controller.position.pixels >= _controller.position.maxScrollExtent - 100 && !_isLoading) {
      _loadMore();
    }
  }

  Future<void> _loadMore() async {
    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 2));
    final nextItems = List.generate(10, (index) => _items.length + index);
    setState(() {
      _items.addAll(nextItems);
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            controller: _controller,
            itemCount: _items.length + 1,
            itemBuilder: (context, index) {
              if (index == _items.length) {
                return _isLoading
                    ? const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(child: CircularProgressIndicator()),
                )
                    : const SizedBox.shrink();
              }
              return ListTile(
                title: Text('Item ${_items[index]}'),
              );
            },
          ),
        ),
      ],
    );
  }
}
