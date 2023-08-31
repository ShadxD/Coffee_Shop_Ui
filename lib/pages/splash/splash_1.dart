import 'package:coffee_shop_1/pages/splash/splashpage_1.dart';

import 'package:coffee_shop_1/pages/splash/splashpage_2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  //controller to keep track of which page we are on
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: _controller,
          children: const [
            SplashPage1(),
            SplashPage2(),
          ],
        ),

        //dot indicator
        Container(
            alignment: const Alignment(0, 0.75),
            child: SmoothPageIndicator(controller: _controller, count: 2))
      ],
    ));
  }
}
