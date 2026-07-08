import 'package:dio/dio.dart';
import '../../../../core/constants/api_constants.dart';
import '../../domain/entities/ride_entity.dart';
import '../../domain/entities/ride_summary_entity.dart';
import '../models/ride_model.dart';
import '../models/ride_summary_model.dart';

class RideRemoteDataSource {
  RideRemoteDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Future<RideEntity?> getIncomingRide() async {
    final response = await _dio.get(ApiConstants.incomingRide);
    final data = response.data['data'];
    if (data == null) return null;
    return RideModel.fromJson(data as Map<String, dynamic>).toEntity();
  }

  Future<RideEntity> acceptRide(String rideId) async {
    final response = await _dio.post(
      ApiConstants.acceptRide,
      data: {'rideId': rideId},
    );
    return RideModel.fromJson(
      response.data['data'] as Map<String, dynamic>,
    ).toEntity();
  }

  Future<void> rejectRide(String rideId) async {
    await _dio.post(
      ApiConstants.rejectRide,
      data: {'rideId': rideId},
    );
  }

  Future<void> reachedPickup(String rideId) async {
    await _dio.post(
      ApiConstants.reachedPickup,
      data: {'rideId': rideId},
    );
  }

  Future<void> startRide(String rideId) async {
    await _dio.post(
      ApiConstants.startRide,
      data: {'rideId': rideId},
    );
  }

  Future<RideSummaryEntity> completeRide(String rideId) async {
    final response = await _dio.post(
      ApiConstants.completeRide,
      data: {'rideId': rideId},
    );
    return RideSummaryModel.fromJson(
      response.data['data'] as Map<String, dynamic>,
    ).toEntity();
  }
}