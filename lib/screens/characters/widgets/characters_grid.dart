import 'package:flutter/material.dart';
import 'package:sc_03/data/network/models/person.dart';
import 'package:sc_03/screens/characters/widgets/character_grid_item.dart';

class CharactersGrid extends StatelessWidget {
  final List<Person> charactersList;

  const CharactersGrid(this.charactersList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: GridView.builder(
        itemCount: charactersList.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 0),
        physics: AlwaysScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12.0,
        ),
        itemBuilder: (context, index) =>
            CharacterGridItem(charactersList[index]),
      ),
    );
  }
}
