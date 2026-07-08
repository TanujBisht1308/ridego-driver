import 'package:dio/dio.dart';
import '../../../../core/constants/api_constants.dart';
import '../../domain/entities/ride_history_entity.dart';

class RideHistoryRemoteDataSource {
  RideHistoryRemoteDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Future<List<RideHistoryEntity>> getRides(
      RideHistoryStatus status) async {
    final response = await _dio.get(
      ApiConstants.rideHistory,
      queryParameters: {'status': status.name},
    );
    final list =
        response.data['data']['rides'] as List<dynamic>;
    return list
        .map((e) => RideHistoryEntity(
              rideId: e['rideId'] as String,
              passengerName: e['passengerName'] as String? ?? 'Unknown',
              pickupAddress: e['pickupAddress'] as String? ?? '',
              dropAddress: e['dropAddress'] as String? ?? '',
              fare: e['fare'] != null
                  ? (e['fare'] as num).toDouble()
                  : 0.0,
              distanceKm: e['distanceKm'] != null
                  ? (e['distanceKm'] as num).toDouble()
                  : 0.0,
              durationMinutes: e['durationMinutes'] as int? ?? 0,
              date: e['date'] != null
                  ? DateTime.parse(e['date'] as String)
                  : DateTime.now(),
              status: e['status'] as String,
            ))
        .toList();
  }
}