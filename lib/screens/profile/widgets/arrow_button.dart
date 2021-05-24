import 'package:flutter/material.dart';
import 'package:sc_03/theme/color_theme.dart';

class ArrowButton extends StatelessWidget {
  ArrowButton({@required this.onPressed});
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_forward_ios_sharp,
        size: 16.0,
      ),
      color: ColorTheme.white,
      onPressed: onPressed,
    );
  }
}
