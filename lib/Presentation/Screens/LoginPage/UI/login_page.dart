import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_project/Presentation/Screens/LoginPage/Widjets/text_data_widget.dart';

import '../../../../buisness_logic/LoginAuth/auth_bloc.dart';

import '../../../Components/loader.dart';
import '../../../Components/spacers.dart';
import '../../../Declarations/Constants/constants.dart';
import '../Widjets/login_btn.dart';
import '../Widjets/text_form_field.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late FocusNode usernameFocus;
  late FocusNode passwordFocus;
  late FocusNode loginBtnFocus;
  late TextEditingController userName;
  late TextEditingController password;

  @override
  void initState() {
    super.initState();
    usernameFocus = FocusNode();
    passwordFocus = FocusNode();
    loginBtnFocus = FocusNode();
    userName = TextEditingController();
    password = TextEditingController();
  }

  @override
  void dispose() {
    usernameFocus.dispose();
    passwordFocus.dispose();
    loginBtnFocus.dispose();
    userName.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            buildErrorLayout();
          } else if (state is AuthLoaded) {
            clearTextData();
            Navigator.of(context)
                .pushNamed('/dashboard', arguments: state.username);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return LoadingWidget(child: buildInitialInput());
          } else {
            return buildInitialInput();
          }
        },
      ),
    );
  }

  Widget buildInitialInput() => SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                    // ignore: prefer_const_constructors
                    margin: EdgeInsets.only(top: 50),
                    child: Image.asset(
                      'assets/images/lock_1.png',
                      height: 250,
                      width: 250,
                    ),
                  ),
                ],
              )),
            ),
            const SizedBox(height: 70),
            Text(
              'sss',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  color: Color(0xff036B56),
                  fontSize: 30),
            ),
            const SizedBox(height: 50),
            InputField(
              focusNode: usernameFocus,
              textController: userName,
              label: "Barcode",
              icons: const Icon(Icons.person, color: Color(0xff036B56)),
            ),
            HeightSpacer(myHeight: kSpacing),
            InputField(
              focusNode: passwordFocus,
              textController: password,
              label: "Password",
              icons: const Icon(Icons.lock, color: Color(0xff036B56)),
            ),
            HeightSpacer(myHeight: kSpacing),
            LoginBtn(
              focusNode: loginBtnFocus,
              userName: userName,
              password: password,
            ),
          ],
        ),
      );

  ScaffoldFeatureController buildErrorLayout() =>
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Please enter barcode and password!'),
        ),
      );

  clearTextData() {
    userName.clear();
    password.clear();
  }
}
