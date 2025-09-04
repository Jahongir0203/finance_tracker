import 'package:dartz/dartz.dart';
import 'package:finance_tracker/core/core.dart';
import 'package:finance_tracker/features/auth/domain/repository/auth_repository.dart';

class LogOutUseCase implements UseCase<Either<Failure, void>, NoParams> {
  final AuthRepository _authRepository;

  LogOutUseCase(this._authRepository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return _authRepository.logOut();
  }
}
