import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_storage/get_storage.dart';

abstract class BasePreferences {
  final _storage = GetStorage();

  final _secureStorage = const FlutterSecureStorage(
      aOptions: AndroidOptions(
    encryptedSharedPreferences: true,
  ));

  void remove(String key) => _storage.remove(key);

  void removeAll(String key) => _storage.erase();

  T? retrieve<T>(String key) => _storage.read(key);

  void store<T>(String key, T value) => _storage.write(key, value);

  Future<void> storeSecure(String key, String value) async => _secureStorage.write(key: key, value: value);

  Future<String?> retrieveSecure(String key) async => _secureStorage.read(key: key);

  Future<void> removeSecure(String key) async => _secureStorage.delete(key: key);

  Future<void> removeAllSecure() async => _secureStorage.deleteAll();
}
