part of 'episodes_list_bloc.dart';

@freezed
class EpisodesListEvent with _$EpisodesListEvent {
  const factory EpisodesListEvent.initial() = _InitialEpisodesListEvent;

  /// Событие поиска эпизода
  const factory EpisodesListEvent.find({
    required String chars,
  }) = _FindEpisodesListEvent;
}
