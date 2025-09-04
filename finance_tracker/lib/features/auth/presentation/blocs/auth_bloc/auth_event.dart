part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logIn({required LoginUseCaseParams params}) = _LogIn;

  const factory AuthEvent.register({required RegisterUSeCaseParams params}) =
      _Register;
}
