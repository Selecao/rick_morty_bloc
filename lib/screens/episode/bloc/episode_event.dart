part of 'episode_bloc.dart';

@freezed
class EpisodeEvent with _$EpisodeEvent {
  /// Событие инициализации
  const factory EpisodeEvent.initial() = _InitialEpisodeEvent;
}
