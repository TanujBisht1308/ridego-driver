// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EarningsEntity {

 EarningsFilter get filter; double get totalEarnings; int get totalRides; double get rideFare; double get incentives; double get tips; double get deductions; double get totalEarningsAfterDeductions; String get paymentMethod;
/// Create a copy of EarningsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningsEntityCopyWith<EarningsEntity> get copyWith => _$EarningsEntityCopyWithImpl<EarningsEntity>(this as EarningsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningsEntity&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.totalEarnings, totalEarnings) || other.totalEarnings == totalEarnings)&&(identical(other.totalRides, totalRides) || other.totalRides == totalRides)&&(identical(other.rideFare, rideFare) || other.rideFare == rideFare)&&(identical(other.incentives, incentives) || other.incentives == incentives)&&(identical(other.tips, tips) || other.tips == tips)&&(identical(other.deductions, deductions) || other.deductions == deductions)&&(identical(other.totalEarningsAfterDeductions, totalEarningsAfterDeductions) || other.totalEarningsAfterDeductions == totalEarningsAfterDeductions)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode => Object.hash(runtimeType,filter,totalEarnings,totalRides,rideFare,incentives,tips,deductions,totalEarningsAfterDeductions,paymentMethod);

@override
String toString() {
  return 'EarningsEntity(filter: $filter, totalEarnings: $totalEarnings, totalRides: $totalRides, rideFare: $rideFare, incentives: $incentives, tips: $tips, deductions: $deductions, totalEarningsAfterDeductions: $totalEarningsAfterDeductions, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class $EarningsEntityCopyWith<$Res>  {
  factory $EarningsEntityCopyWith(EarningsEntity value, $Res Function(EarningsEntity) _then) = _$EarningsEntityCopyWithImpl;
@useResult
$Res call({
 EarningsFilter filter, double totalEarnings, int totalRides, double rideFare, double incentives, double tips, double deductions, double totalEarningsAfterDeductions, String paymentMethod
});




}
/// @nodoc
class _$EarningsEntityCopyWithImpl<$Res>
    implements $EarningsEntityCopyWith<$Res> {
  _$EarningsEntityCopyWithImpl(this._self, this._then);

  final EarningsEntity _self;
  final $Res Function(EarningsEntity) _then;

/// Create a copy of EarningsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filter = null,Object? totalEarnings = null,Object? totalRides = null,Object? rideFare = null,Object? incentives = null,Object? tips = null,Object? deductions = null,Object? totalEarningsAfterDeductions = null,Object? paymentMethod = null,}) {
  return _then(_self.copyWith(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as EarningsFilter,totalEarnings: null == totalEarnings ? _self.totalEarnings : totalEarnings // ignore: cast_nullable_to_non_nullable
as double,totalRides: null == totalRides ? _self.totalRides : totalRides // ignore: cast_nullable_to_non_nullable
as int,rideFare: null == rideFare ? _self.rideFare : rideFare // ignore: cast_nullable_to_non_nullable
as double,incentives: null == incentives ? _self.incentives : incentives // ignore: cast_nullable_to_non_nullable
as double,tips: null == tips ? _self.tips : tips // ignore: cast_nullable_to_non_nullable
as double,deductions: null == deductions ? _self.deductions : deductions // ignore: cast_nullable_to_non_nullable
as double,totalEarningsAfterDeductions: null == totalEarningsAfterDeductions ? _self.totalEarningsAfterDeductions : totalEarningsAfterDeductions // ignore: cast_nullable_to_non_nullable
as double,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EarningsEntity].
extension EarningsEntityPatterns on EarningsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EarningsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EarningsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EarningsEntity value)  $default,){
final _that = this;
switch (_that) {
case _EarningsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EarningsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EarningsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EarningsFilter filter,  double totalEarnings,  int totalRides,  double rideFare,  double incentives,  double tips,  double deductions,  double totalEarningsAfterDeductions,  String paymentMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EarningsEntity() when $default != null:
return $default(_that.filter,_that.totalEarnings,_that.totalRides,_that.rideFare,_that.incentives,_that.tips,_that.deductions,_that.totalEarningsAfterDeductions,_that.paymentMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EarningsFilter filter,  double totalEarnings,  int totalRides,  double rideFare,  double incentives,  double tips,  double deductions,  double totalEarningsAfterDeductions,  String paymentMethod)  $default,) {final _that = this;
switch (_that) {
case _EarningsEntity():
return $default(_that.filter,_that.totalEarnings,_that.totalRides,_that.rideFare,_that.incentives,_that.tips,_that.deductions,_that.totalEarningsAfterDeductions,_that.paymentMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EarningsFilter filter,  double totalEarnings,  int totalRides,  double rideFare,  double incentives,  double tips,  double deductions,  double totalEarningsAfterDeductions,  String paymentMethod)?  $default,) {final _that = this;
switch (_that) {
case _EarningsEntity() when $default != null:
return $default(_that.filter,_that.totalEarnings,_that.totalRides,_that.rideFare,_that.incentives,_that.tips,_that.deductions,_that.totalEarningsAfterDeductions,_that.paymentMethod);case _:
  return null;

}
}

}

/// @nodoc


class _EarningsEntity implements EarningsEntity {
  const _EarningsEntity({required this.filter, required this.totalEarnings, required this.totalRides, required this.rideFare, required this.incentives, required this.tips, required this.deductions, required this.totalEarningsAfterDeductions, required this.paymentMethod});
  

@override final  EarningsFilter filter;
@override final  double totalEarnings;
@override final  int totalRides;
@override final  double rideFare;
@override final  double incentives;
@override final  double tips;
@override final  double deductions;
@override final  double totalEarningsAfterDeductions;
@override final  String paymentMethod;

/// Create a copy of EarningsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningsEntityCopyWith<_EarningsEntity> get copyWith => __$EarningsEntityCopyWithImpl<_EarningsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningsEntity&&(identical(other.filter, filter) || other.filter == filter)&&(identical(other.totalEarnings, totalEarnings) || other.totalEarnings == totalEarnings)&&(identical(other.totalRides, totalRides) || other.totalRides == totalRides)&&(identical(other.rideFare, rideFare) || other.rideFare == rideFare)&&(identical(other.incentives, incentives) || other.incentives == incentives)&&(identical(other.tips, tips) || other.tips == tips)&&(identical(other.deductions, deductions) || other.deductions == deductions)&&(identical(other.totalEarningsAfterDeductions, totalEarningsAfterDeductions) || other.totalEarningsAfterDeductions == totalEarningsAfterDeductions)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode => Object.hash(runtimeType,filter,totalEarnings,totalRides,rideFare,incentives,tips,deductions,totalEarningsAfterDeductions,paymentMethod);

@override
String toString() {
  return 'EarningsEntity(filter: $filter, totalEarnings: $totalEarnings, totalRides: $totalRides, rideFare: $rideFare, incentives: $incentives, tips: $tips, deductions: $deductions, totalEarningsAfterDeductions: $totalEarningsAfterDeductions, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class _$EarningsEntityCopyWith<$Res> implements $EarningsEntityCopyWith<$Res> {
  factory _$EarningsEntityCopyWith(_EarningsEntity value, $Res Function(_EarningsEntity) _then) = __$EarningsEntityCopyWithImpl;
@override @useResult
$Res call({
 EarningsFilter filter, double totalEarnings, int totalRides, double rideFare, double incentives, double tips, double deductions, double totalEarningsAfterDeductions, String paymentMethod
});




}
/// @nodoc
class __$EarningsEntityCopyWithImpl<$Res>
    implements _$EarningsEntityCopyWith<$Res> {
  __$EarningsEntityCopyWithImpl(this._self, this._then);

  final _EarningsEntity _self;
  final $Res Function(_EarningsEntity) _then;

/// Create a copy of EarningsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filter = null,Object? totalEarnings = null,Object? totalRides = null,Object? rideFare = null,Object? incentives = null,Object? tips = null,Object? deductions = null,Object? totalEarningsAfterDeductions = null,Object? paymentMethod = null,}) {
  return _then(_EarningsEntity(
filter: null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as EarningsFilter,totalEarnings: null == totalEarnings ? _self.totalEarnings : totalEarnings // ignore: cast_nullable_to_non_nullable
as double,totalRides: null == totalRides ? _self.totalRides : totalRides // ignore: cast_nullable_to_non_nullable
as int,rideFare: null == rideFare ? _self.rideFare : rideFare // ignore: cast_nullable_to_non_nullable
as double,incentives: null == incentives ? _self.incentives : incentives // ignore: cast_nullable_to_non_nullable
as double,tips: null == tips ? _self.tips : tips // ignore: cast_nullable_to_non_nullable
as double,deductions: null == deductions ? _self.deductions : deductions // ignore: cast_nullable_to_non_nullable
as double,totalEarningsAfterDeductions: null == totalEarningsAfterDeductions ? _self.totalEarningsAfterDeductions : totalEarningsAfterDeductions // ignore: cast_nullable_to_non_nullable
as double,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$TransactionEntity {

 String get rideId; String get passengerName; String get pickupAddress; String get dropAddress; double get fare; DateTime get date; String get paymentMethod;
/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransactionEntityCopyWith<TransactionEntity> get copyWith => _$TransactionEntityCopyWithImpl<TransactionEntity>(this as TransactionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransactionEntity&&(identical(other.rideId, rideId) || other.rideId == rideId)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.pickupAddress, pickupAddress) || other.pickupAddress == pickupAddress)&&(identical(other.dropAddress, dropAddress) || other.dropAddress == dropAddress)&&(identical(other.fare, fare) || other.fare == fare)&&(identical(other.date, date) || other.date == date)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode => Object.hash(runtimeType,rideId,passengerName,pickupAddress,dropAddress,fare,date,paymentMethod);

@override
String toString() {
  return 'TransactionEntity(rideId: $rideId, passengerName: $passengerName, pickupAddress: $pickupAddress, dropAddress: $dropAddress, fare: $fare, date: $date, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class $TransactionEntityCopyWith<$Res>  {
  factory $TransactionEntityCopyWith(TransactionEntity value, $Res Function(TransactionEntity) _then) = _$TransactionEntityCopyWithImpl;
@useResult
$Res call({
 String rideId, String passengerName, String pickupAddress, String dropAddress, double fare, DateTime date, String paymentMethod
});




}
/// @nodoc
class _$TransactionEntityCopyWithImpl<$Res>
    implements $TransactionEntityCopyWith<$Res> {
  _$TransactionEntityCopyWithImpl(this._self, this._then);

  final TransactionEntity _self;
  final $Res Function(TransactionEntity) _then;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rideId = null,Object? passengerName = null,Object? pickupAddress = null,Object? dropAddress = null,Object? fare = null,Object? date = null,Object? paymentMethod = null,}) {
  return _then(_self.copyWith(
rideId: null == rideId ? _self.rideId : rideId // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,pickupAddress: null == pickupAddress ? _self.pickupAddress : pickupAddress // ignore: cast_nullable_to_non_nullable
as String,dropAddress: null == dropAddress ? _self.dropAddress : dropAddress // ignore: cast_nullable_to_non_nullable
as String,fare: null == fare ? _self.fare : fare // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TransactionEntity].
extension TransactionEntityPatterns on TransactionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TransactionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TransactionEntity value)  $default,){
final _that = this;
switch (_that) {
case _TransactionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TransactionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String rideId,  String passengerName,  String pickupAddress,  String dropAddress,  double fare,  DateTime date,  String paymentMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
return $default(_that.rideId,_that.passengerName,_that.pickupAddress,_that.dropAddress,_that.fare,_that.date,_that.paymentMethod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String rideId,  String passengerName,  String pickupAddress,  String dropAddress,  double fare,  DateTime date,  String paymentMethod)  $default,) {final _that = this;
switch (_that) {
case _TransactionEntity():
return $default(_that.rideId,_that.passengerName,_that.pickupAddress,_that.dropAddress,_that.fare,_that.date,_that.paymentMethod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String rideId,  String passengerName,  String pickupAddress,  String dropAddress,  double fare,  DateTime date,  String paymentMethod)?  $default,) {final _that = this;
switch (_that) {
case _TransactionEntity() when $default != null:
return $default(_that.rideId,_that.passengerName,_that.pickupAddress,_that.dropAddress,_that.fare,_that.date,_that.paymentMethod);case _:
  return null;

}
}

}

/// @nodoc


class _TransactionEntity implements TransactionEntity {
  const _TransactionEntity({required this.rideId, required this.passengerName, required this.pickupAddress, required this.dropAddress, required this.fare, required this.date, required this.paymentMethod});
  

@override final  String rideId;
@override final  String passengerName;
@override final  String pickupAddress;
@override final  String dropAddress;
@override final  double fare;
@override final  DateTime date;
@override final  String paymentMethod;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TransactionEntityCopyWith<_TransactionEntity> get copyWith => __$TransactionEntityCopyWithImpl<_TransactionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TransactionEntity&&(identical(other.rideId, rideId) || other.rideId == rideId)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.pickupAddress, pickupAddress) || other.pickupAddress == pickupAddress)&&(identical(other.dropAddress, dropAddress) || other.dropAddress == dropAddress)&&(identical(other.fare, fare) || other.fare == fare)&&(identical(other.date, date) || other.date == date)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode => Object.hash(runtimeType,rideId,passengerName,pickupAddress,dropAddress,fare,date,paymentMethod);

@override
String toString() {
  return 'TransactionEntity(rideId: $rideId, passengerName: $passengerName, pickupAddress: $pickupAddress, dropAddress: $dropAddress, fare: $fare, date: $date, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class _$TransactionEntityCopyWith<$Res> implements $TransactionEntityCopyWith<$Res> {
  factory _$TransactionEntityCopyWith(_TransactionEntity value, $Res Function(_TransactionEntity) _then) = __$TransactionEntityCopyWithImpl;
@override @useResult
$Res call({
 String rideId, String passengerName, String pickupAddress, String dropAddress, double fare, DateTime date, String paymentMethod
});




}
/// @nodoc
class __$TransactionEntityCopyWithImpl<$Res>
    implements _$TransactionEntityCopyWith<$Res> {
  __$TransactionEntityCopyWithImpl(this._self, this._then);

  final _TransactionEntity _self;
  final $Res Function(_TransactionEntity) _then;

/// Create a copy of TransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rideId = null,Object? passengerName = null,Object? pickupAddress = null,Object? dropAddress = null,Object? fare = null,Object? date = null,Object? paymentMethod = null,}) {
  return _then(_TransactionEntity(
rideId: null == rideId ? _self.rideId : rideId // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,pickupAddress: null == pickupAddress ? _self.pickupAddress : pickupAddress // ignore: cast_nullable_to_non_nullable
as String,dropAddress: null == dropAddress ? _self.dropAddress : dropAddress // ignore: cast_nullable_to_non_nullable
as String,fare: null == fare ? _self.fare : fare // ignore: cast_nullable_to_non_nullable
as double,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
