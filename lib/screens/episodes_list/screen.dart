import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_bottom_navigation_bar.dart';
import 'package:sc_03/components/app_chapters_tile.dart';
import 'package:sc_03/screens/episodes_list/bloc/episodes_list_bloc.dart';
import 'package:sc_03/screens/episodes_list/widgets/episodes_list_app_bar.dart';

class EpisodesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Делаем доступным блок в дереве виджетов
    return BlocProvider<EpisodesListBloc>(
      create: (BuildContext context) =>
          EpisodesListBloc()..add(EpisodesListEvent.initial()),

      /// Обрабатываем состояние
      child: BlocConsumer<EpisodesListBloc, EpisodesListState>(

          /// Возвращает виджеты поверх основного состояния. Используется для отображения
          /// ошибок, навигации и пр.
          listener: (context, state) {},

          /// Обрабатываем состояния
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => Center(child: CircularProgressIndicator()),
              data: (_data) => DefaultTabController(
                length: _data.seasons.length,
                child: Scaffold(
                  appBar: EpisodesListAppBar(),
                  body: TabBarView(
                    children: [
                      for (final season in _data.seasons)
                        ListView.builder(
                          itemBuilder: (context, index) => AppChaptersTile(
                            imageSize: 60.0,
                            textConstraint: 280.0,
                            chapter: season.episodes[index],
                            onTap: () {},
                          ),
                          itemCount: season.episodes.length,
                          itemExtent: 84.0,
                          shrinkWrap: true,
                        ),
                    ],
                  ),
                  bottomNavigationBar: AppBottomNavigationBar(
                    currentIndex: 2,
                    onTap: () {},
                  ),
                ),
              ),
              orElse: () => SizedBox.shrink(),
            );
          }),
    );
  }
}
