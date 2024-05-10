import 'package:delivery_food_v1/features/on%20Boarding/presentaion/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, @required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
  
      controller: pageController,
      children: [
        PageViewItem(
          image: "assets/images/girl.png",
          title: "E Shopping",
          Subtitle: "Explore top organic fruits & grab them",
        ),
        PageViewItem(
          image: "assets/images/2.png",
          title: "Delivary on the Way",
          Subtitle: "Get your orderby speed delivery ",
        ),
        PageViewItem(
          image: "assets/images/1.png",
          title: "Delivery Arrived",
          Subtitle: "Order is arrived at your Place",
        )
      ],
    );
  }
}
