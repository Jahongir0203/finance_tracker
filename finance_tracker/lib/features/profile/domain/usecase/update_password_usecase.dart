import 'package:dartz/dartz.dart';
import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/profile/domain/repository/user_repository.dart';

@injectable
class UpdatePassWordUseCase
    implements UseCase<Either<Failure, void>, UpdatePasswordUseCaseParams> {
  final UserRepository _userRepository;

  UpdatePassWordUseCase(this._userRepository);

  @override
  Future<Either<Failure, void>> call(UpdatePasswordUseCaseParams params) async {
    return _userRepository.updatePassword(
      email: params.email,
      oldPassword: params.oldPassword,
      newPassword: params.newPassword,
    );
  }
}

class UpdatePasswordUseCaseParams {
  final String email;
  final String oldPassword;
  final String newPassword;

  UpdatePasswordUseCaseParams({
    required this.email,
    required this.oldPassword,
    required this.newPassword,
  });
}
