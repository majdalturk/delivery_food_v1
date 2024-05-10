import 'package:delivery_food_v1/features/Auth/prsentation/pages/login/widgets/Login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: LoginViewBody(),
    );
  }
}
