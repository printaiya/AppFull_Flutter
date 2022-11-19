// ignore_for_file: avoid_print

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../buisness_logic/LoginAuth/auth_bloc.dart';

class AuthRepository {
  Future<void> onGetAuthEvent(
      GetAuthEvent event, Emitter<AuthState> emit) async {
    Response response;
    emit(LoadingAuthState());
    try {
      response = await http.post(
        Uri.parse("http://10.0.2.2:3000/users/ai"),
        body: convert.jsonEncode({
          'Barcode': event.email,
          'Password': event.password,
        }),
      );
      emit(LoadedAuthState());
      print(response.body);
    } catch (_) {
      emit(FailureLoginState());
    }
  }
}
