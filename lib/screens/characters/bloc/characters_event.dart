part of 'package:sc_03/screens/characters/bloc/characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.initial({
    required CharactersFilter filter,
  }) = _InitialCharactersEvent;

  const factory CharactersEvent.selectedView({
    required CharactersFilter filter,
    required bool isGrid,
  }) = _SelectedViewCharactersEvent;

  const factory CharactersEvent.selectedFilters({
    required CharactersFilter filter,
  }) = _SelectedFiltersCharactersEvent;

  const factory CharactersEvent.nextPage({
    required CharactersFilter filter,
  }) = _NextPageEvent;
}
