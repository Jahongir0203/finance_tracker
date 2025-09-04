part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(RequestStatus.initial) RequestStatus loginSt,
    @Default(RequestStatus.initial) RequestStatus registerSt,
    @Default(RequestStatus.initial) RequestStatus updateSt,
    @Default(null) String? errorText
  }) = _AuthState;
}
