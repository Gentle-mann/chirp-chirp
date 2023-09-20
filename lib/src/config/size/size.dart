import 'package:flutter/material.dart';

class SizeComp {
  static late MediaQueryData _mediaQueryData;
  static late double height;
  static late double width;
  static late double fSize;
  static late Orientation orientation;

  static void initializeSizes(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    height = _mediaQueryData.size.height;
    width = _mediaQueryData.size.width;
    orientation = _mediaQueryData.orientation;
    fSize =
        orientation == Orientation.landscape ? height * 0.0236 : width * 0.0236;
  }
}
