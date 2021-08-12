import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sc_03/components/app_chapters_tile.dart';
import 'package:sc_03/components/app_circular_progress_indicator.dart';
import 'package:sc_03/resources/variables.dart';
import 'package:sc_03/screens/episode/screen.dart';
import 'package:sc_03/screens/episodes_list/bloc/episodes_list_bloc.dart';
import 'package:sc_03/screens/episodes_list/widgets/episodes_list_app_bar.dart';
import 'package:sc_03/screens/find/screen.dart';

class EpisodesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EpisodesListBloc, EpisodesListState>(
      /// Возвращает виджеты поверх основного состояния. Используется для отображения
      /// ошибок, навигации и пр.
      listener: (context, state) {
        state.maybeMap(
          finding: (_data) => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FindScreen(
                Screen.Episode,
                _data.episodes,
                onSubmitted: (value) {
                  context.read<EpisodesListBloc>()
                    ..add(EpisodesListEvent.find(chars: value));
                },
              ),
            ),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },

      /// Обрабатываем состояния
      builder: (context, state) {
        return state.maybeMap(
          loading: (_) => Center(child: AppCircularProgressIndicator()),
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
                        onTap: () {
                          if (season.episodes[index].id != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return EpisodeScreen(
                                    season.episodes[index].id!);
                              }),
                            );
                          }
                        },
                      ),
                      itemCount: season.episodes.length,
                      itemExtent: 84.0,
                      shrinkWrap: true,
                    ),
                ],
              ),
            ),
          ),
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
