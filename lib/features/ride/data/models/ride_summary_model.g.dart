// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_summary_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RideSummaryModel _$RideSummaryModelFromJson(Map<String, dynamic> json) =>
    RideSummaryModel(
      rideId: json['rideId'] as String,
      totalFare: (json['totalFare'] as num).toDouble(),
      rideFare: (json['rideFare'] as num).toDouble(),
      incentives: (json['incentives'] as num).toDouble(),
      tips: (json['tips'] as num).toDouble(),
      deductions: (json['deductions'] as num).toDouble(),
      totalEarnings: (json['totalEarnings'] as num).toDouble(),
      distanceKm: (json['distanceKm'] as num).toDouble(),
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
      passengerName: json['passengerName'] as String,
      completedAt: DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$RideSummaryModelToJson(RideSummaryModel instance) =>
    <String, dynamic>{
      'rideId': instance.rideId,
      'totalFare': instance.totalFare,
      'rideFare': instance.rideFare,
      'incentives': instance.incentives,
      'tips': instance.tips,
      'deductions': instance.deductions,
      'totalEarnings': instance.totalEarnings,
      'distanceKm': instance.distanceKm,
      'durationMinutes': instance.durationMinutes,
      'paymentMethod': instance.paymentMethod,
      'passengerName': instance.passengerName,
      'completedAt': instance.completedAt.toIso8601String(),
    };
