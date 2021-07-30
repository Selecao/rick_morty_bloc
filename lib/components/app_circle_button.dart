import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/theme/app_color.dart';

class AppCircleButton extends StatelessWidget {
  final String icon;
  final VoidCallback onPressed;
  final Color? color;
  const AppCircleButton(
      {required this.icon, required this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: CircleBorder(),
      ),
      child: SvgPicture.asset(
        icon,
        width: 14.0,
        color: color ?? Theme.of(context).accentColor,
      ),
      onPressed: onPressed,
    );
  }
}
