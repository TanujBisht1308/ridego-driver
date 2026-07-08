import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_entity.freezed.dart';

enum RideStatus {
  incoming,
  accepted,
  driverArrived,
  inProgress,
  completed,
  rejected,
}

@freezed
abstract class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    required String address,
    required double latitude,
    required double longitude,
  }) = _LocationEntity;
}

@freezed
abstract class RideEntity with _$RideEntity {
  const factory RideEntity({
    required String rideId,
    required String passengerId,
    required String passengerName,
    required double passengerRating,
    String? passengerAvatarUrl,
    required LocationEntity pickupLocation,
    required LocationEntity dropLocation,
    required double estimatedFare,
    required double distanceKm,
    required int estimatedDurationMinutes,
    required String paymentMethod,
    @Default(RideStatus.incoming) RideStatus status,
    DateTime? requestedAt,
    DateTime? acceptedAt,
    DateTime? arrivedAt,
    DateTime? startedAt,
    DateTime? completedAt,
  }) = _RideEntity;
}