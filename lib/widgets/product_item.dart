import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/product.dart';
import 'package:shop_app/screens/product_details_screen.dart';

class ProductItem extends StatelessWidget {
 // ProductItem(this.id, this.title, this.imageUrl);

//  final String id;
 // final String title;
 // final String imageUrl;

  @override
  Widget build(BuildContext context) {
   final product = Provider.of<Product> (context, listen:  false);
   //print('product rebuilds');
    return ClipRRect(
        borderRadius: BorderRadius.circular(18.0),
        child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            leading: Consumer<Product>(
      builder: (context, product, _) =>   IconButton(
              onPressed: () {
                product.toggleFavoriteStatus();
              },
              icon:  Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border),
            ),),
            title: Text(
              product.title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
                onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          ),
          child: GestureDetector(
            onTap: (() {
              Navigator.of(context)
                  .pushNamed(ProductDetailScreen.routeName, arguments: product.id);
            }),
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
      
    
  }
}
