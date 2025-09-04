import 'package:dartz/dartz.dart';
import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/auth/domain/repository/auth_repository.dart';

@injectable
class UpdatePasswordUseCase
    implements UseCase<Either<Failure, void>, UpdatePasswordUseCaseParams> {
  final AuthRepository _authRepository;

  UpdatePasswordUseCase(this._authRepository);

  @override
  Future<Either<Failure, void>> call(UpdatePasswordUseCaseParams params) async {
    return _authRepository.updatePassword(password: params.password);
  }
}

class UpdatePasswordUseCaseParams {
  final String password;

  UpdatePasswordUseCaseParams({required this.password});
}
