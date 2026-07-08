// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(splashDestination)
const splashDestinationProvider = SplashDestinationProvider._();

final class SplashDestinationProvider
    extends
        $FunctionalProvider<
          AsyncValue<SplashDestination>,
          SplashDestination,
          FutureOr<SplashDestination>
        >
    with
        $FutureModifier<SplashDestination>,
        $FutureProvider<SplashDestination> {
  const SplashDestinationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'splashDestinationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$splashDestinationHash();

  @$internal
  @override
  $FutureProviderElement<SplashDestination> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SplashDestination> create(Ref ref) {
    return splashDestination(ref);
  }
}

String _$splashDestinationHash() => r'bc655b2226b7e9ce9333819eb45834f1fd63bf75';
