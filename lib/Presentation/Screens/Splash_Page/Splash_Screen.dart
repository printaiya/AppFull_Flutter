// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project/Presentation/Screens/TranslatePage/Translate_Screen.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const Translate_Screen()));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget(context);
  }

  Widget initWidget(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xff007A53),
                // ignore: prefer_const_literals_to_create_immutables
                gradient: LinearGradient(colors: [
                  (Color(0xff007A53)),
                  Color(0xff007A53),
                  Color(0xff007A53),
                  Color(0xff017454),
                  Color(0xff036B56),
                  Color(0xff065D58)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Image.asset("assets/images/lock_1.png"),
            ),
          )
        ],
      ),
    );
  }
}
