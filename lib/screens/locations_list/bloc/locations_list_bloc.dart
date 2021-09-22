import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:sc_03/data/network/models/location.dart';
import 'package:sc_03/data/repository.dart';
import 'package:sc_03/screens/locations_list/locations_filter.dart';

part 'locations_list_event.dart';
part 'locations_list_state.dart';
part 'locations_list_bloc.freezed.dart';

class LocationsListBloc extends Bloc<LocationsListEvent, LocationsListState> {
  LocationsListBloc() : super(LocationsListState.initial());

  final _repository = Repository();

  late List<Location> _locationsList;
  List<Location> get locationsList => _locationsList;
  int _currentPage = 1;
  static const int _pageSize = 4;

  @override
  Stream<LocationsListState> mapEventToState(
    LocationsListEvent event,
  ) async* {
    yield* event.map(
      initial: _initialDataToState,
      nextPage: _nextPageToState,
      selectedFilters: _selectedFiltersToState,
    );
  }

  Stream<LocationsListState> _initialDataToState(
      _InitialLocationsListEvent event) async* {
    yield LocationsListState.loading();

    try {
      print("## Начинаем загрузку всех локаций");
      _locationsList = await _repository.getLocationsList(
              pageNumber: _currentPage, pageSize: _pageSize) ??
          [];
    } catch (ex) {
      print("## Получи ошибку в блоке всех локаций $ex");
    }

    yield LocationsListState.data(
      locationsList: locationsList,
      locationsFilter: event.filter,
    );
  }

  Stream<LocationsListState> _nextPageToState(_NextPageEvent event) async* {
    _currentPage += 1;

    List<Location> resultList = [];
    try {
      print("## Начинаем загрузку следующей страницы локаций");
      resultList = await _repository.getLocationsList(
              pageNumber: _currentPage, pageSize: _pageSize) ??
          [];

      event.filter.setHasReachedLastPage(resultList.isEmpty ? true : false);
      if (event.filter.hasReachedLastPage) {
        print(" ### LAST PAGE REACHED ###");
        return;
      }
      _locationsList = [..._locationsList, ...resultList];
    } catch (ex) {
      print("## Получи ошибку в блоке всех локаций $ex");
    }

    yield LocationsListState.data(
      locationsList: _locationsList,
      locationsFilter: event.filter,
    );
  }

  Stream<LocationsListState> _selectedFiltersToState(
      _SelectedFiltersEvent event) async* {
    yield LocationsListState.loading();
    event.filter.setIsPaginationEnable(false);

    try {
      print("## Начинаем поиск локаций по фильтру");

      _locationsList = await _repository.getLocationsByName(
            event.filter.locationToFind,
            type: event.filter.locationType,
            measurements: event.filter.locationMeasure,
          ) ??
          [];
    } catch (ex) {
      print("## Получи ошибку в блоке Поиска Локаций по фильтру $ex");
    }

    yield LocationsListState.data(
      locationsList:
          sortLocations(event.filter.isSortAscending, _locationsList),
      locationsFilter: event.filter,
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
