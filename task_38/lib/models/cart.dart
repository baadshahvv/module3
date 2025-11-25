import 'package:flutter/foundation.dart';
import 'product.dart';

class Cart extends ChangeNotifier {
  final List<Product> _items = [];

  List<Product> get items => _items;

  double get total {
    double sum = 0;
    for (var p in _items) {
      sum += p.price;
    }
    return sum;
  }

  void add(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void remove(Product product) {
    _items.remove(product);
    notifyListeners();
  }
}
