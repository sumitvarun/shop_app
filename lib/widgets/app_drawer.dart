import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/screens/user_product_screen.dart';
import '../screens/order_screen.dart';

class AppDrawer extends StatelessWidget {
  //static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text(
              'Categories',
              style: GoogleFonts.quicksand(fontWeight: FontWeight.w500),
            ),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.storefront,
              color: Colors.black,
            ),
            title: Text(
              'shop',
              style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.payment,
              color: Colors.black,
            ),
            title: Text(
              'Orders',
              style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
            title: Text(
              'Manage Products',
              style: GoogleFonts.quicksand(fontWeight: FontWeight.w600),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserProductsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
