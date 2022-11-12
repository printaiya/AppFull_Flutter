// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../translations/locale_keys.g.dart';
import '../Widjets/page1.dart';
import '../Widjets/page2.dart';
import '../Widjets/page3.dart';
import '../Widjets/page4.dart';

// ignore: camel_case_types
class Likes_Screen extends StatelessWidget {
  final _controller = PageController();

  Likes_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff036B56),
        title: Text(LocaleKeys.news.tr()),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // page view
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: const JumpingDotEffect(
              activeDotColor: Color(0xff036B56),
              dotColor: Color(0xff679c98),
              dotHeight: 20,
              dotWidth: 20,
              spacing: 12,
              //verticalOffset: 50,
              jumpScale: 3,
            ),
          ),
        ],
      ),
    );
  }
}
