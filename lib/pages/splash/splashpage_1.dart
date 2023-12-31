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
              'https://lottie.host/57b9c488-2cc0-44f0-b5ed-51351bcad0fa/rJrYLj5KAg.json'),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              "Today's good mood is sponsored by coffee",
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 68, 40, 30)),
            ),
          ),
        ],
      ),
    );
  }
}
