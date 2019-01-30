import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SwitchListTile(
            onChanged: (bool value) {},
            value: true,
            activeColor: primaryColor,
            title: Text('Daftar'),
          ),
        ],
      ),
    );
  }
}
