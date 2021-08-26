part of 'locations_list_bloc.dart';

@freezed
class LocationsListEvent with _$LocationsListEvent {
  const factory LocationsListEvent.initial() = _InitialLocationsListEvent;

  /// Событие поиска локации
  /*const factory LocationsListEvent.find({
    required String chars,
  }) = _FindLocationsListEvent;*/

  /// Событие выбора фильтров и поиска локации
  const factory LocationsListEvent.selectedFilters({
    required String locationToFind,
    required bool? isSortAscending,
    required String locationType,
    required String locationMeasure,
  }) = _SelectedFiltersEvent;

  const factory LocationsListEvent.nextPage() = _NextPageEvent;
}
