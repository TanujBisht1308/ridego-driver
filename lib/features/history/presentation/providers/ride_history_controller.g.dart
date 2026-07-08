// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_history_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RideHistoryController)
const rideHistoryControllerProvider = RideHistoryControllerProvider._();

final class RideHistoryControllerProvider
    extends $NotifierProvider<RideHistoryController, RideHistoryState> {
  const RideHistoryControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rideHistoryControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rideHistoryControllerHash();

  @$internal
  @override
  RideHistoryController create() => RideHistoryController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RideHistoryState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RideHistoryState>(value),
    );
  }
}

String _$rideHistoryControllerHash() =>
    r'd16ae98cb3b2c23c48e532fd31ba76a799707d55';

abstract class _$RideHistoryController extends $Notifier<RideHistoryState> {
  RideHistoryState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<RideHistoryState, RideHistoryState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<RideHistoryState, RideHistoryState>,
              RideHistoryState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
