// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _InitialProfileEvent initial({required String characterId}) {
    return _InitialProfileEvent(
      characterId: characterId,
    );
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  String get characterId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String characterId) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String characterId)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String characterId)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEventCopyWith<ProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
  $Res call({String characterId});
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;

  @override
  $Res call({
    Object? characterId = freezed,
  }) {
    return _then(_value.copyWith(
      characterId: characterId == freezed
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialProfileEventCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory _$InitialProfileEventCopyWith(_InitialProfileEvent value,
          $Res Function(_InitialProfileEvent) then) =
      __$InitialProfileEventCopyWithImpl<$Res>;
  @override
  $Res call({String characterId});
}

/// @nodoc
class __$InitialProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$InitialProfileEventCopyWith<$Res> {
  __$InitialProfileEventCopyWithImpl(
      _InitialProfileEvent _value, $Res Function(_InitialProfileEvent) _then)
      : super(_value, (v) => _then(v as _InitialProfileEvent));

  @override
  _InitialProfileEvent get _value => super._value as _InitialProfileEvent;

  @override
  $Res call({
    Object? characterId = freezed,
  }) {
    return _then(_InitialProfileEvent(
      characterId: characterId == freezed
          ? _value.characterId
          : characterId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialProfileEvent implements _InitialProfileEvent {
  const _$_InitialProfileEvent({required this.characterId});

  @override
  final String characterId;

  @override
  String toString() {
    return 'ProfileEvent.initial(characterId: $characterId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialProfileEvent &&
            (identical(other.characterId, characterId) ||
                const DeepCollectionEquality()
                    .equals(other.characterId, characterId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(characterId);

  @JsonKey(ignore: true)
  @override
  _$InitialProfileEventCopyWith<_InitialProfileEvent> get copyWith =>
      __$InitialProfileEventCopyWithImpl<_InitialProfileEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String characterId) initial,
  }) {
    return initial(characterId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String characterId)? initial,
  }) {
    return initial?.call(characterId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String characterId)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(characterId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialProfileEvent implements ProfileEvent {
  const factory _InitialProfileEvent({required String characterId}) =
      _$_InitialProfileEvent;

  @override
  String get characterId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialProfileEventCopyWith<_InitialProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _DataProfileState data({required Character character}) {
    return _DataProfileState(
      character: character,
    );
  }

  _InitialProfileState initial() {
    return const _InitialProfileState();
  }

  _LoadingProfileState loading() {
    return const _LoadingProfileState();
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Character character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataProfileState value) data,
    required TResult Function(_InitialProfileState value) initial,
    required TResult Function(_LoadingProfileState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataProfileState value)? data,
    TResult Function(_InitialProfileState value)? initial,
    TResult Function(_LoadingProfileState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataProfileState value)? data,
    TResult Function(_InitialProfileState value)? initial,
    TResult Function(_LoadingProfileState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$DataProfileStateCopyWith<$Res> {
  factory _$DataProfileStateCopyWith(
          _DataProfileState value, $Res Function(_DataProfileState) then) =
      __$DataProfileStateCopyWithImpl<$Res>;
  $Res call({Character character});
}

/// @nodoc
class __$DataProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$DataProfileStateCopyWith<$Res> {
  __$DataProfileStateCopyWithImpl(
      _DataProfileState _value, $Res Function(_DataProfileState) _then)
      : super(_value, (v) => _then(v as _DataProfileState));

  @override
  _DataProfileState get _value => super._value as _DataProfileState;

  @override
  $Res call({
    Object? character = freezed,
  }) {
    return _then(_DataProfileState(
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }
}

/// @nodoc

class _$_DataProfileState implements _DataProfileState {
  const _$_DataProfileState({required this.character});

  @override

  /// Параметры
  final Character character;

  @override
  String toString() {
    return 'ProfileState.data(character: $character)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataProfileState &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(character);

  @JsonKey(ignore: true)
  @override
  _$DataProfileStateCopyWith<_DataProfileState> get copyWith =>
      __$DataProfileStateCopyWithImpl<_DataProfileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Character character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return data?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataProfileState value) data,
    required TResult Function(_InitialProfileState value) initial,
    required TResult Function(_LoadingProfileState value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataProfileState value)? data,
    TResult Function(_InitialProfileState value)? initial,
    TResult Function(_LoadingProfileState value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataProfileState value)? data,
    TResult Function(_InitialProfileState value)? initial,
    TResult Function(_LoadingProfileState value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataProfileState implements ProfileState {
  const factory _DataProfileState({required Character character}) =
      _$_DataProfileState;

  /// Параметры
  Character get character => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataProfileStateCopyWith<_DataProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialProfileStateCopyWith<$Res> {
  factory _$InitialProfileStateCopyWith(_InitialProfileState value,
          $Res Function(_InitialProfileState) then) =
      __$InitialProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$InitialProfileStateCopyWith<$Res> {
  __$InitialProfileStateCopyWithImpl(
      _InitialProfileState _value, $Res Function(_InitialProfileState) _then)
      : super(_value, (v) => _then(v as _InitialProfileState));

  @override
  _InitialProfileState get _value => super._value as _InitialProfileState;
}

/// @nodoc

class _$_InitialProfileState implements _InitialProfileState {
  const _$_InitialProfileState();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Character character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataProfileState value) data,
    required TResult Function(_InitialProfileState value) initial,
    required TResult Function(_LoadingProfileState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataProfileState value)? data,
    TResult Function(_InitialProfileState value)? initial,
    TResult Function(_LoadingProfileState value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataProfileState value)? data,
    TResult Function(_InitialProfileState value)? initial,
    TResult Function(_LoadingProfileState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialProfileState implements ProfileState {
  const factory _InitialProfileState() = _$_InitialProfileState;
}

/// @nodoc
abstract class _$LoadingProfileStateCopyWith<$Res> {
  factory _$LoadingProfileStateCopyWith(_LoadingProfileState value,
          $Res Function(_LoadingProfileState) then) =
      __$LoadingProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$LoadingProfileStateCopyWith<$Res> {
  __$LoadingProfileStateCopyWithImpl(
      _LoadingProfileState _value, $Res Function(_LoadingProfileState) _then)
      : super(_value, (v) => _then(v as _LoadingProfileState));

  @override
  _LoadingProfileState get _value => super._value as _LoadingProfileState;
}

/// @nodoc

class _$_LoadingProfileState implements _LoadingProfileState {
  const _$_LoadingProfileState();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingProfileState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Character character) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Character character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Character character)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataProfileState value) data,
    required TResult Function(_InitialProfileState value) initial,
    required TResult Function(_LoadingProfileState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataProfileState value)? data,
    TResult Function(_InitialProfileState value)? initial,
    TResult Function(_LoadingProfileState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataProfileState value)? data,
    TResult Function(_InitialProfileState value)? initial,
    TResult Function(_LoadingProfileState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingProfileState implements ProfileState {
  const factory _LoadingProfileState() = _$_LoadingProfileState;
}
