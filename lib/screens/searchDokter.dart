import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';
import 'package:medup_flutter/util/network.dart';
import 'package:medup_flutter/util/dokter.dart';

class SearchDokter extends StatefulWidget {
  String spesialis;
  SearchDokter({this.spesialis});
  @override
  State<StatefulWidget> createState() {
    return _SearchDokterState(spesialis: spesialis);
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

  bool tidakAdaInternet = false;
  bool tidakDitemukan = false;
  bool loading = false;

  _SearchDokterState({String spesialis}) {
    if (spesialis != null) {
      print('hore');
      spesialisasi = spesialis;
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
    if(tidakAdaInternet){
      return _tidakAdaInternet;
    }

    if(tidakDitemukan){
      return _tidakDitemukan;
    }

    if(loading){
      return _loading;
    }

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
    Widget _fotoDokter;
    if (listDokter[index].foto == null) {
      _fotoDokter = Image.asset(
        listDokter[index].jenisKelamin
            ? 'assets/images/ic_default_female_doc.png'
            : 'assets/images/ic_default_male_doc.png',
        fit: BoxFit.cover,
        height: 80.0,
        width: 80.0,
      );
    } else {
      _fotoDokter = FadeInImage.assetNetwork(
        image: listDokter[index].foto,
        placeholder: listDokter[index].jenisKelamin
            ? 'assets/images/ic_default_female_doc.png'
            : 'assets/images/ic_default_male_doc.png',
        fit: BoxFit.cover,
        height: 80.0,
        width: 80.0,
      );
    }
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _fotoDokter,
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

  Widget _loading = SliverFillRemaining(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
        ],
      ),
    );

  Widget _tidakAdaInternet = SliverFillRemaining(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/im_no_internet.png', height: 200,),
          Divider(height: 32, color: Colors.transparent,),
          Text('Koneksi internet bermasalah', style: TextStyle(fontSize: 18.0, color: primaryColor),),
        ],
      ),
    );

    Widget _tidakDitemukan = SliverFillRemaining(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/im_not_found.png', height: 150,),
          Divider(height: 32, color: Colors.transparent,),
          Text('Tidak Ditemukan', style: TextStyle(fontSize: 18.0, color: primaryColor),),
          Text('Tenaga Kesehatan yang Anda pilih belum'),
          Text('tersedia di Kota Anda'),
        ],
      ),
    );

  void _cari() async {
    FocusScope.of(context).requestFocus(new FocusNode());

    tidakAdaInternet = false;
    tidakDitemukan = false;
    loading = true;

    setState(() {});

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
      tidakAdaInternet = true;
      listDokter = List();
    }

    if(listDokter.length == 0){
      tidakDitemukan = true;
    }

    loading = false;
    
    setState(() {});
  }

  void _next(){

  }

}
