import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color gray90066 = fromHex('#661c232d');

  static Color gray900 = fromHex('#1c232d');

  static Color gray90067 = fromHex('#661c222d');

  static Color whiteA7001c = fromHex('#1cffffff');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color whiteA70066 = fromHex('#66ffffff');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color pinkA200 = fromHex('#ff5071');

  static Color yellow800 = fromHex('#fcad20');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color lightGreen700 = fromHex('#64bc26');

  static Color lightGreen701 = fromHex('#65bc27');

  static Color deepOrangeA700 = fromHex('#ea1601');

  static Color gray20066 = fromHex('#66eeeded');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
