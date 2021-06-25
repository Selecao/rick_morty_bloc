import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:sc_03/data/network/models/character.dart';

part 'global_event.dart';
part 'global_state.dart';
part 'global_bloc.freezed.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(GlobalState.initial());

  /// TODO: final _repository = Repository();
  int _activeTab = 0;
  late List<Character> _charactersList;

  @override
  Stream<GlobalState> mapEventToState(
    GlobalEvent event,
  ) async* {
    yield* event.map(
      /// Стрим для инициализации
      initial: _mapInitialGlobalEvent,

      /// Стрим для выбора таба
      selectedTab: _mapSelectedTabGlobalEvent,
    );
  }

  Stream<GlobalState> _mapInitialGlobalEvent(_InitialGlobalEvent event) async* {
    /// Возвращаем состояние загрузки
    yield GlobalState.loading();

    try {
      /// Получение данных
      /// TODO: _charactersList = await _repository.getCharacters();
    } catch (ex) {
      /// Возвращаем состояние с ошибкой
    }

    /// Возвращаем состояние с данными
    yield GlobalState.data(
      charactersList: _charactersList,
      activeTab: _activeTab,
    );
  }

  Stream<GlobalState> _mapSelectedTabGlobalEvent(
      _SelectedTabGlobalEvent event) async* {
    yield GlobalState.loading();
    _activeTab = event.activeTab;
    yield GlobalState.data(
      charactersList: _charactersList,
      activeTab: _activeTab,
    );
  }
}
