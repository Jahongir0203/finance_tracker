import 'package:dartz/dartz.dart';
import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/auth/domain/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

@injectable
class RegisterUseCase
    implements UseCase<Either<Failure, UserCredential>, RegisterUSeCaseParams> {
  final AuthRepository _authRepository;

  RegisterUseCase(this._authRepository);

  @override
  Future<Either<Failure, UserCredential>> call(
    RegisterUSeCaseParams params,
  ) async {
    return _authRepository.register(
      email: params.email,
      name: params.name,
      password: params.password,
    );
  }
}

class RegisterUSeCaseParams {
  final String name;
  final String email;
  final String password;

  RegisterUSeCaseParams(this.name, this.email, this.password);
}
