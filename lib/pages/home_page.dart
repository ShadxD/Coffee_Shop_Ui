import 'package:coffee_shop_1/components/bottom_nav_bar.dart';
import 'package:coffee_shop_1/pages/const.dart';
import 'package:flutter/material.dart';
import 'Shop_page.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigate botton bar
  int _selectedIndex = 0;
  void navigateBottonBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//pages
  final List<Widget> _pages = [
    //ShopPage
    const ShopPage(),

    //CartPage
    const CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottonBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
