import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';

class Perjanjian extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PerjanjianState();
  }
}

class _PerjanjianState extends State<Perjanjian> {
  @override
  Widget build(BuildContext context) {
    return ListView(

    );
  }
}

class RiwayatPerjanjian extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTitle(title: 'Riwayat Janji'),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          print(index);
        },
      ),
    );
  }
}