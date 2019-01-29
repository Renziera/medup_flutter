import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/intro_1.png'),
              Text('Selamat datang di MedUp')
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.pushReplacement(context, null);
        },
      ),
    );
  }
}

class _Intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/intro_2.png'),
              Text('Selamat datang di MedUp')
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.pushReplacement(context, null);
        },
      ),
    );
  }
}

class _Intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/intro_3.png'),
              Text('Selamat datang di MedUp')
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.pushReplacement(context, null);
        },
      ),
    );
  }
}

class _Intro4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/intro_4.png'),
              Text('Selamat datang di MedUp')
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}