import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/color_theme.dart';

class EpisodeImage extends StatelessWidget {
  final String? image;
  final VoidCallback onPressed;

  EpisodeImage({required this.image, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    const imageHeight = 298.0;
    const borderRadius = 26.0;

    return Stack(
      children: [
        Container(
          height: imageHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image!),
              fit: BoxFit.fitHeight,
            ),
            color: ColorTheme.blue_600,
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: Container(
            height: 82.0,
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
        Positioned(
          bottom: 35.0,
          left: .0,
          right: .0,
          child: TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(33.0),
              backgroundColor: ColorTheme.cyan_300,
              shape: CircleBorder(),
            ),
            child: SvgPicture.asset(
              AppIcons.arrowPlay,
              width: 30.0,
              color: ColorTheme.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
