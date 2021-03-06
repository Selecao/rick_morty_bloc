// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'episode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EpisodeEventTearOff {
  const _$EpisodeEventTearOff();

  _InitialEpisodeEvent initial({required String episodeId}) {
    return _InitialEpisodeEvent(
      episodeId: episodeId,
    );
  }
}

/// @nodoc
const $EpisodeEvent = _$EpisodeEventTearOff();

/// @nodoc
mixin _$EpisodeEvent {
  String get episodeId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String episodeId) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String episodeId)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String episodeId)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEpisodeEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEpisodeEvent value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEpisodeEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodeEventCopyWith<EpisodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeEventCopyWith<$Res> {
  factory $EpisodeEventCopyWith(
          EpisodeEvent value, $Res Function(EpisodeEvent) then) =
      _$EpisodeEventCopyWithImpl<$Res>;
  $Res call({String episodeId});
}

/// @nodoc
class _$EpisodeEventCopyWithImpl<$Res> implements $EpisodeEventCopyWith<$Res> {
  _$EpisodeEventCopyWithImpl(this._value, this._then);

  final EpisodeEvent _value;
  // ignore: unused_field
  final $Res Function(EpisodeEvent) _then;

  @override
  $Res call({
    Object? episodeId = freezed,
  }) {
    return _then(_value.copyWith(
      episodeId: episodeId == freezed
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialEpisodeEventCopyWith<$Res>
    implements $EpisodeEventCopyWith<$Res> {
  factory _$InitialEpisodeEventCopyWith(_InitialEpisodeEvent value,
          $Res Function(_InitialEpisodeEvent) then) =
      __$InitialEpisodeEventCopyWithImpl<$Res>;
  @override
  $Res call({String episodeId});
}

/// @nodoc
class __$InitialEpisodeEventCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res>
    implements _$InitialEpisodeEventCopyWith<$Res> {
  __$InitialEpisodeEventCopyWithImpl(
      _InitialEpisodeEvent _value, $Res Function(_InitialEpisodeEvent) _then)
      : super(_value, (v) => _then(v as _InitialEpisodeEvent));

  @override
  _InitialEpisodeEvent get _value => super._value as _InitialEpisodeEvent;

  @override
  $Res call({
    Object? episodeId = freezed,
  }) {
    return _then(_InitialEpisodeEvent(
      episodeId: episodeId == freezed
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialEpisodeEvent implements _InitialEpisodeEvent {
  const _$_InitialEpisodeEvent({required this.episodeId});

  @override
  final String episodeId;

  @override
  String toString() {
    return 'EpisodeEvent.initial(episodeId: $episodeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialEpisodeEvent &&
            (identical(other.episodeId, episodeId) ||
                const DeepCollectionEquality()
                    .equals(other.episodeId, episodeId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(episodeId);

  @JsonKey(ignore: true)
  @override
  _$InitialEpisodeEventCopyWith<_InitialEpisodeEvent> get copyWith =>
      __$InitialEpisodeEventCopyWithImpl<_InitialEpisodeEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String episodeId) initial,
  }) {
    return initial(episodeId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String episodeId)? initial,
  }) {
    return initial?.call(episodeId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String episodeId)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(episodeId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEpisodeEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEpisodeEvent value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEpisodeEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEpisodeEvent implements EpisodeEvent {
  const factory _InitialEpisodeEvent({required String episodeId}) =
      _$_InitialEpisodeEvent;

  @override
  String get episodeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialEpisodeEventCopyWith<_InitialEpisodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EpisodeStateTearOff {
  const _$EpisodeStateTearOff();

  _DataEpisodeState data({required Episode selectedEpisode}) {
    return _DataEpisodeState(
      selectedEpisode: selectedEpisode,
    );
  }

  _InitialEpisodeState initial() {
    return const _InitialEpisodeState();
  }

  _LoadingEpisodeState loading() {
    return const _LoadingEpisodeState();
  }
}

/// @nodoc
const $EpisodeState = _$EpisodeStateTearOff();

/// @nodoc
mixin _$EpisodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Episode selectedEpisode) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Episode selectedEpisode)? data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Episode selectedEpisode)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEpisodeState value) data,
    required TResult Function(_InitialEpisodeState value) initial,
    required TResult Function(_LoadingEpisodeState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataEpisodeState value)? data,
    TResult Function(_InitialEpisodeState value)? initial,
    TResult Function(_LoadingEpisodeState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodeState value)? data,
    TResult Function(_InitialEpisodeState value)? initial,
    TResult Function(_LoadingEpisodeState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeStateCopyWith<$Res> {
  factory $EpisodeStateCopyWith(
          EpisodeState value, $Res Function(EpisodeState) then) =
      _$EpisodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EpisodeStateCopyWithImpl<$Res> implements $EpisodeStateCopyWith<$Res> {
  _$EpisodeStateCopyWithImpl(this._value, this._then);

  final EpisodeState _value;
  // ignore: unused_field
  final $Res Function(EpisodeState) _then;
}

/// @nodoc
abstract class _$DataEpisodeStateCopyWith<$Res> {
  factory _$DataEpisodeStateCopyWith(
          _DataEpisodeState value, $Res Function(_DataEpisodeState) then) =
      __$DataEpisodeStateCopyWithImpl<$Res>;
  $Res call({Episode selectedEpisode});
}

/// @nodoc
class __$DataEpisodeStateCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res>
    implements _$DataEpisodeStateCopyWith<$Res> {
  __$DataEpisodeStateCopyWithImpl(
      _DataEpisodeState _value, $Res Function(_DataEpisodeState) _then)
      : super(_value, (v) => _then(v as _DataEpisodeState));

  @override
  _DataEpisodeState get _value => super._value as _DataEpisodeState;

  @override
  $Res call({
    Object? selectedEpisode = freezed,
  }) {
    return _then(_DataEpisodeState(
      selectedEpisode: selectedEpisode == freezed
          ? _value.selectedEpisode
          : selectedEpisode // ignore: cast_nullable_to_non_nullable
              as Episode,
    ));
  }
}

/// @nodoc

class _$_DataEpisodeState implements _DataEpisodeState {
  const _$_DataEpisodeState({required this.selectedEpisode});

  @override
  final Episode selectedEpisode;

  @override
  String toString() {
    return 'EpisodeState.data(selectedEpisode: $selectedEpisode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataEpisodeState &&
            (identical(other.selectedEpisode, selectedEpisode) ||
                const DeepCollectionEquality()
                    .equals(other.selectedEpisode, selectedEpisode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedEpisode);

  @JsonKey(ignore: true)
  @override
  _$DataEpisodeStateCopyWith<_DataEpisodeState> get copyWith =>
      __$DataEpisodeStateCopyWithImpl<_DataEpisodeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Episode selectedEpisode) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(selectedEpisode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Episode selectedEpisode)? data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return data?.call(selectedEpisode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Episode selectedEpisode)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(selectedEpisode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataEpisodeState value) data,
    required TResult Function(_InitialEpisodeState value) initial,
    required TResult Function(_LoadingEpisodeState value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataEpisodeState value)? data,
    TResult Function(_InitialEpisodeState value)? initial,
    TResult Function(_LoadingEpisodeState value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodeState value)? data,
    TResult Function(_InitialEpisodeState value)? initial,
    TResult Function(_LoadingEpisodeState value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataEpisodeState implements EpisodeState {
  const factory _DataEpisodeState({required Episode selectedEpisode}) =
      _$_DataEpisodeState;

  Episode get selectedEpisode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataEpisodeStateCopyWith<_DataEpisodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialEpisodeStateCopyWith<$Res> {
  factory _$InitialEpisodeStateCopyWith(_InitialEpisodeState value,
          $Res Function(_InitialEpisodeState) then) =
      __$InitialEpisodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialEpisodeStateCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res>
    implements _$InitialEpisodeStateCopyWith<$Res> {
  __$InitialEpisodeStateCopyWithImpl(
      _InitialEpisodeState _value, $Res Function(_InitialEpisodeState) _then)
      : super(_value, (v) => _then(v as _InitialEpisodeState));

  @override
  _InitialEpisodeState get _value => super._value as _InitialEpisodeState;
}

/// @nodoc

class _$_InitialEpisodeState implements _InitialEpisodeState {
  const _$_InitialEpisodeState();

  @override
  String toString() {
    return 'EpisodeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialEpisodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Episode selectedEpisode) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Episode selectedEpisode)? data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Episode selectedEpisode)? data,
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
    required TResult Function(_DataEpisodeState value) data,
    required TResult Function(_InitialEpisodeState value) initial,
    required TResult Function(_LoadingEpisodeState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataEpisodeState value)? data,
    TResult Function(_InitialEpisodeState value)? initial,
    TResult Function(_LoadingEpisodeState value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodeState value)? data,
    TResult Function(_InitialEpisodeState value)? initial,
    TResult Function(_LoadingEpisodeState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialEpisodeState implements EpisodeState {
  const factory _InitialEpisodeState() = _$_InitialEpisodeState;
}

/// @nodoc
abstract class _$LoadingEpisodeStateCopyWith<$Res> {
  factory _$LoadingEpisodeStateCopyWith(_LoadingEpisodeState value,
          $Res Function(_LoadingEpisodeState) then) =
      __$LoadingEpisodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingEpisodeStateCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res>
    implements _$LoadingEpisodeStateCopyWith<$Res> {
  __$LoadingEpisodeStateCopyWithImpl(
      _LoadingEpisodeState _value, $Res Function(_LoadingEpisodeState) _then)
      : super(_value, (v) => _then(v as _LoadingEpisodeState));

  @override
  _LoadingEpisodeState get _value => super._value as _LoadingEpisodeState;
}

/// @nodoc

class _$_LoadingEpisodeState implements _LoadingEpisodeState {
  const _$_LoadingEpisodeState();

  @override
  String toString() {
    return 'EpisodeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingEpisodeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Episode selectedEpisode) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Episode selectedEpisode)? data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Episode selectedEpisode)? data,
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
    required TResult Function(_DataEpisodeState value) data,
    required TResult Function(_InitialEpisodeState value) initial,
    required TResult Function(_LoadingEpisodeState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataEpisodeState value)? data,
    TResult Function(_InitialEpisodeState value)? initial,
    TResult Function(_LoadingEpisodeState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataEpisodeState value)? data,
    TResult Function(_InitialEpisodeState value)? initial,
    TResult Function(_LoadingEpisodeState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingEpisodeState implements EpisodeState {
  const factory _LoadingEpisodeState() = _$_LoadingEpisodeState;
}
