// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      address: json['address'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

RideModel _$RideModelFromJson(Map<String, dynamic> json) => RideModel(
  rideId: json['rideId'] as String,
  passengerId: json['passengerId'] as String,
  passengerName: json['passengerName'] as String,
  passengerRating: (json['passengerRating'] as num).toDouble(),
  passengerAvatarUrl: json['passengerAvatarUrl'] as String?,
  pickupLocation: LocationModel.fromJson(
    json['pickupLocation'] as Map<String, dynamic>,
  ),
  dropLocation: LocationModel.fromJson(
    json['dropLocation'] as Map<String, dynamic>,
  ),
  estimatedFare: (json['estimatedFare'] as num).toDouble(),
  distanceKm: (json['distanceKm'] as num).toDouble(),
  estimatedDurationMinutes: (json['estimatedDurationMinutes'] as num).toInt(),
  paymentMethod: json['paymentMethod'] as String,
  requestedAt: json['requestedAt'] == null
      ? null
      : DateTime.parse(json['requestedAt'] as String),
);

Map<String, dynamic> _$RideModelToJson(RideModel instance) => <String, dynamic>{
  'rideId': instance.rideId,
  'passengerId': instance.passengerId,
  'passengerName': instance.passengerName,
  'passengerRating': instance.passengerRating,
  'passengerAvatarUrl': instance.passengerAvatarUrl,
  'pickupLocation': instance.pickupLocation,
  'dropLocation': instance.dropLocation,
  'estimatedFare': instance.estimatedFare,
  'distanceKm': instance.distanceKm,
  'estimatedDurationMinutes': instance.estimatedDurationMinutes,
  'paymentMethod': instance.paymentMethod,
  'requestedAt': instance.requestedAt?.toIso8601String(),
};
