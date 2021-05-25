part of 'package:sc_03/screens/characters/bloc/characters_bloc.dart';

@freezed
class CharactersEvent with _$CharactersEvent {
  /// Событие инициализации
  const factory CharactersEvent.initial() = _InitialCharactersEvent;

  ///Событие выбора просмотра элементов
  const factory CharactersEvent.selectedView({
    required bool isGrid,
  }) = _SelectedViewCharactersEvent;
}
