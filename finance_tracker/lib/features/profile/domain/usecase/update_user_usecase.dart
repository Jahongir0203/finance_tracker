import 'package:dartz/dartz.dart';
import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/profile/domain/repository/user_repository.dart';

@injectable
class UpdateUserUseCase
    implements UseCase<Either<Failure, void>, UpdateUserUseCaseParams> {
  final UserRepository _userRepository;

  UpdateUserUseCase(this._userRepository);

  @override
  Future<Either<Failure, void>> call(UpdateUserUseCaseParams params) async {
    return _userRepository.updateUser(name: params.name);
  }
}

class UpdateUserUseCaseParams {
  final String name;

  UpdateUserUseCaseParams({required this.name});
}
