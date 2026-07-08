import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_entity.freezed.dart';

@freezed
abstract class SettingsEntity with _$SettingsEntity {
  const factory SettingsEntity({
    @Default(true) bool soundAndVibration,
    @Default('Google Maps') String navigationApp,
    @Default(true) bool onlinePreferences,
  }) = _SettingsEntity;
}