import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String category;
  final String name;
  final String description;
  final String imgUrl;
  final double price;

  Product({
    @required this.id,
    @required this.category,
    @required this.name,
    @required this.description,
    @required this.imgUrl,
    @required this.price,
  });
}

class Products with ChangeNotifier{
  List<Product> _items = [
    Product(
      id: '1', 
      category: 'Watch', 
      name: 'SmartWatch', 
      description: '24x7 heart rate monitoring with the built in optical HR monitor that measures your heart rate every five minutes.',
      imgUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Smart_watch.jpg/800px-Smart_watch.jpg', 
      price: 2000,
    ),
    Product(
      id: '2', 
      category: 'Movies', 
      name: 'Movie', 
      description:'Tamasha is a 2015 Indian romantic comedy-drama film written and directed by Imtiaz Ali and produced by Sajid Nadiadwala. It features Ranbir Kapoor and Deepika Padukone in lead roles.', 
      imgUrl: 'https://upload.wikimedia.org/wikipedia/en/6/63/Tamasha_%28album_cover%29.jpg', 
      price: 150,
    ),
    Product(
      id: '3', 
      category: "Book", 
      name: 'Diary of A Wimpy Kid', 
      description: 'Diary of a Wimpy Kid is a series of fiction books written by the American author and cartoonist Jeff Kinney. All the main books are the journals of the main character, Greg Heffley. Befitting a teen diary, the books are filled with simple drawings of Greg daily adventures.', 
      imgUrl: 'https://upload.wikimedia.org/wikipedia/en/thumb/8/84/Diary_of_a_Wimpy_Kid_book_cover.jpg/200px-Diary_of_a_Wimpy_Kid_book_cover.jpg', 
      price: 250,
    ),
    Product(
      id: '4', 
      category: 'Electronics', 
      name: 'Dell Laptop', 
      description: 'Dell is an American multinational computer technology company that develops, sells, repairs, ... In the mid-1990s, Dell expanded beyond desktop computers and laptops by selling servers, starting with low-end servers. ', 
      imgUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3b/Pillar_Laptop_Photo.jpg/120px-Pillar_Laptop_Photo.jpg', 
      price: 30000,
    ),
    Product(
      id: '5', 
      category: 'Makeup', 
      name: 'Lakme Kajal', 
      description: 'Lakmé is an Indian cosmetics brand which is owned by Hindustan Unilever. Having Kareena Kapoor and Chamma as the ambassador, it ranked at number 1 ', 
      imgUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRupi21PLoHj754iq2syc6bVM6I2NB-9cAcwA&usqp=CAU', 
      price: 120,
    ),
    Product(
      id: '6', 
      category: 'Clothes', 
      name: 'Tshirt', 
      description: 'When it comes to comfort, nothing can go wrong with a timeless combination of jeans and a t-shirt. Bringing you this super classy & minimalist t-shirt for embracing the summers in style. ',
      imgUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Camiseta-sonrie.jpg/120px-Camiseta-sonrie.jpg', 
      price: 120,
    ),
  ];

  List<Product>get items {
    return[..._items];
  }

  Product findbyId(String id){
    return _items.firstWhere((pdt) => pdt.id == id);
  }
}