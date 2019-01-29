import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';

class FilterDokter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FilterDokterState();
  }
}

class _FilterDokterState extends State<FilterDokter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          child: ListView(),
        ),
        ButtonSquare('TERAPKAN', () {
          Navigator.pop(context);
        }),
      ],
    );
  }
  
}