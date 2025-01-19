import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login_app/features/login/model/login_model.dart';
import 'package:firebase_login_app/features/login/repositories/login_repository.dart';
import 'package:flutter/foundation.dart';
import '../../../core/services/login/strategies/login_strategy.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginRepository _repository;
  LoginViewModel(this._repository);

  LoginModel loginModel = LoginModel();
  Future<UserCredential?> login({required LoginStrategy strategy}) async {
    loginModel.loginStrategy = strategy;

    return await _repository.login(loginStragegy: loginModel.loginStrategy!);
  }
}
