// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_stats_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DashboardStatsEntity {

 double get todaysEarnings; int get completedRides; int get totalRidesToday; double get distanceCoveredKm; Duration get onlineDuration;
/// Create a copy of DashboardStatsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStatsEntityCopyWith<DashboardStatsEntity> get copyWith => _$DashboardStatsEntityCopyWithImpl<DashboardStatsEntity>(this as DashboardStatsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardStatsEntity&&(identical(other.todaysEarnings, todaysEarnings) || other.todaysEarnings == todaysEarnings)&&(identical(other.completedRides, completedRides) || other.completedRides == completedRides)&&(identical(other.totalRidesToday, totalRidesToday) || other.totalRidesToday == totalRidesToday)&&(identical(other.distanceCoveredKm, distanceCoveredKm) || other.distanceCoveredKm == distanceCoveredKm)&&(identical(other.onlineDuration, onlineDuration) || other.onlineDuration == onlineDuration));
}


@override
int get hashCode => Object.hash(runtimeType,todaysEarnings,completedRides,totalRidesToday,distanceCoveredKm,onlineDuration);

@override
String toString() {
  return 'DashboardStatsEntity(todaysEarnings: $todaysEarnings, completedRides: $completedRides, totalRidesToday: $totalRidesToday, distanceCoveredKm: $distanceCoveredKm, onlineDuration: $onlineDuration)';
}


}

/// @nodoc
abstract mixin class $DashboardStatsEntityCopyWith<$Res>  {
  factory $DashboardStatsEntityCopyWith(DashboardStatsEntity value, $Res Function(DashboardStatsEntity) _then) = _$DashboardStatsEntityCopyWithImpl;
@useResult
$Res call({
 double todaysEarnings, int completedRides, int totalRidesToday, double distanceCoveredKm, Duration onlineDuration
});




}
/// @nodoc
class _$DashboardStatsEntityCopyWithImpl<$Res>
    implements $DashboardStatsEntityCopyWith<$Res> {
  _$DashboardStatsEntityCopyWithImpl(this._self, this._then);

  final DashboardStatsEntity _self;
  final $Res Function(DashboardStatsEntity) _then;

/// Create a copy of DashboardStatsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? todaysEarnings = null,Object? completedRides = null,Object? totalRidesToday = null,Object? distanceCoveredKm = null,Object? onlineDuration = null,}) {
  return _then(_self.copyWith(
todaysEarnings: null == todaysEarnings ? _self.todaysEarnings : todaysEarnings // ignore: cast_nullable_to_non_nullable
as double,completedRides: null == completedRides ? _self.completedRides : completedRides // ignore: cast_nullable_to_non_nullable
as int,totalRidesToday: null == totalRidesToday ? _self.totalRidesToday : totalRidesToday // ignore: cast_nullable_to_non_nullable
as int,distanceCoveredKm: null == distanceCoveredKm ? _self.distanceCoveredKm : distanceCoveredKm // ignore: cast_nullable_to_non_nullable
as double,onlineDuration: null == onlineDuration ? _self.onlineDuration : onlineDuration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardStatsEntity].
extension DashboardStatsEntityPatterns on DashboardStatsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardStatsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardStatsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardStatsEntity value)  $default,){
final _that = this;
switch (_that) {
case _DashboardStatsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardStatsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardStatsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double todaysEarnings,  int completedRides,  int totalRidesToday,  double distanceCoveredKm,  Duration onlineDuration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardStatsEntity() when $default != null:
return $default(_that.todaysEarnings,_that.completedRides,_that.totalRidesToday,_that.distanceCoveredKm,_that.onlineDuration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double todaysEarnings,  int completedRides,  int totalRidesToday,  double distanceCoveredKm,  Duration onlineDuration)  $default,) {final _that = this;
switch (_that) {
case _DashboardStatsEntity():
return $default(_that.todaysEarnings,_that.completedRides,_that.totalRidesToday,_that.distanceCoveredKm,_that.onlineDuration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double todaysEarnings,  int completedRides,  int totalRidesToday,  double distanceCoveredKm,  Duration onlineDuration)?  $default,) {final _that = this;
switch (_that) {
case _DashboardStatsEntity() when $default != null:
return $default(_that.todaysEarnings,_that.completedRides,_that.totalRidesToday,_that.distanceCoveredKm,_that.onlineDuration);case _:
  return null;

}
}

}

/// @nodoc


class _DashboardStatsEntity implements DashboardStatsEntity {
  const _DashboardStatsEntity({required this.todaysEarnings, required this.completedRides, required this.totalRidesToday, required this.distanceCoveredKm, required this.onlineDuration});
  

@override final  double todaysEarnings;
@override final  int completedRides;
@override final  int totalRidesToday;
@override final  double distanceCoveredKm;
@override final  Duration onlineDuration;

/// Create a copy of DashboardStatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStatsEntityCopyWith<_DashboardStatsEntity> get copyWith => __$DashboardStatsEntityCopyWithImpl<_DashboardStatsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardStatsEntity&&(identical(other.todaysEarnings, todaysEarnings) || other.todaysEarnings == todaysEarnings)&&(identical(other.completedRides, completedRides) || other.completedRides == completedRides)&&(identical(other.totalRidesToday, totalRidesToday) || other.totalRidesToday == totalRidesToday)&&(identical(other.distanceCoveredKm, distanceCoveredKm) || other.distanceCoveredKm == distanceCoveredKm)&&(identical(other.onlineDuration, onlineDuration) || other.onlineDuration == onlineDuration));
}


@override
int get hashCode => Object.hash(runtimeType,todaysEarnings,completedRides,totalRidesToday,distanceCoveredKm,onlineDuration);

@override
String toString() {
  return 'DashboardStatsEntity(todaysEarnings: $todaysEarnings, completedRides: $completedRides, totalRidesToday: $totalRidesToday, distanceCoveredKm: $distanceCoveredKm, onlineDuration: $onlineDuration)';
}


}

/// @nodoc
abstract mixin class _$DashboardStatsEntityCopyWith<$Res> implements $DashboardStatsEntityCopyWith<$Res> {
  factory _$DashboardStatsEntityCopyWith(_DashboardStatsEntity value, $Res Function(_DashboardStatsEntity) _then) = __$DashboardStatsEntityCopyWithImpl;
@override @useResult
$Res call({
 double todaysEarnings, int completedRides, int totalRidesToday, double distanceCoveredKm, Duration onlineDuration
});




}
/// @nodoc
class __$DashboardStatsEntityCopyWithImpl<$Res>
    implements _$DashboardStatsEntityCopyWith<$Res> {
  __$DashboardStatsEntityCopyWithImpl(this._self, this._then);

  final _DashboardStatsEntity _self;
  final $Res Function(_DashboardStatsEntity) _then;

/// Create a copy of DashboardStatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? todaysEarnings = null,Object? completedRides = null,Object? totalRidesToday = null,Object? distanceCoveredKm = null,Object? onlineDuration = null,}) {
  return _then(_DashboardStatsEntity(
todaysEarnings: null == todaysEarnings ? _self.todaysEarnings : todaysEarnings // ignore: cast_nullable_to_non_nullable
as double,completedRides: null == completedRides ? _self.completedRides : completedRides // ignore: cast_nullable_to_non_nullable
as int,totalRidesToday: null == totalRidesToday ? _self.totalRidesToday : totalRidesToday // ignore: cast_nullable_to_non_nullable
as int,distanceCoveredKm: null == distanceCoveredKm ? _self.distanceCoveredKm : distanceCoveredKm // ignore: cast_nullable_to_non_nullable
as double,onlineDuration: null == onlineDuration ? _self.onlineDuration : onlineDuration // ignore: cast_nullable_to_non_nullable
as Duration,
  ));
}


}

// dart format on
