import 'package:dio/dio.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/storage/secure_storage_service.dart';
import '../../domain/entities/dashboard_stats_entity.dart';

class DashboardRemoteDataSource {
  DashboardRemoteDataSource({
    required Dio dio,
    required SecureStorageService secureStorage,
  })  : _dio = dio,
        _storage = secureStorage;

  final Dio _dio;
  final SecureStorageService _storage;

  static const String _onlineKey = 'driver_online_status';

  Future<DashboardStatsEntity> fetchTodayStats() async {
    final response = await _dio.get(ApiConstants.dashboardStats);
    final data = response.data['data'] as Map<String, dynamic>;

    // Cache the online status locally so getOnlineStatus() is consistent
    final isOnline = data['isOnline'] as bool;
    await _storage.write(_onlineKey, isOnline.toString());

    return DashboardStatsEntity(
      todaysEarnings: (data['todaysEarnings'] as num).toDouble(),
      completedRides: data['completedRides'] as int,
      totalRidesToday: data['completedRides'] as int,
      distanceCoveredKm:
          (data['distanceCoveredKm'] as num).toDouble(),
      onlineDuration: Duration(
        minutes: data['onlineDurationMinutes'] as int,
      ),
    );
  }

  Future<bool> getOnlineStatus() async {
    // Read from backend directly for accuracy
    final response = await _dio.get(ApiConstants.dashboardStats);
    final isOnline = response.data['data']['isOnline'] as bool;
    await _storage.write(_onlineKey, isOnline.toString());
    return isOnline;
  }

  Future<void> setOnlineStatus(bool isOnline) async {
    // Backend toggles — it doesn't accept a value, it just flips
    await _dio.patch(ApiConstants.onlineStatus);
    await _storage.write(_onlineKey, (!isOnline).toString());
  }
}