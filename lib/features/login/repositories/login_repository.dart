import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/services/login/strategies/login_strategy.dart';

abstract class LoginRepository {
  Future<UserCredential?> login(
      {String? email, String? password, required LoginStrategy loginStragegy});
}
