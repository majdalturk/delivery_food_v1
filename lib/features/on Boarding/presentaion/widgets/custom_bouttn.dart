import 'package:flutter/material.dart';

class Custom_Bouttn_View extends StatelessWidget {
  Custom_Bouttn_View(
      {super.key,
      this.color,
      this.radios,
      this.width,
      this.heigth,
      this.text,
      this.onTap,
      this.textStyle, required this.top, required this.left});
  final Color? color;
  final double? radios;
  final double? width;
  final double? heigth;
  final String? text;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final double top;
  final double left;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: heigth,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(radios!)),
        child: Padding(
          padding: EdgeInsets.only(top: top, left: left),
          child: Text(
            text!,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
