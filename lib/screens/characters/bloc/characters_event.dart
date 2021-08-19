part of 'package:sc_03/screens/characters/bloc/characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  /// Событие инициализации
  const factory CharactersEvent.initial() = _InitialCharactersEvent;

  ///Событие выбора просмотра элементов
  const factory CharactersEvent.selectedView({
    required bool isGrid,
  }) = _SelectedViewCharactersEvent;

  ///Событие выбора фильтров
  const factory CharactersEvent.selectedFilters({
    required String name,
    required List<int> status,
    required List<int> gender,
    required bool isSortAscending,
  }) = _SelectedFiltersCharactersEvent;
/*
  ///Событие поиска персонажа
  const factory CharactersEvent.find({
    required String chars,
  }) = _FindingCharactersEvent;
  */
}
