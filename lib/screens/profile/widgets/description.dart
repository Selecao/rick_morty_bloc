import 'package:flutter/material.dart';
import 'package:sc_03/components/status_text.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/screens/location/screen.dart';
import 'package:sc_03/screens/profile/widgets/column_text.dart';
import 'package:sc_03/components/two_line_text_tile.dart';

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
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: avatarSize + 24.0),
            Text(
              character.fullName ?? "N/A",
              style: Theme.of(context).textTheme.headline4?.copyWith(
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
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                    height: 1.5,
                    letterSpacing: 0.5,
                  ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 10,
                  child:
                      ColumnText('Пол', getGenderText(character.gender ?? 2)),
                ),
                Spacer(),
                Expanded(
                  flex: 10,
                  child: ColumnText('Раса', character.race ?? "Неизвестно"),
                ),
                Spacer(),
              ],
            ),
            const SizedBox(height: 20.0),
            TwoLineTextTile(
                'Место рождения', character.placeOfBirth?.name ?? "Неизвестно",
                onTap: () {
              if (character.placeOfBirthId != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return LocationScreen(character.placeOfBirthId!);
                  }),
                );
              }
            }),
            const SizedBox(height: 24.0),
            TwoLineTextTile(
              'Местоположение',
              character.location?.name ?? 'Неизвестно',
              onTap: () {
                if (character.locationId != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return LocationScreen(character.locationId!);
                    }),
                  );
                }
              },
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
