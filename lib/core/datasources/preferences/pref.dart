
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_app/core/constants/constants.dart';
import 'package:travel_app/core/datasources/preferences/pref_exceptions.dart';

class Pref {
  static writeStorage(String key, dynamic input) async {
    const storage = FlutterSecureStorage();
    // if (input is String) {
    try {
      await storage.write(key: key, value: input);
      // } else if (input is bool) {
      //   prefs.write(key:key,value: input);
      // } else if (input is double) {
      //   prefs.setDouble(key, input);
      // } else if (input is int) {
      //   prefs.setInt(key, input);
      // } else if (input is List<String>) {
      //   prefs.setStringList(key, input);
      // }
    } catch (e) {
      // else {
      throw Exception(e.toString());
    }
  }





  static writePref(String key, dynamic input) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (input is String) {
      prefs.setString(key, input);
    } else if (input is bool) {
      prefs.setBool(key, input);
    } else if (input is double) {
      prefs.setDouble(key, input);
    } else if (input is int) {
      prefs.setInt(key, input);
    } else if (input is List<String>) {
      prefs.setStringList(key, input);
    } else {
      throw const PrefsException(kUnknownInputCast);
    }
  }

  static Future<dynamic> readStorage(String key) async {
    const storage = FlutterSecureStorage();
    String? value = await storage.read(
      key: key,
    );
    return value;
  }

  static Future<dynamic> readPref(dynamic key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }

  static Future<bool?> getBool(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  static remove(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.remove(key);
  }

  static cleanAll() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.clear();
  }

  static Future<bool> containsKey(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(key);
  }
}
