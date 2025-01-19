import 'package:firebase_login_app/core/services/login/strategies/login_strategy.dart';

class LoginService {
  final LoginStrategy strategy;

  LoginService(this.strategy);

  Future<void> performLogin({String? email, String? password}) async {
    await strategy.login(email: email, password: password);
  }
}
