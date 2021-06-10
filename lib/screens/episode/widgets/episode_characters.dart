import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sc_03/components/character_list_tile.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/resources/icons.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/theme/color_theme.dart';

class EpisodeCharacters extends StatelessWidget {
  final String chapterTitle;

  EpisodeCharacters(this.chapterTitle);

  @override
  Widget build(BuildContext context) {
    List<Character> characters = getCharactersOnEpisode(chapterTitle);

    return ListView.builder(
      padding: const EdgeInsets.only(top: 12.0),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => CharacterListTile(
        character: characters[index],
        suffix: SvgPicture.asset(
          AppIcons.arrowForwardIos,
          height: 8.0,
          color: ColorTheme.white,
        ),
        onTap: () {},
      ),
      itemCount: characters.length,
      itemExtent: 98.0,
    );
  }
}
