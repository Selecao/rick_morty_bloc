part of 'locations_list_bloc.dart';

@freezed
class LocationsListState with _$LocationsListState {
  /// Состояние с данными
  const factory LocationsListState.data({
    /// Параметры
    required final List<Location> locationsList,
    required final LocationsFilter locationsFilter,
  }) = _DataLocationsListState;

  const factory LocationsListState.initial() = _InitialLocationsListState;

  const factory LocationsListState.loading() = _LoadingLocationsListState;
}
