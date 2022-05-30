import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_details_screen.dart';

class ProductItem extends StatelessWidget {
  ProductItem(this.id, this.title, this.imageUrl);

  final String id;
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ),
        child: GestureDetector(
          onTap: (() {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => const ProductDetailScreen()));
          }),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
