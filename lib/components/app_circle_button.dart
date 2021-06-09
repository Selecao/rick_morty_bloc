import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/theme/color_theme.dart';

class AppCircleButton extends StatelessWidget {
  const AppCircleButton({required this.icon, required this.onPressed});
  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: ColorTheme.blue_600,
        shape: CircleBorder(),
      ),
      child: SvgPicture.asset(
        icon,
        width: 14.0,
        color: ColorTheme.white,
      ),
      onPressed: onPressed,
    );
  }
}
