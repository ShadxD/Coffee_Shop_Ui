import 'package:coffee_shop_1/pages/const.dart';
import 'package:coffee_shop_1/pages/home_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/expresso.png',
            height: screenSize.height / 2.2,
            width: screenSize.width / 1.8,
          ),
          const Center(
            child: Text(
              "Brew Day!",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Color.fromARGB(255, 68, 40, 30)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Text(
              "How would you like your Coffee?",
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 68, 40, 30)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            child: Container(
              width: screenSize.width / 1.1,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 68, 40, 30),
                  borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: Text(
                  'Enter Shop',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
