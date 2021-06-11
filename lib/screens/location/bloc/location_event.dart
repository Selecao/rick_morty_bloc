part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  /// Событие инициализации
  const factory LocationEvent.initial() = _InitialLocationEvent;
}
