import 'package:firstapp/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/models/products.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {

  static const routeName = '/product-detail';


  @override
  Widget build(BuildContext context) {

    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedPdt = Provider.of<Products>(context).findbyId(productId);
    final cart = Provider.of<Cart>(context);
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(loadedPdt.name),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.network(loadedPdt.imgUrl),
            )
          ),
          Text(
            'Price - ${loadedPdt.price} Rs',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              '${loadedPdt.description}',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 3.0,
        onPressed: (){
          cart.addItem(productId, loadedPdt.name, loadedPdt.price);
        },
        backgroundColor: Colors.redAccent[700],
        child: Icon(Icons.shopping_cart,size: 27,),
      ),
    );
  }
}