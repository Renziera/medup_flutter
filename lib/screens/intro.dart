import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/intro_1.png'),
              Divider(height: 32, color: Colors.transparent,),
              Text('Temukan Dokter dan Fasilitas', style: TextStyle(fontSize: 20.0, color: Colors.black),),
              Text('Kesehatan Terbaik', style: TextStyle(fontSize: 20.0, color: Colors.black),),
              Divider(height: 32, color: Colors.transparent,),
              Text('Anda dapat mencari dan menemukan dokter dan', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w100),),
              Text('fasilitas kesehatan terbaik sesuai', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w100),),
              Text('dengan kebutuhan Anda.', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w100),),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => _Intro2()));
        },
      ),
    );
  }
}

class _Intro2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/intro_2.png'),
              Divider(height: 32, color: Colors.transparent,),
              Text('Buat Janji Secara Online', style: TextStyle(fontSize: 20.0, color: Colors.black),),
              Divider(height: 32, color: Colors.transparent,),
              Text('Buat janji dengan dokter secara mudah dan', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w100),),
              Text('cepat dari handphone Anda.', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w100),),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => _Intro3()));
        },
      ),
    );
  }
}

class _Intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/intro_3.png'),
              Divider(height: 32, color: Colors.transparent,),
              Text('Menghemat Waktu Anda', style: TextStyle(fontSize: 20.0, color: Colors.black),),
              Divider(height: 32, color: Colors.transparent,),
              Text('Dengan kemudahan menjadwalkan pertemuan', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w100),),
              Text('dengan Dokter, Anda dapat menghemat waktu', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w100),),
              Text('untuk mengantri dan menunggu.', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w100),),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.arrow_forward_ios),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => _Intro4()));
        },
      ),
    );
  }
}

class _Intro4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/intro_4.png'),
              Divider(height: 32, color: Colors.transparent,),
              Text('Selamat Datang di MedUp', style: TextStyle(fontSize: 20.0, color: Colors.black),),
              Divider(height: 32, color: Colors.transparent,),
              Text('MedUp memberikan kemudahan untuk', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w100),),
              Text('menjangkau dokter dan fasilitas kesehatan terbaik', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w100),),
              Text('dengan mudah.', style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.w100),),
              ButtonSquare('MULAI', (){
                Navigator.pushNamedAndRemoveUntil(context,'/home' , (_) => false);
              }),
            ],
          ),
        ],
      ),
    );
  }
}