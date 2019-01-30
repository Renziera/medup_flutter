import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';
import 'package:medup_flutter/screens/home.dart';
import 'package:medup_flutter/screens/searchDokter.dart';
import 'package:medup_flutter/screens/filterDokter.dart';
import 'package:medup_flutter/screens/intro.dart';
import 'package:medup_flutter/screens/perjanjian.dart';
import 'package:medup_flutter/screens/darurat.dart';

void main() => runApp(MedUp());

class MedUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedUp Indonesia',
      theme: ThemeData(
        primaryColor: primaryColor,
        primaryColorDark: primaryDarkColor,
        accentColor: primaryAccentColor,
        fontFamily: 'Lato',
      ),
      home: Home(),
      routes: {
        '/home': (context) => Home(),
        '/intro': (context) => Intro(),
        '/perjanjian': (context) => Perjanjian(),
        '/dokter/search': (context) => SearchDokter(),
        '/dokter/filter': (context) => FilterDokter(),
        '/darurat': (context) => PanggilanDarurat(),
      },
    );
  }
}
