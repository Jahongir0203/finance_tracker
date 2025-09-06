import 'package:dartz/dartz.dart';
import 'package:finance_tracker/core/core.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class UserRepository{
  Future<Either<Failure,void>> updateUser({required String name});

  Future<Either<Failure,void>> updatePassword({
    required String email,
    required String oldPassword,
    required String newPassword,
  });

  Future<Either<Failure,void>> logOutUser();
  Either<Failure,User> getUser();

}