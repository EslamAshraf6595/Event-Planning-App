import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'page1.dart';

class IntroControle extends StatelessWidget {
  IntroControle({super.key});
  PageController _controller = PageController();
  static const routIntro = 'Introdction';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          children: [
            Page1(),
            Container(
              color: Colors.yellow,
            ),
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            ),
          ],
        ),
        // Container(
        //     alignment: Alignment(0, 0.9),
        //     child: SmoothPageIndicator(
        //       controller: _controller,
        //       count: 4,
        //     ))
      ],
    );
  }
}
