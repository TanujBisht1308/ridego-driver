// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'earnings_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(EarningsController)
const earningsControllerProvider = EarningsControllerProvider._();

final class EarningsControllerProvider
    extends $NotifierProvider<EarningsController, EarningsState> {
  const EarningsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'earningsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$earningsControllerHash();

  @$internal
  @override
  EarningsController create() => EarningsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(EarningsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<EarningsState>(value),
    );
  }
}

String _$earningsControllerHash() =>
    r'cbbe4b7d8c1ac3fffae724703eed38af06e597b9';

abstract class _$EarningsController extends $Notifier<EarningsState> {
  EarningsState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<EarningsState, EarningsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<EarningsState, EarningsState>,
              EarningsState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
