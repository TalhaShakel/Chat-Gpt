import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ColorConstants {
  static Color CircleColor = hexToColor("#EEEEEE"); //background: #1A8411;
  static Color ButtonColor = hexToColor("#387c87");
  // static Color BackBColor = hexToColor("#525252");
  static Color textfieldColor = hexToColor("#FCF7F8");
  static Color aiBGcolor1 = Color.fromARGB(255, 108, 173, 185);
  static Color aiBGcolor2 = Color.fromARGB(255, 31, 51, 59);
  static Color starColor = hexToColor("#FE543D");
  // static Color GuesttxtColor = hexToColor("#615D5D");

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
