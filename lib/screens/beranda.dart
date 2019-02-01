import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';
import 'searchDokter.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _banner(context),
        _faskes(context),
        Container(
          child: Divider(
            color: Colors.black45,
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
        ),
        _dokter(context),
        Container(
          child: Divider(
            color: Colors.black45,
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
        ),
        _darurat(context),
        Divider(
          height: 16,
          color: Colors.transparent,
        )
      ],
    );
  }

  Widget _banner(context) {
    return Container(
      color: primaryColor,
      padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Sehat Sekarang',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lato',
                fontSize: 36.0,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'bersama MedUp',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lato',
                fontSize: 36.0,
                fontWeight: FontWeight.bold),
          ),
          Divider(
            height: 12.0,
            color: Colors.transparent,
          ),
          Text(
            'FASILITAS KESEHATAN DAN DOKTER',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lato',
                fontSize: 14.0,
                fontWeight: FontWeight.w100),
          ),
          Text(
            'DALAM GENGGAMAN ANDA',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lato',
                fontSize: 14.0,
                fontWeight: FontWeight.w100),
          ),
          Divider(
            height: 12.0,
            color: Colors.transparent,
          ),
          Row(
            children: <Widget>[
              OutlineButton(
                borderSide: BorderSide(
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'CARI FASILITAS KESEHATAN',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/intro');
                },
              ),
              Divider(
                indent: 8.0,
                color: Colors.transparent,
              ),
              OutlineButton(
                borderSide: BorderSide(
                  color: Colors.white,
                  style: BorderStyle.solid,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'CARI DOKTER',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/dokter/search');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _faskes(context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Fasilitas Kesehatan',
            style: TextStyle(fontSize: 16.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Temukan rumah sakit terdekat dengan lokasi Anda',
                style: TextStyle(fontSize: 12.0),
              ),
              FlatButton(
                child: Text(
                  'LIHAT SEMUA',
                  style: TextStyle(color: primaryColor, fontSize: 12),
                ),
                onPressed: () {},
              )
            ],
          ),
          Container(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/rumah sakit.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Rumah Sakit',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/klinik.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Klinik',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/gigi.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Klinik Gigi',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/kecantikan.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Klinik',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                      Text(
                        'Kecantikan',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/perseorangan.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Praktek',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                      Text(
                        'Perseorangan',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _dokter(context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Dokter Spesialis',
            style: TextStyle(fontSize: 16.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Temukan dokter yang handal dan terpercaya',
                style: TextStyle(fontSize: 12.0),
              ),
              FlatButton(
                child: Text(
                  'LIHAT SEMUA',
                  style: TextStyle(color: primaryColor, fontSize: 12),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDokter(spesialis: '',)));
                },
              )
            ],
          ),
          Container(
            height: 90,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDokter(spesialis: '',)));
                  },
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/umum.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Umum',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDokter(spesialis: 'Gigi',)));
                  },
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/gigi.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Gigi',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDokter(spesialis: 'Bedah',)));
                  },
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/bedah.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Bedah',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDokter(spesialis: 'Jantung',)));
                  },
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/jantung.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Jantung',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDokter(spesialis: 'Mata',)));
                  },
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/mata.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Mata',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDokter(spesialis: 'Paru',)));
                  },
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/paru paru.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Paru',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDokter(spesialis: 'Kandungan',)));
                  },
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/kandungan.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Kandungan',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDokter(spesialis: 'Penyakit Dalam',)));
                  },
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/penyakit dalam.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Penyakit Dalam',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  indent: 8.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchDokter(spesialis: 'Saraf',)));
                  },
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 8.0,
                        color: Colors.transparent,
                      ),
                      Image.asset(
                        'assets/images/syaraf.png',
                        height: 48,
                        width: 48,
                      ),
                      Text(
                        'Saraf',
                        style: TextStyle(color: primaryColor, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _darurat(context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/darurat');
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/darurat.png',
              height: 48.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Panggilan Darurat'),
                Text(
                  'Temukan rumah sakit terdekat dengan lokasi Anda',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
