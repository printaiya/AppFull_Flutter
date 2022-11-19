import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xff036B56),
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        ),
        child: Text(text),
        onPressed: onClicked,
      );
}
