import 'package:flutter/material.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class CharacterTile extends StatelessWidget {
  final Character character;

  CharacterTile(this.character);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 18),
          child: CircleAvatar(
            radius: 37,
            child: Image.asset(character.avatar),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              character.status,
              style: AppTextTheme.subtitle2.copyWith(
                  letterSpacing: 1.5,
                  height: 1.6,
                  color: character.status == 'ЖИВОЙ'
                      ? ColorTheme.green_200
                      : ColorTheme.red_100),
            ),
            Text(
              character.name,
              style: AppTextTheme.subtitle1.copyWith(
                letterSpacing: 0.5,
                height: 1.5,
              ),
            ),
            Text(
              '${character.race}, ${character.gender}',
              style: AppTextTheme.caption.copyWith(
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

///List tile have a restriction to the trailing widget at 48x48 so we use
/// custom widget instead of this
/*ListTile(
      isThreeLine: true,
      horizontalTitleGap: 18.0,
      leading: CircleAvatar(
        radius: 37,
        child: Image.asset(avatar),
      ),
      title: Text(
        status,
        style: AppTextTheme.subtitle_2.copyWith(color: ColorTheme.green_200),
      ),
      subtitle: Text.rich(
        TextSpan(
            text: name,
            children: [
              TextSpan(text: '\n$race, $gender', style: AppTextTheme.caption),
            ],
            style: AppTextTheme.subtitle_1),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
    );*/
