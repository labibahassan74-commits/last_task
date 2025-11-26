import 'package:flutter/material.dart';
import 'package:last_task/searchpage.dart';
import 'package:last_task/settingspage.dart';

import 'accountpage.dart';
import 'homepage.dart';


class Indexpage extends StatefulWidget {
  const Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  int _bottomNavBar = 0;
  final List<Widget> _pages = [
    Homepage(),
    Searchpage(),
    Settingpage(),
    Accountpage(),
  ];
  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Home Page';
      case 1:
        return 'Search Page';
      case 2:
        return 'Setting Page';
      case 3:
        return 'Account Page';
      default:
        return 'My App';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getTitle(_bottomNavBar)),
        backgroundColor: const Color.fromARGB(255, 175, 125, 9),
      ),
      body: IndexedStack(index: _bottomNavBar, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavBar,
        onTap: (index) {
          setState(() {
            _bottomNavBar = index;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color.fromARGB(255, 175, 125, 9),
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'Setting', icon: Icon(Icons.settings)),
          BottomNavigationBarItem(label: 'Account', icon: Icon(Icons.account_box)),
        ],
      ),
    );
  }
}
