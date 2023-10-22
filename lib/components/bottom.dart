// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.brown,
        tabBorderRadius: 60,
        tabActiveBorder: Border.all(
          color: Colors.white,
          width: 3,
        ),
        tabs: [
          GButton(
            icon: Icons.home,
            text: " SHOP",
          ),
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: " CART",
          ),
        ],
      ),
    );
  }
}
