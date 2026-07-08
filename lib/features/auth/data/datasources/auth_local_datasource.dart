import 'dart:convert';
import '../../../../core/storage/secure_storage_service.dart';
import '../models/driver_model.dart';

class AuthLocalDataSource {
  AuthLocalDataSource(this._secureStorage);

  final SecureStorageService _secureStorage;

  static const String _driverKey = 'cached_driver';
  static const String _tokenKey = 'auth_token';

  Future<void> cacheDriver(DriverModel driver) async {
    await _secureStorage.write(_driverKey, jsonEncode(driver.toJson()));
  }

  Future<DriverModel?> getCachedDriver() async {
    try {
      final raw = await _secureStorage.read(_driverKey);
      if (raw == null) return null;
      return DriverModel.fromJson(
          jsonDecode(raw) as Map<String, dynamic>);
    } catch (_) {
      return null;
    }
  }

  Future<void> saveToken(String token) async {
    await _secureStorage.write(_tokenKey, token);
  }

  Future<void> clear() async {
    await _secureStorage.delete(_driverKey);
    await _secureStorage.delete(_tokenKey);
    await _secureStorage.delete('access_token');
    await _secureStorage.delete('refresh_token');
  }
}