// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EarningsState {

 bool get isLoading; EarningsFilter get selectedFilter; EarningsEntity? get earnings; List<TransactionEntity>? get transactions; bool get showTransactions; String? get errorMessage;
/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EarningsStateCopyWith<EarningsState> get copyWith => _$EarningsStateCopyWithImpl<EarningsState>(this as EarningsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EarningsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&(identical(other.earnings, earnings) || other.earnings == earnings)&&const DeepCollectionEquality().equals(other.transactions, transactions)&&(identical(other.showTransactions, showTransactions) || other.showTransactions == showTransactions)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,selectedFilter,earnings,const DeepCollectionEquality().hash(transactions),showTransactions,errorMessage);

@override
String toString() {
  return 'EarningsState(isLoading: $isLoading, selectedFilter: $selectedFilter, earnings: $earnings, transactions: $transactions, showTransactions: $showTransactions, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $EarningsStateCopyWith<$Res>  {
  factory $EarningsStateCopyWith(EarningsState value, $Res Function(EarningsState) _then) = _$EarningsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, EarningsFilter selectedFilter, EarningsEntity? earnings, List<TransactionEntity>? transactions, bool showTransactions, String? errorMessage
});


$EarningsEntityCopyWith<$Res>? get earnings;

}
/// @nodoc
class _$EarningsStateCopyWithImpl<$Res>
    implements $EarningsStateCopyWith<$Res> {
  _$EarningsStateCopyWithImpl(this._self, this._then);

  final EarningsState _self;
  final $Res Function(EarningsState) _then;

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? selectedFilter = null,Object? earnings = freezed,Object? transactions = freezed,Object? showTransactions = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as EarningsFilter,earnings: freezed == earnings ? _self.earnings : earnings // ignore: cast_nullable_to_non_nullable
as EarningsEntity?,transactions: freezed == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionEntity>?,showTransactions: null == showTransactions ? _self.showTransactions : showTransactions // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EarningsEntityCopyWith<$Res>? get earnings {
    if (_self.earnings == null) {
    return null;
  }

  return $EarningsEntityCopyWith<$Res>(_self.earnings!, (value) {
    return _then(_self.copyWith(earnings: value));
  });
}
}


/// Adds pattern-matching-related methods to [EarningsState].
extension EarningsStatePatterns on EarningsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EarningsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EarningsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EarningsState value)  $default,){
final _that = this;
switch (_that) {
case _EarningsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EarningsState value)?  $default,){
final _that = this;
switch (_that) {
case _EarningsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  EarningsFilter selectedFilter,  EarningsEntity? earnings,  List<TransactionEntity>? transactions,  bool showTransactions,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EarningsState() when $default != null:
return $default(_that.isLoading,_that.selectedFilter,_that.earnings,_that.transactions,_that.showTransactions,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  EarningsFilter selectedFilter,  EarningsEntity? earnings,  List<TransactionEntity>? transactions,  bool showTransactions,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _EarningsState():
return $default(_that.isLoading,_that.selectedFilter,_that.earnings,_that.transactions,_that.showTransactions,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  EarningsFilter selectedFilter,  EarningsEntity? earnings,  List<TransactionEntity>? transactions,  bool showTransactions,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _EarningsState() when $default != null:
return $default(_that.isLoading,_that.selectedFilter,_that.earnings,_that.transactions,_that.showTransactions,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _EarningsState implements EarningsState {
  const _EarningsState({this.isLoading = false, this.selectedFilter = EarningsFilter.daily, this.earnings, final  List<TransactionEntity>? transactions, this.showTransactions = false, this.errorMessage}): _transactions = transactions;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  EarningsFilter selectedFilter;
@override final  EarningsEntity? earnings;
 final  List<TransactionEntity>? _transactions;
@override List<TransactionEntity>? get transactions {
  final value = _transactions;
  if (value == null) return null;
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool showTransactions;
@override final  String? errorMessage;

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EarningsStateCopyWith<_EarningsState> get copyWith => __$EarningsStateCopyWithImpl<_EarningsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EarningsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&(identical(other.earnings, earnings) || other.earnings == earnings)&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.showTransactions, showTransactions) || other.showTransactions == showTransactions)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,selectedFilter,earnings,const DeepCollectionEquality().hash(_transactions),showTransactions,errorMessage);

@override
String toString() {
  return 'EarningsState(isLoading: $isLoading, selectedFilter: $selectedFilter, earnings: $earnings, transactions: $transactions, showTransactions: $showTransactions, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$EarningsStateCopyWith<$Res> implements $EarningsStateCopyWith<$Res> {
  factory _$EarningsStateCopyWith(_EarningsState value, $Res Function(_EarningsState) _then) = __$EarningsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, EarningsFilter selectedFilter, EarningsEntity? earnings, List<TransactionEntity>? transactions, bool showTransactions, String? errorMessage
});


@override $EarningsEntityCopyWith<$Res>? get earnings;

}
/// @nodoc
class __$EarningsStateCopyWithImpl<$Res>
    implements _$EarningsStateCopyWith<$Res> {
  __$EarningsStateCopyWithImpl(this._self, this._then);

  final _EarningsState _self;
  final $Res Function(_EarningsState) _then;

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? selectedFilter = null,Object? earnings = freezed,Object? transactions = freezed,Object? showTransactions = null,Object? errorMessage = freezed,}) {
  return _then(_EarningsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as EarningsFilter,earnings: freezed == earnings ? _self.earnings : earnings // ignore: cast_nullable_to_non_nullable
as EarningsEntity?,transactions: freezed == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<TransactionEntity>?,showTransactions: null == showTransactions ? _self.showTransactions : showTransactions // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EarningsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EarningsEntityCopyWith<$Res>? get earnings {
    if (_self.earnings == null) {
    return null;
  }

  return $EarningsEntityCopyWith<$Res>(_self.earnings!, (value) {
    return _then(_self.copyWith(earnings: value));
  });
}
}

// dart format on
