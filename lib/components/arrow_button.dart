import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/color_theme.dart';

class ArrowButton extends StatelessWidget {
  final VoidCallback onPressed;

  ArrowButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        AppIcons.arrowForwardIos,
        height: 8.0,
        color: ColorTheme.white,
      ),
      //color: ColorTheme.white,
      onPressed: onPressed,
    );
  }
}
