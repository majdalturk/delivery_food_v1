import 'package:delivery_food_v1/core/utils/size_config.dart';
import 'package:delivery_food_v1/core/widgets/constants.dart';
import 'package:delivery_food_v1/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class CustomGenaralButton extends StatelessWidget {
  const CustomGenaralButton({super.key, this.text, this.onTap});
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: SizeConfig.screenWidth,
        height: 60,
        decoration: BoxDecoration(
            color: KMainColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(fontSize: 14, color: Color(0xffffffff)),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon(
      {super.key, required this.text, this.iconData, this.ontap, this.color});
  final String text;
  final IconData? iconData;
  final VoidCallback? ontap;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xff707070)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            HorizntalSpace(
              value: 2,
            ),
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: Color(0xff000000)),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
