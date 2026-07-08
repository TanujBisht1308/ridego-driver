// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DriverEntity {

 String get id; String get phoneNumber; String? get fullName; String? get email; String? get vehicleNumber; String? get avatarUrl; bool get isProfileComplete; bool get isDocumentVerified; bool get isDocumentSubmitted;
/// Create a copy of DriverEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverEntityCopyWith<DriverEntity> get copyWith => _$DriverEntityCopyWithImpl<DriverEntity>(this as DriverEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.vehicleNumber, vehicleNumber) || other.vehicleNumber == vehicleNumber)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isProfileComplete, isProfileComplete) || other.isProfileComplete == isProfileComplete)&&(identical(other.isDocumentVerified, isDocumentVerified) || other.isDocumentVerified == isDocumentVerified)&&(identical(other.isDocumentSubmitted, isDocumentSubmitted) || other.isDocumentSubmitted == isDocumentSubmitted));
}


@override
int get hashCode => Object.hash(runtimeType,id,phoneNumber,fullName,email,vehicleNumber,avatarUrl,isProfileComplete,isDocumentVerified,isDocumentSubmitted);

@override
String toString() {
  return 'DriverEntity(id: $id, phoneNumber: $phoneNumber, fullName: $fullName, email: $email, vehicleNumber: $vehicleNumber, avatarUrl: $avatarUrl, isProfileComplete: $isProfileComplete, isDocumentVerified: $isDocumentVerified, isDocumentSubmitted: $isDocumentSubmitted)';
}


}

/// @nodoc
abstract mixin class $DriverEntityCopyWith<$Res>  {
  factory $DriverEntityCopyWith(DriverEntity value, $Res Function(DriverEntity) _then) = _$DriverEntityCopyWithImpl;
@useResult
$Res call({
 String id, String phoneNumber, String? fullName, String? email, String? vehicleNumber, String? avatarUrl, bool isProfileComplete, bool isDocumentVerified, bool isDocumentSubmitted
});




}
/// @nodoc
class _$DriverEntityCopyWithImpl<$Res>
    implements $DriverEntityCopyWith<$Res> {
  _$DriverEntityCopyWithImpl(this._self, this._then);

  final DriverEntity _self;
  final $Res Function(DriverEntity) _then;

/// Create a copy of DriverEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phoneNumber = null,Object? fullName = freezed,Object? email = freezed,Object? vehicleNumber = freezed,Object? avatarUrl = freezed,Object? isProfileComplete = null,Object? isDocumentVerified = null,Object? isDocumentSubmitted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,vehicleNumber: freezed == vehicleNumber ? _self.vehicleNumber : vehicleNumber // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isProfileComplete: null == isProfileComplete ? _self.isProfileComplete : isProfileComplete // ignore: cast_nullable_to_non_nullable
as bool,isDocumentVerified: null == isDocumentVerified ? _self.isDocumentVerified : isDocumentVerified // ignore: cast_nullable_to_non_nullable
as bool,isDocumentSubmitted: null == isDocumentSubmitted ? _self.isDocumentSubmitted : isDocumentSubmitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DriverEntity].
extension DriverEntityPatterns on DriverEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverEntity value)  $default,){
final _that = this;
switch (_that) {
case _DriverEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DriverEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String phoneNumber,  String? fullName,  String? email,  String? vehicleNumber,  String? avatarUrl,  bool isProfileComplete,  bool isDocumentVerified,  bool isDocumentSubmitted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverEntity() when $default != null:
return $default(_that.id,_that.phoneNumber,_that.fullName,_that.email,_that.vehicleNumber,_that.avatarUrl,_that.isProfileComplete,_that.isDocumentVerified,_that.isDocumentSubmitted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String phoneNumber,  String? fullName,  String? email,  String? vehicleNumber,  String? avatarUrl,  bool isProfileComplete,  bool isDocumentVerified,  bool isDocumentSubmitted)  $default,) {final _that = this;
switch (_that) {
case _DriverEntity():
return $default(_that.id,_that.phoneNumber,_that.fullName,_that.email,_that.vehicleNumber,_that.avatarUrl,_that.isProfileComplete,_that.isDocumentVerified,_that.isDocumentSubmitted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String phoneNumber,  String? fullName,  String? email,  String? vehicleNumber,  String? avatarUrl,  bool isProfileComplete,  bool isDocumentVerified,  bool isDocumentSubmitted)?  $default,) {final _that = this;
switch (_that) {
case _DriverEntity() when $default != null:
return $default(_that.id,_that.phoneNumber,_that.fullName,_that.email,_that.vehicleNumber,_that.avatarUrl,_that.isProfileComplete,_that.isDocumentVerified,_that.isDocumentSubmitted);case _:
  return null;

}
}

}

/// @nodoc


class _DriverEntity implements DriverEntity {
  const _DriverEntity({required this.id, required this.phoneNumber, this.fullName, this.email, this.vehicleNumber, this.avatarUrl, this.isProfileComplete = false, this.isDocumentVerified = false, this.isDocumentSubmitted = false});
  

@override final  String id;
@override final  String phoneNumber;
@override final  String? fullName;
@override final  String? email;
@override final  String? vehicleNumber;
@override final  String? avatarUrl;
@override@JsonKey() final  bool isProfileComplete;
@override@JsonKey() final  bool isDocumentVerified;
@override@JsonKey() final  bool isDocumentSubmitted;

/// Create a copy of DriverEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverEntityCopyWith<_DriverEntity> get copyWith => __$DriverEntityCopyWithImpl<_DriverEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.email, email) || other.email == email)&&(identical(other.vehicleNumber, vehicleNumber) || other.vehicleNumber == vehicleNumber)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.isProfileComplete, isProfileComplete) || other.isProfileComplete == isProfileComplete)&&(identical(other.isDocumentVerified, isDocumentVerified) || other.isDocumentVerified == isDocumentVerified)&&(identical(other.isDocumentSubmitted, isDocumentSubmitted) || other.isDocumentSubmitted == isDocumentSubmitted));
}


@override
int get hashCode => Object.hash(runtimeType,id,phoneNumber,fullName,email,vehicleNumber,avatarUrl,isProfileComplete,isDocumentVerified,isDocumentSubmitted);

@override
String toString() {
  return 'DriverEntity(id: $id, phoneNumber: $phoneNumber, fullName: $fullName, email: $email, vehicleNumber: $vehicleNumber, avatarUrl: $avatarUrl, isProfileComplete: $isProfileComplete, isDocumentVerified: $isDocumentVerified, isDocumentSubmitted: $isDocumentSubmitted)';
}


}

/// @nodoc
abstract mixin class _$DriverEntityCopyWith<$Res> implements $DriverEntityCopyWith<$Res> {
  factory _$DriverEntityCopyWith(_DriverEntity value, $Res Function(_DriverEntity) _then) = __$DriverEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String phoneNumber, String? fullName, String? email, String? vehicleNumber, String? avatarUrl, bool isProfileComplete, bool isDocumentVerified, bool isDocumentSubmitted
});




}
/// @nodoc
class __$DriverEntityCopyWithImpl<$Res>
    implements _$DriverEntityCopyWith<$Res> {
  __$DriverEntityCopyWithImpl(this._self, this._then);

  final _DriverEntity _self;
  final $Res Function(_DriverEntity) _then;

/// Create a copy of DriverEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phoneNumber = null,Object? fullName = freezed,Object? email = freezed,Object? vehicleNumber = freezed,Object? avatarUrl = freezed,Object? isProfileComplete = null,Object? isDocumentVerified = null,Object? isDocumentSubmitted = null,}) {
  return _then(_DriverEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,vehicleNumber: freezed == vehicleNumber ? _self.vehicleNumber : vehicleNumber // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,isProfileComplete: null == isProfileComplete ? _self.isProfileComplete : isProfileComplete // ignore: cast_nullable_to_non_nullable
as bool,isDocumentVerified: null == isDocumentVerified ? _self.isDocumentVerified : isDocumentVerified // ignore: cast_nullable_to_non_nullable
as bool,isDocumentSubmitted: null == isDocumentSubmitted ? _self.isDocumentSubmitted : isDocumentSubmitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
