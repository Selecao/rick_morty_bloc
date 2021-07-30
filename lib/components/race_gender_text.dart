import 'package:flutter/material.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/theme/app_text_theme.dart';

class RaceGenderText extends StatelessWidget {
  const RaceGenderText({
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 200.0),
      child: Text(
        '${character.race}, ${getGenderText(character.gender ?? 2)}',
        style: AppTextTheme.caption.copyWith(
          height: 1.33,
          letterSpacing: 0.5,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

String getGenderText(int genderIndex) {
  switch (genderIndex) {
    case 0:
      return "Мужской";
    case 1:
      return "Женский";
    default:
      return "Неизвестно";
  }
}
