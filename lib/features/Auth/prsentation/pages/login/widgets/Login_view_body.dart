import 'package:delivery_food_v1/core/utils/size_config.dart';
import 'package:delivery_food_v1/core/widgets/custom_button.dart';
import 'package:delivery_food_v1/core/widgets/space_widget.dart';
import 'package:delivery_food_v1/features/Auth/data/respotries/auth_repo_impl.dart';
import 'package:delivery_food_v1/features/Auth/domain/respotries/auth_repo.dart';
import 'package:delivery_food_v1/features/Auth/prsentation/pages/complet_information/complet_information_view.dart';
import 'package:delivery_food_v1/features/Auth/prsentation/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});

  AhtuRepoImpl authRepo = AhtuRepoImpl();

  void loginWithGoogle() async {
    try {
      await authRepo.LoginWithGoogle();
    } catch (e) {
      print('Error logging in with Google: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(value: 10),
        SizedBox(
          child: Image.asset('assets/images/3.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Fruit Market",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              fontWeight: FontWeight.bold,
              color: Color(0xff69a03a),
            ),
          ),
        ),
        Row(
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  ontap: () {
                    // print("object");
                    // loginWithGoogle();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home_Page(),
                        ));
                  },
                  text: "Log in with Google",
                  color: Color(0xff4267b2),
                  iconData: Icons.email,
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  ontap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CompletInformationview(),
                      ),
                    );
                  },
                  text: "Log in with Email",
                  color: Color(0xff4267b2),
                  iconData: Icons.email,
                ),
              ),
            ),
          ],
        ),
        TextButton(
            onPressed: () {

              Navigator.push(
              
                context,
                MaterialPageRoute(
                  builder: (context) => Home_Page(),
                ),
              );
            },
            child: Text("Log in as a guest"))
      ],
    );
  }
}
