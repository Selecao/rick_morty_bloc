import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/repository.dart';

part 'package:sc_03/screens/characters/bloc/characters_event.dart';
part 'package:sc_03/screens/characters/bloc/characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc() : super(CharactersState.initial());

  final _repository = Repository();

  bool isGrid = false;
  late List<Character> _charactersList;

  /// Отслеживает события. Метод map позволяет нам сократить код и не дает потерять состояние.
  @override
  Stream<CharactersState> mapEventToState(
    CharactersEvent event,
  ) async* {
    yield* event.map(
      /// Стрим для инициализации
      initial: _mapInitialCharactersEvent,

      /// Стрим для выбора темы
      selectedView: _mapSelectedViewCharactersEvent,
    );
  }

  Stream<CharactersState> _mapInitialCharactersEvent(
      _InitialCharactersEvent event) async* {
    /// Возвращаем состояние загрузки
    yield CharactersState.loading();

    try {
      /// Получение данных
      print("## Начинаем загрузку персонажей");
      _charactersList =
          await _repository.getCharactersList(pageNumber: 1, pageSize: 50) ??
              [];
    } catch (ex) {
      /// Возвращаем состояние с ошибкой
      print("## Получи ошибку в блоке персонажей $ex");
    }

    /// Возвращаем состояние с данными
    yield CharactersState.data(
      charactersList: _charactersList,
      isGrid: isGrid,
    );
  }

  Stream<CharactersState> _mapSelectedViewCharactersEvent(
      _SelectedViewCharactersEvent event) async* {
    yield CharactersState.loading();
    isGrid = event.isGrid; // check !event
    yield CharactersState.data(
      charactersList: _charactersList,
      isGrid: isGrid,
    );
  }
}
