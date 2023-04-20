import 'package:flutter/material.dart';
import 'package:stationary_test/components/products.dart';
import 'package:stationary_test/main.dart';

class ProductDetails extends StatelessWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  const ProductDetails(
      {Key? key,
      this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color(0xFF797eFC),
        title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
            },
            child: Text('StationaryApp')),
        actions: [
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),

        ],
      ),
      body: new ListView(
        children: [
          new Container(
              height: 200.0,
              child: GridTile(
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(product_detail_picture),
                  ),
                  footer: new Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: new Text(
                        product_detail_name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                      ),
                      title: new Row(
                        children: [
                          Expanded(
                            child: new Text("\$${product_detail_old_price}",
                                style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                )),
                          ),
                          Expanded(
                              child: new Text(
                            "\$${product_detail_new_price}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          )),
                        ],
                      ),
                    ),
                  ))),

          //      =================the first buttons========

          Row(
            children: [
              // the size button

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text('Size'),
                            content: new Text('Choose the Size'),
                            actions: [
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text('Close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              // the color button

              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text('Colors'),
                            content: new Text('Choose a Color'),
                            actions: [
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text('Close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              // the qty button
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: new Text('Quantity'),
                            content: new Text('Choose a Quantity'),
                            actions: [
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text('Close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(child: new Text("QTY")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //      =================the second buttons========
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy now")),
              ),
              new IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  )),
              new IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )),
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text('Product Details'),
            subtitle: new Text(
                'This book are of A4 size, good quality pages. page count 50'),
          ),
          Divider(),
          new Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text(product_detail_name),
              )
            ],
          ),

          new Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text('Brandx'),
              )
            ],
          ),

          new Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text(
                  "Product Condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: new Text('condition y'),
              )
            ],
          ),

          Divider(),
          Padding(padding: const EdgeInsets.all(8.0),
          child: new Text("Similar Products"),
          ),


          // Similar Products Section
          Container(
            height: 360.0,
            child: Similar_Products(),
          )
        ],
      ),
    );
  }
}

class Similar_Products extends StatefulWidget {
  const Similar_Products({Key? key}) : super(key: key);

  @override
  State<Similar_Products> createState() => _Similar_ProductsState();
}

class _Similar_ProductsState extends State<Similar_Products> {
  var product_list = [
    {
      "name": "Drawing book",
      "picture": "images/category/books.jpg",
      "old_price": 40,
      "price": 35,
    },
    {
      "name": "Eraser",
      "picture": "images/category/eraser.png",
      "old_price": 10,
      "price": 5,
    },
    {
      "name": "Glue",
      "picture": "images/category/glue.jpg",
      "old_price": 20,
      "price": 18,
    },
    {
      "name": "Calculator",
      "picture": "images/category/calculator.png",
      "old_price": 100,
      "price": 90,
    },
    {
      "name": "Craft",
      "picture": "images/category/craft.jpg",
      "old_price": 50,
      "price": 46,
    },
    {
      "name": "Long book",
      "picture": "images/category/books.jpg",
      "old_price": 48,
      "price": 42,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            product_name: product_list[index]['name'],
            product_picture: product_list[index]['picture'],
            product_old_price: product_list[index]['old_price'],
            product_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_Single_prod extends StatelessWidget {
  const Similar_Single_prod(
      {Key? key,
        this.product_name,
        this.product_picture,
        this.product_old_price,
        this.product_price})
      : super(key: key);

  final product_name;
  final product_picture;
  final product_old_price;
  final product_price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text('hero1'),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(

                    // here we are passing the value of the product to product details page
                    product_detail_name: product_name,
                    product_detail_new_price: product_price,
                    product_detail_old_price: product_old_price,
                    product_detail_picture: product_picture,
                  ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.white70,
                      child: new Row(
                        children: [
                          Expanded(
                            child: Text(product_name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),),
                          ),
                          new Text("\$$product_price",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold),),
                        ],
                      )
                  ),
                  child: Image.asset(
                    product_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}

