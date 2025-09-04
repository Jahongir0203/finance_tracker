import 'package:dartz/dartz.dart';
import 'package:finance_tracker/core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserCredential>> logIn({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserCredential>> register({
    required String email,
    required String name,
    required String password,
  });

  Future<Either<Failure, void>> updatePassword({required String password});

  Future<Either<Failure, void>> logOut();
}
