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
  final _discriptionFocusNode = FocusNode();

  // note : if you working with focusNode
  //focusnode is stick with your memory
  //  focusnode : you will have dispose them when your states get clear ,
  // when that's  object get remove so when you leave that's  screen. because the focusnodes otherwise will stick around in memory.

  @override
  void dispose() {
    //TODO : implement dispose
    _priceFocusNode.dispose();
    _discriptionFocusNode.dispose();
    super.dispose();
  }

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
              onFieldSubmitted: (_) {
                //focusnode helps us to move user input from 1st textfield to second textfield.
                FocusScope.of(context).requestFocus(_discriptionFocusNode);
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Discription'),
              maxLines: 3,
              keyboardType: TextInputType.multiline,
              focusNode: _discriptionFocusNode,
              //  textInputAction: TextInputAction.next,
            ),
          ],
        )),
      ),
    );
  }
}
