import 'package:dartz/dartz.dart';
import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/auth/data/datasource/auth_datasource.dart';
import 'package:finance_tracker/features/auth/domain/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource _authDataSource;

  AuthRepositoryImpl(this._authDataSource);

  @override
  Future<Either<Failure, UserCredential>> logIn({
    required String email,
    required String password,
  }) async {
    try {
      final user = await _authDataSource.logIn(
        email: email,
        password: password,
      );
      return Right(user);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logOut() async {
    try {
      await _authDataSource.logOut();
      return Right(null);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> register({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      final user = await _authDataSource.registerUser(
        email: email,
        name: name,
        password: password,
      );

      return Right(user);
    } on FirebaseAuthException catch (e) {
      return Left(Failure(message: e.message));
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}
