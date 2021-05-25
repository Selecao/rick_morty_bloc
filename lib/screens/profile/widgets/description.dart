import 'package:flutter/material.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/screens/profile/widgets/column_text.dart';
import 'package:sc_03/screens/profile/widgets/location_tile.dart';
import 'package:sc_03/theme/color_theme.dart';
import 'package:sc_03/theme/text_theme.dart';

class Description extends StatelessWidget {
  const Description({
    required this.avatarSize,
    required this.character,
  });

  final double avatarSize;
  final Character character;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: avatarSize + 24.0),
            Text(
              character.name,
              style: AppTextTheme.headline4.copyWith(
                height: 1.17,
                letterSpacing: 0.25,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              character.status,
              style: AppTextTheme.subtitle2.copyWith(
                  letterSpacing: 1.5,
                  color: character.status == 'ЖИВОЙ'
                      ? ColorTheme.green_200
                      : ColorTheme.red_100),
            ),
            const SizedBox(height: 36.0),
            Text(
              character.biography,
              style: AppTextTheme.bodyText2.copyWith(
                height: 1.5,
                letterSpacing: 0.5,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 24.0),
            Row(
              children: [
                ColumnText('Пол', character.gender),
                Spacer(),
                ColumnText('Раса', character.race),
                Spacer(),
              ],
            ),
            const SizedBox(height: 20.0),
            LocationTile('Место рождения', character.birthplace),
            const SizedBox(height: 24.0),
            LocationTile('Местоположение', character.location),
          ],
        ),
      ),
    );
  }
}
