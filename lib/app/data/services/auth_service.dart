import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/app/data/repositories/firebase_repository.dart';

export 'package:firebase_auth/firebase_auth.dart';

class AuthService extends FirebaseRepository {
  Future<User?> register(
      {required String email, required String password}) async {
    return (await auth.createUserWithEmailAndPassword(
            email: email, password: password))
        .user;
  }

  Future<User?> login({required String email, required String password}) async {
    return (await auth.signInWithEmailAndPassword(
            email: email, password: password))
        .user;
  }

  Future<void> logout() => auth.signOut();

  Stream<User?> authChanges() => auth.authStateChanges();
}
