import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: const Color(0xff065D58),
            child: const LikeButton(
              size: 40,
              animationDuration: Duration(milliseconds: 700),
              padding: EdgeInsets.only(top: 340, left: 25),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
        ),
      ),
    );
  }
}
