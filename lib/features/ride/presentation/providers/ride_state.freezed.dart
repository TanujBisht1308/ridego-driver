// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RideState {

 bool get isLoading; bool get isPolling; RideEntity? get incomingRide; RideEntity? get activeRide; RideSummaryEntity? get rideSummary; String? get errorMessage;
/// Create a copy of RideState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RideStateCopyWith<RideState> get copyWith => _$RideStateCopyWithImpl<RideState>(this as RideState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RideState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isPolling, isPolling) || other.isPolling == isPolling)&&(identical(other.incomingRide, incomingRide) || other.incomingRide == incomingRide)&&(identical(other.activeRide, activeRide) || other.activeRide == activeRide)&&(identical(other.rideSummary, rideSummary) || other.rideSummary == rideSummary)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isPolling,incomingRide,activeRide,rideSummary,errorMessage);

@override
String toString() {
  return 'RideState(isLoading: $isLoading, isPolling: $isPolling, incomingRide: $incomingRide, activeRide: $activeRide, rideSummary: $rideSummary, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $RideStateCopyWith<$Res>  {
  factory $RideStateCopyWith(RideState value, $Res Function(RideState) _then) = _$RideStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isPolling, RideEntity? incomingRide, RideEntity? activeRide, RideSummaryEntity? rideSummary, String? errorMessage
});


$RideEntityCopyWith<$Res>? get incomingRide;$RideEntityCopyWith<$Res>? get activeRide;$RideSummaryEntityCopyWith<$Res>? get rideSummary;

}
/// @nodoc
class _$RideStateCopyWithImpl<$Res>
    implements $RideStateCopyWith<$Res> {
  _$RideStateCopyWithImpl(this._self, this._then);

  final RideState _self;
  final $Res Function(RideState) _then;

/// Create a copy of RideState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isPolling = null,Object? incomingRide = freezed,Object? activeRide = freezed,Object? rideSummary = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isPolling: null == isPolling ? _self.isPolling : isPolling // ignore: cast_nullable_to_non_nullable
as bool,incomingRide: freezed == incomingRide ? _self.incomingRide : incomingRide // ignore: cast_nullable_to_non_nullable
as RideEntity?,activeRide: freezed == activeRide ? _self.activeRide : activeRide // ignore: cast_nullable_to_non_nullable
as RideEntity?,rideSummary: freezed == rideSummary ? _self.rideSummary : rideSummary // ignore: cast_nullable_to_non_nullable
as RideSummaryEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RideState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RideEntityCopyWith<$Res>? get incomingRide {
    if (_self.incomingRide == null) {
    return null;
  }

  return $RideEntityCopyWith<$Res>(_self.incomingRide!, (value) {
    return _then(_self.copyWith(incomingRide: value));
  });
}/// Create a copy of RideState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RideEntityCopyWith<$Res>? get activeRide {
    if (_self.activeRide == null) {
    return null;
  }

  return $RideEntityCopyWith<$Res>(_self.activeRide!, (value) {
    return _then(_self.copyWith(activeRide: value));
  });
}/// Create a copy of RideState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RideSummaryEntityCopyWith<$Res>? get rideSummary {
    if (_self.rideSummary == null) {
    return null;
  }

  return $RideSummaryEntityCopyWith<$Res>(_self.rideSummary!, (value) {
    return _then(_self.copyWith(rideSummary: value));
  });
}
}


/// Adds pattern-matching-related methods to [RideState].
extension RideStatePatterns on RideState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RideState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RideState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RideState value)  $default,){
final _that = this;
switch (_that) {
case _RideState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RideState value)?  $default,){
final _that = this;
switch (_that) {
case _RideState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isPolling,  RideEntity? incomingRide,  RideEntity? activeRide,  RideSummaryEntity? rideSummary,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RideState() when $default != null:
return $default(_that.isLoading,_that.isPolling,_that.incomingRide,_that.activeRide,_that.rideSummary,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isPolling,  RideEntity? incomingRide,  RideEntity? activeRide,  RideSummaryEntity? rideSummary,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _RideState():
return $default(_that.isLoading,_that.isPolling,_that.incomingRide,_that.activeRide,_that.rideSummary,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isPolling,  RideEntity? incomingRide,  RideEntity? activeRide,  RideSummaryEntity? rideSummary,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _RideState() when $default != null:
return $default(_that.isLoading,_that.isPolling,_that.incomingRide,_that.activeRide,_that.rideSummary,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _RideState implements RideState {
  const _RideState({this.isLoading = false, this.isPolling = false, this.incomingRide, this.activeRide, this.rideSummary, this.errorMessage});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isPolling;
@override final  RideEntity? incomingRide;
@override final  RideEntity? activeRide;
@override final  RideSummaryEntity? rideSummary;
@override final  String? errorMessage;

/// Create a copy of RideState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RideStateCopyWith<_RideState> get copyWith => __$RideStateCopyWithImpl<_RideState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RideState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isPolling, isPolling) || other.isPolling == isPolling)&&(identical(other.incomingRide, incomingRide) || other.incomingRide == incomingRide)&&(identical(other.activeRide, activeRide) || other.activeRide == activeRide)&&(identical(other.rideSummary, rideSummary) || other.rideSummary == rideSummary)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isPolling,incomingRide,activeRide,rideSummary,errorMessage);

@override
String toString() {
  return 'RideState(isLoading: $isLoading, isPolling: $isPolling, incomingRide: $incomingRide, activeRide: $activeRide, rideSummary: $rideSummary, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$RideStateCopyWith<$Res> implements $RideStateCopyWith<$Res> {
  factory _$RideStateCopyWith(_RideState value, $Res Function(_RideState) _then) = __$RideStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isPolling, RideEntity? incomingRide, RideEntity? activeRide, RideSummaryEntity? rideSummary, String? errorMessage
});


@override $RideEntityCopyWith<$Res>? get incomingRide;@override $RideEntityCopyWith<$Res>? get activeRide;@override $RideSummaryEntityCopyWith<$Res>? get rideSummary;

}
/// @nodoc
class __$RideStateCopyWithImpl<$Res>
    implements _$RideStateCopyWith<$Res> {
  __$RideStateCopyWithImpl(this._self, this._then);

  final _RideState _self;
  final $Res Function(_RideState) _then;

/// Create a copy of RideState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isPolling = null,Object? incomingRide = freezed,Object? activeRide = freezed,Object? rideSummary = freezed,Object? errorMessage = freezed,}) {
  return _then(_RideState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isPolling: null == isPolling ? _self.isPolling : isPolling // ignore: cast_nullable_to_non_nullable
as bool,incomingRide: freezed == incomingRide ? _self.incomingRide : incomingRide // ignore: cast_nullable_to_non_nullable
as RideEntity?,activeRide: freezed == activeRide ? _self.activeRide : activeRide // ignore: cast_nullable_to_non_nullable
as RideEntity?,rideSummary: freezed == rideSummary ? _self.rideSummary : rideSummary // ignore: cast_nullable_to_non_nullable
as RideSummaryEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RideState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RideEntityCopyWith<$Res>? get incomingRide {
    if (_self.incomingRide == null) {
    return null;
  }

  return $RideEntityCopyWith<$Res>(_self.incomingRide!, (value) {
    return _then(_self.copyWith(incomingRide: value));
  });
}/// Create a copy of RideState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RideEntityCopyWith<$Res>? get activeRide {
    if (_self.activeRide == null) {
    return null;
  }

  return $RideEntityCopyWith<$Res>(_self.activeRide!, (value) {
    return _then(_self.copyWith(activeRide: value));
  });
}/// Create a copy of RideState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RideSummaryEntityCopyWith<$Res>? get rideSummary {
    if (_self.rideSummary == null) {
    return null;
  }

  return $RideSummaryEntityCopyWith<$Res>(_self.rideSummary!, (value) {
    return _then(_self.copyWith(rideSummary: value));
  });
}
}

// dart format on
