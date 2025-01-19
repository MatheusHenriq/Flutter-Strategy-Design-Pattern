import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login_app/core/services/login/strategies/login_strategy.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class FacebookLoginStrategy implements LoginStrategy {
  @override
  Future<UserCredential?> login({String? email, String? password}) async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(
            loginResult.accessToken?.tokenString ?? "");

    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}
