import 'package:dio/dio.dart';
import '../../../../core/constants/api_constants.dart';
import '../../domain/entities/settings_entity.dart';

class SettingsRemoteDataSource {
  SettingsRemoteDataSource({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Future<SettingsEntity> getSettings() async {
    final response = await _dio.get(ApiConstants.settings);
    final data = response.data['data'] as Map<String, dynamic>;
    return SettingsEntity(
      soundAndVibration: data['soundAndVibration'] as bool,
      navigationApp: data['navigationApp'] as String,
      onlinePreferences: data['onlinePreferences'] as bool,
    );
  }

  Future<void> updateSettings(SettingsEntity settings) async {
    await _dio.put(
      ApiConstants.settings,
      data: {
        'soundAndVibration': settings.soundAndVibration,
        'navigationApp': settings.navigationApp,
        'onlinePreferences': settings.onlinePreferences,
      },
    );
  }
}