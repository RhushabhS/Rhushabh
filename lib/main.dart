// @dart=2.9
import 'package:stationary_test/components/pages/cart.dart';

import 'src/my_app.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:stationary_test/components/horizontal_listview.dart';
import  'package:stationary_test/components/products.dart';
import 'package:stationary_test/components/pages/product_details.dart';

void main ()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      
    )
  );
}
    class HomePage extends StatefulWidget {
      const HomePage({key}) : super(key: key);
    
      @override
      State<HomePage> createState() => _HomePageState();
    }
    
    class _HomePageState extends State<HomePage> {
      @override
      Widget build(BuildContext context) {
          Widget image_carousel = new Container(
            height: 200.0,
            child: new Carousel(
              boxFit: BoxFit.cover,
              images: [
                AssetImage('images/products/1.jpg'),
                AssetImage('images/products/2.jpg'),
                AssetImage('images/products/3.jpg'),
                AssetImage('images/products/4.jpg'),
                AssetImage('images/products/5.jpg'),
              ],
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 1000),
              dotSize: 4.0,
              dotColor: Colors.transparent,
              indicatorBgPadding: 2.0,

            ),
          );

        return Scaffold(
          appBar: AppBar(
            elevation: 0.1,
            backgroundColor: Color(0xFF797eFC),
          title: Text('StationaryApp'),
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
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
                }),
            ],
          ),
          drawer: new Drawer(
            child: new ListView(
              children: [

                //header
                new UserAccountsDrawerHeader(
                    accountName: Text('Jupiter Analytics Pvt. Ltd.'),
                    accountEmail: Text('rhushabh.shah@jupiter-analytics.com'),
                  currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person,color: Colors.white),
                    ),
                  ),
                    decoration: new BoxDecoration(
                      color: Color(0xFF797eFC)
                    ),
                ),

                // body
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Home Page'),
                    leading: Icon(Icons.home),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('My Account'),
                    leading: Icon(Icons.person, color: Colors.red,),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('My Orders'),
                    leading: Icon(Icons.shopping_basket, color: Colors.red,),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
                  },
                  child: ListTile(
                    title: Text('Shopping Cart'),
                    leading: Icon(Icons.shopping_cart, color: Colors.red,),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Favourites'),
                    leading: Icon(Icons.favorite, color: Colors.red,),
                  ),
                ),

                Divider(),

                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Settings'),
                    leading: Icon(Icons.settings),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('About'),
                    leading: Icon(Icons.help),
                  ),
                ),
              ],
            ),
          ),
          body: new ListView(
            children: [
              // image carousel begings here
              image_carousel,
              // padding widget
              new Padding(padding: const EdgeInsets.all(8.0),
              child: new Text ('Categories'),),

              //Horizontal List View Begins Here

              HorizontalList(),

              // padding widget

              new Padding(padding: const EdgeInsets.all(20.0),
                child: new Text ('Recent Products'),),

              // grid view

              Container(
                height: 320.0,
                child: Products(
                ),
              )
            ],
          ),
        );
      }
    }
    
    