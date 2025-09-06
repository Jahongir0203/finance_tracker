// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// Adds pattern-matching-related methods to [UserEvent].
extension UserEventPatterns on UserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _Edit value)?  edit,TResult Function( _UpdatePassword value)?  updatePassword,TResult Function( _LogOut value)?  logOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Edit() when edit != null:
return edit(_that);case _UpdatePassword() when updatePassword != null:
return updatePassword(_that);case _LogOut() when logOut != null:
return logOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _Edit value)  edit,required TResult Function( _UpdatePassword value)  updatePassword,required TResult Function( _LogOut value)  logOut,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _Edit():
return edit(_that);case _UpdatePassword():
return updatePassword(_that);case _LogOut():
return logOut(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _Edit value)?  edit,TResult? Function( _UpdatePassword value)?  updatePassword,TResult? Function( _LogOut value)?  logOut,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _Edit() when edit != null:
return edit(_that);case _UpdatePassword() when updatePassword != null:
return updatePassword(_that);case _LogOut() when logOut != null:
return logOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( UpdateUserUseCaseParams params)?  edit,TResult Function( UpdatePasswordUseCaseParams params)?  updatePassword,TResult Function()?  logOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Edit() when edit != null:
return edit(_that.params);case _UpdatePassword() when updatePassword != null:
return updatePassword(_that.params);case _LogOut() when logOut != null:
return logOut();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( UpdateUserUseCaseParams params)  edit,required TResult Function( UpdatePasswordUseCaseParams params)  updatePassword,required TResult Function()  logOut,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _Edit():
return edit(_that.params);case _UpdatePassword():
return updatePassword(_that.params);case _LogOut():
return logOut();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( UpdateUserUseCaseParams params)?  edit,TResult? Function( UpdatePasswordUseCaseParams params)?  updatePassword,TResult? Function()?  logOut,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _Edit() when edit != null:
return edit(_that.params);case _UpdatePassword() when updatePassword != null:
return updatePassword(_that.params);case _LogOut() when logOut != null:
return logOut();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements UserEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.started()';
}


}




/// @nodoc


class _Edit implements UserEvent {
  const _Edit(this.params);
  

 final  UpdateUserUseCaseParams params;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditCopyWith<_Edit> get copyWith => __$EditCopyWithImpl<_Edit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Edit&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'UserEvent.edit(params: $params)';
}


}

/// @nodoc
abstract mixin class _$EditCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$EditCopyWith(_Edit value, $Res Function(_Edit) _then) = __$EditCopyWithImpl;
@useResult
$Res call({
 UpdateUserUseCaseParams params
});




}
/// @nodoc
class __$EditCopyWithImpl<$Res>
    implements _$EditCopyWith<$Res> {
  __$EditCopyWithImpl(this._self, this._then);

  final _Edit _self;
  final $Res Function(_Edit) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_Edit(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as UpdateUserUseCaseParams,
  ));
}


}

/// @nodoc


class _UpdatePassword implements UserEvent {
  const _UpdatePassword(this.params);
  

 final  UpdatePasswordUseCaseParams params;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePasswordCopyWith<_UpdatePassword> get copyWith => __$UpdatePasswordCopyWithImpl<_UpdatePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePassword&&(identical(other.params, params) || other.params == params));
}


@override
int get hashCode => Object.hash(runtimeType,params);

@override
String toString() {
  return 'UserEvent.updatePassword(params: $params)';
}


}

/// @nodoc
abstract mixin class _$UpdatePasswordCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$UpdatePasswordCopyWith(_UpdatePassword value, $Res Function(_UpdatePassword) _then) = __$UpdatePasswordCopyWithImpl;
@useResult
$Res call({
 UpdatePasswordUseCaseParams params
});




}
/// @nodoc
class __$UpdatePasswordCopyWithImpl<$Res>
    implements _$UpdatePasswordCopyWith<$Res> {
  __$UpdatePasswordCopyWithImpl(this._self, this._then);

  final _UpdatePassword _self;
  final $Res Function(_UpdatePassword) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? params = null,}) {
  return _then(_UpdatePassword(
null == params ? _self.params : params // ignore: cast_nullable_to_non_nullable
as UpdatePasswordUseCaseParams,
  ));
}


}

/// @nodoc


class _LogOut implements UserEvent {
  const _LogOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.logOut()';
}


}




/// @nodoc
mixin _$UserState {

 RequestStatus get editStatus; RequestStatus get updatePasswordStatus; RequestStatus get logOutStatus; User? get user;
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStateCopyWith<UserState> get copyWith => _$UserStateCopyWithImpl<UserState>(this as UserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState&&(identical(other.editStatus, editStatus) || other.editStatus == editStatus)&&(identical(other.updatePasswordStatus, updatePasswordStatus) || other.updatePasswordStatus == updatePasswordStatus)&&(identical(other.logOutStatus, logOutStatus) || other.logOutStatus == logOutStatus)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,editStatus,updatePasswordStatus,logOutStatus,user);

@override
String toString() {
  return 'UserState(editStatus: $editStatus, updatePasswordStatus: $updatePasswordStatus, logOutStatus: $logOutStatus, user: $user)';
}


}

/// @nodoc
abstract mixin class $UserStateCopyWith<$Res>  {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) _then) = _$UserStateCopyWithImpl;
@useResult
$Res call({
 RequestStatus editStatus, RequestStatus updatePasswordStatus, RequestStatus logOutStatus, User? user
});




}
/// @nodoc
class _$UserStateCopyWithImpl<$Res>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._self, this._then);

  final UserState _self;
  final $Res Function(UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? editStatus = null,Object? updatePasswordStatus = null,Object? logOutStatus = null,Object? user = freezed,}) {
  return _then(_self.copyWith(
editStatus: null == editStatus ? _self.editStatus : editStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,updatePasswordStatus: null == updatePasswordStatus ? _self.updatePasswordStatus : updatePasswordStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,logOutStatus: null == logOutStatus ? _self.logOutStatus : logOutStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserState value)  $default,){
final _that = this;
switch (_that) {
case _UserState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserState value)?  $default,){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RequestStatus editStatus,  RequestStatus updatePasswordStatus,  RequestStatus logOutStatus,  User? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.editStatus,_that.updatePasswordStatus,_that.logOutStatus,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RequestStatus editStatus,  RequestStatus updatePasswordStatus,  RequestStatus logOutStatus,  User? user)  $default,) {final _that = this;
switch (_that) {
case _UserState():
return $default(_that.editStatus,_that.updatePasswordStatus,_that.logOutStatus,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RequestStatus editStatus,  RequestStatus updatePasswordStatus,  RequestStatus logOutStatus,  User? user)?  $default,) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.editStatus,_that.updatePasswordStatus,_that.logOutStatus,_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _UserState implements UserState {
  const _UserState({this.editStatus = RequestStatus.initial, this.updatePasswordStatus = RequestStatus.initial, this.logOutStatus = RequestStatus.initial, this.user = null});
  

@override@JsonKey() final  RequestStatus editStatus;
@override@JsonKey() final  RequestStatus updatePasswordStatus;
@override@JsonKey() final  RequestStatus logOutStatus;
@override@JsonKey() final  User? user;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStateCopyWith<_UserState> get copyWith => __$UserStateCopyWithImpl<_UserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserState&&(identical(other.editStatus, editStatus) || other.editStatus == editStatus)&&(identical(other.updatePasswordStatus, updatePasswordStatus) || other.updatePasswordStatus == updatePasswordStatus)&&(identical(other.logOutStatus, logOutStatus) || other.logOutStatus == logOutStatus)&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,editStatus,updatePasswordStatus,logOutStatus,user);

@override
String toString() {
  return 'UserState(editStatus: $editStatus, updatePasswordStatus: $updatePasswordStatus, logOutStatus: $logOutStatus, user: $user)';
}


}

/// @nodoc
abstract mixin class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(_UserState value, $Res Function(_UserState) _then) = __$UserStateCopyWithImpl;
@override @useResult
$Res call({
 RequestStatus editStatus, RequestStatus updatePasswordStatus, RequestStatus logOutStatus, User? user
});




}
/// @nodoc
class __$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(this._self, this._then);

  final _UserState _self;
  final $Res Function(_UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? editStatus = null,Object? updatePasswordStatus = null,Object? logOutStatus = null,Object? user = freezed,}) {
  return _then(_UserState(
editStatus: null == editStatus ? _self.editStatus : editStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,updatePasswordStatus: null == updatePasswordStatus ? _self.updatePasswordStatus : updatePasswordStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,logOutStatus: null == logOutStatus ? _self.logOutStatus : logOutStatus // ignore: cast_nullable_to_non_nullable
as RequestStatus,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,
  ));
}


}

// dart format on
