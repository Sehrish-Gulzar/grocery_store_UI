import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  var _bottomNavIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.people_rounded,
    Icons.settings,
    Icons.notifications,
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: iconList, inactiveColor: Color(0xff73c45a),
      activeColor: Colors.yellow,
      splashColor: Colors.black, backgroundColor: Colors.white,
      activeIndex: _bottomNavIndex, elevation: 10,
      shadow: BoxShadow(color: Colors.black),
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.smoothEdge,
      // leftCornerRadius: 30,
      // rightCornerRadius: 30,
      onTap: (index) => setState(() => _bottomNavIndex = index),
      //other params
    );
  }
}
