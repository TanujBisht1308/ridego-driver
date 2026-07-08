import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/driver_entity.dart';

part 'driver_model.g.dart';

@JsonSerializable()
class DriverModel {
  DriverModel({
    required this.id,
    required this.phoneNumber,
    this.fullName,
    this.email,
    this.vehicleNumber,
    this.avatarUrl,
    this.isProfileComplete = false,
    this.isDocumentVerified = false,
    this.isDocumentSubmitted = false, // ← new
  });

  final String id;
  final String phoneNumber;
  final String? fullName;
  final String? email;
  final String? vehicleNumber;
  final String? avatarUrl;
  final bool isProfileComplete;
  final bool isDocumentVerified;
  final bool isDocumentSubmitted; // ← new

  factory DriverModel.fromJson(Map<String, dynamic> json) =>
      _$DriverModelFromJson(json);

  Map<String, dynamic> toJson() => _$DriverModelToJson(this);

  DriverEntity toEntity() => DriverEntity(
        id: id,
        phoneNumber: phoneNumber,
        fullName: fullName,
        email: email,
        vehicleNumber: vehicleNumber,
        avatarUrl: avatarUrl,
        isProfileComplete: isProfileComplete,
        isDocumentVerified: isDocumentVerified,
        isDocumentSubmitted: isDocumentSubmitted, // ← new
      );

  DriverModel copyWith({
    String? fullName,
    String? email,
    String? vehicleNumber,
    String? avatarUrl,
    bool? isProfileComplete,
    bool? isDocumentVerified,
    bool? isDocumentSubmitted,
  }) {
    return DriverModel(
      id: id,
      phoneNumber: phoneNumber,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      vehicleNumber: vehicleNumber ?? this.vehicleNumber,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      isProfileComplete: isProfileComplete ?? this.isProfileComplete,
      isDocumentVerified: isDocumentVerified ?? this.isDocumentVerified,
      isDocumentSubmitted: isDocumentSubmitted ?? this.isDocumentSubmitted,
    );
  }
}