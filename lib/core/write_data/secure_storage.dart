import 'package:flutter_secure_storage/flutter_secure_storage.dart';

AndroidOptions _getAndroidOptions() => const AndroidOptions(
      encryptedSharedPreferences: true,
    );

class OmaxStorage {
  final FlutterSecureStorage storage =
      FlutterSecureStorage(aOptions: _getAndroidOptions());

  Future<String?> readSecureData(String key) async {
    dynamic readData;
    readData = await storage.read(key: key, aOptions: _getAndroidOptions());
    return readData;
  }

  Future<void> writeSecureData(String key, String value) async {
    await storage.write(key: key, value: value, aOptions: _getAndroidOptions());
  }

  Future<void> deleteAllSecureToken(String key) async {
    await storage.delete(key: key);
  }
  Future<void> deleteSecureToken(String key) async {
    await storage.deleteAll();
  }
}