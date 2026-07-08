import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/ride_entity.dart';

part 'ride_model.g.dart';

@JsonSerializable()
class LocationModel {
  LocationModel({
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  final String address;
  final double latitude;
  final double longitude;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);

  LocationEntity toEntity() => LocationEntity(
        address: address,
        latitude: latitude,
        longitude: longitude,
      );
}

@JsonSerializable()
class RideModel {
  RideModel({
    required this.rideId,
    required this.passengerId,
    required this.passengerName,
    required this.passengerRating,
    this.passengerAvatarUrl,
    required this.pickupLocation,
    required this.dropLocation,
    required this.estimatedFare,
    required this.distanceKm,
    required this.estimatedDurationMinutes,
    required this.paymentMethod,
    this.requestedAt,
  });

  final String rideId;
  final String passengerId;
  final String passengerName;
  final double passengerRating;
  final String? passengerAvatarUrl;
  final LocationModel pickupLocation;
  final LocationModel dropLocation;
  final double estimatedFare;
  final double distanceKm;
  final int estimatedDurationMinutes;
  final String paymentMethod;
  final DateTime? requestedAt;

  factory RideModel.fromJson(Map<String, dynamic> json) =>
      _$RideModelFromJson(json);

  Map<String, dynamic> toJson() => _$RideModelToJson(this);

  RideEntity toEntity() => RideEntity(
        rideId: rideId,
        passengerId: passengerId,
        passengerName: passengerName,
        passengerRating: passengerRating,
        passengerAvatarUrl: passengerAvatarUrl,
        pickupLocation: pickupLocation.toEntity(),
        dropLocation: dropLocation.toEntity(),
        estimatedFare: estimatedFare,
        distanceKm: distanceKm,
        estimatedDurationMinutes: estimatedDurationMinutes,
        paymentMethod: paymentMethod,
        requestedAt: requestedAt,
      );
}