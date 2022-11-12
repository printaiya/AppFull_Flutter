// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Register_Screen extends StatefulWidget {
  const Register_Screen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Register_ScreenState createState() => _Register_ScreenState();
}

// ignore: camel_case_types
class _Register_ScreenState extends State<Register_Screen> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
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
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 50),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.grey[200],
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: const TextField(
              cursorColor: Color(0xff036B56),
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Color(0xff036B56),
                ),
                hintText: "Введите имя",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.grey[200],
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            // ignore: prefer_const_constructors
            child: TextField(
              cursorColor: const Color(0xff036B56),
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Color(0xff036B56),
                ),
                hintText: "Введите емайл",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: const Color(0xffEEEEEE),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 100,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: const TextField(
              cursorColor: Color(0xff036B56),
              decoration: InputDecoration(
                focusColor: Color(0xff036B56),
                icon: Icon(
                  Icons.call_to_action,
                  color: Color(0xff036B56),
                ),
                hintText: "Введите номер",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: const Color(0xffEEEEEE),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 100,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: const TextField(
              cursorColor: Color(0xff036B56),
              decoration: InputDecoration(
                focusColor: Color(0xff036B56),
                icon: Icon(
                  Icons.vpn_key,
                  color: Color(0xff036B56),
                ),
                hintText: "Введите пароль",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(left: 20, right: 20),
            height: 54,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: const Color(0xffEEEEEE),
              // ignore: prefer_const_literals_to_create_immutables
              boxShadow: [
                const BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 100,
                    color: Color(0xffEEEEEE)),
              ],
            ),
            child: const TextField(
              cursorColor: Color(0xff036B56),
              decoration: InputDecoration(
                focusColor: Color(0xff036B56),
                icon: Icon(
                  Icons.vpn_key,
                  color: Color(0xff036B56),
                ),
                hintText: "Повторите пароль",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Write Click Listener Code Here.
            },
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 30, bottom: 15),
              padding: const EdgeInsets.only(left: 20, right: 20),
              height: 54,
              width: 250,
              decoration: BoxDecoration(
                // ignore: prefer_const_literals_to_create_immutables
                gradient: const LinearGradient(colors: [
                  (Color(0xff007A53)),
                  Color(0xff007A53),
                  Color(0xff007A53),
                  Color(0xff017454),
                  Color(0xff036B56),
                  Color(0xff065D58)
                ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                borderRadius: BorderRadius.circular(35),
                color: Colors.grey[600],
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: const Text(
                "Register",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          GestureDetector(
            child: const Text(
              "Войти сейчас",
              style: TextStyle(color: Colors.blueGrey),
            ),
            onTap: () {
              // Write Tap Code Here.
              Navigator.pop(context);
            },
          )
        ],
      ),
    ));
  }
}
