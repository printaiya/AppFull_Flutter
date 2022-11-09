import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../buisness_logic/LoginAuth/auth_bloc.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn(
      {Key? key,
      required this.focusNode,
      required this.userName,
      required this.password})
      : super(key: key);

  final FocusNode focusNode;
  final TextEditingController userName;
  final TextEditingController password;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.0,
      height: 55,
      child: OutlinedButton(
        focusNode: focusNode,
        style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 54),
            backgroundColor: const Color(0xff036B56)),
        onPressed: () {
          BlocProvider.of<AuthBloc>(context)
              .add(Login(userName.text, password.text));
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => NavBar(),
          //   ));
        },
        child: const Text(
          'Login',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
