import 'package:flutter/material.dart';
import 'package:sc_03/theme/color_theme.dart';

class AppCircularProgressIndicator extends StatelessWidget {
  final double? value;
  const AppCircularProgressIndicator({
    Key? key,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(ColorTheme.green_200),
      backgroundColor: ColorTheme.blue_900,
      value: value,
    );
  }
}
