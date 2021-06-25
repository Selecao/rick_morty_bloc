part of 'global_bloc.dart';

@freezed
class GlobalState with _$GlobalState {
  /// Состояние с данными
  const factory GlobalState.data({
    /// Параметры
    required final List<Character> charactersList,
    required final int activeTab,
  }) = _DataGlobalState;

  /// Состояние инициализации
  const factory GlobalState.initial() = _InitialGlobalState;

  /// Состояние отображения этапа загрузки
  const factory GlobalState.loading() = _LoadingGlobalState;
}
