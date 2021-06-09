import 'package:flutter/material.dart';
import 'package:sc_03/theme/color_theme.dart';

class LocationImage extends StatelessWidget {
  final String image;

  LocationImage(this.image);

  @override
  Widget build(BuildContext context) {
    const imageHeight = 277.0;
    const borderRadius = 26.0;

    return Stack(
      children: [
        Container(
          height: imageHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
        Positioned(
          bottom: .0,
          child: Container(
            height: borderRadius,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ColorTheme.blue_900,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(borderRadius),
                topRight: Radius.circular(borderRadius),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
