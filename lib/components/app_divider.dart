import 'package:flutter/material.dart';
import 'package:sc_03/theme/color_theme.dart';

class AppDivider extends StatelessWidget {
  const AppDivider();

  @override
  Widget build(BuildContext context) {
    return Divider(color: ColorTheme.blue_600, thickness: 2.0);
  }
}
