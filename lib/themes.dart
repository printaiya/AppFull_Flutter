import 'package:flutter/material.dart';

class MyThemes {
  static final primary = Color(0xff036B56);
  static final primaryColor = Color(0xff036B56);

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColorDark: primaryColor,
    dividerColor: Colors.white,
    colorScheme: ColorScheme.dark(primary: primary)
        .copyWith(secondary: Color(0xff036B56)),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.light(primary: primary),
    dividerColor: Color(0xff036B56),
  );
}
