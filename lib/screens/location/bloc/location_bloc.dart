import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:sc_03/data/network/models/location.dart';
import 'package:sc_03/data/repository.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationState.initial());

  final _repository = Repository();

  late Location _location;
  //late List<Character> _charactersAtLocation;

  @override
  Stream<LocationState> mapEventToState(
    LocationEvent event,
  ) async* {
    yield* event.map(
      /// Стрим для инициализации
      initial: _mapInitialLocationEvent,
    );
  }

  Stream<LocationState> _mapInitialLocationEvent(
      _InitialLocationEvent event) async* {
    /// Возвращаем состояние загрузки
    yield LocationState.loading();

    try {
      /// Получение данных
      print("## Начинаем загрузку персонажей на выбранной локации");
      String locationId = event.locationId;
      _location = await _repository.getLocationById(locationId);
    } catch (ex) {
      /// Вовращаем состояние с ошибкой
      print("## Получи ошибку в блоке локации $ex");
    }

    /// Возвращаем состояние с данными
    yield LocationState.data(
      location: _location,
      //charactersAtLocation: _charactersAtLocation,
    );
  }
}
