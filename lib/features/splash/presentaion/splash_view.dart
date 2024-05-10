
import 'package:delivery_food_v1/core/widgets/constants.dart';
import 'package:delivery_food_v1/features/splash/presentaion/widgets/splash_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KMainColor,
      body: SplashBody(),
    );
  }
}
