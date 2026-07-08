import 'dart:async';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/di/providers.dart';
import '../../../../core/network/socket_service.dart';
import 'ride_state.dart';
import '../../data/models/ride_model.dart';
import '../../domain/entities/ride_entity.dart';
part 'ride_controller.g.dart';

@riverpod
class RideController extends _$RideController {
  StreamSubscription<Position>? _locationSub;

  @override
  RideState build() {
    ref.onDispose(() {
      _locationSub?.cancel();
    });
    return const RideState();
  }

  /// Listens for instantly-pushed ride requests instead of polling.
  /// Kept the same method name so nothing calling this needs to change.
  void startPolling() {
    if (state.isPolling) return;
    state = state.copyWith(isPolling: true);

    SocketService.instance.onIncomingRide((ride) {
      if (state.activeRide == null) {
        state = state.copyWith(incomingRide: _rideFromSocketPayload(ride));
      }
    });

    SocketService.instance.onRideTaken((rideId) {
      if (state.incomingRide?.rideId == rideId) {
        state = state.copyWith(incomingRide: null);
      }
    });

    // Catch up on any ride that was created before this driver went
    // online/reconnected — sockets only push events that happen *after*
    // the listener is attached, so this fills the gap.
    _checkForExistingRide();
  }

  Future<void> _checkForExistingRide() async {
    try {
      final ride = await ref.read(rideRepositoryProvider).getIncomingRide();
      if (ride != null && state.activeRide == null && state.incomingRide == null) {
        state = state.copyWith(incomingRide: ride);
      }
    } catch (_) {}
  }

  void stopPolling() {
    state = state.copyWith(isPolling: false, incomingRide: null);
  }

  RideEntity _rideFromSocketPayload(Map<String, dynamic> json) {
    return RideModel.fromJson(json).toEntity();
  }

  Future<bool> acceptRide(String rideId) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final ride = await ref.read(rideRepositoryProvider).acceptRide(rideId);
      state = state.copyWith(
        isLoading: false,
        incomingRide: null,
        activeRide: ride,
      );
      ref.read(rideRepositoryProvider).joinRideRoom(rideId);
      _startLocationStreaming(rideId);
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return false;
    }
  }

  Future<void> rejectRide(String rideId) async {
    state = state.copyWith(isLoading: true);
    try {
      await ref.read(rideRepositoryProvider).rejectRide(rideId);
      state = state.copyWith(isLoading: false, incomingRide: null);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<bool> reachedPickup() async {
    if (state.activeRide == null) return false;
    state = state.copyWith(isLoading: true);
    try {
      await ref.read(rideRepositoryProvider).reachedPickup(state.activeRide!.rideId);
      state = state.copyWith(isLoading: false);
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return false;
    }
  }

  Future<bool> startRide() async {
    if (state.activeRide == null) return false;
    state = state.copyWith(isLoading: true);
    try {
      await ref.read(rideRepositoryProvider).startRide(state.activeRide!.rideId);
      state = state.copyWith(isLoading: false);
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return false;
    }
  }

  Future<bool> completeRide() async {
    if (state.activeRide == null) return false;
    state = state.copyWith(isLoading: true);
    try {
      final summary = await ref.read(rideRepositoryProvider).completeRide(state.activeRide!.rideId);
      _stopLocationStreaming();
      state = state.copyWith(
        isLoading: false,
        activeRide: null,
        rideSummary: summary,
      );
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return false;
    }
  }

  void clearSummary() {
    state = state.copyWith(rideSummary: null);
    startPolling();
  }

  void _startLocationStreaming(String rideId) {
    _locationSub?.cancel();
    _locationSub = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.high, distanceFilter: 10),
    ).listen((position) {
      ref.read(rideRepositoryProvider).streamLocation(rideId, position.latitude, position.longitude);
    });
  }

  void _stopLocationStreaming() {
    _locationSub?.cancel();
    _locationSub = null;
  }
}