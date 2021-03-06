import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/components/empty_finder_widget.dart';
import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/resources/constants.dart';

import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/characters/characters_filter.dart';
import 'package:sc_03/screens/characters/widgets/characters_app_bar.dart';

import 'package:sc_03/screens/characters/widgets/characters_grid.dart';
import 'package:sc_03/screens/characters/widgets/characters_list.dart';

class CharactersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CharactersBloc, CharactersState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeMap(
          loading: (_) => Center(
            child: AppCircularProgressIndicator(),
          ),
          data: (_data) => Scaffold(
            appBar: CharactersAppBar(
              charactersCount: _data.charactersList.length,
            ),
            body: _getBody(
              _data.charactersList,
              _data.isGrid,
              context.read<CharactersFilter>().isFilterEnable,
            ),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }

  Widget _getBody(List<Character> list, bool isGrid, bool isFilterEnable) {
    if (list.isEmpty) {
      return EmptyFinderWidget(
          isFilterEnable ? Screen.CharacterFilter : Screen.Character);
    } else if (isGrid) {
      return CharactersGrid(list);
    } else {
      return CharactersList(list);
    }
  }
}
