part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.edit() = _Edit;

  const factory UserEvent.updatePassword() = _UpdatePassword;

  const factory UserEvent.logOut() = _LogOut;
}
