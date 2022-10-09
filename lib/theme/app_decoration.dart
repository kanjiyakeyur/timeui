import 'package:flutter/material.dart';
import 'package:keyur_s_application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get outline1 => BoxDecoration();
  static BoxDecoration get outline => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            6.895525817007808e-17,
            -2.220446049250313e-16,
          ),
          end: Alignment(
            1.1176470946796535,
            1.106060568900142,
          ),
          colors: [
            ColorConstant.whiteA7001c,
            ColorConstant.whiteA70000,
          ],
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3.00,
    ),
  );
}
