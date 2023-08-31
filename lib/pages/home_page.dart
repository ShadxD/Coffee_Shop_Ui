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
      appBar: AppBar(
          backgroundColor: backgroundcolor,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Color.fromARGB(255, 68, 40, 30),
                )),
          )),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 68, 40, 30),
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/1.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(
                color: backgroundcolor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: backgroundcolor,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: backgroundcolor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.info,
                  color: backgroundcolor,
                ),
                title: Text(
                  'About',
                  style: TextStyle(color: backgroundcolor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.login,
                  color: backgroundcolor,
                ),
                title: Text(
                  'Login/Register',
                  style: TextStyle(color: backgroundcolor),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
