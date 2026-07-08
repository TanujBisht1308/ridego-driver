import '../entities/driver_entity.dart';

abstract class AuthRepository {
  Future<void> sendOtp(String phoneNumber);
  Future<DriverEntity> verifyOtp(String phoneNumber, String otp);
  Future<DriverEntity> saveProfile({
    required String fullName,
    String? email,
    required String vehicleNumber,
    String vehicleType,             // ← add this
  });
  Future<void> submitDocuments(List<String> documentPaths);
  Future<DriverEntity?> getCurrentDriver();
  Future<void> logout();
}