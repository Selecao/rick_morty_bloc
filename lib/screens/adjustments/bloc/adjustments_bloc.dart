import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sc_03/resources/variables.dart';

part 'adjustments_event.dart';
part 'adjustments_state.dart';
part 'adjustments_bloc.freezed.dart';

class AdjustmentsBloc extends Bloc<AdjustmentsEvent, AdjustmentsState> {
  AdjustmentsBloc() : super(AdjustmentsState.initial());
  int themeOptionIndex = 1;
  List<String> _themeModeTitles = themeModeTitles;

  @override
  Stream<AdjustmentsState> mapEventToState(
    AdjustmentsEvent event,
  ) async* {
    yield* event.map(
      /// Стрим для инициализации
      initial: _mapInitialAdjustmentsEvent,

      /// Стрим для выбора темы:
      selectedTheme: _mapSelectedThemeAdjustmentsEvent,
    );
  }

  Stream<AdjustmentsState> _mapInitialAdjustmentsEvent(
      _InitialAdjustmentsEvent event) async* {
    /// Возвращаем состояние загрузки
    yield AdjustmentsState.loading();

    try {
      /// Получение данных
    } catch (ex) {
      /// Вовращаем состояние с ошибкой
    }

    /// Возвращаем состояние с данными
    yield AdjustmentsState.data(
      darkModeOptionIndex: themeOptionIndex,
      themeModeTitles: _themeModeTitles,
    );
  }

  Stream<AdjustmentsState> _mapSelectedThemeAdjustmentsEvent(
      _SelectedThemeAdjustmentsEvent event) async* {
    yield AdjustmentsState.loading();
    themeOptionIndex = event.darkModeOptionIndex;
    yield AdjustmentsState.data(
      darkModeOptionIndex: themeOptionIndex,
      themeModeTitles: _themeModeTitles,
    );
  }
}
