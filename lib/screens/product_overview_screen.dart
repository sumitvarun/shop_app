
import 'dart:js';

import 'package:flutter/material.dart';

import 'package:shop_app/widgets/product_grid.dart';


enum FilterOptions {
Favorites, 
All,
}

class ProductOverviewScreen extends StatefulWidget {
   ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {

 var _showOnlyFavorites = false;


  @override
  Widget build(BuildContext context) {
    //final productsContainer = Provider.of<Products>(context , listen:  false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
        actions: <Widget>[
          PopupMenuButton(onSelected: (
            FilterOptions selectedValue
          ){
            setState(() {
              if (selectedValue == FilterOptions.Favorites){
             // productsContainer.showFavoritesOnly();
             _showOnlyFavorites = true;
            } else {
             // productsContainer.showAll();
             _showOnlyFavorites = false;
            }
              
            });
            
          },
            itemBuilder: (_) => [
           const PopupMenuItem(value: FilterOptions.Favorites,child: Text('Only Favorites'),),
            const PopupMenuItem(value: FilterOptions.All,child: Text('Show All'),),

          ],
           icon: Icon(Icons.more_vert),),
           
        ],
      ),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}
