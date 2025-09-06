// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_expenses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddExpensesEvent {

 ExpensesModel get expenses;
/// Create a copy of AddExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpensesEventCopyWith<AddExpensesEvent> get copyWith => _$AddExpensesEventCopyWithImpl<AddExpensesEvent>(this as AddExpensesEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpensesEvent&&(identical(other.expenses, expenses) || other.expenses == expenses));
}


@override
int get hashCode => Object.hash(runtimeType,expenses);

@override
String toString() {
  return 'AddExpensesEvent(expenses: $expenses)';
}


}

/// @nodoc
abstract mixin class $AddExpensesEventCopyWith<$Res>  {
  factory $AddExpensesEventCopyWith(AddExpensesEvent value, $Res Function(AddExpensesEvent) _then) = _$AddExpensesEventCopyWithImpl;
@useResult
$Res call({
 ExpensesModel expenses
});




}
/// @nodoc
class _$AddExpensesEventCopyWithImpl<$Res>
    implements $AddExpensesEventCopyWith<$Res> {
  _$AddExpensesEventCopyWithImpl(this._self, this._then);

  final AddExpensesEvent _self;
  final $Res Function(AddExpensesEvent) _then;

/// Create a copy of AddExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? expenses = null,}) {
  return _then(_self.copyWith(
expenses: null == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as ExpensesModel,
  ));
}

}


/// Adds pattern-matching-related methods to [AddExpensesEvent].
extension AddExpensesEventPatterns on AddExpensesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ExpensesModel expenses)?  started,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.expenses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ExpensesModel expenses)  started,}) {final _that = this;
switch (_that) {
case _Started():
return started(_that.expenses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ExpensesModel expenses)?  started,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that.expenses);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements AddExpensesEvent {
  const _Started(this.expenses);
  

@override final  ExpensesModel expenses;

/// Create a copy of AddExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started&&(identical(other.expenses, expenses) || other.expenses == expenses));
}


@override
int get hashCode => Object.hash(runtimeType,expenses);

@override
String toString() {
  return 'AddExpensesEvent.started(expenses: $expenses)';
}


}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $AddExpensesEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
@override @useResult
$Res call({
 ExpensesModel expenses
});




}
/// @nodoc
class __$StartedCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

/// Create a copy of AddExpensesEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? expenses = null,}) {
  return _then(_Started(
null == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as ExpensesModel,
  ));
}


}

/// @nodoc
mixin _$AddExpensesState {

 RequestStatus get status; String? get errorText;
/// Create a copy of AddExpensesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddExpensesStateCopyWith<AddExpensesState> get copyWith => _$AddExpensesStateCopyWithImpl<AddExpensesState>(this as AddExpensesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddExpensesState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorText);

@override
String toString() {
  return 'AddExpensesState(status: $status, errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class $AddExpensesStateCopyWith<$Res>  {
  factory $AddExpensesStateCopyWith(AddExpensesState value, $Res Function(AddExpensesState) _then) = _$AddExpensesStateCopyWithImpl;
@useResult
$Res call({
 RequestStatus status, String? errorText
});




}
/// @nodoc
class _$AddExpensesStateCopyWithImpl<$Res>
    implements $AddExpensesStateCopyWith<$Res> {
  _$AddExpensesStateCopyWithImpl(this._self, this._then);

  final AddExpensesState _self;
  final $Res Function(AddExpensesState) _then;

/// Create a copy of AddExpensesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorText = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,errorText: freezed == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddExpensesState].
extension AddExpensesStatePatterns on AddExpensesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddExpensesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddExpensesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddExpensesState value)  $default,){
final _that = this;
switch (_that) {
case _AddExpensesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddExpensesState value)?  $default,){
final _that = this;
switch (_that) {
case _AddExpensesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestStatus status,  String? errorText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddExpensesState() when $default != null:
return $default(_that.status,_that.errorText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestStatus status,  String? errorText)  $default,) {final _that = this;
switch (_that) {
case _AddExpensesState():
return $default(_that.status,_that.errorText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestStatus status,  String? errorText)?  $default,) {final _that = this;
switch (_that) {
case _AddExpensesState() when $default != null:
return $default(_that.status,_that.errorText);case _:
  return null;

}
}

}

/// @nodoc


class _AddExpensesState implements AddExpensesState {
  const _AddExpensesState({this.status = RequestStatus.initial, this.errorText = null});
  

@override@JsonKey() final  RequestStatus status;
@override@JsonKey() final  String? errorText;

/// Create a copy of AddExpensesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddExpensesStateCopyWith<_AddExpensesState> get copyWith => __$AddExpensesStateCopyWithImpl<_AddExpensesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddExpensesState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorText);

@override
String toString() {
  return 'AddExpensesState(status: $status, errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class _$AddExpensesStateCopyWith<$Res> implements $AddExpensesStateCopyWith<$Res> {
  factory _$AddExpensesStateCopyWith(_AddExpensesState value, $Res Function(_AddExpensesState) _then) = __$AddExpensesStateCopyWithImpl;
@override @useResult
$Res call({
 RequestStatus status, String? errorText
});




}
/// @nodoc
class __$AddExpensesStateCopyWithImpl<$Res>
    implements _$AddExpensesStateCopyWith<$Res> {
  __$AddExpensesStateCopyWithImpl(this._self, this._then);

  final _AddExpensesState _self;
  final $Res Function(_AddExpensesState) _then;

/// Create a copy of AddExpensesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorText = freezed,}) {
  return _then(_AddExpensesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as RequestStatus,errorText: freezed == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
