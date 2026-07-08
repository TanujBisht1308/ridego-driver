import 'package:dio/dio.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/storage/secure_storage_service.dart';
import '../models/driver_model.dart';

class AuthRemoteDataSource {
  AuthRemoteDataSource({
    required Dio dio,
    required SecureStorageService secureStorage,
  })  : _dio = dio,
        _storage = secureStorage;

  final Dio _dio;
  final SecureStorageService _storage;

  Future<void> sendOtp(String phoneNumber) async {
    await _dio.post(
      ApiConstants.sendOtp,
      data: {'phoneNumber': phoneNumber},
    );
  }

  Future<DriverModel> verifyOtp(String phoneNumber, String otp) async {
    final response = await _dio.post(
      ApiConstants.verifyOtp,
      data: {'phoneNumber': phoneNumber, 'otp': otp},
    );
    final data = response.data['data'] as Map<String, dynamic>;
    await _storage.write(
        'access_token', data['accessToken'] as String);
    await _storage.write(
        'refresh_token', data['refreshToken'] as String);
    return DriverModel.fromJson(
        data['driver'] as Map<String, dynamic>);
  }

 Future<DriverModel> saveProfile({
  required DriverModel current,
  required String fullName,
  String? email,
  required String vehicleNumber,
  String vehicleType = 'sedan',
}) async {
  final response = await _dio.post(
    ApiConstants.setupProfile,
    data: {
      'fullName': fullName,
      if (email != null && email.isNotEmpty) 'email': email,
      'vehicleNumber': vehicleNumber,
      'vehicleType': vehicleType,
    },
  );
  return DriverModel.fromJson(
      response.data['data'] as Map<String, dynamic>);
}
  Future<void> submitDocuments(List<String> documentPaths) async {
    await _dio.post(ApiConstants.submitDocuments);
  }

  Future<DriverModel?> getCurrentDriver() async {
    try {
      final token = await _storage.read('access_token');
      if (token == null) return null;
      final response = await _dio.get(ApiConstants.driverProfile);
      return DriverModel.fromJson(
          response.data['data'] as Map<String, dynamic>);
    } catch (_) {
      return null;
    }
  }

  Future<void> logout() async {
    final refreshToken = await _storage.read('refresh_token');
    if (refreshToken != null) {
      try {
        await _dio.post(
          ApiConstants.logout,
          data: {'refreshToken': refreshToken},
        );
      } catch (_) {}
    }
    await _storage.delete('access_token');
    await _storage.delete('refresh_token');
  }
  Future<DriverModel?> refreshAndGetDriver() async {
  final refreshToken = await _storage.read('refresh_token');
  if (refreshToken == null) return null;

  // Get new access token using refresh token
  final refreshResponse = await _dio.post(
    ApiConstants.refreshToken,
    data: {'refreshToken': refreshToken},
  );

  final data = refreshResponse.data['data'] as Map<String, dynamic>;
  final newAccessToken = data['accessToken'] as String;
  final newRefreshToken = data['refreshToken'] as String;

  await _storage.write('access_token', newAccessToken);
  await _storage.write('refresh_token', newRefreshToken);

  // Now fetch profile with new token
  final profileResponse = await _dio.get(
    ApiConstants.driverProfile,
    options: Options(
      headers: {'Authorization': 'Bearer $newAccessToken'},
    ),
  );

  final profileData =
      profileResponse.data['data'] as Map<String, dynamic>;
  return DriverModel.fromJson(profileData);
}
}
