import 'package:flutter/material.dart';
//import 'package:firstapp/screens/screen2.dart';

class ProfileScreen extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.redAccent[700],
      appBar: AppBar(
        title: Text('Profile Page'),
        elevation: 5.0,
        backgroundColor: Colors.red[400],
      ),
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0,top: 25,right: 10),
                child: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/1.jpg'),
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, left: 25, right: 25),
                      child: TextField(
                        autocorrect: false,
                        autofocus: false,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        decoration: InputDecoration(
                          hintText: "Name",
                          icon: Icon(Icons.add, color: Colors.red[100],),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(15.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
                      child: TextField(
                        autocorrect: false,
                        autofocus: false,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        decoration: InputDecoration(
                          hintText: "E-mail",
                          icon: Icon(Icons.mail, color: Colors.red[100],),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(15.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
                      child: TextField(
                        autocorrect: false,
                        autofocus: false,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        decoration: InputDecoration(
                          hintText: "Gender",
                          icon: Icon(Icons.person, color: Colors.red[100],),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(15.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
                      child: TextField(
                        autocorrect: false,
                        autofocus: false,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                        decoration: InputDecoration(
                          hintText: "Location",
                          icon: Icon(Icons.add_location, color: Colors.red[100],),
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.grey[200],
                          contentPadding: EdgeInsets.all(15.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SaveButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class SaveButton extends StatefulWidget {
  @override
  _SaveButtonState createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {

  String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:50.0),
      child: FlatButton(
        color: Colors.redAccent,
          onPressed: (){
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => Screen2(value : value),
            //           ));
                    }, 
                    child: Text('Save',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.white),)
      ),
    );
  }
}