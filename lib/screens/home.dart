import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';
import 'beranda.dart';
import 'perjanjian.dart';
import 'profil.dart';

/**
 * Tampilan utama aplikasi
 * Bottom navigation dari sini
 */

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  //track currently selected tab
  int _currentIndex = 0;
  //list of widgets to render
  final List<Widget> _children = [
    Beranda(),
    Perjanjian(),
    Profil(),
  ];
  //list AppBar soalnya beda"
  List<AppBar> _appBars(context) {
    return [
      appBarLogo(),
      AppBar(
        title: Text(
          'Perjanjian',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/riwayat');
            },
            child: Icon(
              Icons.history,
              color: Colors.white,
            ),
          )
        ],
      ),
      appBarTitle(title: 'Profil'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars(context)[_currentIndex],
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/beranda.png',
              height: 24.0,
            ),
            activeIcon: Image.asset(
              'assets/images/beranda.png',
              height: 24.0,
              color: primaryColor,
            ),
            title: Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/perjanjian.png',
              height: 24.0,
            ),
            activeIcon: Image.asset(
              'assets/images/perjanjian.png',
              height: 24.0,
              color: primaryColor,
            ),
            title: Text('Perjanjian'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/profil.png',
              height: 24.0,
            ),
            activeIcon: Image.asset(
              'assets/images/profil.png',
              height: 24.0,
              color: primaryColor,
            ),
            title: Text('Profil'),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    if (index == 2) {
      //Cek login disini
      Navigator.pushNamed(context, '/login');
      return;
    }
    setState(() {
      _currentIndex = index;
    });
  }
}
