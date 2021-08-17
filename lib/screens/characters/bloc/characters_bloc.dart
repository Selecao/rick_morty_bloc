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

  bool isGrid = false;
  bool isSortAscending = true;
  List<int> status = [0, 1, 2];
  List<int> gender = [0, 1, 2];
  bool get isFilterEnable => status.length != 3 || gender.length != 3;
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

      /// Стрим для поиска персонажей
      find: _mapFindCharactersEvent,

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
    isGrid = event.isGrid;
    yield CharactersState.data(
      charactersList: _charactersList,
      isGrid: isGrid,
      status: status,
      gender: gender,
      isSortAscending: isSortAscending,
    );
  }

  Stream<CharactersState> _mapSelectedFiltersCharactersEvent(
      _SelectedFiltersCharactersEvent event) async* {
    yield CharactersState.loading();
    status = event.status;
    gender = event.gender;
    isSortAscending = event.isSortAscending;

    /// если фильтр активен используем запрос /GetByName с пустой строкой
    /// иначе возвращаем то что получали по запросу /GetAll
    if (isFilterEnable) {
      List<Character> finderResultList = [];
      String emptyString = '';

      try {
        print("## Начинаем поиск персонажей по фильтру");
        finderResultList = await _repository.getCharacterByName(
              emptyString,
              status: status,
              gender: gender,
            ) ??
            [];
      } catch (ex) {
        print("## Получи ошибку в блоке Поиска персонажей по фильтру $ex");
      }

      yield CharactersState.data(
        charactersList: sortCharacters(isSortAscending, finderResultList),
        isGrid: isGrid,
        status: status,
        gender: gender,
        isSortAscending: isSortAscending,
      );
    } else {
      yield CharactersState.data(
        charactersList: sortCharacters(isSortAscending, _charactersList),
        isGrid: isGrid,
        status: status,
        gender: gender,
        isSortAscending: isSortAscending,
      );
    }

    print("sort isAscending: $isSortAscending");
  }

  Stream<CharactersState> _mapFindCharactersEvent(
      _FindingCharactersEvent event) async* {
    yield CharactersState.loading();
    String charsToFind = event.chars;
    List<Character> finderResultList = [];

    try {
      print("## Начинаем поиск персонажей");
      finderResultList =
          await _repository.getCharacterByName(charsToFind) ?? [];
    } catch (ex) {
      print("## Получи ошибку в блоке Поиска персонажей $ex");
    }

    yield CharactersState.finding(
        charactersList: sortCharacters(isSortAscending, finderResultList));
    yield CharactersState.data(
      charactersList: sortCharacters(isSortAscending, _charactersList),
      isGrid: isGrid,
      status: status,
      gender: gender,
      isSortAscending: isSortAscending,
    );

    /*
    if (finderResultList.length == 0) {
      yield CharactersState.message();
    }
    */
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
