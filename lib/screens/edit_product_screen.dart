import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  EditProductScreen({Key? key}) : super(key: key);
  //route name
  static const routeName = '/edit=product';

  @override
  State<EditProductScreen> createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  final _priceFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            child: ListView(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Title'),
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                //focusnode helps us to move user input from 1st textfield to second textfield.
                FocusScope.of(context).requestFocus(_priceFocusNode);
              },
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Price'),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              focusNode: _priceFocusNode,
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Discription'),
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (_) {
                //focusnode helps us to move user input from 1st textfield to second textfield.
                FocusScope.of(context).requestFocus(_priceFocusNode);
              },
            ),
          ],
        )),
      ),
    );
  }
}
