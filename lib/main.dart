import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Home Page Draft 1",
      home: new Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: new AppBar(
              title: Center(child: Text('Adjective Nutrient'),),
              elevation: 36.0,
              backgroundColor: Colors.teal,
              iconTheme: IconThemeData(color: Colors.greenAccent[700]),
              actions: <Widget>[
                IconButton(icon: const Icon(Icons.search), onPressed: null),
              ],
            ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                child: new UserAccountsDrawerHeader(
                  accountName: new Text('New User', style: GoogleFonts.acme(textStyle: TextStyle(color: Colors.teal, fontSize: 18.0)),),
                  accountEmail: new Text('anonymous001@gmail.com', style: GoogleFonts.acme(textStyle: TextStyle(color: Colors.teal, fontSize: 18.0)),),
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                  ),
                  currentAccountPicture: Image.asset('lib/Account.png'),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.add_circle),
                  title: Text('Fruits for the Week', style: GoogleFonts.acme(textStyle: TextStyle(color: Colors.teal, fontSize: 20.0))),
                ),
                color: Colors.green[200],
              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.add_circle),
                  title: Text('Veggies for the Week', style: GoogleFonts.acme(textStyle: TextStyle(color: Colors.teal, fontSize: 20.0)),),
                ),
                color: Colors.green[200],
              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.arrow_forward_ios),
                  title: Text('Why Good Nutrition?', style: GoogleFonts.acme(textStyle: TextStyle(color: Colors.teal, fontSize: 20.0)),),
                  onTap: (){
                  },
                ),
                color: Colors.green[200],
              ),
                ],
          ),
        ),
        body: new Container(
          color: Colors.green[200],
        ),
        backgroundColor: Colors.lightGreen[100],
        bottomNavigationBar: CurvedNavigationBar(
          color: Colors.teal,
          backgroundColor: Colors.lightGreen,
          buttonBackgroundColor: Colors.green[200],
          height: 60,
          items: <Widget>[
            Icon(Icons.store,size: 30, color: Colors.black,),
            Icon(Icons.home,size: 30, color: Colors.black,),
            Icon(Icons.monetization_on,size: 30, color: Colors.black,),
          ],
          animationDuration: Duration(
              milliseconds: 250
          ),
          index: 1,
          animationCurve: Curves.decelerate,
          onTap: (index){
            debugPrint("Current Index is $index");
          },
        ),
        ),
      );
  }
}
