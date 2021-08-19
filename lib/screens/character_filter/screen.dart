import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          data: (_data) => Scaffold(
            appBar: FilterAppBar("Фильтры"),
            body: CharacterFilterBody(),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
