import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_task1/model/user_model.dart';

class Prefs {
  static void storeName(String name) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("name", name);
  }

  static Future<String?> loadName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("name");
  }

  static Future<bool> removeName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("name");
  }

  // User Related
  static void storeUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Obyektni stringga aylantirish
    String stringUser = jsonEncode(user);
    prefs.setString("user", stringUser);
  }

  static Future<User?> loadUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? stringUser = prefs.getString('user');
    if (stringUser == null || stringUser.isEmpty) {
      return null;
    }
    Map<String, dynamic> map = jsonDecode(stringUser);
    return User.fromJson(map);
  }

  static Future<bool> removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.remove("user");
  }
}
