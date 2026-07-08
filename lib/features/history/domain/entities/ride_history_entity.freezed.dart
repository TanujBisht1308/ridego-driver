// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_history_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RideHistoryEntity {

 String get rideId; String get passengerName; String get pickupAddress; String get dropAddress; double get fare; double get distanceKm; int get durationMinutes; DateTime get date; String get status;
/// Create a copy of RideHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RideHistoryEntityCopyWith<RideHistoryEntity> get copyWith => _$RideHistoryEntityCopyWithImpl<RideHistoryEntity>(this as RideHistoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RideHistoryEntity&&(identical(other.rideId, rideId) || other.rideId == rideId)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.pickupAddress, pickupAddress) || other.pickupAddress == pickupAddress)&&(identical(other.dropAddress, dropAddress) || other.dropAddress == dropAddress)&&(identical(other.fare, fare) || other.fare == fare)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,rideId,passengerName,pickupAddress,dropAddress,fare,distanceKm,durationMinutes,date,status);

@override
String toString() {
  return 'RideHistoryEntity(rideId: $rideId, passengerName: $passengerName, pickupAddress: $pickupAddress, dropAddress: $dropAddress, fare: $fare, distanceKm: $distanceKm, durationMinutes: $durationMinutes, date: $date, status: $status)';
}


}

/// @nodoc
abstract mixin class $RideHistoryEntityCopyWith<$Res>  {
  factory $RideHistoryEntityCopyWith(RideHistoryEntity value, $Res Function(RideHistoryEntity) _then) = _$RideHistoryEntityCopyWithImpl;
@useResult
$Res call({
 String rideId, String passengerName, String pickupAddress, String dropAddress, double fare, double distanceKm, int durationMinutes, DateTime date, String status
});




}
/// @nodoc
class _$RideHistoryEntityCopyWithImpl<$Res>
    implements $RideHistoryEntityCopyWith<$Res> {
  _$RideHistoryEntityCopyWithImpl(this._self, this._then);

  final RideHistoryEntity _self;
  final $Res Function(RideHistoryEntity) _then;

/// Create a copy of RideHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rideId = null,Object? passengerName = null,Object? pickupAddress = null,Object? dropAddress = null,Object? fare = null,Object? distanceKm = null,Object? durationMinutes = null,Object? date = null,Object? status = null,}) {
  return _then(_self.copyWith(
rideId: null == rideId ? _self.rideId : rideId // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,pickupAddress: null == pickupAddress ? _self.pickupAddress : pickupAddress // ignore: cast_nullable_to_non_nullable
as String,dropAddress: null == dropAddress ? _self.dropAddress : dropAddress // ignore: cast_nullable_to_non_nullable
as String,fare: null == fare ? _self.fare : fare // ignore: cast_nullable_to_non_nullable
as double,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RideHistoryEntity].
extension RideHistoryEntityPatterns on RideHistoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RideHistoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RideHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RideHistoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _RideHistoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RideHistoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RideHistoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String rideId,  String passengerName,  String pickupAddress,  String dropAddress,  double fare,  double distanceKm,  int durationMinutes,  DateTime date,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RideHistoryEntity() when $default != null:
return $default(_that.rideId,_that.passengerName,_that.pickupAddress,_that.dropAddress,_that.fare,_that.distanceKm,_that.durationMinutes,_that.date,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String rideId,  String passengerName,  String pickupAddress,  String dropAddress,  double fare,  double distanceKm,  int durationMinutes,  DateTime date,  String status)  $default,) {final _that = this;
switch (_that) {
case _RideHistoryEntity():
return $default(_that.rideId,_that.passengerName,_that.pickupAddress,_that.dropAddress,_that.fare,_that.distanceKm,_that.durationMinutes,_that.date,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String rideId,  String passengerName,  String pickupAddress,  String dropAddress,  double fare,  double distanceKm,  int durationMinutes,  DateTime date,  String status)?  $default,) {final _that = this;
switch (_that) {
case _RideHistoryEntity() when $default != null:
return $default(_that.rideId,_that.passengerName,_that.pickupAddress,_that.dropAddress,_that.fare,_that.distanceKm,_that.durationMinutes,_that.date,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _RideHistoryEntity implements RideHistoryEntity {
  const _RideHistoryEntity({required this.rideId, required this.passengerName, required this.pickupAddress, required this.dropAddress, required this.fare, required this.distanceKm, required this.durationMinutes, required this.date, required this.status});
  

@override final  String rideId;
@override final  String passengerName;
@override final  String pickupAddress;
@override final  String dropAddress;
@override final  double fare;
@override final  double distanceKm;
@override final  int durationMinutes;
@override final  DateTime date;
@override final  String status;

/// Create a copy of RideHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RideHistoryEntityCopyWith<_RideHistoryEntity> get copyWith => __$RideHistoryEntityCopyWithImpl<_RideHistoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RideHistoryEntity&&(identical(other.rideId, rideId) || other.rideId == rideId)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.pickupAddress, pickupAddress) || other.pickupAddress == pickupAddress)&&(identical(other.dropAddress, dropAddress) || other.dropAddress == dropAddress)&&(identical(other.fare, fare) || other.fare == fare)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,rideId,passengerName,pickupAddress,dropAddress,fare,distanceKm,durationMinutes,date,status);

@override
String toString() {
  return 'RideHistoryEntity(rideId: $rideId, passengerName: $passengerName, pickupAddress: $pickupAddress, dropAddress: $dropAddress, fare: $fare, distanceKm: $distanceKm, durationMinutes: $durationMinutes, date: $date, status: $status)';
}


}

/// @nodoc
abstract mixin class _$RideHistoryEntityCopyWith<$Res> implements $RideHistoryEntityCopyWith<$Res> {
  factory _$RideHistoryEntityCopyWith(_RideHistoryEntity value, $Res Function(_RideHistoryEntity) _then) = __$RideHistoryEntityCopyWithImpl;
@override @useResult
$Res call({
 String rideId, String passengerName, String pickupAddress, String dropAddress, double fare, double distanceKm, int durationMinutes, DateTime date, String status
});




}
/// @nodoc
class __$RideHistoryEntityCopyWithImpl<$Res>
    implements _$RideHistoryEntityCopyWith<$Res> {
  __$RideHistoryEntityCopyWithImpl(this._self, this._then);

  final _RideHistoryEntity _self;
  final $Res Function(_RideHistoryEntity) _then;

/// Create a copy of RideHistoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rideId = null,Object? passengerName = null,Object? pickupAddress = null,Object? dropAddress = null,Object? fare = null,Object? distanceKm = null,Object? durationMinutes = null,Object? date = null,Object? status = null,}) {
  return _then(_RideHistoryEntity(
rideId: null == rideId ? _self.rideId : rideId // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,pickupAddress: null == pickupAddress ? _self.pickupAddress : pickupAddress // ignore: cast_nullable_to_non_nullable
as String,dropAddress: null == dropAddress ? _self.dropAddress : dropAddress // ignore: cast_nullable_to_non_nullable
as String,fare: null == fare ? _self.fare : fare // ignore: cast_nullable_to_non_nullable
as double,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
