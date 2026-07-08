import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_history_entity.freezed.dart';

enum RideHistoryStatus { all, completed, cancelled }

@freezed
abstract class RideHistoryEntity with _$RideHistoryEntity {
  const factory RideHistoryEntity({
    required String rideId,
    required String passengerName,
    required String pickupAddress,
    required String dropAddress,
    required double fare,
    required double distanceKm,
    required int durationMinutes,
    required DateTime date,
    required String status,
  }) = _RideHistoryEntity;
}