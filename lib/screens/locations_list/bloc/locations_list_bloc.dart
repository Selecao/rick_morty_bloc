import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:sc_03/data/network/models/location.dart';
import 'package:sc_03/data/repository.dart';

part 'locations_list_event.dart';
part 'locations_list_state.dart';
part 'locations_list_bloc.freezed.dart';

class LocationsListBloc extends Bloc<LocationsListEvent, LocationsListState> {
  LocationsListBloc() : super(LocationsListState.initial());

  final _repository = Repository();

  late List<Location> _locationsList;
  List<Location> get locationsList => _locationsList;
  String _locationToFind = "";
  String get locationToFind => _locationToFind;
  bool get isFilterEnable =>
      locationType != "" || locationMeasure != "" || _isSortAscending != null;
  bool? _isSortAscending;
  bool? get isSortAscending => _isSortAscending;
  String _locationType = "";
  String get locationType => _locationType;
  String _locationMeasure = "";
  String get locationMeasure => _locationMeasure;
  int _currentPage = 1;
  bool _isPaginationEnable = true;
  bool get isPaginationEnable => _isPaginationEnable;
  bool _hasReachedLastPage = false;
  bool get hasReachedLastPage => _hasReachedLastPage;
  static const int _pageSize = 4;

  @override
  Stream<LocationsListState> mapEventToState(
    LocationsListEvent event,
  ) async* {
    yield* event.map(
      /// Стрим для инициализации
      initial: _mapInitialLocationsListEvent,

      nextPage: _mapNextPageEvent,

      /// Стрим для поиска локаций
      selectedFilters: _mapSelectedFiltersEvent,
    );
  }

  Stream<LocationsListState> _mapInitialLocationsListEvent(
      _InitialLocationsListEvent event) async* {
    yield LocationsListState.loading();

    try {
      /// Получение данных
      print("## Начинаем загрузку всех локаций");
      _locationsList = await _repository.getLocationsList(
              pageNumber: _currentPage, pageSize: _pageSize) ??
          [];
    } catch (ex) {
      /// Вовращаем состояние с ошибкой
      print("## Получи ошибку в блоке всех локаций $ex");
    }

    /// Возвращаем состояние с данными
    yield LocationsListState.data(locationsList: locationsList);
  }

/*

  Stream<LocationsListState> _mapFindLocationsListEvent(
      _FindLocationsListEvent event) async* {
    yield LocationsListState.loading();
    _locationToFind = event.chars;

    try {
      print("## Начинаем поиск локаций");
      _locationsList =
          await _repository.getLocationsByName(locationToFind) ?? [];
    } catch (ex) {
      print("## Получи ошибку в блоке Поиска локаций $ex");
    }

    yield LocationsListState.data(
      locationsList: locationsList,
    );
  }
*/
  Stream<LocationsListState> _mapNextPageEvent(_NextPageEvent event) async* {
    _currentPage += 1;

    List<Location> resultList = [];
    try {
      print("## Начинаем загрузку следующей страницы локаций");
      resultList = await _repository.getLocationsList(
              pageNumber: _currentPage, pageSize: _pageSize) ??
          [];

      _hasReachedLastPage = resultList.isEmpty ? true : false;
      if (_hasReachedLastPage) {
        print(" ### LAST PAGE REACHED ###");
      }
      _locationsList = [..._locationsList, ...resultList];
    } catch (ex) {
      print("## Получи ошибку в блоке всех локаций $ex");
    }

    yield LocationsListState.data(
      locationsList: _locationsList,
      isLastPage: _hasReachedLastPage,
    );
  }

  Stream<LocationsListState> _mapSelectedFiltersEvent(
      _SelectedFiltersEvent event) async* {
    yield LocationsListState.loading();
    _isPaginationEnable = false;
    _locationToFind = event.locationToFind;
    _isSortAscending = event.isSortAscending;
    _locationType = event.locationType;
    _locationMeasure = event.locationMeasure;

    try {
      print("## Начинаем поиск локаций по фильтру");

      _locationsList = await _repository.getLocationsByName(
            _locationToFind,
            type: _locationType,
            measurements: _locationMeasure,
          ) ??
          [];
    } catch (ex) {
      print("## Получи ошибку в блоке Поиска Локаций по фильтру $ex");
    }

    yield LocationsListState.data(
      locationsList: sortLocations(isSortAscending, _locationsList),
    );
  }
}

List<Location> sortLocations(bool? isSortAscending, List<Location> baseList) {
  if (isSortAscending == null) return baseList;

  if (isSortAscending) {
    return baseList..sort(locationComparator);
  } else {
    return baseList..sort(locationComparator.inverse);
  }
}
