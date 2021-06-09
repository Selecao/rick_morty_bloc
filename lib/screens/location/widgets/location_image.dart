import 'package:flutter/material.dart';
import 'package:sc_03/theme/color_theme.dart';

class LocationImage extends StatelessWidget {
  final String image;

  LocationImage(this.image);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 298.0,
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
            height: 26.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ColorTheme.blue_900,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(26.0),
                topRight: Radius.circular(26.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
