part of 'episode_bloc.dart';

@freezed
class EpisodeState with _$EpisodeState {
  const factory EpisodeState.data({
    required final Episode selectedEpisode,
  }) = _DataEpisodeState;

  /// Состояние инициализации
  const factory EpisodeState.initial() = _InitialEpisodeState;

  /// Состояние отображения этапа загрузки
  const factory EpisodeState.loading() = _LoadingEpisodeState;
}
