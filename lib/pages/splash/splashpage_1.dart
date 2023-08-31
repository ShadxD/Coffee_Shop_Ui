import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../const.dart';

class SplashPage1 extends StatelessWidget {
  const SplashPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
              'https://lottie.host/14a6656e-4640-4623-9491-d7c779c4db11/MAMWSeakGp.json'),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              "How would you like your Coffee?",
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 68, 40, 30)),
            ),
          ),
        ],
      ),
    );
  }
}
