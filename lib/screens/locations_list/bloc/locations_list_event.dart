part of 'locations_list_bloc.dart';

@freezed
class LocationsListEvent with _$LocationsListEvent {
  const factory LocationsListEvent.initial() = _InitialLocationsListEvent;

  /// Событие поиска локации
  const factory LocationsListEvent.find({
    required String chars,
  }) = _FindLocationsListEvent;
}
