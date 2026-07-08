import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import '../../../../core/constants/api_constants.dart';
import '../../domain/entities/driver_profile_entity.dart';

class ProfileRemoteDataSource {
  ProfileRemoteDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Future<DriverProfileEntity> getProfile() async {
    final response = await _dio.get(ApiConstants.driverProfile);
    final data = response.data['data'] as Map<String, dynamic>;
    return DriverProfileEntity(
      id: data['id'] as String,
      fullName: data['fullName'] as String? ?? 'Driver',
      phoneNumber: data['phoneNumber'] as String,
      email: data['email'] as String?,
      vehicleNumber: data['vehicleNumber'] as String? ?? '',
      vehicleType: _formatVehicleType(
          data['vehicleType'] as String? ?? 'sedan'),
      rating: data['rating'] != null
          ? (data['rating'] as num).toDouble()
          : 0.0,
      totalRides: data['totalRides'] as int? ?? 0,
      memberSince: _formatDate(data['memberSince'] as String?),
      isVerifiedDriver:
          data['isDocumentVerified'] as bool? ?? false,
    );
  }

  String _formatVehicleType(String type) {
    if (type.isEmpty) return 'Sedan';
    return type[0].toUpperCase() + type.substring(1);
  }

  String _formatDate(String? isoDate) {
    if (isoDate == null) return 'Recently joined';
    try {
      final date = DateTime.parse(isoDate);
      return DateFormat('MMM yyyy').format(date);
    } catch (_) {
      return 'Recently joined';
    }
  }
}