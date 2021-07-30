import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sc_03/components/character_list_tile.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/screens/profile/screen.dart';
import 'package:sc_03/theme/app_color.dart';

class LocationCharacters extends StatelessWidget {
  final List<Character> charactersOnLocation;

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
          color: AppColor.white,
        ),
        onTap: () {
          if (charactersOnLocation[index].id != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ProfileScreen(charactersOnLocation[index].id!);
              }),
            );
          }
        },
      ),
      itemCount: charactersOnLocation.length,
      itemExtent: 98.0,
    );
  }
}
