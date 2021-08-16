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

  late List<Episode> _episodes;

  @override
  Stream<EpisodesListState> mapEventToState(
    EpisodesListEvent event,
  ) async* {
    yield* event.map(
      /// Стрим для инициализации
      initial: _mapInitialEpisodesListEvent,

      /// Стрим для поиска эпизодов
      find: _mapFindEpisodesListEvent,
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

      //_fillSeasonsList();
    } catch (ex) {
      /// Вовращаем состояние с ошибкой
      print("## Получи ошибку в блоке списка эпизодов $ex");
    }

    /// Возвращаем состояние с данными
    yield EpisodesListState.data(seasons: _fillSeasonsListWith(_episodes));
  }

  Stream<EpisodesListState> _mapFindEpisodesListEvent(
      _FindEpisodesListEvent event) async* {
    yield EpisodesListState.loading();
    String charsToFind = event.chars;
    List<Episode> finderResult = [];

    try {
      print("## Начинаем поиск эпизодов");
      finderResult = await _repository.getEpisodesByName(charsToFind) ?? [];
    } catch (ex) {
      print("## Получи ошибку в блоке Поиска эпизодов $ex");
    }

    yield EpisodesListState.finding(episodes: finderResult);
    yield EpisodesListState.data(seasons: _fillSeasonsListWith(_episodes));
  }

  List<Season> _fillSeasonsListWith(List<Episode> episodes) {
    // next line to avoid mutation of original [season] field [.episodes]
    // because List.from it's a one level clone, items referenced by the element
    // of foo will still be shared to bar:
    List<Season> result = [
      for (var elm in seasons) Season(elm.name, List.from(elm.episodes))
    ];

    if (episodes.isNotEmpty) {
      for (int i = 0; i < result.length; i++) {
        List<Episode> episodesInSeason = [];

        for (int j = 0; j < episodes.length; j++) {
          if (i == ((episodes[j].season ?? 1) - 1)) {
            episodesInSeason.add(episodes[j]);
          }
        }

        episodesInSeason.sort(seriesComparator);

        result[i].episodes.addAll(episodesInSeason);
      }
    }
    return result;
  }

/*
  // find episodes via /GetAll response
  List<Episode> _findEpisodes(String chars) {
    if (chars.isEmpty) return _episodes;
    List<Episode> result = [];
    for (Episode episode in _episodes) {
      if (episode.name == null) continue;
      if (episode.name!.toLowerCase().contains(chars.toLowerCase())) {
        result.add(episode);
        print("## Результат поиска эпизод: ${episode.name}");
      }
    }
    return result;
  }
  */
}
