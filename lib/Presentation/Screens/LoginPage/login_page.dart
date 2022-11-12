// ignore_for_file: unnecessary_new

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project/Presentation/Screens/NavBarPage/Ui/Nav_Bar.dart';

import '../../../buisness_logic/LoginAuth/auth_bloc.dart';
import '../../../translations/locale_keys.g.dart';
import '../../Declarations/Constants/constants.dart';
import '../RegisterPage/Register_Screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final barcodeContoller = TextEditingController();
  final userpasswordContoller = TextEditingController();

  late AuthBlocBloc authBloc;

  @override
  void initState() {
    authBloc = AuthBlocBloc();
    super.initState();
  }

  @override
  void dispose() {
    barcodeContoller.dispose();
    userpasswordContoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: Scaffold(
        body: Column(
          children: [
            buildImageForm(),
            const SizedBox(
              height: 85,
            ),
            buildAuthBlocListener(),
            const SizedBox(
              height: 10,
            ),
            buildTextFormFiled(),
            const SizedBox(
              height: 25,
            ),
            buildInputFiled(),
            const SizedBox(
              height: 25,
            ),
            buildButton(),
            const SizedBox(
              height: 25,
            ),
            buildRegistr()
          ],
        ),
      ),
    );
  }

  Widget buildImageForm() {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: Color(0xff007A53),
        gradient: LinearGradient(
          // ignore: prefer_const_literals_to_create_immutables
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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            child: Image.asset(
              'assets/images/lock_1.png',
              height: 250,
              width: 280,
            ),
          ),
        ],
      )),
    );
  }

  Widget buildAuthBlocListener() {
    return BlocConsumer(
      bloc: authBloc,
      listener: (context, state) {
        if (state is LoadedAuthState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NavBar_Screen()));
        }
        if (state is FailureLoginState) {
          showError(context);
        }
      },
      builder: (context, state) {
        if (state is LoadingAuthState) {
          return Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              color: Colors.black.withOpacity(0.2),
              child: const Center(
                child: CircularProgressIndicator(
                  color: Color(0xff036B56),
                ),
              ),
            ),
          );
        }
        return Container();
      },
    );
  }

  Widget buildTextFormFiled() {
    return TextField(
      controller: barcodeContoller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: LocaleKeys.barcode.tr(),
        labelStyle: const TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff036B56)),
            borderRadius: kBorderRadius),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff036B56)),
            borderRadius: BorderRadius.circular(13)),
        icon: const Icon(Icons.person, color: Color(0xff036B56)),
      ),
    );
  }

  Widget buildInputFiled() {
    return TextField(
      controller: userpasswordContoller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: LocaleKeys.password.tr(),
        labelStyle: const TextStyle(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff036B56)),
            borderRadius: kBorderRadius),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff036B56)),
            borderRadius: BorderRadius.circular(13)),
        icon: const Icon(Icons.key, color: Color(0xff036B56)),
      ),
    );
  }

  Widget buildButton() {
    return OutlinedButton(
      onPressed: () {
        String barcode = barcodeContoller.text;
        String password = userpasswordContoller.text;
        authBloc.add(GetAuthEvent(barcode, password));

        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NavBar_Screen(),
            ));
      },
      style: OutlinedButton.styleFrom(backgroundColor: const Color(0xff036B56)),
      child: Text(
        LocaleKeys.login.tr(),
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  Widget buildRegistr() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(LocaleKeys.dont.tr()),
      GestureDetector(
        child: Text(
          LocaleKeys.register.tr(),
          style: const TextStyle(color: Colors.blueGrey),
        ),
        onTap: () {
          // Write Tap Code Here.
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Register_Screen(),
              ));
        },
      )
    ]);
  }

  Future<void> showError(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error"),
          content: Text(LocaleKeys.please.tr()),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor: const Color(0xff036B56)),
              child: new Text(
                LocaleKeys.cancel.tr(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}
