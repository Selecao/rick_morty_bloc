import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'package:sc_03/screens/character_filter/widgets/character_filter_body.dart';
import 'package:sc_03/components/filter_app_bar.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/characters/characters_filter.dart';

class CharacterFilterScreen extends StatelessWidget {
  const CharacterFilterScreen();

  @override
  Widget build(BuildContext context) {
    final _filterData = context.watch<CharactersFilter>();
    return Scaffold(
      appBar: FilterAppBar(
        title: "Фильтры",
        isFilterEnable: _filterData.isFilterEnable,
        onTap: () {
          _filterData.reset();

          context.read<CharactersBloc>()
            ..add(
              CharactersEvent.selectedFilters(filter: _filterData),
            );
        },
      ),
      body: CharacterFilterBody(),
    );
  }
}
