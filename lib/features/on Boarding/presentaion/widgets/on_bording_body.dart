import 'package:delivery_food_v1/core/utils/size_config.dart';
import 'package:delivery_food_v1/core/widgets/constants.dart';
import 'package:delivery_food_v1/core/widgets/custom_button.dart';
import 'package:delivery_food_v1/features/Auth/prsentation/pages/login/widgets/Login_view_body.dart';
import 'package:delivery_food_v1/features/Auth/prsentation/pages/login/widgets/login_view.dart';
import 'package:delivery_food_v1/features/on%20Boarding/presentaion/widgets/custom_indicator.dart';
import 'package:delivery_food_v1/features/on%20Boarding/presentaion/widgets/custom_page_view.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnbordingBody extends StatefulWidget {
  const OnbordingBody({super.key});

  @override
  State<OnbordingBody> createState() => _OnbordingBodyState();
}

class _OnbordingBodyState extends State<OnbordingBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 24,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: Text(
              "Skip",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: Color(0xff898989),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: CustomGenaralButton(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginView()));
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? "Get started" : "Next")
                  : "Next",
            )),
      ],
    );
  }
}
