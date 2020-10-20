import 'package:flutter/material.dart';
import 'TAB1_your_health.dart';
import 'TAB2_news.dart';
import 'TAB3_get_help.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    YourHealth(),
    News(),
    GetHelp(),
  ];
  //int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pune fights COVID19',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 30,
        backgroundColor: Colors.purple,
      ),
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        //fixedColor: Colors.white,
        //unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text(
              'Your Health',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.update),
            title: Text(
              'News & Updates',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.help_outline),
              title: Text(
                'Get Help',
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
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
