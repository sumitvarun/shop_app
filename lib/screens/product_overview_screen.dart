
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:shop_app/widgets/product_grid.dart';

import '../providers/products_provider.dart';

enum FilterOptions {
Favorites, 
All,
}

class ProductOverviewScreen extends StatelessWidget {
   ProductOverviewScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    final productsContainer = Provider.of<Products>(context , listen:  false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
        actions: <Widget>[
          PopupMenuButton(onSelected: (
            FilterOptions selectedValue
          ){
            if (selectedValue == FilterOptions.Favorites){
              productsContainer.showFavoritesOnly();
            } else {
              productsContainer.showAll();
            }
          },
            itemBuilder: (_) => [
           const PopupMenuItem(value: FilterOptions.Favorites,child: Text('Only Favorites'),),
            const PopupMenuItem(value: FilterOptions.All,child: Text('Show All'),),

          ],
           icon: Icon(Icons.more_vert),)
        ],
      ),
      body: ProductsGrid(),
    );
  }
}
