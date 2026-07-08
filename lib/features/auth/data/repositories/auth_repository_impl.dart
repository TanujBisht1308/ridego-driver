import 'package:dio/dio.dart';
import '../../domain/entities/driver_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/driver_model.dart';
import '../../../../core/storage/secure_storage_service.dart';
import '../../../../core/network/socket_service.dart';
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
    required AuthLocalDataSource localDataSource,
    required SecureStorageService secureStorage,
  })  : _remote = remoteDataSource,
        _local = localDataSource,
        _secureStorage = secureStorage;

  final AuthRemoteDataSource _remote;
  final AuthLocalDataSource _local;
  final SecureStorageService _secureStorage;

  DriverModel? _sessionDriver;

  @override
  Future<void> sendOtp(String phoneNumber) =>
      _remote.sendOtp(phoneNumber);

  @override
  Future<DriverEntity> verifyOtp(String phoneNumber, String otp) async {
    final driver = await _remote.verifyOtp(phoneNumber, otp);
    final token = await _secureStorage.read('access_token');
    if (token != null) SocketService.instance.connect(token);
    _sessionDriver = driver;
    await _local.cacheDriver(driver);
    return driver.toEntity();
  }

 @override
Future<DriverEntity> saveProfile({
  required String fullName,
  String? email,
  required String vehicleNumber,
  String vehicleType = 'sedan',
}) async {
  final current = _sessionDriver ?? await _local.getCachedDriver();
  if (current == null) throw Exception('No active session');
  final updated = await _remote.saveProfile(
    current: current,
    fullName: fullName,
    email: email,
    vehicleNumber: vehicleNumber,
    vehicleType: vehicleType,
  );
  _sessionDriver = updated;
  await _local.cacheDriver(updated);
  return updated.toEntity();
}

  @override
Future<void> submitDocuments(List<String> paths) async {
  await _remote.submitDocuments(paths);
  // Critical: update local cache so splash knows docs were submitted
  final cached = _sessionDriver ?? await _local.getCachedDriver();
  if (cached != null) {
    final updated = cached.copyWith(isDocumentSubmitted: true);
    _sessionDriver = updated;
    await _local.cacheDriver(updated);
  }
}

  @override
  Future<DriverEntity?> getCurrentDriver() async {
    // Step 1: try remote with current access token
    try {
      final remoteDriver = await _remote.getCurrentDriver();
      if (remoteDriver != null) {
        _sessionDriver = remoteDriver;
        await _local.cacheDriver(remoteDriver);
        return remoteDriver.toEntity();
      }
    } on DioException catch (e) {
      // 401 means token expired — try refresh
      if (e.response?.statusCode != 401) {
        // Non-auth error (no network etc) — use cache
        return _fallbackToCache();
      }
    } catch (_) {
      return _fallbackToCache();
    }

    // Step 2: access token expired — try refresh token
   try {
      final refreshed = await _remote.refreshAndGetDriver();
      if (refreshed != null) {
        final newToken = await _secureStorage.read('access_token');
        if (newToken != null) SocketService.instance.connect(newToken);
        _sessionDriver = refreshed;
        await _local.cacheDriver(refreshed);
        return refreshed.toEntity();
      }
    } catch (_) {
      // Refresh also failed — user must log in again
      await _local.clear();
      return null;
    }

    return null;
  }

  Future<DriverEntity?> _fallbackToCache() async {
    final cached = await _local.getCachedDriver();
    _sessionDriver = cached;
    return cached?.toEntity();
  }

  @override
  Future<void> logout() async {
    await _remote.logout();
    _sessionDriver = null;
    await _local.clear();
    SocketService.instance.disconnect();
  }
}