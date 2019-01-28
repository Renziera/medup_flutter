import 'package:flutter/material.dart';
import 'package:medup_flutter/ui.dart';

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
    Text('Berandaku'),
    Text(
      'Perjanjian',
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    Text('Profil'),
  ];
  //list AppBar soalnya beda"
  final List<AppBar> _appBars = [
    AppBar(
      title: Image.asset(
        'assets/images/ic_medup_white.png',
        height: 32.0,
      ),
      elevation: 0,
      backgroundColor: primaryColor,
    ),
    AppBar(
      title: Text(
        'Perjanjian',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      elevation: 0,
      backgroundColor: primaryColor,
    ),
    AppBar(
      title: Text('Profil'),
      elevation: 0,
      backgroundColor: primaryColor,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars[_currentIndex],
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
    setState(() {
      _currentIndex = index;
    });
  }
}
