// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_history_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RideHistoryState {

 bool get isLoading; RideHistoryStatus get selectedStatus; List<RideHistoryEntity> get rides; String? get errorMessage;
/// Create a copy of RideHistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RideHistoryStateCopyWith<RideHistoryState> get copyWith => _$RideHistoryStateCopyWithImpl<RideHistoryState>(this as RideHistoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RideHistoryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus)&&const DeepCollectionEquality().equals(other.rides, rides)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,selectedStatus,const DeepCollectionEquality().hash(rides),errorMessage);

@override
String toString() {
  return 'RideHistoryState(isLoading: $isLoading, selectedStatus: $selectedStatus, rides: $rides, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $RideHistoryStateCopyWith<$Res>  {
  factory $RideHistoryStateCopyWith(RideHistoryState value, $Res Function(RideHistoryState) _then) = _$RideHistoryStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, RideHistoryStatus selectedStatus, List<RideHistoryEntity> rides, String? errorMessage
});




}
/// @nodoc
class _$RideHistoryStateCopyWithImpl<$Res>
    implements $RideHistoryStateCopyWith<$Res> {
  _$RideHistoryStateCopyWithImpl(this._self, this._then);

  final RideHistoryState _self;
  final $Res Function(RideHistoryState) _then;

/// Create a copy of RideHistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? selectedStatus = null,Object? rides = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,selectedStatus: null == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as RideHistoryStatus,rides: null == rides ? _self.rides : rides // ignore: cast_nullable_to_non_nullable
as List<RideHistoryEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RideHistoryState].
extension RideHistoryStatePatterns on RideHistoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RideHistoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RideHistoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RideHistoryState value)  $default,){
final _that = this;
switch (_that) {
case _RideHistoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RideHistoryState value)?  $default,){
final _that = this;
switch (_that) {
case _RideHistoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  RideHistoryStatus selectedStatus,  List<RideHistoryEntity> rides,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RideHistoryState() when $default != null:
return $default(_that.isLoading,_that.selectedStatus,_that.rides,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  RideHistoryStatus selectedStatus,  List<RideHistoryEntity> rides,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _RideHistoryState():
return $default(_that.isLoading,_that.selectedStatus,_that.rides,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  RideHistoryStatus selectedStatus,  List<RideHistoryEntity> rides,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _RideHistoryState() when $default != null:
return $default(_that.isLoading,_that.selectedStatus,_that.rides,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _RideHistoryState implements RideHistoryState {
  const _RideHistoryState({this.isLoading = false, this.selectedStatus = RideHistoryStatus.all, final  List<RideHistoryEntity> rides = const [], this.errorMessage}): _rides = rides;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  RideHistoryStatus selectedStatus;
 final  List<RideHistoryEntity> _rides;
@override@JsonKey() List<RideHistoryEntity> get rides {
  if (_rides is EqualUnmodifiableListView) return _rides;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rides);
}

@override final  String? errorMessage;

/// Create a copy of RideHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RideHistoryStateCopyWith<_RideHistoryState> get copyWith => __$RideHistoryStateCopyWithImpl<_RideHistoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RideHistoryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.selectedStatus, selectedStatus) || other.selectedStatus == selectedStatus)&&const DeepCollectionEquality().equals(other._rides, _rides)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,selectedStatus,const DeepCollectionEquality().hash(_rides),errorMessage);

@override
String toString() {
  return 'RideHistoryState(isLoading: $isLoading, selectedStatus: $selectedStatus, rides: $rides, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$RideHistoryStateCopyWith<$Res> implements $RideHistoryStateCopyWith<$Res> {
  factory _$RideHistoryStateCopyWith(_RideHistoryState value, $Res Function(_RideHistoryState) _then) = __$RideHistoryStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, RideHistoryStatus selectedStatus, List<RideHistoryEntity> rides, String? errorMessage
});




}
/// @nodoc
class __$RideHistoryStateCopyWithImpl<$Res>
    implements _$RideHistoryStateCopyWith<$Res> {
  __$RideHistoryStateCopyWithImpl(this._self, this._then);

  final _RideHistoryState _self;
  final $Res Function(_RideHistoryState) _then;

/// Create a copy of RideHistoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? selectedStatus = null,Object? rides = null,Object? errorMessage = freezed,}) {
  return _then(_RideHistoryState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,selectedStatus: null == selectedStatus ? _self.selectedStatus : selectedStatus // ignore: cast_nullable_to_non_nullable
as RideHistoryStatus,rides: null == rides ? _self._rides : rides // ignore: cast_nullable_to_non_nullable
as List<RideHistoryEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
