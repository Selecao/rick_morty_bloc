import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class CharacterListTile extends StatelessWidget {
  final Character character;
  final VoidCallback onTap;
  final Widget? suffix;

  CharacterListTile({
    required this.character,
    required this.onTap,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          const SizedBox(width: 16.0),
          Container(
            alignment: Alignment.center,
            width: 74.0,
            height: 74.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(character.avatar),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(40.0),
              color: ColorTheme.blue_600,
            ),
          ),
          const SizedBox(width: 18.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                character.status.toUpperCase(),
                style: AppTextTheme.subtitle2.copyWith(
                  height: 1.6,
                  letterSpacing: 1.5,
                  color: character.status.toUpperCase() == 'ЖИВОЙ'
                      ? ColorTheme.green_200
                      : ColorTheme.red_100,
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 200.0),
                child: Text(
                  character.name,
                  overflow: TextOverflow.fade,
                  softWrap: false,
                  style: AppTextTheme.subtitle1.copyWith(
                    height: 1.5,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              Text(
                '${character.race}, ${character.gender}',
                style: AppTextTheme.caption.copyWith(
                  height: 1.33,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
          Spacer(),
          ...[suffix ?? Container()],
          const SizedBox(width: 26.0),
        ],
      ),
      onTap: onTap,
    );
  }
}
