import 'package:cofeeshop/components/botoom_nav_bar.dart';
import 'package:cofeeshop/const.dart';
import 'package:cofeeshop/pages/cart_pages.dart';
import 'package:cofeeshop/pages/shop_pages.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigatedBottomNavBar(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  final List<Widget> _pages = const [
    // shop pages
    ShopPages(),

    // cart pages
    CartPages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBotoomNavBar(
        onTabChange: (index) => navigatedBottomNavBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
