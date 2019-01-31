import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';
import 'package:medup_flutter/util/network.dart';
import 'package:medup_flutter/util/dokter.dart';

class SearchDokter extends StatefulWidget {
  SearchDokter({String spesialis});
  @override
  State<StatefulWidget> createState() {
    return _SearchDokterState();
  }
}

class _SearchDokterState extends State<SearchDokter> {
  String nama = '';
  String spesialisasi = '';
  String lokasi = '';
  String jenisKelamin = '';
  String gelarDepan = '';
  String jadwalHari = '';

  List<Dokter> listDokter = List();

  _SearchDokterState({String spesialis}){
    if(spesialis != null){
      spesialisasi = spesialis;
      _cari();
    }
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
              textInputAction: TextInputAction.search,
              onEditingComplete: () {
                _cari();
              },
              onChanged: (value) {
                nama = value;
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Masukkan nama dokter',
                border: InputBorder.none,
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
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return _dokterCard(context, index);
        },
        childCount: listDokter.length,
      ),
    );
  }

  Widget _dokterCard(context, index) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.network(
                listDokter[index].foto == null
                    ? ''
                    : listDokter[index].foto,
                height: 80.0,
                width: 80.0,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        listDokter[index].nama,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      Text(
                        listDokter[index].spesialisasi == null
                            ? 'Dokter Umum'
                            : listDokter[index].spesialisasi,
                        style: TextStyle(
                            fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                          listDokter[index].pengalaman == null
                              ? 'Belum ada data pengalaman'
                              : listDokter[index].pengalaman,
                          style: TextStyle(
                            fontSize: 12.0,
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ButtonSquare('BOOK', () {}),
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
    );
  }

  void _cari() async {
    FocusScope.of(context).requestFocus(new FocusNode());
    listDokter = await TembakAPI.searchDokter(
      nama: nama,
      gelar_depan: gelarDepan,
      jadwal_hari: jadwalHari,
      spesialisasi: spesialisasi,
      jenis_kelamin: jenisKelamin,
      lokasi: lokasi,
    );

    if (listDokter == null) {
      //network error
      listDokter = List();
    }

    setState(() {});
  }
}
