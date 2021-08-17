part of 'package:sc_03/screens/characters/bloc/characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  /// Состояние с данными
  const factory CharactersState.data({
    /// Параметры
    required final List<Character> charactersList,
    required final bool isGrid,
    required final List<int> status,
    required final List<int> gender,
    required final bool isSortAscending,
  }) = _DataCharactersState;

  /// Состояние инициализации
  const factory CharactersState.initial() = _InitialCharactersState;

  /// Состояние отображения этапа загрузки
  const factory CharactersState.loading() = _LoadingCharactersState;

  /// Состояние поиска
  const factory CharactersState.finding(
      {required final List<Character> charactersList}) = _FindCharactersState;
}
