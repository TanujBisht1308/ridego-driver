// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_nav_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BottomNavController)
const bottomNavControllerProvider = BottomNavControllerProvider._();

final class BottomNavControllerProvider
    extends $NotifierProvider<BottomNavController, int> {
  const BottomNavControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bottomNavControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bottomNavControllerHash();

  @$internal
  @override
  BottomNavController create() => BottomNavController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$bottomNavControllerHash() =>
    r'4fc1ac79e8981ce8bf13d24017abba7ee2f000e0';

abstract class _$BottomNavController extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
