import 'package:flutter/material.dart';
import 'package:sc_03/theme/color_theme.dart';

class AppDivider extends StatelessWidget {
  final double indent;
  final double endIndent;
  const AppDivider({this.indent = .0, this.endIndent = .0});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ColorTheme.blue_600,
      thickness: 2.0,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
