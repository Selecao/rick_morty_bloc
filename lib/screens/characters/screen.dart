import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';

import 'package:sc_03/resources/variables.dart';

import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/characters/widgets/characters_app_bar.dart';

import 'package:sc_03/screens/characters/widgets/characters_grid.dart';
import 'package:sc_03/screens/characters/widgets/characters_list.dart';
import 'package:sc_03/screens/find/screen.dart';

class CharactersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Делаем доступным блок в дереве виджетов
    return BlocConsumer<CharactersBloc, CharactersState>(
      /// Возвращает виджеты поверх основного состояния. Используется для отображения
      /// ошибок, навигации и др.
      listener: (context, state) {
        state.maybeMap(
          finding: (_data) => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FindScreen(
                Screen.Character,
                _data.charactersList,
                onSubmitted: (value) {
                  context.read<CharactersBloc>()
                    ..add(CharactersEvent.find(chars: value));
                },
              ),
            ),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },

      /// Обрабатывает состояния
      builder: (context, state) {
        return state.maybeMap(
          loading: (_) => Center(
            child: AppCircularProgressIndicator(),
          ),
          data: (_data) => Scaffold(
            appBar: CharactersAppBar(_data.charactersList.length),
            body: _data.isGrid
                ? CharactersGrid(_data.charactersList)
                : CharactersList(_data.charactersList),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
