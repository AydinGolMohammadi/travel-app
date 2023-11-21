import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
  Future<String?> readSharedData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<void> writeSharedData(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  Future<void> deletesharedData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future<void> deleteAllSharedData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}