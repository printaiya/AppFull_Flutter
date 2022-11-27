// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Widjets/NavBar_widjets.dart';

// ignore: camel_case_types
class NavBar_Screen extends StatefulWidget {
  const NavBar_Screen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NavBar_Screen createState() => _NavBar_Screen();
}

// ignore: camel_case_types
class _NavBar_Screen extends State<NavBar_Screen> {
  final items = const [
    Icon(Icons.favorite),
    Icon(Icons.qr_code),
    Icon(Icons.map),
    Icon(Icons.newspaper),
    Icon(Icons.animation),
    Icon(Icons.person),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff036B56),
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          index: index,
          onTap: (selctedIndex) {
            setState(() {
              index = selctedIndex;
            });
          },
          height: 70,
          backgroundColor: const Color(0xff036B56),
          animationDuration: const Duration(milliseconds: 300),
        ),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index),
        ));
  }
}
