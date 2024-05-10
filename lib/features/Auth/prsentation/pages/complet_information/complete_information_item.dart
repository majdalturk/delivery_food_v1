import 'package:delivery_food_v1/core/widgets/custom_text_filde.dart';
import 'package:delivery_food_v1/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem(
      {super.key, required this.text, this.inputType, required this.maxLines});
  final String text;
  final TextInputType? inputType;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: Color(0Xff0c0b0b),
              fontWeight: FontWeight.w600,
              height: 1.5625,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToLastDescent: false),
            textAlign: TextAlign.left,
          ),
        ),
        VerticalSpace(
          value: 2,
        ),
  
      ],
    );
  }
}
