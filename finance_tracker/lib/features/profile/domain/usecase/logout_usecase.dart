import 'package:dartz/dartz.dart';
import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/profile/domain/repository/user_repository.dart';

@injectable
class LogOutUseCase implements UseCase<Either<Failure, void>, NoParams> {
  final UserRepository _userRepository;

  LogOutUseCase(this._userRepository);

  @override
  Future<Either<Failure, void>> call(NoParams params) async {
    return _userRepository.logOutUser();
  }
}
