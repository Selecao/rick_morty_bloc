import 'package:flutter/cupertino.dart';

class ColorTheme {
  static const Color black = Color(0xFF000000);
  static const Color blue_900 = Color(0xFF0B1E2D);
  static const Color blue_600 = Color(0xFF152A3A);
  static const Color blueGrey_600 = Color(0xFF5B6975);
  static const Color blueGrey_500 = Color(0xFF6E798C);
  static const Color cyan_300 = Color(0xFF22A2BD);
  static const Color green_200 = Color(0xFF43D049);
  static const Color red_100 = Color(0xFFEB5757);
  static const Color white = Color(0xFFFFFFFF);

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
