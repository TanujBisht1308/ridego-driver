import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_summary_entity.freezed.dart';

@freezed
abstract class RideSummaryEntity with _$RideSummaryEntity {
  const factory RideSummaryEntity({
    required String rideId,
    required double totalFare,
    required double rideFare,
    required double incentives,
    required double tips,
    required double deductions,
    required double totalEarnings,
    required double distanceKm,
    required int durationMinutes,
    required String paymentMethod,
    required String passengerName,
    required DateTime completedAt,
  }) = _RideSummaryEntity;
}