// ignore_for_file: file_names

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Presentation/Screens/LoginPage/UI/login_page.dart';

// ignore: camel_case_types
class Translate_Screen extends StatefulWidget {
  const Translate_Screen({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _Translate_Screen createState() => _Translate_Screen();
}

// ignore: camel_case_types
class _Translate_Screen extends State<Translate_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
            color: Color(0xff007A53),
            gradient: LinearGradient(
              colors: [
                (Color(0xff007A53)),
                Color(0xff007A53),
                Color(0xff007A53),
                Color(0xff017454),
                Color(0xff036B56),
                Color(0xff065D58)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  'assets/images/lock_1.png',
                  height: 250,
                  width: 250,
                ),
              ),
            ],
          )),
        ),
        const SizedBox(height: 130),
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () async {
              await context.setLocale(const Locale('ru'));
              // ignore: use_build_context_synchronously
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff007A53)),
            child: const Text('RU'),
          ),
          ElevatedButton(
            onPressed: () async {
              await context.setLocale(const Locale('kk'));
              // ignore: use_build_context_synchronously
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff007A53)),
            child: const Text('KZ'),
          ),
          ElevatedButton(
            onPressed: () async {
              await context.setLocale(const Locale('en'));
              // ignore: use_build_context_synchronously
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff007A53)),
            child: const Text('EN'),
          ),
        ]),
      ],
    ));
  }
}
