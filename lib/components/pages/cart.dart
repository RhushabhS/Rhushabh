import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color(0xFF797eFC),
        title: Text('Shopping Cart'),
        actions: [
          new IconButton(
            icon: Icon(
                Icons.search,
                color: Colors.white
            ),onPressed: () {  },),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: (){}),
        ],
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: new Text("Total:"),
              subtitle: new Text ("\$230"),)),
    Expanded(
    child: new MaterialButton(onPressed: (){},
    child: new Text('Check out', style: TextStyle(color: Colors.white),),
      color: Colors.red,),
            ))
          ],
        ),
      ),
    );
  }
}
