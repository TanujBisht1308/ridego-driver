// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverModel _$DriverModelFromJson(Map<String, dynamic> json) => DriverModel(
  id: json['id'] as String,
  phoneNumber: json['phoneNumber'] as String,
  fullName: json['fullName'] as String?,
  email: json['email'] as String?,
  vehicleNumber: json['vehicleNumber'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  isProfileComplete: json['isProfileComplete'] as bool? ?? false,
  isDocumentVerified: json['isDocumentVerified'] as bool? ?? false,
  isDocumentSubmitted: json['isDocumentSubmitted'] as bool? ?? false,
);

Map<String, dynamic> _$DriverModelToJson(DriverModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'fullName': instance.fullName,
      'email': instance.email,
      'vehicleNumber': instance.vehicleNumber,
      'avatarUrl': instance.avatarUrl,
      'isProfileComplete': instance.isProfileComplete,
      'isDocumentVerified': instance.isDocumentVerified,
      'isDocumentSubmitted': instance.isDocumentSubmitted,
    };
