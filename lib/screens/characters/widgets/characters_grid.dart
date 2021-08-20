import 'package:flutter/material.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/screens/characters/widgets/character_grid_item.dart';
import 'package:sc_03/screens/profile/screen.dart';

class CharactersGrid extends StatelessWidget {
  final List<Character> charactersList;

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
        itemBuilder: (context, index) => CharacterGridItem(
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
      ),
    );
  }
}
