import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_entity.freezed.dart';

@freezed
abstract class DriverEntity with _$DriverEntity {
  const factory DriverEntity({
    required String id,
    required String phoneNumber,
    String? fullName,
    String? email,
    String? vehicleNumber,
    String? avatarUrl,
    @Default(false) bool isProfileComplete,
    @Default(false) bool isDocumentVerified,
    @Default(false) bool isDocumentSubmitted,
  }) = _DriverEntity;
}