// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocationEntity {

 String get address; double get latitude; double get longitude;
/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationEntityCopyWith<LocationEntity> get copyWith => _$LocationEntityCopyWithImpl<LocationEntity>(this as LocationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationEntity&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,address,latitude,longitude);

@override
String toString() {
  return 'LocationEntity(address: $address, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $LocationEntityCopyWith<$Res>  {
  factory $LocationEntityCopyWith(LocationEntity value, $Res Function(LocationEntity) _then) = _$LocationEntityCopyWithImpl;
@useResult
$Res call({
 String address, double latitude, double longitude
});




}
/// @nodoc
class _$LocationEntityCopyWithImpl<$Res>
    implements $LocationEntityCopyWith<$Res> {
  _$LocationEntityCopyWithImpl(this._self, this._then);

  final LocationEntity _self;
  final $Res Function(LocationEntity) _then;

/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationEntity].
extension LocationEntityPatterns on LocationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationEntity value)  $default,){
final _that = this;
switch (_that) {
case _LocationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String address,  double latitude,  double longitude)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
return $default(_that.address,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String address,  double latitude,  double longitude)  $default,) {final _that = this;
switch (_that) {
case _LocationEntity():
return $default(_that.address,_that.latitude,_that.longitude);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String address,  double latitude,  double longitude)?  $default,) {final _that = this;
switch (_that) {
case _LocationEntity() when $default != null:
return $default(_that.address,_that.latitude,_that.longitude);case _:
  return null;

}
}

}

/// @nodoc


class _LocationEntity implements LocationEntity {
  const _LocationEntity({required this.address, required this.latitude, required this.longitude});
  

@override final  String address;
@override final  double latitude;
@override final  double longitude;

/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationEntityCopyWith<_LocationEntity> get copyWith => __$LocationEntityCopyWithImpl<_LocationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationEntity&&(identical(other.address, address) || other.address == address)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}


@override
int get hashCode => Object.hash(runtimeType,address,latitude,longitude);

@override
String toString() {
  return 'LocationEntity(address: $address, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$LocationEntityCopyWith<$Res> implements $LocationEntityCopyWith<$Res> {
  factory _$LocationEntityCopyWith(_LocationEntity value, $Res Function(_LocationEntity) _then) = __$LocationEntityCopyWithImpl;
@override @useResult
$Res call({
 String address, double latitude, double longitude
});




}
/// @nodoc
class __$LocationEntityCopyWithImpl<$Res>
    implements _$LocationEntityCopyWith<$Res> {
  __$LocationEntityCopyWithImpl(this._self, this._then);

  final _LocationEntity _self;
  final $Res Function(_LocationEntity) _then;

/// Create a copy of LocationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_LocationEntity(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc
mixin _$RideEntity {

 String get rideId; String get passengerId; String get passengerName; double get passengerRating; String? get passengerAvatarUrl; LocationEntity get pickupLocation; LocationEntity get dropLocation; double get estimatedFare; double get distanceKm; int get estimatedDurationMinutes; String get paymentMethod; RideStatus get status; DateTime? get requestedAt; DateTime? get acceptedAt; DateTime? get arrivedAt; DateTime? get startedAt; DateTime? get completedAt;
/// Create a copy of RideEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RideEntityCopyWith<RideEntity> get copyWith => _$RideEntityCopyWithImpl<RideEntity>(this as RideEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RideEntity&&(identical(other.rideId, rideId) || other.rideId == rideId)&&(identical(other.passengerId, passengerId) || other.passengerId == passengerId)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.passengerRating, passengerRating) || other.passengerRating == passengerRating)&&(identical(other.passengerAvatarUrl, passengerAvatarUrl) || other.passengerAvatarUrl == passengerAvatarUrl)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.dropLocation, dropLocation) || other.dropLocation == dropLocation)&&(identical(other.estimatedFare, estimatedFare) || other.estimatedFare == estimatedFare)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.estimatedDurationMinutes, estimatedDurationMinutes) || other.estimatedDurationMinutes == estimatedDurationMinutes)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.arrivedAt, arrivedAt) || other.arrivedAt == arrivedAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}


@override
int get hashCode => Object.hash(runtimeType,rideId,passengerId,passengerName,passengerRating,passengerAvatarUrl,pickupLocation,dropLocation,estimatedFare,distanceKm,estimatedDurationMinutes,paymentMethod,status,requestedAt,acceptedAt,arrivedAt,startedAt,completedAt);

@override
String toString() {
  return 'RideEntity(rideId: $rideId, passengerId: $passengerId, passengerName: $passengerName, passengerRating: $passengerRating, passengerAvatarUrl: $passengerAvatarUrl, pickupLocation: $pickupLocation, dropLocation: $dropLocation, estimatedFare: $estimatedFare, distanceKm: $distanceKm, estimatedDurationMinutes: $estimatedDurationMinutes, paymentMethod: $paymentMethod, status: $status, requestedAt: $requestedAt, acceptedAt: $acceptedAt, arrivedAt: $arrivedAt, startedAt: $startedAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $RideEntityCopyWith<$Res>  {
  factory $RideEntityCopyWith(RideEntity value, $Res Function(RideEntity) _then) = _$RideEntityCopyWithImpl;
@useResult
$Res call({
 String rideId, String passengerId, String passengerName, double passengerRating, String? passengerAvatarUrl, LocationEntity pickupLocation, LocationEntity dropLocation, double estimatedFare, double distanceKm, int estimatedDurationMinutes, String paymentMethod, RideStatus status, DateTime? requestedAt, DateTime? acceptedAt, DateTime? arrivedAt, DateTime? startedAt, DateTime? completedAt
});


$LocationEntityCopyWith<$Res> get pickupLocation;$LocationEntityCopyWith<$Res> get dropLocation;

}
/// @nodoc
class _$RideEntityCopyWithImpl<$Res>
    implements $RideEntityCopyWith<$Res> {
  _$RideEntityCopyWithImpl(this._self, this._then);

  final RideEntity _self;
  final $Res Function(RideEntity) _then;

/// Create a copy of RideEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rideId = null,Object? passengerId = null,Object? passengerName = null,Object? passengerRating = null,Object? passengerAvatarUrl = freezed,Object? pickupLocation = null,Object? dropLocation = null,Object? estimatedFare = null,Object? distanceKm = null,Object? estimatedDurationMinutes = null,Object? paymentMethod = null,Object? status = null,Object? requestedAt = freezed,Object? acceptedAt = freezed,Object? arrivedAt = freezed,Object? startedAt = freezed,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
rideId: null == rideId ? _self.rideId : rideId // ignore: cast_nullable_to_non_nullable
as String,passengerId: null == passengerId ? _self.passengerId : passengerId // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,passengerRating: null == passengerRating ? _self.passengerRating : passengerRating // ignore: cast_nullable_to_non_nullable
as double,passengerAvatarUrl: freezed == passengerAvatarUrl ? _self.passengerAvatarUrl : passengerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,pickupLocation: null == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as LocationEntity,dropLocation: null == dropLocation ? _self.dropLocation : dropLocation // ignore: cast_nullable_to_non_nullable
as LocationEntity,estimatedFare: null == estimatedFare ? _self.estimatedFare : estimatedFare // ignore: cast_nullable_to_non_nullable
as double,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,estimatedDurationMinutes: null == estimatedDurationMinutes ? _self.estimatedDurationMinutes : estimatedDurationMinutes // ignore: cast_nullable_to_non_nullable
as int,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RideStatus,requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,arrivedAt: freezed == arrivedAt ? _self.arrivedAt : arrivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of RideEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationEntityCopyWith<$Res> get pickupLocation {
  
  return $LocationEntityCopyWith<$Res>(_self.pickupLocation, (value) {
    return _then(_self.copyWith(pickupLocation: value));
  });
}/// Create a copy of RideEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationEntityCopyWith<$Res> get dropLocation {
  
  return $LocationEntityCopyWith<$Res>(_self.dropLocation, (value) {
    return _then(_self.copyWith(dropLocation: value));
  });
}
}


/// Adds pattern-matching-related methods to [RideEntity].
extension RideEntityPatterns on RideEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RideEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RideEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RideEntity value)  $default,){
final _that = this;
switch (_that) {
case _RideEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RideEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RideEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String rideId,  String passengerId,  String passengerName,  double passengerRating,  String? passengerAvatarUrl,  LocationEntity pickupLocation,  LocationEntity dropLocation,  double estimatedFare,  double distanceKm,  int estimatedDurationMinutes,  String paymentMethod,  RideStatus status,  DateTime? requestedAt,  DateTime? acceptedAt,  DateTime? arrivedAt,  DateTime? startedAt,  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RideEntity() when $default != null:
return $default(_that.rideId,_that.passengerId,_that.passengerName,_that.passengerRating,_that.passengerAvatarUrl,_that.pickupLocation,_that.dropLocation,_that.estimatedFare,_that.distanceKm,_that.estimatedDurationMinutes,_that.paymentMethod,_that.status,_that.requestedAt,_that.acceptedAt,_that.arrivedAt,_that.startedAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String rideId,  String passengerId,  String passengerName,  double passengerRating,  String? passengerAvatarUrl,  LocationEntity pickupLocation,  LocationEntity dropLocation,  double estimatedFare,  double distanceKm,  int estimatedDurationMinutes,  String paymentMethod,  RideStatus status,  DateTime? requestedAt,  DateTime? acceptedAt,  DateTime? arrivedAt,  DateTime? startedAt,  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _RideEntity():
return $default(_that.rideId,_that.passengerId,_that.passengerName,_that.passengerRating,_that.passengerAvatarUrl,_that.pickupLocation,_that.dropLocation,_that.estimatedFare,_that.distanceKm,_that.estimatedDurationMinutes,_that.paymentMethod,_that.status,_that.requestedAt,_that.acceptedAt,_that.arrivedAt,_that.startedAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String rideId,  String passengerId,  String passengerName,  double passengerRating,  String? passengerAvatarUrl,  LocationEntity pickupLocation,  LocationEntity dropLocation,  double estimatedFare,  double distanceKm,  int estimatedDurationMinutes,  String paymentMethod,  RideStatus status,  DateTime? requestedAt,  DateTime? acceptedAt,  DateTime? arrivedAt,  DateTime? startedAt,  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _RideEntity() when $default != null:
return $default(_that.rideId,_that.passengerId,_that.passengerName,_that.passengerRating,_that.passengerAvatarUrl,_that.pickupLocation,_that.dropLocation,_that.estimatedFare,_that.distanceKm,_that.estimatedDurationMinutes,_that.paymentMethod,_that.status,_that.requestedAt,_that.acceptedAt,_that.arrivedAt,_that.startedAt,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc


class _RideEntity implements RideEntity {
  const _RideEntity({required this.rideId, required this.passengerId, required this.passengerName, required this.passengerRating, this.passengerAvatarUrl, required this.pickupLocation, required this.dropLocation, required this.estimatedFare, required this.distanceKm, required this.estimatedDurationMinutes, required this.paymentMethod, this.status = RideStatus.incoming, this.requestedAt, this.acceptedAt, this.arrivedAt, this.startedAt, this.completedAt});
  

@override final  String rideId;
@override final  String passengerId;
@override final  String passengerName;
@override final  double passengerRating;
@override final  String? passengerAvatarUrl;
@override final  LocationEntity pickupLocation;
@override final  LocationEntity dropLocation;
@override final  double estimatedFare;
@override final  double distanceKm;
@override final  int estimatedDurationMinutes;
@override final  String paymentMethod;
@override@JsonKey() final  RideStatus status;
@override final  DateTime? requestedAt;
@override final  DateTime? acceptedAt;
@override final  DateTime? arrivedAt;
@override final  DateTime? startedAt;
@override final  DateTime? completedAt;

/// Create a copy of RideEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RideEntityCopyWith<_RideEntity> get copyWith => __$RideEntityCopyWithImpl<_RideEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RideEntity&&(identical(other.rideId, rideId) || other.rideId == rideId)&&(identical(other.passengerId, passengerId) || other.passengerId == passengerId)&&(identical(other.passengerName, passengerName) || other.passengerName == passengerName)&&(identical(other.passengerRating, passengerRating) || other.passengerRating == passengerRating)&&(identical(other.passengerAvatarUrl, passengerAvatarUrl) || other.passengerAvatarUrl == passengerAvatarUrl)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.dropLocation, dropLocation) || other.dropLocation == dropLocation)&&(identical(other.estimatedFare, estimatedFare) || other.estimatedFare == estimatedFare)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.estimatedDurationMinutes, estimatedDurationMinutes) || other.estimatedDurationMinutes == estimatedDurationMinutes)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.arrivedAt, arrivedAt) || other.arrivedAt == arrivedAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}


@override
int get hashCode => Object.hash(runtimeType,rideId,passengerId,passengerName,passengerRating,passengerAvatarUrl,pickupLocation,dropLocation,estimatedFare,distanceKm,estimatedDurationMinutes,paymentMethod,status,requestedAt,acceptedAt,arrivedAt,startedAt,completedAt);

@override
String toString() {
  return 'RideEntity(rideId: $rideId, passengerId: $passengerId, passengerName: $passengerName, passengerRating: $passengerRating, passengerAvatarUrl: $passengerAvatarUrl, pickupLocation: $pickupLocation, dropLocation: $dropLocation, estimatedFare: $estimatedFare, distanceKm: $distanceKm, estimatedDurationMinutes: $estimatedDurationMinutes, paymentMethod: $paymentMethod, status: $status, requestedAt: $requestedAt, acceptedAt: $acceptedAt, arrivedAt: $arrivedAt, startedAt: $startedAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$RideEntityCopyWith<$Res> implements $RideEntityCopyWith<$Res> {
  factory _$RideEntityCopyWith(_RideEntity value, $Res Function(_RideEntity) _then) = __$RideEntityCopyWithImpl;
@override @useResult
$Res call({
 String rideId, String passengerId, String passengerName, double passengerRating, String? passengerAvatarUrl, LocationEntity pickupLocation, LocationEntity dropLocation, double estimatedFare, double distanceKm, int estimatedDurationMinutes, String paymentMethod, RideStatus status, DateTime? requestedAt, DateTime? acceptedAt, DateTime? arrivedAt, DateTime? startedAt, DateTime? completedAt
});


@override $LocationEntityCopyWith<$Res> get pickupLocation;@override $LocationEntityCopyWith<$Res> get dropLocation;

}
/// @nodoc
class __$RideEntityCopyWithImpl<$Res>
    implements _$RideEntityCopyWith<$Res> {
  __$RideEntityCopyWithImpl(this._self, this._then);

  final _RideEntity _self;
  final $Res Function(_RideEntity) _then;

/// Create a copy of RideEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rideId = null,Object? passengerId = null,Object? passengerName = null,Object? passengerRating = null,Object? passengerAvatarUrl = freezed,Object? pickupLocation = null,Object? dropLocation = null,Object? estimatedFare = null,Object? distanceKm = null,Object? estimatedDurationMinutes = null,Object? paymentMethod = null,Object? status = null,Object? requestedAt = freezed,Object? acceptedAt = freezed,Object? arrivedAt = freezed,Object? startedAt = freezed,Object? completedAt = freezed,}) {
  return _then(_RideEntity(
rideId: null == rideId ? _self.rideId : rideId // ignore: cast_nullable_to_non_nullable
as String,passengerId: null == passengerId ? _self.passengerId : passengerId // ignore: cast_nullable_to_non_nullable
as String,passengerName: null == passengerName ? _self.passengerName : passengerName // ignore: cast_nullable_to_non_nullable
as String,passengerRating: null == passengerRating ? _self.passengerRating : passengerRating // ignore: cast_nullable_to_non_nullable
as double,passengerAvatarUrl: freezed == passengerAvatarUrl ? _self.passengerAvatarUrl : passengerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,pickupLocation: null == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as LocationEntity,dropLocation: null == dropLocation ? _self.dropLocation : dropLocation // ignore: cast_nullable_to_non_nullable
as LocationEntity,estimatedFare: null == estimatedFare ? _self.estimatedFare : estimatedFare // ignore: cast_nullable_to_non_nullable
as double,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,estimatedDurationMinutes: null == estimatedDurationMinutes ? _self.estimatedDurationMinutes : estimatedDurationMinutes // ignore: cast_nullable_to_non_nullable
as int,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RideStatus,requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,arrivedAt: freezed == arrivedAt ? _self.arrivedAt : arrivedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of RideEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationEntityCopyWith<$Res> get pickupLocation {
  
  return $LocationEntityCopyWith<$Res>(_self.pickupLocation, (value) {
    return _then(_self.copyWith(pickupLocation: value));
  });
}/// Create a copy of RideEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationEntityCopyWith<$Res> get dropLocation {
  
  return $LocationEntityCopyWith<$Res>(_self.dropLocation, (value) {
    return _then(_self.copyWith(dropLocation: value));
  });
}
}

// dart format on
