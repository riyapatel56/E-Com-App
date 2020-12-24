import 'package:flutter/material.dart';
import 'package:firstapp/widgets/category_card.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
            Icon(Icons.book,size: 40,),
            "Book",
          ),
          CategoryCard(
            Icon(Icons.watch,size: 40),
            "Watches",
          ),
          CategoryCard(
            Icon(Icons.videogame_asset,size: 40),
            "Game",
          ),
          CategoryCard(
            Icon(Icons.movie,size: 40),
            "Movies",
          ),
          CategoryCard(
            Icon(Icons.computer,size: 40),
            "Laptop",
          ),
        ],
      ),
    );
  }
}

