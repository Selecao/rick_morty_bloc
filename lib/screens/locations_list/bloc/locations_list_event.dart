part of 'locations_list_bloc.dart';

@freezed
class LocationsListEvent with _$LocationsListEvent {
  const factory LocationsListEvent.initial({
    required LocationsFilter filter,
  }) = _InitialLocationsListEvent;

  const factory LocationsListEvent.selectedFilters({
    required LocationsFilter filter,
  }) = _SelectedFiltersEvent;

  const factory LocationsListEvent.nextPage({
    required LocationsFilter filter,
  }) = _NextPageEvent;
}
