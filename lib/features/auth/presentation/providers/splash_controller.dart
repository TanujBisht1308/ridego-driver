import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/di/providers.dart';
import '../../../../core/storage/secure_storage_service.dart';

part 'splash_controller.g.dart';

enum SplashDestination {
  login,
  completeProfile,
  documentVerification,
  dashboard,
}

@riverpod
Future<SplashDestination> splashDestination(Ref ref) async {
  await Future.delayed(const Duration(milliseconds: 1800));

  try {
    final storage = ref.read(secureStorageServiceProvider);

    // Step 1 — check if any session exists at all
    final accessToken = await storage.read('access_token');
    final refreshToken = await storage.read('refresh_token');

    // No tokens at all → definitely not logged in
    if (accessToken == null && refreshToken == null) {
      return SplashDestination.login;
    }

    // Step 2 — tokens exist, check local cached driver
    final localDataSource = ref.read(authLocalDataSourceProvider);
    final cachedDriver = await localDataSource.getCachedDriver();

    if (cachedDriver == null) {
      // Tokens exist but no cached driver → something is off → login
      return SplashDestination.login;
    }

    // Step 3 — use cached data for routing decisions
    // No network call needed here — dashboard handles token refresh
    if (!cachedDriver.isProfileComplete) {
      return SplashDestination.completeProfile;
    }

    if (!cachedDriver.isDocumentSubmitted &&
        !cachedDriver.isDocumentVerified) {
      return SplashDestination.documentVerification;
    }

    return SplashDestination.dashboard;
  } catch (_) {
    return SplashDestination.login;
  }
}