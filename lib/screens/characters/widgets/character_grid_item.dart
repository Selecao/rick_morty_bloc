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
          //backgroundImage: AssetImage(character.avatar),
          backgroundImage: NetworkImage(character.imageName ?? 'none'),
          backgroundColor: ColorTheme.blueGrey_600,
        ),
        const SizedBox(height: 18.0),
        Text(
          character.status == 1 ? "ЖИВОЙ" : "МЁРТВЫЙ",
          style: AppTextTheme.subtitle2.copyWith(
              letterSpacing: 1.5,
              height: 1.6,
              color: character.status == 1
                  ? ColorTheme.green_200
                  : ColorTheme.red_100),
        ),
        Text(
          character.fullName ?? "None",
          style: AppTextTheme.bodyText1.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
            height: 1.42,
          ),
        ),
        Text(
          '${character.race}, ${character.gender == 0 ? "Мужской" : "Женский"}',
          style: AppTextTheme.caption.copyWith(
            height: 1.33,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
