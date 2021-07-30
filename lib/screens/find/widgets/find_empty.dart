import 'package:flutter/material.dart';
import 'package:sc_03/resources/images.dart';
import 'package:sc_03/theme/app_text_theme.dart';

class FindEmpty extends StatelessWidget {
  const FindEmpty();

  @override
  Widget build(BuildContext context) {
    const String screenName = 'episode';

    return Column(
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 60.0),
        ),
        Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width * 0.8,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(getImage(screenName)),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 28.0),
        ),
        Text(
          getText(screenName),
          style: AppTextTheme.body1.copyWith(
            letterSpacing: 0.15,
            height: 1.5,
          ),
        ),
      ],
    );
  }

  String getText(String screenName) {
    switch (screenName) {
      case "character":
        return "Персонаж с таким именем не найден";
      case "location":
        return "Локации с таким названием не найдено";
      default:
        return "Эпизода с таким названием нет";
    }
  }

  String getImage(String screenName) {
    switch (screenName) {
      case "character":
        return Images.characterNotFound;
      case "location":
        return Images.locationNotFound;
      default:
        return Images.episodeNotFound;
    }
  }
}
