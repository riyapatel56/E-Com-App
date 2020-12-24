//import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:firstapp/models/cart.dart';
import 'package:firstapp/models/orders.dart';
import 'package:firstapp/models/products.dart';
import 'package:firstapp/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:provider/provider.dart';
import 'package:firstapp/screens/cart_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(
        value: Products(),
      ),
      //ChangeNotifierProvider.value(
       // value: Product(),
     // ),
      ChangeNotifierProvider.value(
        value: Cart(),
      ),
      ChangeNotifierProvider.value(
        value: Orders(),
      ),
    ],
      child: MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      routes: {
        DetailPage.routeName: (context) => DetailPage(),
        CartScreen.routeName: (context) => CartScreen(),
      },
    ),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}
