import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/di/providers.dart';
import '../../domain/entities/driver_profile_entity.dart';

part 'profile_controller.freezed.dart';
part 'profile_controller.g.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    DriverProfileEntity? profile,
    String? errorMessage,
  }) = _ProfileState;
}

@riverpod
class ProfileController extends _$ProfileController {
  @override
  ProfileState build() {
    _load();
    return const ProfileState(isLoading: true);
  }

  Future<void> _load() async {
    try {
      final profile = await ref.read(profileRepositoryProvider).getProfile();
      state = state.copyWith(isLoading: false, profile: profile);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }
}