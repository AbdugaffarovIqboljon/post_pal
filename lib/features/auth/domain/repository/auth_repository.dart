import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  User get user;
  Future<bool> signUp(String email, String password);

  Future<bool> signIn(String email, String password);

  void signOut(String password);

  Future<bool> deleteAccount(String password);
}
