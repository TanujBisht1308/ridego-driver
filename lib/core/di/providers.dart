
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../storage/secure_storage_service.dart';
import '../network/dio_client.dart';
import '../../features/auth/data/datasources/auth_local_datasource.dart';
import '../../features/auth/data/datasources/auth_remote_datasource.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/dashboard/data/datasources/dashboard_remote_datasource.dart';
import '../../features/dashboard/data/repositories/dashboard_repository_impl.dart';
import '../../features/dashboard/domain/repositories/dashboard_repository.dart';
import '../../features/ride/data/datasources/ride_remote_datasource.dart';
import '../../features/ride/data/repositories/ride_repository_impl.dart';
import '../../features/ride/domain/repositories/ride_repository.dart';
import '../../features/earnings/data/datasources/earnings_remote_datasource.dart';
import '../../features/earnings/data/repositories/earnings_repository_impl.dart';
import '../../features/earnings/domain/repositories/earnings_repository.dart';
import '../../features/history/data/datasources/ride_history_remote_datasource.dart';
import '../../features/history/data/repositories/ride_history_repository_impl.dart';
import '../../features/history/domain/repositories/ride_history_repository.dart';
import '../../features/profile/data/datasources/profile_remote_datasource.dart';
import '../../features/profile/data/repositories/profile_repository_impl.dart';
import '../../features/profile/domain/repositories/profile_repository.dart';
import '../../features/settings/data/datasources/settings_remote_datasource.dart';
import '../../features/settings/data/repositories/settings_repository_impl.dart';
import '../../features/settings/domain/repositories/settings_repository.dart';

part 'providers.g.dart';

// ─── Core ───────────────────────────────────────────────

@Riverpod(keepAlive: true)
SecureStorageService secureStorageService(Ref ref) {
  return SecureStorageService();
}

// dioClientProvider is generated from dio_client.dart via @riverpod

// ─── Auth ────────────────────────────────────────────────

@Riverpod(keepAlive: true)
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  return AuthRemoteDataSource(
    dio: ref.watch(dioClientProvider),
    secureStorage: ref.watch(secureStorageServiceProvider),
  );
}

@Riverpod(keepAlive: true)
AuthLocalDataSource authLocalDataSource(Ref ref) {
  return AuthLocalDataSource(ref.watch(secureStorageServiceProvider));
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
  remoteDataSource: ref.watch(authRemoteDataSourceProvider),
  localDataSource: ref.watch(authLocalDataSourceProvider),
  secureStorage: ref.watch(secureStorageServiceProvider), // ← add this
);
}

// ─── Dashboard ───────────────────────────────────────────

@Riverpod(keepAlive: true)
DashboardRemoteDataSource dashboardRemoteDataSource(Ref ref) {
  return DashboardRemoteDataSource(
    dio: ref.watch(dioClientProvider),
    secureStorage: ref.watch(secureStorageServiceProvider),
  );
}

@Riverpod(keepAlive: true)
DashboardRepository dashboardRepository(Ref ref) {
  return DashboardRepositoryImpl(
    remoteDataSource: ref.watch(dashboardRemoteDataSourceProvider),
    secureStorage: ref.watch(secureStorageServiceProvider),
  );
}

// ─── Ride ────────────────────────────────────────────────

@Riverpod(keepAlive: true)
RideRemoteDataSource rideRemoteDataSource(Ref ref) {
  return RideRemoteDataSource(
    dio: ref.watch(dioClientProvider),
  );
}

@Riverpod(keepAlive: true)
RideRepository rideRepository(Ref ref) {
  return RideRepositoryImpl(
    remoteDataSource: ref.watch(rideRemoteDataSourceProvider),
  );
}

// ─── Earnings ────────────────────────────────────────────

@Riverpod(keepAlive: true)
EarningsRemoteDataSource earningsRemoteDataSource(Ref ref) {
  return EarningsRemoteDataSource(
    dio: ref.watch(dioClientProvider),
  );
}

@Riverpod(keepAlive: true)
EarningsRepository earningsRepository(Ref ref) {
  return EarningsRepositoryImpl(
    remoteDataSource: ref.watch(earningsRemoteDataSourceProvider),
  );
}

// ─── History ─────────────────────────────────────────────

@Riverpod(keepAlive: true)
RideHistoryRemoteDataSource rideHistoryRemoteDataSource(Ref ref) {
  return RideHistoryRemoteDataSource(
    dio: ref.watch(dioClientProvider),
  );
}

@Riverpod(keepAlive: true)
RideHistoryRepository rideHistoryRepository(Ref ref) {
  return RideHistoryRepositoryImpl(
    remoteDataSource: ref.watch(rideHistoryRemoteDataSourceProvider),
  );
}

// ─── Profile ─────────────────────────────────────────────

@Riverpod(keepAlive: true)
ProfileRemoteDataSource profileRemoteDataSource(Ref ref) {
  return ProfileRemoteDataSource(
    dio: ref.watch(dioClientProvider),
  );
}

@Riverpod(keepAlive: true)
ProfileRepository profileRepository(Ref ref) {
  return ProfileRepositoryImpl(
    remoteDataSource: ref.watch(profileRemoteDataSourceProvider),
  );
}

// ─── Settings ────────────────────────────────────────────

@Riverpod(keepAlive: true)
SettingsRemoteDataSource settingsRemoteDataSource(Ref ref) {
  return SettingsRemoteDataSource(
    dio: ref.watch(dioClientProvider),
  );
}

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(Ref ref) {
  return SettingsRepositoryImpl(
    remoteDataSource: ref.watch(settingsRemoteDataSourceProvider),
  );
}