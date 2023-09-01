import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../const.dart';
import '../home_page.dart';

class SplashPage2 extends StatelessWidget {
  const SplashPage2({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: backgroundcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // color: Colors.amber,
            child: Lottie.network(
                'https://lottie.host/46dcf5cc-04b0-4b47-9a61-fd92436c64ac/r3xB7OUlmX.json'),
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
              "What goes best with a cup of coffee? Another cup.",
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 68, 40, 30)),
            ),
          ),
        ],
      ),
    );
  }
}
