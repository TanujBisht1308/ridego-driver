// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEntity {

 bool get soundAndVibration; String get navigationApp; bool get onlinePreferences;
/// Create a copy of SettingsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsEntityCopyWith<SettingsEntity> get copyWith => _$SettingsEntityCopyWithImpl<SettingsEntity>(this as SettingsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEntity&&(identical(other.soundAndVibration, soundAndVibration) || other.soundAndVibration == soundAndVibration)&&(identical(other.navigationApp, navigationApp) || other.navigationApp == navigationApp)&&(identical(other.onlinePreferences, onlinePreferences) || other.onlinePreferences == onlinePreferences));
}


@override
int get hashCode => Object.hash(runtimeType,soundAndVibration,navigationApp,onlinePreferences);

@override
String toString() {
  return 'SettingsEntity(soundAndVibration: $soundAndVibration, navigationApp: $navigationApp, onlinePreferences: $onlinePreferences)';
}


}

/// @nodoc
abstract mixin class $SettingsEntityCopyWith<$Res>  {
  factory $SettingsEntityCopyWith(SettingsEntity value, $Res Function(SettingsEntity) _then) = _$SettingsEntityCopyWithImpl;
@useResult
$Res call({
 bool soundAndVibration, String navigationApp, bool onlinePreferences
});




}
/// @nodoc
class _$SettingsEntityCopyWithImpl<$Res>
    implements $SettingsEntityCopyWith<$Res> {
  _$SettingsEntityCopyWithImpl(this._self, this._then);

  final SettingsEntity _self;
  final $Res Function(SettingsEntity) _then;

/// Create a copy of SettingsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? soundAndVibration = null,Object? navigationApp = null,Object? onlinePreferences = null,}) {
  return _then(_self.copyWith(
soundAndVibration: null == soundAndVibration ? _self.soundAndVibration : soundAndVibration // ignore: cast_nullable_to_non_nullable
as bool,navigationApp: null == navigationApp ? _self.navigationApp : navigationApp // ignore: cast_nullable_to_non_nullable
as String,onlinePreferences: null == onlinePreferences ? _self.onlinePreferences : onlinePreferences // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsEntity].
extension SettingsEntityPatterns on SettingsEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsEntity value)  $default,){
final _that = this;
switch (_that) {
case _SettingsEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool soundAndVibration,  String navigationApp,  bool onlinePreferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsEntity() when $default != null:
return $default(_that.soundAndVibration,_that.navigationApp,_that.onlinePreferences);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool soundAndVibration,  String navigationApp,  bool onlinePreferences)  $default,) {final _that = this;
switch (_that) {
case _SettingsEntity():
return $default(_that.soundAndVibration,_that.navigationApp,_that.onlinePreferences);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool soundAndVibration,  String navigationApp,  bool onlinePreferences)?  $default,) {final _that = this;
switch (_that) {
case _SettingsEntity() when $default != null:
return $default(_that.soundAndVibration,_that.navigationApp,_that.onlinePreferences);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsEntity implements SettingsEntity {
  const _SettingsEntity({this.soundAndVibration = true, this.navigationApp = 'Google Maps', this.onlinePreferences = true});
  

@override@JsonKey() final  bool soundAndVibration;
@override@JsonKey() final  String navigationApp;
@override@JsonKey() final  bool onlinePreferences;

/// Create a copy of SettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsEntityCopyWith<_SettingsEntity> get copyWith => __$SettingsEntityCopyWithImpl<_SettingsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsEntity&&(identical(other.soundAndVibration, soundAndVibration) || other.soundAndVibration == soundAndVibration)&&(identical(other.navigationApp, navigationApp) || other.navigationApp == navigationApp)&&(identical(other.onlinePreferences, onlinePreferences) || other.onlinePreferences == onlinePreferences));
}


@override
int get hashCode => Object.hash(runtimeType,soundAndVibration,navigationApp,onlinePreferences);

@override
String toString() {
  return 'SettingsEntity(soundAndVibration: $soundAndVibration, navigationApp: $navigationApp, onlinePreferences: $onlinePreferences)';
}


}

/// @nodoc
abstract mixin class _$SettingsEntityCopyWith<$Res> implements $SettingsEntityCopyWith<$Res> {
  factory _$SettingsEntityCopyWith(_SettingsEntity value, $Res Function(_SettingsEntity) _then) = __$SettingsEntityCopyWithImpl;
@override @useResult
$Res call({
 bool soundAndVibration, String navigationApp, bool onlinePreferences
});




}
/// @nodoc
class __$SettingsEntityCopyWithImpl<$Res>
    implements _$SettingsEntityCopyWith<$Res> {
  __$SettingsEntityCopyWithImpl(this._self, this._then);

  final _SettingsEntity _self;
  final $Res Function(_SettingsEntity) _then;

/// Create a copy of SettingsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? soundAndVibration = null,Object? navigationApp = null,Object? onlinePreferences = null,}) {
  return _then(_SettingsEntity(
soundAndVibration: null == soundAndVibration ? _self.soundAndVibration : soundAndVibration // ignore: cast_nullable_to_non_nullable
as bool,navigationApp: null == navigationApp ? _self.navigationApp : navigationApp // ignore: cast_nullable_to_non_nullable
as String,onlinePreferences: null == onlinePreferences ? _self.onlinePreferences : onlinePreferences // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
