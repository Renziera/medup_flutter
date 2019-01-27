import 'package:flutter/material.dart';

class ButtonSquare extends StatelessWidget {
  final String label;

  ButtonSquare(this.label);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
       onPressed: (){

       },
       child: Text(label),
    );
  }
}