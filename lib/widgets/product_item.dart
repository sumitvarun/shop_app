import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  ProductItem(this.id, this.title, this.imageUrl);

  final String id;
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(imageUrl),
    );
  }
}
