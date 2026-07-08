import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/ride_entity.dart';
import '../../domain/entities/ride_summary_entity.dart';

part 'ride_state.freezed.dart';

@freezed
abstract class RideState with _$RideState {
  const factory RideState({
    @Default(false) bool isLoading,
    @Default(false) bool isPolling,
    RideEntity? incomingRide,
    RideEntity? activeRide,
    RideSummaryEntity? rideSummary,
    String? errorMessage,
  }) = _RideState;
}