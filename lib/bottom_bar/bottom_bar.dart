import 'package:amazon_ui/view/account.dart';
import 'package:amazon_ui/view/cart.dart';
import 'package:amazon_ui/view/categories.dart';
import 'package:amazon_ui/view/home.dart';

import 'package:amazon_ui/view/oders.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;

  final List<Widget> _bottombar = const [
    HomeScreen(),
    Account_page(),
    Cart_page(),
    Categories_page(),
    Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottombar[_selectedIndex],
      bottomNavigationBar: GNav(
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        iconSize: 28,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.person_sharp,
            text: 'Account',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'cart',
          ),
          GButton(
            icon: Icons.menu_sharp,
            text: 'Categories',
          ),
        ],
      ),
    );
  }
}
