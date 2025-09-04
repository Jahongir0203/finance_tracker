import 'package:dartz/dartz.dart';
import 'package:finance_tracker/core/core.dart';
import 'package:finance_tracker/features/auth/domain/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginUseCase
    implements UseCase<Either<Failure, UserCredential>, LoginUseCaseParams> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<Either<Failure, UserCredential>> call(
    LoginUseCaseParams params,
  ) async {
    return _authRepository.logIn(
      email: params.email,
      password: params.password,
    );
  }
}

class LoginUseCaseParams {
  final String email;
  final String password;

  LoginUseCaseParams({required this.email, required this.password});
}
