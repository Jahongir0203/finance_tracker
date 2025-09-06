// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainEvent {

 int get index;
/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainEventCopyWith<MainEvent> get copyWith => _$MainEventCopyWithImpl<MainEvent>(this as MainEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainEvent&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'MainEvent(index: $index)';
}


}

/// @nodoc
abstract mixin class $MainEventCopyWith<$Res>  {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) _then) = _$MainEventCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$MainEventCopyWithImpl<$Res>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._self, this._then);

  final MainEvent _self;
  final $Res Function(MainEvent) _then;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MainEvent].
extension MainEventPatterns on MainEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Changed value)?  changed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Changed() when changed != null:
return changed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Changed value)  changed,}){
final _that = this;
switch (_that) {
case _Changed():
return changed(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Changed value)?  changed,}){
final _that = this;
switch (_that) {
case _Changed() when changed != null:
return changed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int index)?  changed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Changed() when changed != null:
return changed(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int index)  changed,}) {final _that = this;
switch (_that) {
case _Changed():
return changed(_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int index)?  changed,}) {final _that = this;
switch (_that) {
case _Changed() when changed != null:
return changed(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class _Changed implements MainEvent {
  const _Changed({required this.index});
  

@override final  int index;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangedCopyWith<_Changed> get copyWith => __$ChangedCopyWithImpl<_Changed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Changed&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'MainEvent.changed(index: $index)';
}


}

/// @nodoc
abstract mixin class _$ChangedCopyWith<$Res> implements $MainEventCopyWith<$Res> {
  factory _$ChangedCopyWith(_Changed value, $Res Function(_Changed) _then) = __$ChangedCopyWithImpl;
@override @useResult
$Res call({
 int index
});




}
/// @nodoc
class __$ChangedCopyWithImpl<$Res>
    implements _$ChangedCopyWith<$Res> {
  __$ChangedCopyWithImpl(this._self, this._then);

  final _Changed _self;
  final $Res Function(_Changed) _then;

/// Create a copy of MainEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_Changed(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MainState {

 int get index;
/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainStateCopyWith<MainState> get copyWith => _$MainStateCopyWithImpl<MainState>(this as MainState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainState&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'MainState(index: $index)';
}


}

/// @nodoc
abstract mixin class $MainStateCopyWith<$Res>  {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) _then) = _$MainStateCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$MainStateCopyWithImpl<$Res>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._self, this._then);

  final MainState _self;
  final $Res Function(MainState) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MainState].
extension MainStatePatterns on MainState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainState value)  $default,){
final _that = this;
switch (_that) {
case _MainState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainState value)?  $default,){
final _that = this;
switch (_that) {
case _MainState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainState() when $default != null:
return $default(_that.index);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index)  $default,) {final _that = this;
switch (_that) {
case _MainState():
return $default(_that.index);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index)?  $default,) {final _that = this;
switch (_that) {
case _MainState() when $default != null:
return $default(_that.index);case _:
  return null;

}
}

}

/// @nodoc


class _MainState implements MainState {
  const _MainState({this.index = 0});
  

@override@JsonKey() final  int index;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainStateCopyWith<_MainState> get copyWith => __$MainStateCopyWithImpl<_MainState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainState&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'MainState(index: $index)';
}


}

/// @nodoc
abstract mixin class _$MainStateCopyWith<$Res> implements $MainStateCopyWith<$Res> {
  factory _$MainStateCopyWith(_MainState value, $Res Function(_MainState) _then) = __$MainStateCopyWithImpl;
@override @useResult
$Res call({
 int index
});




}
/// @nodoc
class __$MainStateCopyWithImpl<$Res>
    implements _$MainStateCopyWith<$Res> {
  __$MainStateCopyWithImpl(this._self, this._then);

  final _MainState _self;
  final $Res Function(_MainState) _then;

/// Create a copy of MainState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(_MainState(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
