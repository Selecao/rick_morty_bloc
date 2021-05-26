part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  /// Событие инициализации
  const factory ProfileEvent.initial() = _InitialProfileEvent;
}
