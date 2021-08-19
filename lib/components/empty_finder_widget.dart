import 'package:flutter/material.dart';
import 'package:sc_03/resources/images.dart';
import 'package:sc_03/resources/variables.dart';

class EmptyFinderWidget extends StatelessWidget {
  final Screen screenName;
  EmptyFinderWidget(this.screenName);

  @override
  Widget build(BuildContext context) {
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
          style: Theme.of(context).textTheme.overline?.copyWith(
                letterSpacing: 0.15,
                height: 1.5,
              ),
        ),
      ],
    );
  }

  String getText(Screen screenName) {
    switch (screenName) {
      case Screen.Character:
        return "Персонаж с таким именем не найден";
      case Screen.Location:
        return "Локации с таким названием не найдено";
      case Screen.Episode:
        return "Эпизода с таким названием нет";
      default:
        return "По данным фильтра ничего не найдено";
    }
  }

  String getImage(Screen screenName) {
    switch (screenName) {
      case Screen.Character:
        return Images.characterNotFound;
      case Screen.Location:
        return Images.locationNotFound;
      case Screen.Episode:
        return Images.episodeNotFound;
      default:
        return Images.filterNotFound;
    }
  }
}
