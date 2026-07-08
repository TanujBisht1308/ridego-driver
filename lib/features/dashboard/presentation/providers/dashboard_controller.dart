import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/di/providers.dart';
import 'dashboard_state.dart';
import '../../../ride/presentation/providers/ride_controller.dart';
part 'dashboard_controller.g.dart';

@riverpod
class DashboardController extends _$DashboardController {
  @override
  DashboardState build() {
    _loadInitial();
    return const DashboardState(isLoading: true);
  }

  Future<void> _loadInitial() async {
    try {
      final repo = ref.read(dashboardRepositoryProvider);
      final isOnline = await repo.getOnlineStatus();
      final stats = await repo.getTodayStats();
      state = state.copyWith(
        isLoading: false,
        isOnline: isOnline,
        stats: stats,
      );

      // If the driver was already online from a previous session, the
      // ride-listening socket connection needs to be (re)attached now —
      // it isn't automatic just because the DB says isOnline: true.
      if (isOnline) {
        ref.read(rideControllerProvider.notifier).startPolling();
      }
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> toggleOnlineStatus() async {
    if (state.isTogglingStatus) return; // ignore taps while one is already in flight
    state = state.copyWith(isTogglingStatus: true);
    final newStatus = !state.isOnline;
    try {
      await ref.read(dashboardRepositoryProvider).setOnlineStatus(newStatus);
      state = state.copyWith(isOnline: newStatus, isTogglingStatus: false);
    } catch (e) {
      state = state.copyWith(
        isTogglingStatus: false,
        errorMessage: e.toString(),
      );
    }
  }

  Future<void> refreshStats() async {
    try {
      final stats = await ref.read(dashboardRepositoryProvider).getTodayStats();
      state = state.copyWith(stats: stats);
    } catch (e) {
      state = state.copyWith(errorMessage: e.toString());
    }
  }
}