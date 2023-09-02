import 'package:flutter/material.dart';
import 'package:widgets_basic/pages/user_home.dart';
import 'package:widgets_basic/pages/user_page.dart';
import 'package:widgets_basic/pages/user_search.dart';
import 'package:widgets_basic/pages/user_shop.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectIndex = 0;

  void _navigatorBottomNavBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _children = [
    HomePage(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    ProfileUI(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _navigatorBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}

class ReelsPage {
}