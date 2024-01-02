import 'package:flutter/material.dart';
import 'package:kanku/Profile.dart';
import 'package:kanku/home.dart';
import 'package:kanku/inbox.dart';
import 'package:kanku/tours.dart';
import 'package:kanku/wishlist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Bar Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomBarPage(),
    );
  }
}

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    // Replace these with your own pages/screens
   home(),
    wishlist(),
    tours(),
    inbox(),
    profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Home@3x.png', height: 24),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Wishlist.png',color: Colors.black,),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Tours.png'),
            label: 'Tours',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/sms-notification.png'),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/images/Profile (1).png'),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Change the selected item color here
        unselectedItemColor: Colors.black, // Change the unselected item color here
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

