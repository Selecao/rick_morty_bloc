import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sc_03/components/models/character.dart';
import 'package:sc_03/resources/variables.dart';

import 'package:sc_03/screens/characters/widgets/characters_count.dart';
import 'package:sc_03/screens/characters/widgets/characters_grid.dart';
import 'package:sc_03/screens/characters/widgets/characters_list.dart';
import 'package:sc_03/components/search_text_field.dart';

final List<Character> _charactersList = charactersList;

class CharactersScreen extends StatefulWidget {
  @override
  _CharactersScreenState createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  bool isGridView = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: SearchTextField(title: 'Найти персонажа'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CharactersCount(
            charactersCount: charactersList.length,
            onSelected: (value) {
              setState(() {
                isGridView = value;
              });
            },
          ),
        ),
      ),
      body: SafeArea(
        child: isGridView
            ? CharactersGrid(_charactersList)
            : CharactersList(_charactersList),
      ),
    );
  }
}
