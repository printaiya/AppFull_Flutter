// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextData extends StatelessWidget {
  const TextData({Key? key, required this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Login ',
        style: TextStyle(fontSize: 25.00, color: Color(0xff036B56)),
        children: <TextSpan>[
          TextSpan(
            text: message,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.00,
                color: Color(0xff036B56)),
          ),
        ],
      ),
    );
  }
}
