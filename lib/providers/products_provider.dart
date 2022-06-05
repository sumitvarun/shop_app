import 'package:flutter/material.dart';
import 'package:shop_app/model/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items {
    return [..._items];
  }
}
