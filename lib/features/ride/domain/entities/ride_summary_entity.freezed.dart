// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_summary_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RideSummaryEntity {

 String get rideId; double get totalFare; double get rideFare; double get incentives; double get tips; double get deductions; double get totalEarnings; double get distanceKm; int get durationMinutes; String get paymentMethod; String get passengerName; DateTime get completedAt;
/// Create a copy of RideSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RideSummaryEntityCopyWith<RideSummaryEntity> get copyWith => _$RideSummaryEntityCopyWithImpl<RideSummaryEntity>(this as RideSummaryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RideSummaryEntity&&(identical(other.rideId, rideId) || other.rideId == rideId)&&(identical(other.totalFare, totalFare) || other.totalFare == totalFare)&&(identical(other.rideFare, rideFare) || other.rideFare == rideFare)&&(identical(other.incentives, incentives) || other.incentives == incentives)&&(identical(other.tips, tips) || other.tips == tips)&&(identical(other.deductions, deductions) || other.deductions == deductions)&&(identical(other.totalEarnings, totalEarnings) || other.totalEarnings == totalEarnings)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}


@override
int get hashCode => Object.hash(runtimeType,rideId,totalFare,rideFare,incentives,tips,deductions,totalEarnings,distanceKm,durationMinutes,paymentMethod,passengerName,completedAt);

@override
String toString() {
  return 'RideSummaryEntity(rideId: $rideId, totalFare: $totalFare, rideFare: $rideFare, incentives: $incentives, tips: $tips, deductions: $deductions, totalEarnings: $totalEarnings, distanceKm: $distanceKm, durationMinutes: $durationMinutes, paymentMethod: $paymentMethod, passengerName: $passengerName, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $RideSummaryEntityCopyWith<$Res>  {
  factory $RideSummaryEntityCopyWith(RideSummaryEntity value, $Res Function(RideSummaryEntity) _then) = _$RideSummaryEntityCopyWithImpl;
@useResult
$Res call({
 String rideId, double totalFare, double rideFare, double incentives, double tips, double deductions, double totalEarnings, double distanceKm, int durationMinutes, String paymentMethod, String passengerName, DateTime completedAt
});




}
/// @nodoc
class _$RideSummaryEntityCopyWithImpl<$Res>
    implements $RideSummaryEntityCopyWith<$Res> {
  _$RideSummaryEntityCopyWithImpl(this._self, this._then);

  final RideSummaryEntity _self;
  final $Res Function(RideSummaryEntity) _then;

/// Create a copy of RideSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rideId = null,Object? totalFare = null,Object? rideFare = null,Object? incentives = null,Object? tips = null,Object? deductions = null,Object? totalEarnings = null,Object? distanceKm = null,Object? durationMinutes = null,Object? paymentMethod = null,Object? passengerName = null,Object? completedAt = null,}) {
  return _then(_self.copyWith(
rideId: null == rideId ? _self.rideId : rideId // ignore: cast_nullable_to_non_nullable
as String,totalFare: null == totalFare ? _self.totalFare : totalFare // ignore: cast_nullable_to_non_nullable
as double,rideFare: null == rideFare ? _self.rideFare : rideFare // ignore: cast_nullable_to_non_nullable
as double,incentives: null == incentives ? _self.incentives : incentives // ignore: cast_nullable_to_non_nullable
as double,tips: null == tips ? _self.tips : tips // ignore: cast_nullable_to_non_nullable
as double,deductions: null == deductions ? _self.deductions : deductions // ignore: cast_nullable_to_non_nullable
as double,totalEarnings: null == totalEarnings ? _self.totalEarnings : totalEarnings // ignore: cast_nullable_to_non_nullable
as double,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,completedAt: null == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [RideSummaryEntity].
extension RideSummaryEntityPatterns on RideSummaryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RideSummaryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RideSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RideSummaryEntity value)  $default,){
final _that = this;
switch (_that) {
case _RideSummaryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RideSummaryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RideSummaryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String rideId,  double totalFare,  double rideFare,  double incentives,  double tips,  double deductions,  double totalEarnings,  double distanceKm,  int durationMinutes,  String paymentMethod,  String passengerName,  DateTime completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RideSummaryEntity() when $default != null:
return $default(_that.rideId,_that.totalFare,_that.rideFare,_that.incentives,_that.tips,_that.deductions,_that.totalEarnings,_that.distanceKm,_that.durationMinutes,_that.paymentMethod,_that.passengerName,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String rideId,  double totalFare,  double rideFare,  double incentives,  double tips,  double deductions,  double totalEarnings,  double distanceKm,  int durationMinutes,  String paymentMethod,  String passengerName,  DateTime completedAt)  $default,) {final _that = this;
switch (_that) {
case _RideSummaryEntity():
return $default(_that.rideId,_that.totalFare,_that.rideFare,_that.incentives,_that.tips,_that.deductions,_that.totalEarnings,_that.distanceKm,_that.durationMinutes,_that.paymentMethod,_that.passengerName,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String rideId,  double totalFare,  double rideFare,  double incentives,  double tips,  double deductions,  double totalEarnings,  double distanceKm,  int durationMinutes,  String paymentMethod,  String passengerName,  DateTime completedAt)?  $default,) {final _that = this;
switch (_that) {
case _RideSummaryEntity() when $default != null:
return $default(_that.rideId,_that.totalFare,_that.rideFare,_that.incentives,_that.tips,_that.deductions,_that.totalEarnings,_that.distanceKm,_that.durationMinutes,_that.paymentMethod,_that.passengerName,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc


class _RideSummaryEntity implements RideSummaryEntity {
  const _RideSummaryEntity({required this.rideId, required this.totalFare, required this.rideFare, required this.incentives, required this.tips, required this.deductions, required this.totalEarnings, required this.distanceKm, required this.durationMinutes, required this.paymentMethod, required this.passengerName, required this.completedAt});
  

@override final  String rideId;
@override final  double totalFare;
@override final  double rideFare;
@override final  double incentives;
@override final  double tips;
@override final  double deductions;
@override final  double totalEarnings;
@override final  double distanceKm;
@override final  int durationMinutes;
@override final  String paymentMethod;
@override final  String passengerName;
@override final  DateTime completedAt;

/// Create a copy of RideSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RideSummaryEntityCopyWith<_RideSummaryEntity> get copyWith => __$RideSummaryEntityCopyWithImpl<_RideSummaryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RideSummaryEntity&&(identical(other.rideId, rideId) || other.rideId == rideId)&&(identical(other.totalFare, totalFare) || other.totalFare == totalFare)&&(identical(other.rideFare, rideFare) || other.rideFare == rideFare)&&(identical(other.incentives, incentives) || other.incentives == incentives)&&(identical(other.tips, tips) || other.tips == tips)&&(identical(other.deductions, deductions) || other.deductions == deductions)&&(identical(other.totalEarnings, totalEarnings) || other.totalEarnings == totalEarnings)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.durationMinutes, durationMinutes) || other.durationMinutes == durationMinutes)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}


@override
int get hashCode => Object.hash(runtimeType,rideId,totalFare,rideFare,incentives,tips,deductions,totalEarnings,distanceKm,durationMinutes,paymentMethod,passengerName,completedAt);

@override
String toString() {
  return 'RideSummaryEntity(rideId: $rideId, totalFare: $totalFare, rideFare: $rideFare, incentives: $incentives, tips: $tips, deductions: $deductions, totalEarnings: $totalEarnings, distanceKm: $distanceKm, durationMinutes: $durationMinutes, paymentMethod: $paymentMethod, passengerName: $passengerName, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$RideSummaryEntityCopyWith<$Res> implements $RideSummaryEntityCopyWith<$Res> {
  factory _$RideSummaryEntityCopyWith(_RideSummaryEntity value, $Res Function(_RideSummaryEntity) _then) = __$RideSummaryEntityCopyWithImpl;
@override @useResult
$Res call({
 String rideId, double totalFare, double rideFare, double incentives, double tips, double deductions, double totalEarnings, double distanceKm, int durationMinutes, String paymentMethod, String passengerName, DateTime completedAt
});




}
/// @nodoc
class __$RideSummaryEntityCopyWithImpl<$Res>
    implements _$RideSummaryEntityCopyWith<$Res> {
  __$RideSummaryEntityCopyWithImpl(this._self, this._then);

  final _RideSummaryEntity _self;
  final $Res Function(_RideSummaryEntity) _then;

/// Create a copy of RideSummaryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rideId = null,Object? totalFare = null,Object? rideFare = null,Object? incentives = null,Object? tips = null,Object? deductions = null,Object? totalEarnings = null,Object? distanceKm = null,Object? durationMinutes = null,Object? paymentMethod = null,Object? passengerName = null,Object? completedAt = null,}) {
  return _then(_RideSummaryEntity(
rideId: null == rideId ? _self.rideId : rideId // ignore: cast_nullable_to_non_nullable
as String,totalFare: null == totalFare ? _self.totalFare : totalFare // ignore: cast_nullable_to_non_nullable
as double,rideFare: null == rideFare ? _self.rideFare : rideFare // ignore: cast_nullable_to_non_nullable
as double,incentives: null == incentives ? _self.incentives : incentives // ignore: cast_nullable_to_non_nullable
as double,tips: null == tips ? _self.tips : tips // ignore: cast_nullable_to_non_nullable
as double,deductions: null == deductions ? _self.deductions : deductions // ignore: cast_nullable_to_non_nullable
as double,totalEarnings: null == totalEarnings ? _self.totalEarnings : totalEarnings // ignore: cast_nullable_to_non_nullable
as double,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,durationMinutes: null == durationMinutes ? _self.durationMinutes : durationMinutes // ignore: cast_nullable_to_non_nullable
as int,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,completedAt: null == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
