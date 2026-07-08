import '../../domain/entities/settings_entity.dart';
import '../../domain/repositories/settings_repository.dart';
import '../datasources/settings_remote_datasource.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl(
      {required SettingsRemoteDataSource remoteDataSource})
      : _remote = remoteDataSource;

  final SettingsRemoteDataSource _remote;

  @override
  Future<SettingsEntity> getSettings() => _remote.getSettings();

  @override
  Future<void> updateSettings(SettingsEntity settings) =>
      _remote.updateSettings(settings);
}