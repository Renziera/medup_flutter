import 'package:flutter/material.dart';

/**
 * This class contains basic widgets
 * More complex widgets should be composed in screens
 */

/// Color constant

const primaryColor = const Color(0xff3097d9);
const primaryDarkColor = const Color(0xff0070a3);
const primaryLightColor = const Color(0xff59b8eb);
const primaryAccentColor = const Color(0xff3498db);

AppBar appBarLogo() {
  return AppBar(
    title: Image.asset(
      'assets/images/ic_medup_white.png',
      height: 32.0,
    ),
    elevation: 0,
    backgroundColor: primaryColor,
  );
}

AppBar appBarTitle({@required String title}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevation: 0,
    backgroundColor: primaryColor,
  );
}

class ButtonSquare extends StatelessWidget {
  final String _label;
  final VoidCallback _callback;

  ButtonSquare(this._label, this._callback);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _callback();
      },
      child: Text(
        _label,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      textColor: Colors.white,
      color: primaryColor,
    );
  }
}
