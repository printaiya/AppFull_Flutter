import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Presentation/Screens/ProfilePage/utils/user_preferences.dart';
import 'Presentation/Screens/Splash_Page/Splash_Screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await UserPreferences.init();

  runApp(
    EasyLocalization(
        supportedLocales: const [
          // ignore: prefer_const_constructors
          Locale('en'),
          Locale('kk'),
          Locale('ru')
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  static final String title = 'User Profile';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();
    return MaterialApp(
      theme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
