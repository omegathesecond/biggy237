import 'package:biggy237/style.dart';

import 'package:biggy237/ui/screens/contestants/contestants.dart';
import 'package:biggy237/ui/screens/highlights/highlights_screen.dart';
import 'package:biggy237/ui/screens/home/home_screen.dart';
import 'package:biggy237/ui/screens/profile/profile_screen.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _currentIndex = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  final List<Widget> _screens = [
    HomeScreen(),
    ContestantScreen(),
    HighlightsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final FancyBottomNavigationState fState = bottomNavigationKey.currentState;
    return Scaffold(
      appBar: AppBar(
        title: Text("Biggy237"),
      ),
      body: _screens[_currentIndex],

     
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () {
                fState.setPage(_currentIndex);
              }),
          TabData(
              iconData: Icons.person,
              title: "Contestants",
              onclick: () {
                fState.setPage(_currentIndex);
              }),
          TabData(
              iconData: Icons.star,
              title: "Highlights",
              onclick: () {
                final FancyBottomNavigationState fState =
                    bottomNavigationKey.currentState;
                fState.setPage(_currentIndex);
              }),
          TabData(
              iconData: Icons.account_circle,
              title: "Profile",
              onclick: () {
                final FancyBottomNavigationState fState =
                    bottomNavigationKey.currentState;
                fState.setPage(_currentIndex);
              }),
        ],
        initialSelection: 1,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            _currentIndex = position;
          });
        },
      ),
    );
  }

  onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
