import 'package:flutter/material.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class CharacterGridItem extends StatelessWidget {
  final Character character;
  CharacterGridItem(this.character);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(character.avatar),
          backgroundColor: ColorTheme.blueGrey_600,
        ),
        const SizedBox(height: 18.0),
        Text(
          character.status,
          style: AppTextTheme.subtitle2.copyWith(
              letterSpacing: 1.5,
              color: character.status == 'ЖИВОЙ'
                  ? ColorTheme.green_200
                  : ColorTheme.red_100),
        ),
        Text(
          character.name,
          style: AppTextTheme.bodyText1.copyWith(
            fontWeight: FontWeight.w500,
            height: 1.42,
          ),
        ),
        Text(
          '${character.race}, ${character.gender}',
          style: AppTextTheme.caption.copyWith(
            height: 1.3,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
