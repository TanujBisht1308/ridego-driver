import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/di/providers.dart';
import '../../domain/entities/ride_history_entity.dart';

part 'ride_history_controller.freezed.dart';
part 'ride_history_controller.g.dart';

@freezed
abstract class RideHistoryState with _$RideHistoryState {
  const factory RideHistoryState({
    @Default(false) bool isLoading,
    @Default(RideHistoryStatus.all) RideHistoryStatus selectedStatus,
    @Default([]) List<RideHistoryEntity> rides,
    String? errorMessage,
  }) = _RideHistoryState;
}

@riverpod
class RideHistoryController extends _$RideHistoryController {
  @override
  RideHistoryState build() {
    _load(RideHistoryStatus.all);
    return const RideHistoryState(isLoading: true);
  }

  Future<void> _load(RideHistoryStatus status) async {
    try {
      final rides =
          await ref.read(rideHistoryRepositoryProvider).getRides(status);
      state = state.copyWith(isLoading: false, rides: rides);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> setFilter(RideHistoryStatus status) async {
    state = state.copyWith(isLoading: true, selectedStatus: status);
    await _load(status);
  }
}