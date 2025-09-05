part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    @Default(RequestStatus.initial) RequestStatus editStatus,
    @Default(RequestStatus.initial) RequestStatus updatePasswordStatus,
    @Default(RequestStatus.initial) RequestStatus logOutStatus,
  }) = _UserState;
}
