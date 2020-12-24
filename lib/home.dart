import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstapp/screens/cart_screen.dart';
import 'package:firstapp/screens/prf_screen.dart';
//import 'package:firstapp/widgets/all_products.dart';
import 'package:firstapp/widgets/home_body.dart';
//import 'package:firstapp/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/login.dart';
//import 'widgets/category.dart';
//import 'package:firstapp/widgets/all_products.dart' show AllProducts;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String uid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
        title: Text('E-Com'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                  (route) => false);
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_sharp),
            onPressed: () => Navigator.of(context).pushNamed(CartScreen.routeName),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Welcome To \nE-Com App",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  )
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.redAccent[400],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_rounded),
              title: Text('Profile'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(
                 context, MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
          ],
        ),
      ),
      body: HomeBody()
    );
  }

  @override
  void initState() {
    super.initState();
    uid = FirebaseAuth.instance.currentUser.uid;
  }
}

