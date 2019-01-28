import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';
import 'package:medup_flutter/screens/home.dart';

void main() => runApp(MedUp());

class MedUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedUp Indonesia',
      theme: ThemeData(
        primaryColor: primaryColor,
        primaryColorDark: primaryDarkColor,
        fontFamily: 'Lato',
      ),
      home: Home(),
    );
  }
  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        primaryColorDark: primaryDarkColor,
      ),
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBarLogo(),
        body: ListView(
          children: <Widget>[
            Column(
              //kolom utama
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[Text("Med Up Indonesia")],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[Text("Sehat bersama Med Up")],
                      ),
                      Row(
                        children: <Widget>[
                          //Image.asset('assets/images/im_logo.png'),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text("Hello"),
                    Divider(),
                    Text("World")
                  ],
                ),
                Row(
                  children: <Widget>[
                    Card(
                      elevation: 8,
                      child: Text("This is a card perhaps"),
                    ),
                  ],
                ),
                Row(

                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
