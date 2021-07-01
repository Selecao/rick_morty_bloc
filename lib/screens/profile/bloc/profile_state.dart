part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  /// Состояние с данными
  const factory ProfileState.data({
    /// Параметры
    required final Character character,
  }) = _DataProfileState;

  /// Состояние инициализации
  const factory ProfileState.initial() = _InitialProfileState;

  /// Состояние отображения этапа загрузки
  const factory ProfileState.loading() = _LoadingProfileState;
}
