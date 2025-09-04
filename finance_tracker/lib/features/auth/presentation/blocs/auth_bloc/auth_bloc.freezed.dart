// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {

 Object get params;



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent&&const DeepCollectionEquality().equals(other.params, params));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(params));

@override
String toString() {
  return 'AuthEvent(params: $params)';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LogIn value)?  logIn,TResult Function( _Register value)?  register,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogIn() when logIn != null:
return logIn(_that);case _Register() when register != null:
return register(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LogIn value)  logIn,required TResult Function( _Register value)  register,}){
final _that = this;
switch (_that) {
case _LogIn():
return logIn(_that);case _Register():
return register(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LogIn value)?  logIn,TResult? Function( _Register value)?  register,}){
final _that = this;
switch (_that) {
case _LogIn() when logIn != null:
return logIn(_that);case _Register() when register != null:
return register(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LoginUseCaseParams params)?  logIn,TResult Function( RegisterUSeCaseParams params)?  register,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LogIn() when logIn != null:
return logIn(_that.params);case _Register() when register != null:
return register(_that.params);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LoginUseCaseParams params)  logIn,required TResult Function( RegisterUSeCaseParams params)  register,}) {final _that = this;
switch (_that) {
case _LogIn():
return logIn(_that.params);case _Register():
return register(_that.params);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LoginUseCaseParams params)?  logIn,TResult? Function( RegisterUSeCaseParams params)?  register,}) {final _that = this;
switch (_that) {
case _LogIn() when logIn != null:
return logIn(_that.params);case _Register() when register != null:
return register(_that.params);case _:
  return null;

}
}

}

/// @nodoc


class _LogIn implements AuthEvent {
  const _LogIn({required this.params});
  

@override final  LoginUseCaseParams params;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogInCopyWith<_LogIn> get copyWith => __$LogInCopyWithImpl<_LogIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogIn&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'AuthEvent.logIn(params: $params)';
}


}

/// @nodoc
abstract mixin class _$LogInCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LogInCopyWith(_LogIn value, $Res Function(_LogIn) _then) = __$LogInCopyWithImpl;
@useResult
$Res call({
 LoginUseCaseParams params
});




}
/// @nodoc
class __$LogInCopyWithImpl<$Res>
    implements _$LogInCopyWith<$Res> {
  __$LogInCopyWithImpl(this._self, this._then);

  final _LogIn _self;
  final $Res Function(_LogIn) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_LogIn(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as LoginUseCaseParams,
  ));
}


}

/// @nodoc


class _Register implements AuthEvent {
  const _Register({required this.params});
  

@override final  RegisterUSeCaseParams params;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterCopyWith<_Register> get copyWith => __$RegisterCopyWithImpl<_Register>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Register&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'AuthEvent.register(params: $params)';
}


}

/// @nodoc
abstract mixin class _$RegisterCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) _then) = __$RegisterCopyWithImpl;
@useResult
$Res call({
 RegisterUSeCaseParams params
});




}
/// @nodoc
class __$RegisterCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(this._self, this._then);

  final _Register _self;
  final $Res Function(_Register) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_Register(
params: null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as RegisterUSeCaseParams,
  ));
}


}

/// @nodoc
mixin _$AuthState {

 RequestStatus get loginSt; RequestStatus get registerSt;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.loginSt, loginSt) || other.loginSt == loginSt)&&(identical(other.registerSt, registerSt) || other.registerSt == registerSt));
}


@override
int get hashCode => Object.hash(runtimeType,loginSt,registerSt);

@override
String toString() {
  return 'AuthState(loginSt: $loginSt, registerSt: $registerSt)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 RequestStatus loginSt, RequestStatus registerSt
});




}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loginSt = null,Object? registerSt = null,}) {
  return _then(_self.copyWith(
loginSt: null == loginSt ? _self.loginSt : loginSt // ignore: cast_nullable_to_non_nullable
as RequestStatus,registerSt: null == registerSt ? _self.registerSt : registerSt // ignore: cast_nullable_to_non_nullable
as RequestStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestStatus loginSt,  RequestStatus registerSt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.loginSt,_that.registerSt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestStatus loginSt,  RequestStatus registerSt)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.loginSt,_that.registerSt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestStatus loginSt,  RequestStatus registerSt)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.loginSt,_that.registerSt);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.loginSt = RequestStatus.initial, this.registerSt = RequestStatus.initial});
  

@override@JsonKey() final  RequestStatus loginSt;
@override@JsonKey() final  RequestStatus registerSt;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.loginSt, loginSt) || other.loginSt == loginSt)&&(identical(other.registerSt, registerSt) || other.registerSt == registerSt));
}


@override
int get hashCode => Object.hash(runtimeType,loginSt,registerSt);

@override
String toString() {
  return 'AuthState(loginSt: $loginSt, registerSt: $registerSt)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 RequestStatus loginSt, RequestStatus registerSt
});




}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loginSt = null,Object? registerSt = null,}) {
  return _then(_AuthState(
loginSt: null == loginSt ? _self.loginSt : loginSt // ignore: cast_nullable_to_non_nullable
as RequestStatus,registerSt: null == registerSt ? _self.registerSt : registerSt // ignore: cast_nullable_to_non_nullable
as RequestStatus,
  ));
}


}

// dart format on
