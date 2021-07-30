import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sc_03/components/character_list_tile.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/screens/profile/screen.dart';
import 'package:sc_03/theme/app_color.dart';

class EpisodeCharacters extends StatelessWidget {
  final List<Character> characters;

  EpisodeCharacters(this.characters);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 12.0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => CharacterListTile(
        character: characters[index],
        suffix: SvgPicture.asset(
          AppIcons.arrowForwardIos,
          height: 8.0,
          color: Theme.of(context).accentColor,
        ),
        onTap: () {
          if (characters[index].id != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return ProfileScreen(characters[index].id!);
              }),
            );
          }
        },
      ),
      itemCount: characters.length,
      itemExtent: 98.0,
    );
  }
}
