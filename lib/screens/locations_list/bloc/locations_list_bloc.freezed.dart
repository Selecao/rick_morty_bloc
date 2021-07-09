// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'locations_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationsListEventTearOff {
  const _$LocationsListEventTearOff();

  _InitialLocationsListEvent initial() {
    return const _InitialLocationsListEvent();
  }

  _FindLocationsListEvent find({required String chars}) {
    return _FindLocationsListEvent(
      chars: chars,
    );
  }
}

/// @nodoc
const $LocationsListEvent = _$LocationsListEventTearOff();

/// @nodoc
mixin _$LocationsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chars) find,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chars)? find,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLocationsListEvent value) initial,
    required TResult Function(_FindLocationsListEvent value) find,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_FindLocationsListEvent value)? find,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsListEventCopyWith<$Res> {
  factory $LocationsListEventCopyWith(
          LocationsListEvent value, $Res Function(LocationsListEvent) then) =
      _$LocationsListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsListEventCopyWithImpl<$Res>
    implements $LocationsListEventCopyWith<$Res> {
  _$LocationsListEventCopyWithImpl(this._value, this._then);

  final LocationsListEvent _value;
  // ignore: unused_field
  final $Res Function(LocationsListEvent) _then;
}

/// @nodoc
abstract class _$InitialLocationsListEventCopyWith<$Res> {
  factory _$InitialLocationsListEventCopyWith(_InitialLocationsListEvent value,
          $Res Function(_InitialLocationsListEvent) then) =
      __$InitialLocationsListEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialLocationsListEventCopyWithImpl<$Res>
    extends _$LocationsListEventCopyWithImpl<$Res>
    implements _$InitialLocationsListEventCopyWith<$Res> {
  __$InitialLocationsListEventCopyWithImpl(_InitialLocationsListEvent _value,
      $Res Function(_InitialLocationsListEvent) _then)
      : super(_value, (v) => _then(v as _InitialLocationsListEvent));

  @override
  _InitialLocationsListEvent get _value =>
      super._value as _InitialLocationsListEvent;
}

/// @nodoc

class _$_InitialLocationsListEvent implements _InitialLocationsListEvent {
  const _$_InitialLocationsListEvent();

  @override
  String toString() {
    return 'LocationsListEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialLocationsListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chars) find,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chars)? find,
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
    required TResult Function(_InitialLocationsListEvent value) initial,
    required TResult Function(_FindLocationsListEvent value) find,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_FindLocationsListEvent value)? find,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLocationsListEvent implements LocationsListEvent {
  const factory _InitialLocationsListEvent() = _$_InitialLocationsListEvent;
}

/// @nodoc
abstract class _$FindLocationsListEventCopyWith<$Res> {
  factory _$FindLocationsListEventCopyWith(_FindLocationsListEvent value,
          $Res Function(_FindLocationsListEvent) then) =
      __$FindLocationsListEventCopyWithImpl<$Res>;
  $Res call({String chars});
}

/// @nodoc
class __$FindLocationsListEventCopyWithImpl<$Res>
    extends _$LocationsListEventCopyWithImpl<$Res>
    implements _$FindLocationsListEventCopyWith<$Res> {
  __$FindLocationsListEventCopyWithImpl(_FindLocationsListEvent _value,
      $Res Function(_FindLocationsListEvent) _then)
      : super(_value, (v) => _then(v as _FindLocationsListEvent));

  @override
  _FindLocationsListEvent get _value => super._value as _FindLocationsListEvent;

  @override
  $Res call({
    Object? chars = freezed,
  }) {
    return _then(_FindLocationsListEvent(
      chars: chars == freezed
          ? _value.chars
          : chars // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FindLocationsListEvent implements _FindLocationsListEvent {
  const _$_FindLocationsListEvent({required this.chars});

  @override
  final String chars;

  @override
  String toString() {
    return 'LocationsListEvent.find(chars: $chars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindLocationsListEvent &&
            (identical(other.chars, chars) ||
                const DeepCollectionEquality().equals(other.chars, chars)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chars);

  @JsonKey(ignore: true)
  @override
  _$FindLocationsListEventCopyWith<_FindLocationsListEvent> get copyWith =>
      __$FindLocationsListEventCopyWithImpl<_FindLocationsListEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String chars) find,
  }) {
    return find(chars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String chars)? find,
    required TResult orElse(),
  }) {
    if (find != null) {
      return find(chars);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLocationsListEvent value) initial,
    required TResult Function(_FindLocationsListEvent value) find,
  }) {
    return find(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_FindLocationsListEvent value)? find,
    required TResult orElse(),
  }) {
    if (find != null) {
      return find(this);
    }
    return orElse();
  }
}

abstract class _FindLocationsListEvent implements LocationsListEvent {
  const factory _FindLocationsListEvent({required String chars}) =
      _$_FindLocationsListEvent;

  String get chars => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FindLocationsListEventCopyWith<_FindLocationsListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationsListStateTearOff {
  const _$LocationsListStateTearOff();

  _DataLocationsListState data({required List<Location> locationsList}) {
    return _DataLocationsListState(
      locationsList: locationsList,
    );
  }

  _InitialLocationsListState initial() {
    return const _InitialLocationsListState();
  }

  _LoadingLocationsListState loading() {
    return const _LoadingLocationsListState();
  }
}

/// @nodoc
const $LocationsListState = _$LocationsListStateTearOff();

/// @nodoc
mixin _$LocationsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Location> locationsList) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location> locationsList)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLocationsListState value) data,
    required TResult Function(_InitialLocationsListState value) initial,
    required TResult Function(_LoadingLocationsListState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationsListState value)? data,
    TResult Function(_InitialLocationsListState value)? initial,
    TResult Function(_LoadingLocationsListState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsListStateCopyWith<$Res> {
  factory $LocationsListStateCopyWith(
          LocationsListState value, $Res Function(LocationsListState) then) =
      _$LocationsListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationsListStateCopyWithImpl<$Res>
    implements $LocationsListStateCopyWith<$Res> {
  _$LocationsListStateCopyWithImpl(this._value, this._then);

  final LocationsListState _value;
  // ignore: unused_field
  final $Res Function(LocationsListState) _then;
}

/// @nodoc
abstract class _$DataLocationsListStateCopyWith<$Res> {
  factory _$DataLocationsListStateCopyWith(_DataLocationsListState value,
          $Res Function(_DataLocationsListState) then) =
      __$DataLocationsListStateCopyWithImpl<$Res>;
  $Res call({List<Location> locationsList});
}

/// @nodoc
class __$DataLocationsListStateCopyWithImpl<$Res>
    extends _$LocationsListStateCopyWithImpl<$Res>
    implements _$DataLocationsListStateCopyWith<$Res> {
  __$DataLocationsListStateCopyWithImpl(_DataLocationsListState _value,
      $Res Function(_DataLocationsListState) _then)
      : super(_value, (v) => _then(v as _DataLocationsListState));

  @override
  _DataLocationsListState get _value => super._value as _DataLocationsListState;

  @override
  $Res call({
    Object? locationsList = freezed,
  }) {
    return _then(_DataLocationsListState(
      locationsList: locationsList == freezed
          ? _value.locationsList
          : locationsList // ignore: cast_nullable_to_non_nullable
              as List<Location>,
    ));
  }
}

/// @nodoc

class _$_DataLocationsListState implements _DataLocationsListState {
  const _$_DataLocationsListState({required this.locationsList});

  @override

  /// Параметры
  final List<Location> locationsList;

  @override
  String toString() {
    return 'LocationsListState.data(locationsList: $locationsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataLocationsListState &&
            (identical(other.locationsList, locationsList) ||
                const DeepCollectionEquality()
                    .equals(other.locationsList, locationsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationsList);

  @JsonKey(ignore: true)
  @override
  _$DataLocationsListStateCopyWith<_DataLocationsListState> get copyWith =>
      __$DataLocationsListStateCopyWithImpl<_DataLocationsListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Location> locationsList) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(locationsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location> locationsList)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(locationsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLocationsListState value) data,
    required TResult Function(_InitialLocationsListState value) initial,
    required TResult Function(_LoadingLocationsListState value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationsListState value)? data,
    TResult Function(_InitialLocationsListState value)? initial,
    TResult Function(_LoadingLocationsListState value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataLocationsListState implements LocationsListState {
  const factory _DataLocationsListState(
      {required List<Location> locationsList}) = _$_DataLocationsListState;

  /// Параметры
  List<Location> get locationsList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataLocationsListStateCopyWith<_DataLocationsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialLocationsListStateCopyWith<$Res> {
  factory _$InitialLocationsListStateCopyWith(_InitialLocationsListState value,
          $Res Function(_InitialLocationsListState) then) =
      __$InitialLocationsListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialLocationsListStateCopyWithImpl<$Res>
    extends _$LocationsListStateCopyWithImpl<$Res>
    implements _$InitialLocationsListStateCopyWith<$Res> {
  __$InitialLocationsListStateCopyWithImpl(_InitialLocationsListState _value,
      $Res Function(_InitialLocationsListState) _then)
      : super(_value, (v) => _then(v as _InitialLocationsListState));

  @override
  _InitialLocationsListState get _value =>
      super._value as _InitialLocationsListState;
}

/// @nodoc

class _$_InitialLocationsListState implements _InitialLocationsListState {
  const _$_InitialLocationsListState();

  @override
  String toString() {
    return 'LocationsListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialLocationsListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Location> locationsList) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location> locationsList)? data,
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
    required TResult Function(_DataLocationsListState value) data,
    required TResult Function(_InitialLocationsListState value) initial,
    required TResult Function(_LoadingLocationsListState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationsListState value)? data,
    TResult Function(_InitialLocationsListState value)? initial,
    TResult Function(_LoadingLocationsListState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLocationsListState implements LocationsListState {
  const factory _InitialLocationsListState() = _$_InitialLocationsListState;
}

/// @nodoc
abstract class _$LoadingLocationsListStateCopyWith<$Res> {
  factory _$LoadingLocationsListStateCopyWith(_LoadingLocationsListState value,
          $Res Function(_LoadingLocationsListState) then) =
      __$LoadingLocationsListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingLocationsListStateCopyWithImpl<$Res>
    extends _$LocationsListStateCopyWithImpl<$Res>
    implements _$LoadingLocationsListStateCopyWith<$Res> {
  __$LoadingLocationsListStateCopyWithImpl(_LoadingLocationsListState _value,
      $Res Function(_LoadingLocationsListState) _then)
      : super(_value, (v) => _then(v as _LoadingLocationsListState));

  @override
  _LoadingLocationsListState get _value =>
      super._value as _LoadingLocationsListState;
}

/// @nodoc

class _$_LoadingLocationsListState implements _LoadingLocationsListState {
  const _$_LoadingLocationsListState();

  @override
  String toString() {
    return 'LocationsListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingLocationsListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Location> locationsList) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location> locationsList)? data,
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
    required TResult Function(_DataLocationsListState value) data,
    required TResult Function(_InitialLocationsListState value) initial,
    required TResult Function(_LoadingLocationsListState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationsListState value)? data,
    TResult Function(_InitialLocationsListState value)? initial,
    TResult Function(_LoadingLocationsListState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingLocationsListState implements LocationsListState {
  const factory _LoadingLocationsListState() = _$_LoadingLocationsListState;
}
