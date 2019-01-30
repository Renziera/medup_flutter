import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';

class PanggilanDarurat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTitle(title: 'Panggilan Darurat'),
      body: Text('Google Maps here'),
    );
  }
}

class FaskesTerdekat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTitle(title: 'Faskes Terdekat'),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          
        },
        itemCount: 1,
      ),
    );
  }
}