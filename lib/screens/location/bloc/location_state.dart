part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  /// Состояние с данными
  const factory LocationState.data({
    ///Параметры
    required final Location location,
    required final List<Character> charactersAtLocation,
  }) = _DataLocationState;

  /// Состояние инициализации
  const factory LocationState.initial() = _InitialLocationState;

  /// Состояние отображения этапа загрузки
  const factory LocationState.loading() = _LoadingLocationState;
}
