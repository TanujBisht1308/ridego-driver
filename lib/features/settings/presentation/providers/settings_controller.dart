import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/di/providers.dart';
import '../../domain/entities/settings_entity.dart';

part 'settings_controller.freezed.dart';
part 'settings_controller.g.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(false) bool isLoading,
    SettingsEntity? settings,
    String? errorMessage,
  }) = _SettingsState;
}

@riverpod
class SettingsController extends _$SettingsController {
  @override
  SettingsState build() {
    _load();
    return const SettingsState(isLoading: true);
  }

  Future<void> _load() async {
    try {
      final settings =
          await ref.read(settingsRepositoryProvider).getSettings();
      state = state.copyWith(isLoading: false, settings: settings);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  Future<void> toggleSound(bool value) async {
    if (state.settings == null) return;
    final updated = state.settings!.copyWith(soundAndVibration: value);
    state = state.copyWith(settings: updated);
    await ref.read(settingsRepositoryProvider).updateSettings(updated);
  }
}