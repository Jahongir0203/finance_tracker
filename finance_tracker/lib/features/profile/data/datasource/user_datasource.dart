import 'package:finance_tracker/exports.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class UserDataSource {
  Future<void> updateUser({required String name});

  Future<void> updatePassword({
    required String email,
    required String oldPassword,
    required String newPassword,
  });

  Future<void> logOutUser();

  User getUser();
}

@LazySingleton(as: UserDataSource)
class UserDataSourceImpl implements UserDataSource {
  final FirebaseAuth _firebaseAuth =FirebaseAuth.instance;

  @override
  Future<void> logOutUser() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<void> updateUser({required String name}) async {
    await _firebaseAuth.currentUser!.updateProfile(displayName: name);
  }

  @override
  Future<void> updatePassword({
    required String email,
    required String oldPassword,
    required String newPassword,
  }) async {
    final user = _firebaseAuth.currentUser;

    if (user != null) {
      final credential = EmailAuthProvider.credential(
        email: email,
        password: oldPassword,
      );
      await user.reauthenticateWithCredential(credential);
      await user.updatePassword(newPassword);
    }
  }

  @override
  User getUser() {
    return _firebaseAuth.currentUser!;
  }
}
