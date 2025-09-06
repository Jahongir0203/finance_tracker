import 'package:dartz/dartz.dart';
import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/profile/domain/repository/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

@injectable
class UserUseCase implements UseCase<Either<Failure, User>, NoParams> {
  final UserRepository _userRepository;

  UserUseCase(this._userRepository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await _userRepository.getUser();
  }
}
