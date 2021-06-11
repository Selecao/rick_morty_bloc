import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:sc_03/data/network/models/episode.dart';
import 'package:sc_03/resources/variables.dart';

part 'episode_event.dart';
part 'episode_state.dart';
part 'episode_bloc.freezed.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  EpisodeBloc() : super(EpisodeState.initial());

  Episode _selectedEpisode = selectedEpisode;

  @override
  Stream<EpisodeState> mapEventToState(
    EpisodeEvent event,
  ) async* {
    yield* event.map(
      /// Стрим для инициализации
      initial: _mapInitialEpisodeEvent,
    );
  }

  Stream<EpisodeState> _mapInitialEpisodeEvent(
      _InitialEpisodeEvent event) async* {
    /// Возвращаем состояние загрузки
    yield EpisodeState.loading();

    try {
      /// Получение данных
    } catch (ex) {
      /// Вовращаем состояние с ошибкой
    }

    /// Возвращаем состояние с данными
    yield EpisodeState.data(
      selectedEpisode: _selectedEpisode,
    );
  }
}
