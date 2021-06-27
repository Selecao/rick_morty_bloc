import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/components/character_list_tile.dart';
import 'package:sc_03/data/network/models/datum.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/theme/color_theme.dart';

class LocationCharacters extends StatelessWidget {
  final List<Datum> charactersOnLocation;

  LocationCharacters(this.charactersOnLocation);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 12.0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => CharacterListTile(
        character: charactersOnLocation[index],
        suffix: SvgPicture.asset(
          AppIcons.arrowForwardIos,
          height: 8.0,
          color: ColorTheme.white,
        ),
        onTap: () {},
      ),
      itemCount: charactersOnLocation.length,
      itemExtent: 98.0,
    );
  }
}
