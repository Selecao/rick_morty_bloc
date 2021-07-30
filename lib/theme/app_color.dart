import 'package:flutter/cupertino.dart';

class AppColor {
  static const Color black = Color(0xFF000000);
  static const Color blue_900 =
      Color(0xFF0B1E2D); // primaryColor, scaffoldBackgroundColor
  static const Color blue_600 = Color(0xFF152A3A); // canvasColor
  static const Color blueGrey_600 = Color(0xFF5B6975); // primaryColorDark
  static const Color blueGrey_500 = Color(0xFF6E798C); // primaryColorLight
  static const Color cyan_300 = Color(0xFF22A2BD); // highlightColor
  static const Color green_200 = Color(0xFF43D049); // hintColor
  static const Color yellow_200 = Color(0xFFD0C243); // indicatorColor
  static const Color red_100 = Color(0xFFEB5757); // errorColor
  static const Color white = Color(0xFFFFFFFF); // accentColor, appBarTheme--
  static const Color transparent = Color(0x0);

  static const Color white_900 = Color(0xFFFCFCFC);
  static const Color white_800 = Color(0xFFF2F2F2);
  static const Color blue_800 = Color(0xFF0B1E2D);
  static const Color grey_700 = Color(0xFF4F4F4F);
  static const Color grey_500 = Color(0xFF828282);
  static const Color grey_300 = Color(0xFFBDBDBD);
  static const Color cyan_900 = Color(0xFF2FD8FC);

  static final appBarGradient = LinearGradient(
    colors: [
      black.withOpacity(0.85),
      blue_900.withOpacity(0.55),
      blue_900.withOpacity(0.55),
    ],
    stops: [0, 0.37, 1],
    begin: FractionalOffset.topCenter,
    end: FractionalOffset.bottomCenter,
  );
}
