import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:sc_03/data/network/models/episode.dart';
import 'package:sc_03/data/network/models/season.dart';
import 'package:sc_03/data/repository.dart';
import 'package:sc_03/resources/variables.dart';

part 'episodes_list_event.dart';
part 'episodes_list_state.dart';
part 'episodes_list_bloc.freezed.dart';

class EpisodesListBloc extends Bloc<EpisodesListEvent, EpisodesListState> {
  EpisodesListBloc() : super(EpisodesListState.initial());

  final _repository = Repository();

  List<Season> _seasons = seasons;
  late List<Episode> _episodes;

  @override
  Stream<EpisodesListState> mapEventToState(
    EpisodesListEvent event,
  ) async* {
    yield* event.map(
      /// Стрим для инициализации
      initial: _mapInitialEpisodesListEvent,
    );
  }

  Stream<EpisodesListState> _mapInitialEpisodesListEvent(
      _InitialEpisodesListEvent event) async* {
    yield EpisodesListState.loading();

    try {
      /// Получение данных
      print("## Начинаем загрузку списка эпизодов");
      _episodes =
          await _repository.getEpisodesList(pageNumber: 1, pageSize: 41) ?? [];

      _fillSeasonsList();
    } catch (ex) {
      /// Вовращаем состояние с ошибкой
      print("## Получи ошибку в блоке списка эпизодов $ex");
    }

    /// Возвращаем состояние с данными
    yield EpisodesListState.data(seasons: _seasons);
  }

  void _fillSeasonsList() {
    if (_episodes.isNotEmpty) {
      for (int i = 0; i < _seasons.length; i++) {
        List<Episode> episodesInSeason = [];
        for (int j = 0; j < _episodes.length; j++) {
          if (i == ((_episodes[j].season ?? 1) - 1)) {
            episodesInSeason.add(_episodes[j]);
          }
        }

        episodesInSeason.sort(sortBySeries);

        _seasons[i].episodes.addAll(episodesInSeason);
      }
    }
  }
}
