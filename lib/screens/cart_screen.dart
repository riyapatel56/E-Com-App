import 'package:firstapp/models/orders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
import '../widgets/cart_item.dart';
//import 'package:firstapp/screens/cart_screen.dart';

class CartScreen extends StatelessWidget {

  static const routeName = '/cart';

  @override
  Widget build(BuildContext context) {

    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text(
          'My Cart',
          style: TextStyle(
            fontSize: 21,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, i) => CartPdt(
                cart.items.values.toList()[i].quantity, 
                cart.items.values.toList()[i].name, 
                cart.items.values.toList()[i].id, 
                cart.items.values.toList()[i].price, 
                cart.items.keys.toList()[i],
              )),
          ),
          CheckoutButton(
            cart: cart,
          ),
          /*Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: FlatButton(
              onPressed: (){

              }, 
              child: Text(
                "Check Out",
                style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 20,
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}

class CheckoutButton extends StatefulWidget {

  final Cart cart;

  const CheckoutButton({@required this.cart});

  @override
  _CheckoutButtonState createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('Checkout'),
      onPressed: widget.cart.totalAmount<=0 ? null : () async{
        await Provider.of<Orders>(context, listen: false).addOrder(
          widget.cart.items.values.toList(),
          widget.cart.totalAmount,
        );
        Scaffold.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 3),
          content: Text('Order Placed'),
        ));
      },
    );
  }
}