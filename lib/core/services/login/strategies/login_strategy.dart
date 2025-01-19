import 'package:firebase_auth/firebase_auth.dart';

abstract class LoginStrategy {
  Future<UserCredential?> login({String? email, String? password});
}
