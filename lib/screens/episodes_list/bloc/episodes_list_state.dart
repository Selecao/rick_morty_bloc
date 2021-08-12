part of 'episodes_list_bloc.dart';

@freezed
class EpisodesListState with _$EpisodesListState {
  /// Состояние с данными
  const factory EpisodesListState.data({
    /// Параметры
    required final List<Season> seasons,
  }) = _DataEpisodesListState;

  const factory EpisodesListState.initial() = _InitialEpisodesListState;

  const factory EpisodesListState.loading() = _LoadingEpisodesListState;

  const factory EpisodesListState.finding(
      {required final List<Episode> episodes}) = _FindingEpisodesListState;
}
