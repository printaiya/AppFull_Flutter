import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../model/user.dart';

class UserPreferences {
  static late SharedPreferences _preferences;

  static const _keyUser = 'user';
  static const myUser = User(
    imagePath:
        'https://i.scdn.co/image/ab6761610000e5ebcdce7620dc940db079bf4952',
    name: 'Myrzabaeva Aiya',
    email: '1910399@uib.kz',
    about: 'barcode: 1910399 age: 21',
    isDarkMode: false,
  );

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User user) async {
    final json = jsonEncode(user.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User getUser() {
    final json = _preferences.getString(_keyUser);

    return json == null ? myUser : User.fromJson(jsonDecode(json));
  }
}
