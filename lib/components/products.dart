import 'package:flutter/material.dart';
import 'package:stationary_test/components/pages/product_details.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
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

class Single_prod extends StatelessWidget {
  const Single_prod(
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
