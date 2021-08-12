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

  @override
  Stream<LocationsListState> mapEventToState(
    LocationsListEvent event,
  ) async* {
    yield* event.map(
      /// Стрим для инициализации
      initial: _mapInitialLocationsListEvent,

      /// Стрим для поиска локаций
      find: _mapFindLocationsListEvent,
    );
  }

  Stream<LocationsListState> _mapInitialLocationsListEvent(
      _InitialLocationsListEvent event) async* {
    yield LocationsListState.loading();

    try {
      /// Получение данных
      print("## Начинаем загрузку всех локаций");
      _locationsList =
          await _repository.getLocationsList(pageNumber: 1, pageSize: 14) ?? [];
    } catch (ex) {
      /// Вовращаем состояние с ошибкой
      print("## Получи ошибку в блоке всех локаций $ex");
    }

    /// Возвращаем состояние с данными
    yield LocationsListState.data(locationsList: _locationsList);
  }

  Stream<LocationsListState> _mapFindLocationsListEvent(
      _FindLocationsListEvent event) async* {
    yield LocationsListState.loading();
    String charsToFind = event.chars;
    List<Location> finderResultList = _findLocations(charsToFind);

    yield LocationsListState.finding(locationsList: finderResultList);
    yield LocationsListState.data(
      locationsList: _locationsList,
    );
  }

  List<Location> _findLocations(String chars) {
    if (chars.isEmpty) return _locationsList;
    List<Location> result = [];
    for (Location location in _locationsList) {
      if (location.name == null) continue;
      if (location.name!.toLowerCase().contains(chars.toLowerCase())) {
        result.add(location);
      }
    }
    return result;
  }
}
