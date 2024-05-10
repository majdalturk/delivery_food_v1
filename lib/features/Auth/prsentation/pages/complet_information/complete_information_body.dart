import 'package:delivery_food_v1/core/widgets/custom_button.dart';
import 'package:delivery_food_v1/core/widgets/space_widget.dart';
import 'package:delivery_food_v1/features/Auth/prsentation/pages/complet_information/complete_information_item.dart';
import 'package:flutter/material.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(
          value: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CompleteInfoItem(
            text: "Enter your name",
            maxLines: 1,
          ),
        ),
        VerticalSpace(
          value: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CompleteInfoItem(
            text: "Enter your phone number",
            maxLines: 1,
          ),
        ),
        VerticalSpace(
          value: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CompleteInfoItem(
            text: "Enter your address",
            maxLines: 5,
          ),
        ),
        VerticalSpace(
          value: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomGenaralButton(
            text: 'Login',
          ),
        )
      ],
    );
  }
}
