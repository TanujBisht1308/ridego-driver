import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/ride_summary_entity.dart';

part 'ride_summary_model.g.dart';

@JsonSerializable()
class RideSummaryModel {
  RideSummaryModel({
    required this.rideId,
    required this.totalFare,
    required this.rideFare,
    required this.incentives,
    required this.tips,
    required this.deductions,
    required this.totalEarnings,
    required this.distanceKm,
    required this.durationMinutes,
    required this.paymentMethod,
    required this.passengerName,
    required this.completedAt,
  });

  final String rideId;
  final double totalFare;
  final double rideFare;
  final double incentives;
  final double tips;
  final double deductions;
  final double totalEarnings;
  final double distanceKm;
  final int durationMinutes;
  final String paymentMethod;
  final String passengerName;
  final DateTime completedAt;

  factory RideSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$RideSummaryModelFromJson(json);

  Map<String, dynamic> toJson() => _$RideSummaryModelToJson(this);

  RideSummaryEntity toEntity() => RideSummaryEntity(
        rideId: rideId,
        totalFare: totalFare,
        rideFare: rideFare,
        incentives: incentives,
        tips: tips,
        deductions: deductions,
        totalEarnings: totalEarnings,
        distanceKm: distanceKm,
        durationMinutes: durationMinutes,
        paymentMethod: paymentMethod,
        passengerName: passengerName,
        completedAt: completedAt,
      );
}