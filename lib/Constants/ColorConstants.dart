import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ConstColors {
  static Color CircleColor = hexToColor("#EEEEEE"); //background: #1A8411;
  static Color ButtonColor = hexToColor("#387c87");
  static Color IconColor = hexToColor("#6B6D7D");
  static Color NavbarIconC = hexToColor("#C2C2C2");
  //
  // static Color BackBColor = hexToColor("#525252");
  static Color textfieldColor = hexToColor("#FCF7F8");
  static Color aiBGcolor1 = Color.fromARGB(255, 108, 173, 185);
  static Color aiBGcolor2 = Color.fromARGB(255, 31, 51, 59);
  static List<Color> btnColor = [
    hexToColor("#D8EEF9"),
    hexToColor("#F2D5DD"),
    hexToColor("#FEE7BC"),
   
  ];

 static List<Color> LwhiteColor = [
    hexToColor("#FFFFFF"),
    hexToColor("#FFFFFF"),
    hexToColor("#FFFFFF"),
  ];

  static List<Color> NavbarSpec = [
    hexToColor("#24CCF1"),
    hexToColor("#214DEA"),
  ];

  static Color Lbutton =
      Color.fromARGB(0xffdaedf6, 0xffe9dce5, 0xffFf2d3db, 0xfffde4c2);
  static Color starColor = hexToColor("#FE543D");
  // static Color GuesttxtColor = hexToColor("#615D5D");

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
