import 'package:freezed_annotation/freezed_annotation.dart';

part 'earnings_entity.freezed.dart';

enum EarningsFilter { daily, weekly, monthly }

@freezed
abstract class EarningsEntity with _$EarningsEntity {
  const factory EarningsEntity({
    required EarningsFilter filter,
    required double totalEarnings,
    required int totalRides,
    required double rideFare,
    required double incentives,
    required double tips,
    required double deductions,
    required double totalEarningsAfterDeductions,
    required String paymentMethod,
  }) = _EarningsEntity;
}

@freezed
abstract class TransactionEntity with _$TransactionEntity {
  const factory TransactionEntity({
    required String rideId,
    required String passengerName,
    required String pickupAddress,
    required String dropAddress,
    required double fare,
    required DateTime date,
    required String paymentMethod,
  }) = _TransactionEntity;
}