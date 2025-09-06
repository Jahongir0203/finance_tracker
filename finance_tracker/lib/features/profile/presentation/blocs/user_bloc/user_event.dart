part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;

  const factory UserEvent.edit(UpdateUserUseCaseParams params) = _Edit;

  const factory UserEvent.updatePassword(UpdatePasswordUseCaseParams params) = _UpdatePassword;

  const factory UserEvent.logOut() = _LogOut;
}
