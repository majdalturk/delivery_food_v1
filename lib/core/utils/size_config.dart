import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHigth;
  static double? defaultSize;
  static Orientation? orientation;
  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHigth = MediaQuery.of(context).size.height;
    // orientation = MediaQuery.of(context).size.orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHigth! * .024
        : screenWidth! * .024;
  }
}
