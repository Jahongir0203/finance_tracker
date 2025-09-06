import 'package:dartz/dartz.dart';
import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/profile/data/datasource/user_datasource.dart';
import 'package:finance_tracker/features/profile/domain/repository/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserDataSource _userDataSource;

  UserRepositoryImpl(this._userDataSource);

  @override
  Future<Either<Failure, void>> logOutUser() async {
    try {
      await _userDataSource.logOutUser();
      return Right(unit);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(message: e.toString()));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updatePassword({
    required String email,
    required String oldPassword,
    required String newPassword,
  }) async {
    try {
      await _userDataSource.updatePassword(
        email: email,
        oldPassword: oldPassword,
        newPassword: newPassword,
      );

      return Right(unit);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateUser({required String name}) async {
    try {
      await _userDataSource.updateUser(name: name);

      return Right(unit);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Either<Failure, User> getUser() {
    try {
      final result = _userDataSource.getUser();
      return Right(result!);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
