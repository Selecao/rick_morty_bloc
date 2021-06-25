part of 'adjustments_bloc.dart';

@freezed
class AdjustmentsState with _$AdjustmentsState {
  /// Состояние с данными

  const factory AdjustmentsState.data({
    /// Параметры

    required final int darkModeOptionIndex,
    required final List<String> themeModeTitles,
  }) = _DataAdjustmentsState;

  /// Состояние инициализации
  const factory AdjustmentsState.initial() = _InitialAdjustmentsState;

  /// Состояние отображения этапа загрузки
  const factory AdjustmentsState.loading() = _LoadingAdjustmentsState;
}
