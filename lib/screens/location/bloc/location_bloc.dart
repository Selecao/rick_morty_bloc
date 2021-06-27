import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:sc_03/data/network/models/datum.dart';
import 'package:sc_03/data/network/models/location.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationState.initial());
  late Location _location;
  late List<Datum> _charactersAtLocation;

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

    } catch (ex) {
      /// Вовращаем состояние с ошибкой
    }

    /// Возвращаем состояние с данными
    yield LocationState.data(
      location: _location,
      charactersAtLocation: _charactersAtLocation,
    );
  }
}
