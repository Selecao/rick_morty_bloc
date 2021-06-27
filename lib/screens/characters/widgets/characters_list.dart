import 'package:flutter/material.dart';
import 'package:sc_03/components/character_list_tile.dart';

import 'package:sc_03/data/network/models/person.dart';

class CharactersList extends StatelessWidget {
  final List<Person> charactersList;

  CharactersList(this.charactersList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => CharacterListTile(
        character: charactersList[index],
        onTap: () {},
      ),
      itemCount: charactersList.length,
      itemExtent: 98.0,
      shrinkWrap: true,
      physics: AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.only(bottom: 24),
    );
  }
}
