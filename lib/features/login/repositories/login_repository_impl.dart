import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_login_app/features/login/repositories/login_repository.dart';

import '../../../core/services/login/strategies/login_strategy.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<UserCredential?> login(
      {String? email,
      String? password,
      required LoginStrategy loginStragegy}) async {
    return await loginStragegy.login(email: email, password: password);
  }
}
