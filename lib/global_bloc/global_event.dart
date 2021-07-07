part of 'global_bloc.dart';

@freezed
class GlobalEvent with _$GlobalEvent {
  /// Событие инициализации
  const factory GlobalEvent.initial() = _InitialGlobalEvent;

  /// Событие переключения экрана
  const factory GlobalEvent.selectedTab({
    required int index,
  }) = _SelectedTabGlobalEvent;
}
