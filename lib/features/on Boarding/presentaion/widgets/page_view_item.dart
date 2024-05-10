import 'package:delivery_food_v1/core/utils/size_config.dart';
import 'package:delivery_food_v1/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.title, this.Subtitle, this.image});
  final String? title;
  final String? Subtitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(value: 18),
        Container(
          width: 350,
          height: 300,
          child: Image.asset(
            image!,
            fit: BoxFit.cover,
          ),
        ),
        VerticalSpace(value: 2.5),
        Text(
          title!,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20,
              color: Color(0Xff2f2e41),
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
        VerticalSpace(value: 1.2),
        Text(
          Subtitle!,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 15,
              color: Color(0xff78787c),
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
