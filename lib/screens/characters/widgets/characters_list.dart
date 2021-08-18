import 'package:flutter/material.dart';
import 'package:sc_03/components/character_list_tile.dart';
import 'package:sc_03/components/find_empty.dart';

import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/screens/profile/screen.dart';

class CharactersList extends StatelessWidget {
  final List<Character> charactersList;

  CharactersList(this.charactersList);

  @override
  Widget build(BuildContext context) {
    return charactersList.isEmpty
        ? FindEmpty(Screen.CharacterFilter)
        : ListView.builder(
            itemBuilder: (context, index) => CharacterListTile(
              character: charactersList[index],
              onTap: () {
                if (charactersList[index].id != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return ProfileScreen(charactersList[index].id!);
                    }),
                  );
                }
              },
            ),
            itemCount: charactersList.length,
            itemExtent: 98.0,
            shrinkWrap: true,
            physics: AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.only(bottom: 24),
          );
  }
}
