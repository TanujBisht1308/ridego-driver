import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_profile_entity.freezed.dart';

@freezed
abstract class DriverProfileEntity with _$DriverProfileEntity {
  const factory DriverProfileEntity({
    required String id,
    required String fullName,
    required String phoneNumber,
    String? email,
    String? avatarUrl,
    required String vehicleNumber,
    required String vehicleType,
    required double rating,
    required int totalRides,
    required String memberSince,
    @Default(false) bool isVerifiedDriver,
  }) = _DriverProfileEntity;
}