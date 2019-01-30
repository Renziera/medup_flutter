import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';

class Profil extends StatelessWidget {
  String namaPasien = 'Renziera da Firenze';
  String emailPasien = 'renziera@gmail.com';

  Profil() {
    //baca DB disini
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          color: primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/profile_1.png',
                height: 100.0,
              ),
              Text(
                namaPasien,
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                emailPasien,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w100,
                    color: Colors.white),
              ),
              Divider(
                height: 16.0,
                color: Colors.transparent,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => _LihatProfil()));
                },
                color: Colors.white,
                child: Text(
                  'LIHAT PROFIL',
                  style: TextStyle(fontSize: 14.0, color: primaryColor),
                ),
              )
            ],
          ),
        ),
        Divider(height: 24.0, color: Colors.transparent,),
        FlatButton(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.lock, color: primaryColor,),
                  Divider(indent: 16.0,),
                  Text('Ubah Kata Sandi', style: TextStyle(fontSize: 16.0),),
                ],
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          onPressed: () {},
        ),
        FlatButton(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.star, color: primaryColor,),
                  Divider(indent: 16.0,),
                  Text('Nilai Kami', style: TextStyle(fontSize: 16.0),),
                ],
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          onPressed: () {},
        ),
        FlatButton(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.lock, color: primaryColor,),
                  Divider(indent: 16.0,),
                  Text('Kebijakan Privasi', style: TextStyle(fontSize: 16.0),),
                ],
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          onPressed: () {},
        ),
        FlatButton(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.lock, color: primaryColor,),
                  Divider(indent: 16.0,),
                  Text('Syarat & Ketentuan', style: TextStyle(fontSize: 16.0),),
                ],
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
          onPressed: () {},
        ),
        Divider(height: 24.0, color: Colors.transparent,),
        FlatButton(
          padding: EdgeInsets.all(16.0),
          child: Text('Keluar', style: TextStyle(fontSize: 18.0, color: Colors.red),),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _LihatProfil extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pasien'),
        actions: <Widget>[
          FlatButton(
            onPressed: (){},
            child: Text('EDIT', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
      body: Text('Tab Activity Here'),
    );
  }
}
