// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DriverProfileEntity {

 String get id; String get fullName; String get phoneNumber; String? get email; String? get avatarUrl; String get vehicleNumber; String get vehicleType; double get rating; int get totalRides; String get memberSince; bool get isVerifiedDriver;
/// Create a copy of DriverProfileEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DriverProfileEntityCopyWith<DriverProfileEntity> get copyWith => _$DriverProfileEntityCopyWithImpl<DriverProfileEntity>(this as DriverProfileEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DriverProfileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.vehicleNumber, vehicleNumber) || other.vehicleNumber == vehicleNumber)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.totalRides, totalRides) || other.totalRides == totalRides)&&(identical(other.memberSince, memberSince) || other.memberSince == memberSince)&&(identical(other.isVerifiedDriver, isVerifiedDriver) || other.isVerifiedDriver == isVerifiedDriver));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,phoneNumber,email,avatarUrl,vehicleNumber,vehicleType,rating,totalRides,memberSince,isVerifiedDriver);

@override
String toString() {
  return 'DriverProfileEntity(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, email: $email, avatarUrl: $avatarUrl, vehicleNumber: $vehicleNumber, vehicleType: $vehicleType, rating: $rating, totalRides: $totalRides, memberSince: $memberSince, isVerifiedDriver: $isVerifiedDriver)';
}


}

/// @nodoc
abstract mixin class $DriverProfileEntityCopyWith<$Res>  {
  factory $DriverProfileEntityCopyWith(DriverProfileEntity value, $Res Function(DriverProfileEntity) _then) = _$DriverProfileEntityCopyWithImpl;
@useResult
$Res call({
 String id, String fullName, String phoneNumber, String? email, String? avatarUrl, String vehicleNumber, String vehicleType, double rating, int totalRides, String memberSince, bool isVerifiedDriver
});




}
/// @nodoc
class _$DriverProfileEntityCopyWithImpl<$Res>
    implements $DriverProfileEntityCopyWith<$Res> {
  _$DriverProfileEntityCopyWithImpl(this._self, this._then);

  final DriverProfileEntity _self;
  final $Res Function(DriverProfileEntity) _then;

/// Create a copy of DriverProfileEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fullName = null,Object? phoneNumber = null,Object? email = freezed,Object? avatarUrl = freezed,Object? vehicleNumber = null,Object? vehicleType = null,Object? rating = null,Object? totalRides = null,Object? memberSince = null,Object? isVerifiedDriver = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,vehicleNumber: null == vehicleNumber ? _self.vehicleNumber : vehicleNumber // ignore: cast_nullable_to_non_nullable
as String,vehicleType: null == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,totalRides: null == totalRides ? _self.totalRides : totalRides // ignore: cast_nullable_to_non_nullable
as int,memberSince: null == memberSince ? _self.memberSince : memberSince // ignore: cast_nullable_to_non_nullable
as String,isVerifiedDriver: null == isVerifiedDriver ? _self.isVerifiedDriver : isVerifiedDriver // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DriverProfileEntity].
extension DriverProfileEntityPatterns on DriverProfileEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DriverProfileEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DriverProfileEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DriverProfileEntity value)  $default,){
final _that = this;
switch (_that) {
case _DriverProfileEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DriverProfileEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DriverProfileEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String fullName,  String phoneNumber,  String? email,  String? avatarUrl,  String vehicleNumber,  String vehicleType,  double rating,  int totalRides,  String memberSince,  bool isVerifiedDriver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DriverProfileEntity() when $default != null:
return $default(_that.id,_that.fullName,_that.phoneNumber,_that.email,_that.avatarUrl,_that.vehicleNumber,_that.vehicleType,_that.rating,_that.totalRides,_that.memberSince,_that.isVerifiedDriver);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String fullName,  String phoneNumber,  String? email,  String? avatarUrl,  String vehicleNumber,  String vehicleType,  double rating,  int totalRides,  String memberSince,  bool isVerifiedDriver)  $default,) {final _that = this;
switch (_that) {
case _DriverProfileEntity():
return $default(_that.id,_that.fullName,_that.phoneNumber,_that.email,_that.avatarUrl,_that.vehicleNumber,_that.vehicleType,_that.rating,_that.totalRides,_that.memberSince,_that.isVerifiedDriver);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String fullName,  String phoneNumber,  String? email,  String? avatarUrl,  String vehicleNumber,  String vehicleType,  double rating,  int totalRides,  String memberSince,  bool isVerifiedDriver)?  $default,) {final _that = this;
switch (_that) {
case _DriverProfileEntity() when $default != null:
return $default(_that.id,_that.fullName,_that.phoneNumber,_that.email,_that.avatarUrl,_that.vehicleNumber,_that.vehicleType,_that.rating,_that.totalRides,_that.memberSince,_that.isVerifiedDriver);case _:
  return null;

}
}

}

/// @nodoc


class _DriverProfileEntity implements DriverProfileEntity {
  const _DriverProfileEntity({required this.id, required this.fullName, required this.phoneNumber, this.email, this.avatarUrl, required this.vehicleNumber, required this.vehicleType, required this.rating, required this.totalRides, required this.memberSince, this.isVerifiedDriver = false});
  

@override final  String id;
@override final  String fullName;
@override final  String phoneNumber;
@override final  String? email;
@override final  String? avatarUrl;
@override final  String vehicleNumber;
@override final  String vehicleType;
@override final  double rating;
@override final  int totalRides;
@override final  String memberSince;
@override@JsonKey() final  bool isVerifiedDriver;

/// Create a copy of DriverProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DriverProfileEntityCopyWith<_DriverProfileEntity> get copyWith => __$DriverProfileEntityCopyWithImpl<_DriverProfileEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DriverProfileEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.email, email) || other.email == email)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.vehicleNumber, vehicleNumber) || other.vehicleNumber == vehicleNumber)&&(identical(other.vehicleType, vehicleType) || other.vehicleType == vehicleType)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.totalRides, totalRides) || other.totalRides == totalRides)&&(identical(other.memberSince, memberSince) || other.memberSince == memberSince)&&(identical(other.isVerifiedDriver, isVerifiedDriver) || other.isVerifiedDriver == isVerifiedDriver));
}


@override
int get hashCode => Object.hash(runtimeType,id,fullName,phoneNumber,email,avatarUrl,vehicleNumber,vehicleType,rating,totalRides,memberSince,isVerifiedDriver);

@override
String toString() {
  return 'DriverProfileEntity(id: $id, fullName: $fullName, phoneNumber: $phoneNumber, email: $email, avatarUrl: $avatarUrl, vehicleNumber: $vehicleNumber, vehicleType: $vehicleType, rating: $rating, totalRides: $totalRides, memberSince: $memberSince, isVerifiedDriver: $isVerifiedDriver)';
}


}

/// @nodoc
abstract mixin class _$DriverProfileEntityCopyWith<$Res> implements $DriverProfileEntityCopyWith<$Res> {
  factory _$DriverProfileEntityCopyWith(_DriverProfileEntity value, $Res Function(_DriverProfileEntity) _then) = __$DriverProfileEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String fullName, String phoneNumber, String? email, String? avatarUrl, String vehicleNumber, String vehicleType, double rating, int totalRides, String memberSince, bool isVerifiedDriver
});




}
/// @nodoc
class __$DriverProfileEntityCopyWithImpl<$Res>
    implements _$DriverProfileEntityCopyWith<$Res> {
  __$DriverProfileEntityCopyWithImpl(this._self, this._then);

  final _DriverProfileEntity _self;
  final $Res Function(_DriverProfileEntity) _then;

/// Create a copy of DriverProfileEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fullName = null,Object? phoneNumber = null,Object? email = freezed,Object? avatarUrl = freezed,Object? vehicleNumber = null,Object? vehicleType = null,Object? rating = null,Object? totalRides = null,Object? memberSince = null,Object? isVerifiedDriver = null,}) {
  return _then(_DriverProfileEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,vehicleNumber: null == vehicleNumber ? _self.vehicleNumber : vehicleNumber // ignore: cast_nullable_to_non_nullable
as String,vehicleType: null == vehicleType ? _self.vehicleType : vehicleType // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,totalRides: null == totalRides ? _self.totalRides : totalRides // ignore: cast_nullable_to_non_nullable
as int,memberSince: null == memberSince ? _self.memberSince : memberSince // ignore: cast_nullable_to_non_nullable
as String,isVerifiedDriver: null == isVerifiedDriver ? _self.isVerifiedDriver : isVerifiedDriver // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
