part of 'locations_list_bloc.dart';

@freezed
class LocationsListState with _$LocationsListState {
  /// Состояние с данными
  const factory LocationsListState.data({
    /// Параметры
    required final List<Location> locationsList,
    final bool? isLastPage,
  }) = _DataLocationsListState;

  const factory LocationsListState.initial() = _InitialLocationsListState;

  const factory LocationsListState.loading() = _LoadingLocationsListState;

  /*const factory LocationsListState.finding(
          {required final List<Location> locationsList}) =
      _FindingLocationsListState;*/
}
