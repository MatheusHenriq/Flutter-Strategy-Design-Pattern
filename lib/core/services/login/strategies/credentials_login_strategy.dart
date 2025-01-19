import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login_app/core/services/login/strategies/login_strategy.dart';

class CredentialsLoginStrategy implements LoginStrategy {
  @override
  Future<UserCredential?> login({String? email, String? password}) async {
    if (email != null && password != null) {
      try {
        return await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          log('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          log('Wrong password provided for that user.');
        }
        throw FirebaseAuthException(code: e.code, message: e.message);
      }
    }
    return null;
  }
}
