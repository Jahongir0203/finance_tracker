import 'package:finance_tracker/exports.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthDataSource {
  Future<UserCredential> registerUser({
    required String email,
    required String name,
    required String password,
  });

  Future<UserCredential> logIn({
    required String email,
    required String password,
  });

  Future<void> updatePassword({required String password});

  Future<void> logOut();
}

@LazySingleton(as: AuthDataSource)
class AuthDataSourceImpl extends AuthDataSource {
  final FirebaseAuth _firebaseInstance = FirebaseAuth.instance;

  @override
  Future<UserCredential> registerUser({
    required String email,
    required String name,
    required String password,
  }) async {
    final request = await _firebaseInstance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    _firebaseInstance.currentUser?.updateDisplayName(name);

    return request;
  }

  @override
  Future<UserCredential> logIn({
    required String email,
    required String password,
  }) async {
    final request = await _firebaseInstance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return request;
  }

  @override
  Future<void> logOut() async {
    await _firebaseInstance.signOut();
  }

  @override
  Future<void> updatePassword({required String password}) async {
    await _firebaseInstance.currentUser?.updatePassword(password);
  }
}
