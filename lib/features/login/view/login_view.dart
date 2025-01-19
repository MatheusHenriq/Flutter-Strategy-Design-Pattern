import 'package:firebase_login_app/core/services/login/strategies/apple_login_strategy.dart';
import 'package:firebase_login_app/core/services/login/strategies/credentials_login_strategy.dart';
import 'package:firebase_login_app/core/services/login/strategies/facebook_login_strategy.dart';
import 'package:firebase_login_app/core/services/login/strategies/google_login_strategy.dart';
import 'package:firebase_login_app/features/login/view_model/login_view_model.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final LoginViewModel viewModel;
  const LoginView({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 24,
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    viewModel.login(strategy: AppleLoginStrategy());
                  },
                  child: Text("Apple Login"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  viewModel.login(strategy: GoogleLoginStrategy());
                },
                child: Text("Google Login"),
              ),
              ElevatedButton(
                onPressed: () {
                  viewModel.login(strategy: CredentialsLoginStrategy());
                },
                child: Text("Credentials Login"),
              ),
              ElevatedButton(
                onPressed: () {
                  viewModel.login(strategy: FacebookLoginStrategy());
                },
                child: Text("Facebook Login"),
              ),
            ],
          ),
        );
      },
    );
  }
}
