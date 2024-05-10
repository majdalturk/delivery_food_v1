import 'package:delivery_food_v1/features/Auth/prsentation/pages/home/home_page_body.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:delivery_food_v1/features/splash/presentaion/splash_view.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: SplashView()
        // home: Home_Page_body(),
        );
  }
}
