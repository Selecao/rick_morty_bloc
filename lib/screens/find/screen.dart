import 'package:flutter/material.dart';

import 'package:sc_03/components/character_list_tile.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/screens/characters/widgets/characters_list.dart';
import 'package:sc_03/screens/find/widgets/find_empty.dart';
import 'package:sc_03/screens/find/widgets/find_screen_app_bar.dart';
import 'package:sc_03/theme/text_theme.dart';

class FindScreen extends StatelessWidget {
  FindScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: FindScreenAppBar(),

      /// TODO: if empty FindEmpty() else use characterTile, locationTile, episodeTile
      /// TODO: in ListView.builder
      body: CharactersList(charactersList),
    );
  }
}
