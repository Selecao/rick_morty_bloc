import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:sc_03/data/network/models/episode.dart';
import 'package:sc_03/data/repository.dart';

part 'episode_event.dart';
part 'episode_state.dart';
part 'episode_bloc.freezed.dart';

class EpisodeBloc extends Bloc<EpisodeEvent, EpisodeState> {
  EpisodeBloc() : super(EpisodeState.initial());
  final _repository = Repository();
  late Episode _selectedEpisode;

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
      print("## Начинаем загрузку описания выбранного эпизода");
      _selectedEpisode = await _repository
          .getEpisodeById("968b9906-d502-4a1b-8315-a3c6f6df1c31");
    } catch (ex) {
      /// Вовращаем состояние с ошибкой
      print("## Получи ошибку в блоке выбранного эпизода $ex");
    }

    /// Возвращаем состояние с данными
    yield EpisodeState.data(
      selectedEpisode: _selectedEpisode,
    );
  }
}
