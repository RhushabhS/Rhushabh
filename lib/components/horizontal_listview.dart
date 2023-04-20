import 'package:flutter/material.dart';
import 'package:flutter/src/painting/binding.dart';
import 'package:flutter/src/painting/image_provider.dart';



class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Category(
                image_location: 'images/category/glue.jpg',
                image_caption: 'glue',
            ),

            Category(
              image_location: 'images/category/calculator.png',
              image_caption: 'calculator',
            ),

            Category(
              image_location: 'images/category/eraser.png',
              image_caption: 'eraser',
            ),

            Category(
              image_location: 'images/category/books.jpg',
              image_caption: 'books',
            ),

            Category(
              image_location: 'images/category/craft.jpg',
              image_caption: 'craft',
            ),
          ],
        ),
    );

  }
}
class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  const Category({Key? key, required this.image_location,
    required this.image_caption}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(1.0),
    child: InkWell(onTap: (){},
    child: Container(
      width: 100.0,
      child: ListTile(
        title: Image.asset(image_location,
        width: 100.0,
            height: 80.0,
            ),
        subtitle: Container(
          alignment: Alignment.topCenter,
          child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
        ),
      ),
    ),
    ),
    );
  }
}

