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
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Dokter'),
        elevation: 0,
        actions: <Widget>[
          FlatButton(
            child: Text('Reset', style: TextStyle(color: Colors.white),), 
            onPressed: () {

            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Card(
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Jadwal Praktik'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Jam Praktik'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Spesialis'),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Jenis Kelamin'),
                        Radio(
                          groupValue: null,
                          onChanged: (Null value) {},
                          value: null,
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Lokasi', style: TextStyle(
                          fontSize: 18.0,
                        ),),
                        ButtonSquare('PILIH LOKASI', (){

                        })
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonSquare('TERAPKAN', () {
                Navigator.pop(context);
              }),
            ],
          ),
        ],
      ),
    );
  }
}
