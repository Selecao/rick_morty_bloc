import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';

import 'package:sc_03/screens/character_filter/widgets/character_filter_body.dart';
import 'package:sc_03/components/filter_app_bar.dart';
import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';

class CharacterFilterScreen extends StatelessWidget {
  const CharacterFilterScreen();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersBloc, CharactersState>(
      builder: (context, state) {
        return state.maybeMap(
          loading: (_) => Center(
            child: AppCircularProgressIndicator(),
          ),
          data: (_data) => Scaffold(
            appBar: FilterAppBar(
              "Фильтры",
              _data.status.length != 3 || _data.gender.length != 3,
            ),
            body: CharacterFilterBody(
              _data.status,
              _data.gender,
              _data.isSortAscending,
            ),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
