import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

import 'Presentation/Screens/Splash_Page/Splash_Screen.dart';
import 'Routes/routes_generator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
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
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator().generateRoute,
      home: const SplashScreen(),
    );
  }
}
