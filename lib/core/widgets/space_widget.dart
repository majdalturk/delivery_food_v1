import 'package:delivery_food_v1/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class HorizntalSpace extends StatelessWidget {
  const HorizntalSpace({super.key, this.value});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}
class VerticalSpace extends StatelessWidget {
  const VerticalSpace( {super.key, this.value});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}