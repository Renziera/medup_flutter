import 'package:flutter/material.dart';
import 'ui.dart';
import 'networking.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          //leading: Image.asset("im_logo.png"),
          title: Text('Med Up'),
          elevation: 0,
        ),
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
                          Image.asset('assets/images/im_logo.png'),
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
                      child: Text("This is a card"),
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
