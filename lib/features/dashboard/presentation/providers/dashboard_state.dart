import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/dashboard_stats_entity.dart';

part 'dashboard_state.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(false) bool isLoading,
    @Default(false) bool isOnline,
    @Default(false) bool isTogglingStatus,
    DashboardStatsEntity? stats,
    String? errorMessage,
  }) = _DashboardState;
}