import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_stats_entity.freezed.dart';

@freezed
abstract class DashboardStatsEntity with _$DashboardStatsEntity {
  const factory DashboardStatsEntity({
    required double todaysEarnings,
    required int completedRides,
    required int totalRidesToday,
    required double distanceCoveredKm,
    required Duration onlineDuration,
  }) = _DashboardStatsEntity;
}