import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/driver_entity.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isLoading,
    String? errorMessage,
    String? phoneNumber,
    DriverEntity? driver,
  }) = _AuthState;
}