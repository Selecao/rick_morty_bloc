import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/repository.dart';
import 'package:sc_03/screens/characters/characters_filter.dart';

part 'package:sc_03/screens/characters/bloc/characters_event.dart';
part 'package:sc_03/screens/characters/bloc/characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc() : super(CharactersState.initial());

  final _repository = Repository();

  bool _isGrid = false;
  bool get isGrid => _isGrid;
  int _currentPage = 1;
  static const int _pageSize = 10;

  late List<Character> _charactersList;
  List<Character> get charactersList => _charactersList;

  @override
  void onTransition(Transition<CharactersEvent, CharactersState> transition) {
    super.onTransition(transition);
    print(" ### TRANSITION : \n$transition");
  }

  @override
  Stream<CharactersState> mapEventToState(
    CharactersEvent event,
  ) async* {
    yield* event.map(
      initial: _initialDataToState,
      nextPage: _nextPageToState,
      selectedView: _selectedViewToState,
      selectedFilters: _selectedFiltersToState,
    );
  }

  Stream<CharactersState> _initialDataToState(
      _InitialCharactersEvent event) async* {
    yield CharactersState.loading();

    try {
      print("## Начинаем загрузку персонажей");
      _charactersList = await _repository.getAllCharacters(
              pageNumber: _currentPage, pageSize: _pageSize) ??
          [];
    } catch (ex) {
      print("## Получи ошибку в блоке персонажей $ex");
    }

    yield CharactersState.data(
      charactersList:
          sortCharacters(event.filter.isSortAscending, _charactersList),
      isGrid: isGrid,
      charactersFilter: event.filter,
    );
  }

  Stream<CharactersState> _selectedViewToState(
      _SelectedViewCharactersEvent event) async* {
    yield CharactersState.loading();
    _isGrid = event.isGrid;
    yield CharactersState.data(
      charactersList:
          sortCharacters(event.filter.isSortAscending, _charactersList),
      isGrid: _isGrid,
      charactersFilter: event.filter,
    );
  }

  Stream<CharactersState> _nextPageToState(_NextPageEvent event) async* {
    _currentPage += 1;

    List<Character> resultList = [];
    try {
      print("## Начинаем загрузку следующей страницы персонажей");
      resultList = await _repository.getAllCharacters(
            pageNumber: _currentPage,
            pageSize: _pageSize,
          ) ??
          [];

      event.filter.setHasReachedLastPage(resultList.isEmpty ? true : false);
      if (event.filter.hasReachedLastPage) {
        print(" ### LAST PAGE REACHED ###");
        return;
      }
      _charactersList = [..._charactersList, ...resultList];
    } catch (ex) {
      print("## Получи ошибку в блоке Поиска персонажей по фильтру $ex");
    }

    yield CharactersState.data(
      charactersList: _charactersList,
      isGrid: isGrid,
      charactersFilter: event.filter,
    );
  }

  Stream<CharactersState> _selectedFiltersToState(
      _SelectedFiltersCharactersEvent event) async* {
    yield CharactersState.loading();
    event.filter.setIsPaginationEnable(false);
    print("# Status is ${event.filter.status}");
    print("# Pagination is ${event.filter.isPaginationEnable}");
    try {
      print("## Начинаем поиск персонажей по фильтру");
      _charactersList = await _repository.getCharacterByName(
            event.filter.nameToFind,
            status: event.filter.status,
            gender: event.filter.gender,
          ) ??
          [];
    } catch (ex) {
      print("## Получи ошибку в блоке Поиска персонажей по фильтру $ex");
    }

    yield CharactersState.data(
      charactersList:
          sortCharacters(event.filter.isSortAscending, _charactersList),
      isGrid: isGrid,
      charactersFilter: event.filter,
    );
  }
}

List<Character> sortCharacters(
    bool? isSortAscending, List<Character> baseList) {
  if (isSortAscending == null) return baseList;

  if (isSortAscending) {
    return baseList..sort(characterComparator);
  } else {
    return baseList..sort(characterComparator.inverse);
  }
}
