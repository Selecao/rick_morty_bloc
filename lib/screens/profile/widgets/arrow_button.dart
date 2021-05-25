import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/color_theme.dart';

class ArrowButton extends StatelessWidget {
  ArrowButton({required this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        AppIcons.arrowForwardIos,
        width: 8,
        color: ColorTheme.white,
      ),
      //color: ColorTheme.white,
      onPressed: onPressed(),
    );
  }
}
