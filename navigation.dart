import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/css_page.dart';
import 'pages/educ_page.dart';
import 'pages/cbae_page.dart';
import 'pages/coa_page.dart';


class MainNavigationPage extends StatefulWidget {
  @override
  _MainNavigationPageState createState() => _MainNavigationPageState();
}

class _MainNavigationPageState extends State {
  int _selectedIndex = 2; // Start with Homepage (center tab)
  PageController _pageController = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomePage(),
          CSSPage(),
          EDUCPage(),
          CBAEPage(),
          COAPage(),
        ],
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.redAccent,
        elevation: 8.0,
        backgroundColor: Colors.greenAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.subject_rounded), label: 'CSS'),
          BottomNavigationBarItem(icon: Icon(Icons.subject_rounded), label: 'EDUC'),
          BottomNavigationBarItem(icon: Icon(Icons.subject_rounded), label: 'CBAE'),
          BottomNavigationBarItem(icon: Icon(Icons.subject_rounded), label: 'COA'),
        ],
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}