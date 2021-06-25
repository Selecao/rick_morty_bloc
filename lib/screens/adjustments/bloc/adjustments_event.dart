part of 'adjustments_bloc.dart';

@freezed
class AdjustmentsEvent with _$AdjustmentsEvent {
  /// Событие инициализации
  const factory AdjustmentsEvent.initial() = _InitialAdjustmentsEvent;

  /// Событие выбора настройки темы
  const factory AdjustmentsEvent.selectedTheme({
    required int darkModeOptionIndex,
  }) = _SelectedThemeAdjustmentsEvent;
}
