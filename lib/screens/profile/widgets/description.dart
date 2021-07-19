import 'package:flutter/material.dart';
import 'package:sc_03/components/status_text.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/screens/profile/widgets/column_text.dart';
import 'package:sc_03/screens/profile/widgets/location_tile.dart';
import 'package:sc_03/theme/text_theme.dart';

class Description extends StatelessWidget {
  final double avatarSize;
  final Character character;

  const Description({
    required this.avatarSize,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: avatarSize + 24.0),
            Text(
              character.fullName ?? "N/A",
              style: AppTextTheme.headline4.copyWith(
                height: 1.17,
                letterSpacing: 0.25,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4.0),
            StatusText(statusIndex: character.status ?? 2),
            const SizedBox(height: 36.0),
            Text(
              character.about ?? "Not available.",
              style: AppTextTheme.bodyText2.copyWith(
                height: 1.5,
                letterSpacing: 0.5,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24.0),
            Row(
              children: [
                ColumnText('Пол', getGenderText(character.gender ?? 2)),
                Spacer(),
                ColumnText('Раса', character.race ?? "Неизвестно"),
                Spacer(),
              ],
            ),
            const SizedBox(height: 20.0),
            LocationTile(
              'Место рождения',
              character.placeOfBirth?.name ?? "Неизвестно",
              locationId: character.placeOfBirthId,
            ),
            const SizedBox(height: 24.0),
            LocationTile(
              'Местоположение',
              character.location?.name ?? 'Неизвестно',
              locationId: character.locationId,
            ),
          ],
        ),
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
