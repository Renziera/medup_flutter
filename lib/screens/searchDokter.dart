import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';
import 'package:medup_flutter/util/network.dart';

class SearchDokter extends StatefulWidget {
  SearchDokter({String spesialis});
  @override
  State<StatefulWidget> createState() {
    return _SearchDokterState();
  }
}

class _SearchDokterState extends State<SearchDokter> {
  String queryNama = "";
  TextField _textField = TextField();

  _SearchDokterState({String spesialis}) {
    //_textField.controller.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTitle(title: 'Cari Dokter'),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: primaryColor,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              background: _searchBar(context),
            ),
            floating: true,
            automaticallyImplyLeading: false,
            snap: true,
          ),
          _widget(),
        ],
      ),
    );
  }

  Widget _searchBar(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0), color: Colors.white),
            child: TextField(
              maxLines: 1,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Masukkan nama dokter',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/dokter/filter');
                },
                child: Text('FILTER'),
              ),
              FlatButton(
                onPressed: () {},
                child: Text('URUTKAN'),
              ),
            ],
          ),
          RaisedButton(
            onPressed: () {
              _cari();
            },
            child: Text(
              'CARI',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            textColor: Colors.white,
            color: primaryLightColor,
          ),
        ],
      ),
    );
  }

  Widget _widget() {
    return SliverFixedExtentList(
      itemExtent: 140.0,
      delegate: SliverChildListDelegate(
        [
          Card(
            elevation: 8.0,
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    "assets/images/profile_1.png",
                    height: 80.0,
                    width: 80.0,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'dr. Wijaya Kusuma',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.0),
                          ),
                          Text(
                            'Spesialis Ternak Lele',
                            style: TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.bold),
                          ),
                          Text('Belum ada data pengalaman',
                              style: TextStyle(
                                fontSize: 12.0,
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              ButtonSquare('BOOK', null),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(color: Colors.red),
          Container(color: Colors.purple),
          Container(color: Colors.green),
          Container(color: Colors.orange),
          Container(color: Colors.yellow),
          Container(color: Colors.pink),
        ],
      ),
    );
  }

  void _cari() {
    TembakAPI.searchDokter();

  }
}
