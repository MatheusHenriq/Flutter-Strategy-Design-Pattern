import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_login_app/features/login/repositories/login_repository_impl.dart';
import 'package:firebase_login_app/features/login/view/login_view.dart';
import 'package:firebase_login_app/features/login/view_model/login_view_model.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Login App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginView(
        viewModel: LoginViewModel(LoginRepositoryImpl()),
      ),
    );
  }
}
