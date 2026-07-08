import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/di/providers.dart';
import 'auth_state.dart';

part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  AuthState build() => const AuthState();

  Future<bool> sendOtp(String phoneNumber) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      await ref.read(authRepositoryProvider).sendOtp(phoneNumber);
      state = state.copyWith(isLoading: false, phoneNumber: phoneNumber);
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return false;
    }
  }
  Future<void> logout() async {
  state = state.copyWith(isLoading: true);
  try {
    await ref.read(authRepositoryProvider).logout();
  } catch (_) {}
  state = const AuthState();
}
  
  Future<bool> verifyOtp(String otp) async {
    if (state.phoneNumber == null) return false;
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final driver = await ref
          .read(authRepositoryProvider)
          .verifyOtp(state.phoneNumber!, otp);
      state = state.copyWith(isLoading: false, driver: driver);
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return false;
    }
  }

  Future<bool> saveProfile({
  required String fullName,
  String? email,
  required String vehicleNumber,
  String vehicleType = 'sedan',
}) async {
  state = state.copyWith(isLoading: true, errorMessage: null);
  try {
    final driver = await ref.read(authRepositoryProvider).saveProfile(
          fullName: fullName,
          email: email,
          vehicleNumber: vehicleNumber,
          vehicleType: vehicleType,
        );
    state = state.copyWith(isLoading: false, driver: driver);
    return true;
  } catch (e) {
    state = state.copyWith(isLoading: false, errorMessage: e.toString());
    return false;
  }
}
  Future<bool> submitDocuments(List<String> paths) async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      await ref.read(authRepositoryProvider).submitDocuments(paths);
      state = state.copyWith(
        isLoading: false,
        driver: state.driver?.copyWith(isDocumentSubmitted: true),
      );
      return true;
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
      return false;
    }
  }
}