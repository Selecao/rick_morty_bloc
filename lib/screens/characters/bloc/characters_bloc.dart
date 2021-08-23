import 'package:flutter/foundation.dart';
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

  String _nameToFind = "";
  String get nameToFind => _nameToFind;
  bool _isGrid = false;
  bool get isGrid => _isGrid;
  bool _isSortAscending = true;
  bool get isSortAscending => _isSortAscending;
  List<int> _status = [];
  List<int> get status => _status;
  List<int> _gender = [];
  List<int> get gender => _gender;
  bool get isFilterEnable => status.length != 0 || gender.length != 0;
  late List<Character> _charactersList;

  /// Отслеживает события. Метод map позволяет нам сократить код и не дает потерять состояние.
  @override
  Stream<CharactersState> mapEventToState(
    CharactersEvent event,
  ) async* {
    yield* event.map(
      /// Стрим для инициализации
      initial: _mapInitialCharactersEvent,

      /// Стрим для выбора вида отображения
      selectedView: _mapSelectedViewCharactersEvent,

      /// Стрим для выбора фильтров
      selectedFilters: _mapSelectedFiltersCharactersEvent,
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
      charactersList: sortCharacters(isSortAscending, _charactersList),
      isGrid: isGrid,
      status: status,
      gender: gender,
      isSortAscending: isSortAscending,
    );
  }

  Stream<CharactersState> _mapSelectedViewCharactersEvent(
      _SelectedViewCharactersEvent event) async* {
    yield CharactersState.loading();
    _isGrid = event.isGrid;
    yield CharactersState.data(
      charactersList: sortCharacters(isSortAscending, _charactersList),
      isGrid: isGrid,
      status: status,
      gender: gender,
      isSortAscending: isSortAscending,
    );
  }

  Stream<CharactersState> _mapSelectedFiltersCharactersEvent(
      _SelectedFiltersCharactersEvent event) async* {
    yield CharactersState.loading();
    _status = event.status;
    _gender = event.gender;
    _nameToFind = event.name;
    _isSortAscending = event.isSortAscending;

    try {
      print("## Начинаем поиск персонажей по фильтру");
      _charactersList = await _repository.getCharacterByName(
            nameToFind,
            status: status,
            gender: gender,
          ) ??
          [];
    } catch (ex) {
      print("## Получи ошибку в блоке Поиска персонажей по фильтру $ex");
    }

    yield CharactersState.data(
      charactersList: sortCharacters(isSortAscending, _charactersList),
      isGrid: isGrid,
      status: status,
      gender: gender,
      isSortAscending: isSortAscending,
    );
  }
}

List<Character> sortCharacters(bool isSortAscending, List<Character> baseList) {
  List<Character> sortedList = baseList..sort(characterComparator);
  if (isSortAscending) {
    return sortedList;
  } else {
    return (sortedList.reversed).toList();
  }
}
