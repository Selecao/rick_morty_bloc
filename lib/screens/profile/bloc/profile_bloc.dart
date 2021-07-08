import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';

import 'package:sc_03/data/network/models/character.dart';
import 'package:sc_03/data/repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  String characterId;
  ProfileBloc(this.characterId) : super(ProfileState.initial());

  final _repository = Repository();
  late Character _character;

  /// Отслеживает события. Метод map позволяет нам сократить код и не дает потерять состояние.
  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      /// Стрим для инициализации
      initial: _mapInitialProfileEvent,
    );
  }

  Stream<ProfileState> _mapInitialProfileEvent(
      _InitialProfileEvent event) async* {
    /// Возвращаем состояние загрузки
    yield ProfileState.loading();

    try {
      /// Получение данных
      print("## Начинаем загрузку профиля персонажа");
      _character = await _repository.getCharacter(characterId);
    } catch (ex) {
      /// Вовращаем состояние с ошибкой
      print("## Получи ошибку в блоке профиля персонажа $ex");
    }

    /// Возвращаем состояние с данными
    yield ProfileState.data(
      character: _character,
    );
  }
}
