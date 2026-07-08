import '../../../../core/storage/secure_storage_service.dart';
import '../../domain/entities/dashboard_stats_entity.dart';
import '../../domain/repositories/dashboard_repository.dart';
import '../datasources/dashboard_remote_datasource.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  DashboardRepositoryImpl({
    required DashboardRemoteDataSource remoteDataSource,
    required SecureStorageService secureStorage,
  })  : _remote = remoteDataSource,
        _storage = secureStorage;

  final DashboardRemoteDataSource _remote;
  final SecureStorageService _storage;

  static const String _onlineStatusKey = 'driver_online_status';

  @override
  Future<DashboardStatsEntity> getTodayStats() => _remote.fetchTodayStats();

  @override
  Future<bool> getOnlineStatus() async {
    // Always read from backend — source of truth
    return _remote.getOnlineStatus();
  }

  @override
  Future<void> setOnlineStatus(bool isOnline) async {
    // Hit backend toggle — backend flips it, we cache the result
    await _remote.setOnlineStatus(isOnline);
    await _storage.write(_onlineStatusKey, (!isOnline).toString());
  }
}