import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgColor = const Color(0xFFeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color tabColor = const Color(0xFFF4F6FD);
  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: textColor);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);
  //not dynamic headLineStyle3
  static TextStyle headLineStyle3 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle4 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
