import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_bottom_navigation_bar.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/global_bloc/global_bloc.dart';

import 'package:sc_03/screens/characters/bloc/characters_bloc.dart';
import 'package:sc_03/screens/characters/widgets/characters_app_bar.dart';

import 'package:sc_03/screens/characters/widgets/characters_grid.dart';
import 'package:sc_03/screens/characters/widgets/characters_list.dart';
import 'package:sc_03/theme/main_theme.dart';

class CharactersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Делаем доступным блок в дереве виджетов
    return BlocConsumer<CharactersBloc, CharactersState>(
      /// Возвращает виджеты поверх основного состояния. Используется для отображения
      /// ошибок, навигации и др.
      listener: (context, state) {},

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
            bottomNavigationBar: AppBottomNavigationBar(
              currentIndex: 0,
              onTap: (int index) {
                context.read<GlobalBloc>()
                  ..add(
                    GlobalEvent.selectedTab(index: index),
                  );
              },
            ),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
