import 'package:firstapp/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPdt extends StatelessWidget {

  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String name;

  CartPdt(
    this.quantity,
    this.name,
    this.id,
    this.price,
    this.productId,
  );
   
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.redAccent[700],
      ),
      onDismissed: (direction){
        Provider.of<Cart>(context).removeItem(productId);
      },
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
              child: Text('${price}Rs'),
            ),
          ),
          title: Text(name),
          subtitle: Text('Total: ${(price*quantity)} Rs'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}