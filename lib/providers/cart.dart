import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
   required this.id, 
   required this.title, 
   required this.quantity, 
   required this.price,
  });
}

class Cart with ChangeNotifier {

  late Map<String, CartItem> _items;
  Map<String, CartItem>  get items{
    return {
      ..._items
    };
  }
  void addItem(String productId, double price, String title, int quantity) {
    if(_items.containsKey(productId)) {
      // change quantity
      _items.update(productId, (existingCartItem) => CartItem(id: existingCartItem.id, title: existingCartItem.title, quantity: existingCartItem.quantity + 1, price: existingCartItem.price));
    } else {
      _items.putIfAbsent(productId, () => CartItem(id: DateTime.now().toString(), title: title, quantity: quantity, price: price));
    }
  }



}