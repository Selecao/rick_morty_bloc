// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'characters_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CharactersEventTearOff {
  const _$CharactersEventTearOff();

  _InitialCharactersEvent initial() {
    return const _InitialCharactersEvent();
  }

  _SelectedViewCharactersEvent selectedView({required bool isGrid}) {
    return _SelectedViewCharactersEvent(
      isGrid: isGrid,
    );
  }

  _FindingCharactersEvent find({required String chars}) {
    return _FindingCharactersEvent(
      chars: chars,
    );
  }
}

/// @nodoc
const $CharactersEvent = _$CharactersEventTearOff();

/// @nodoc
mixin _$CharactersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isGrid) selectedView,
    required TResult Function(String chars) find,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
    TResult Function(String chars)? find,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCharactersEvent value) initial,
    required TResult Function(_SelectedViewCharactersEvent value) selectedView,
    required TResult Function(_FindingCharactersEvent value) find,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_FindingCharactersEvent value)? find,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  final CharactersEvent _value;
  // ignore: unused_field
  final $Res Function(CharactersEvent) _then;
}

/// @nodoc
abstract class _$InitialCharactersEventCopyWith<$Res> {
  factory _$InitialCharactersEventCopyWith(_InitialCharactersEvent value,
          $Res Function(_InitialCharactersEvent) then) =
      __$InitialCharactersEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCharactersEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$InitialCharactersEventCopyWith<$Res> {
  __$InitialCharactersEventCopyWithImpl(_InitialCharactersEvent _value,
      $Res Function(_InitialCharactersEvent) _then)
      : super(_value, (v) => _then(v as _InitialCharactersEvent));

  @override
  _InitialCharactersEvent get _value => super._value as _InitialCharactersEvent;
}

/// @nodoc

class _$_InitialCharactersEvent implements _InitialCharactersEvent {
  const _$_InitialCharactersEvent();

  @override
  String toString() {
    return 'CharactersEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialCharactersEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isGrid) selectedView,
    required TResult Function(String chars) find,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
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
    required TResult Function(_InitialCharactersEvent value) initial,
    required TResult Function(_SelectedViewCharactersEvent value) selectedView,
    required TResult Function(_FindingCharactersEvent value) find,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_FindingCharactersEvent value)? find,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCharactersEvent implements CharactersEvent {
  const factory _InitialCharactersEvent() = _$_InitialCharactersEvent;
}

/// @nodoc
abstract class _$SelectedViewCharactersEventCopyWith<$Res> {
  factory _$SelectedViewCharactersEventCopyWith(
          _SelectedViewCharactersEvent value,
          $Res Function(_SelectedViewCharactersEvent) then) =
      __$SelectedViewCharactersEventCopyWithImpl<$Res>;
  $Res call({bool isGrid});
}

/// @nodoc
class __$SelectedViewCharactersEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$SelectedViewCharactersEventCopyWith<$Res> {
  __$SelectedViewCharactersEventCopyWithImpl(
      _SelectedViewCharactersEvent _value,
      $Res Function(_SelectedViewCharactersEvent) _then)
      : super(_value, (v) => _then(v as _SelectedViewCharactersEvent));

  @override
  _SelectedViewCharactersEvent get _value =>
      super._value as _SelectedViewCharactersEvent;

  @override
  $Res call({
    Object? isGrid = freezed,
  }) {
    return _then(_SelectedViewCharactersEvent(
      isGrid: isGrid == freezed
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SelectedViewCharactersEvent implements _SelectedViewCharactersEvent {
  const _$_SelectedViewCharactersEvent({required this.isGrid});

  @override
  final bool isGrid;

  @override
  String toString() {
    return 'CharactersEvent.selectedView(isGrid: $isGrid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedViewCharactersEvent &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  _$SelectedViewCharactersEventCopyWith<_SelectedViewCharactersEvent>
      get copyWith => __$SelectedViewCharactersEventCopyWithImpl<
          _SelectedViewCharactersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isGrid) selectedView,
    required TResult Function(String chars) find,
  }) {
    return selectedView(isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
    TResult Function(String chars)? find,
    required TResult orElse(),
  }) {
    if (selectedView != null) {
      return selectedView(isGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCharactersEvent value) initial,
    required TResult Function(_SelectedViewCharactersEvent value) selectedView,
    required TResult Function(_FindingCharactersEvent value) find,
  }) {
    return selectedView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_FindingCharactersEvent value)? find,
    required TResult orElse(),
  }) {
    if (selectedView != null) {
      return selectedView(this);
    }
    return orElse();
  }
}

abstract class _SelectedViewCharactersEvent implements CharactersEvent {
  const factory _SelectedViewCharactersEvent({required bool isGrid}) =
      _$_SelectedViewCharactersEvent;

  bool get isGrid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedViewCharactersEventCopyWith<_SelectedViewCharactersEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FindingCharactersEventCopyWith<$Res> {
  factory _$FindingCharactersEventCopyWith(_FindingCharactersEvent value,
          $Res Function(_FindingCharactersEvent) then) =
      __$FindingCharactersEventCopyWithImpl<$Res>;
  $Res call({String chars});
}

/// @nodoc
class __$FindingCharactersEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$FindingCharactersEventCopyWith<$Res> {
  __$FindingCharactersEventCopyWithImpl(_FindingCharactersEvent _value,
      $Res Function(_FindingCharactersEvent) _then)
      : super(_value, (v) => _then(v as _FindingCharactersEvent));

  @override
  _FindingCharactersEvent get _value => super._value as _FindingCharactersEvent;

  @override
  $Res call({
    Object? chars = freezed,
  }) {
    return _then(_FindingCharactersEvent(
      chars: chars == freezed
          ? _value.chars
          : chars // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FindingCharactersEvent implements _FindingCharactersEvent {
  const _$_FindingCharactersEvent({required this.chars});

  @override
  final String chars;

  @override
  String toString() {
    return 'CharactersEvent.find(chars: $chars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindingCharactersEvent &&
            (identical(other.chars, chars) ||
                const DeepCollectionEquality().equals(other.chars, chars)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chars);

  @JsonKey(ignore: true)
  @override
  _$FindingCharactersEventCopyWith<_FindingCharactersEvent> get copyWith =>
      __$FindingCharactersEventCopyWithImpl<_FindingCharactersEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isGrid) selectedView,
    required TResult Function(String chars) find,
  }) {
    return find(chars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
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
    required TResult Function(_InitialCharactersEvent value) initial,
    required TResult Function(_SelectedViewCharactersEvent value) selectedView,
    required TResult Function(_FindingCharactersEvent value) find,
  }) {
    return find(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_FindingCharactersEvent value)? find,
    required TResult orElse(),
  }) {
    if (find != null) {
      return find(this);
    }
    return orElse();
  }
}

abstract class _FindingCharactersEvent implements CharactersEvent {
  const factory _FindingCharactersEvent({required String chars}) =
      _$_FindingCharactersEvent;

  String get chars => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FindingCharactersEventCopyWith<_FindingCharactersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CharactersStateTearOff {
  const _$CharactersStateTearOff();

  _DataCharactersState data(
      {required List<Character> charactersList, required bool isGrid}) {
    return _DataCharactersState(
      charactersList: charactersList,
      isGrid: isGrid,
    );
  }

  _InitialCharactersState initial() {
    return const _InitialCharactersState();
  }

  _LoadingCharactersState loading() {
    return const _LoadingCharactersState();
  }

  _MessageState message() {
    return const _MessageState();
  }
}

/// @nodoc
const $CharactersState = _$CharactersStateTearOff();

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> charactersList, bool isGrid) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataCharactersState value) data,
    required TResult Function(_InitialCharactersState value) initial,
    required TResult Function(_LoadingCharactersState value) loading,
    required TResult Function(_MessageState value) message,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
    TResult Function(_MessageState value)? message,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersStateCopyWith<$Res> {
  factory $CharactersStateCopyWith(
          CharactersState value, $Res Function(CharactersState) then) =
      _$CharactersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CharactersStateCopyWithImpl<$Res>
    implements $CharactersStateCopyWith<$Res> {
  _$CharactersStateCopyWithImpl(this._value, this._then);

  final CharactersState _value;
  // ignore: unused_field
  final $Res Function(CharactersState) _then;
}

/// @nodoc
abstract class _$DataCharactersStateCopyWith<$Res> {
  factory _$DataCharactersStateCopyWith(_DataCharactersState value,
          $Res Function(_DataCharactersState) then) =
      __$DataCharactersStateCopyWithImpl<$Res>;
  $Res call({List<Character> charactersList, bool isGrid});
}

/// @nodoc
class __$DataCharactersStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$DataCharactersStateCopyWith<$Res> {
  __$DataCharactersStateCopyWithImpl(
      _DataCharactersState _value, $Res Function(_DataCharactersState) _then)
      : super(_value, (v) => _then(v as _DataCharactersState));

  @override
  _DataCharactersState get _value => super._value as _DataCharactersState;

  @override
  $Res call({
    Object? charactersList = freezed,
    Object? isGrid = freezed,
  }) {
    return _then(_DataCharactersState(
      charactersList: charactersList == freezed
          ? _value.charactersList
          : charactersList // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      isGrid: isGrid == freezed
          ? _value.isGrid
          : isGrid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DataCharactersState implements _DataCharactersState {
  const _$_DataCharactersState(
      {required this.charactersList, required this.isGrid});

  @override

  /// Параметры
  final List<Character> charactersList;
  @override
  final bool isGrid;

  @override
  String toString() {
    return 'CharactersState.data(charactersList: $charactersList, isGrid: $isGrid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataCharactersState &&
            (identical(other.charactersList, charactersList) ||
                const DeepCollectionEquality()
                    .equals(other.charactersList, charactersList)) &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(charactersList) ^
      const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  _$DataCharactersStateCopyWith<_DataCharactersState> get copyWith =>
      __$DataCharactersStateCopyWithImpl<_DataCharactersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> charactersList, bool isGrid) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() message,
  }) {
    return data(charactersList, isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? message,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(charactersList, isGrid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataCharactersState value) data,
    required TResult Function(_InitialCharactersState value) initial,
    required TResult Function(_LoadingCharactersState value) loading,
    required TResult Function(_MessageState value) message,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
    TResult Function(_MessageState value)? message,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataCharactersState implements CharactersState {
  const factory _DataCharactersState(
      {required List<Character> charactersList,
      required bool isGrid}) = _$_DataCharactersState;

  /// Параметры
  List<Character> get charactersList => throw _privateConstructorUsedError;
  bool get isGrid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCharactersStateCopyWith<_DataCharactersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialCharactersStateCopyWith<$Res> {
  factory _$InitialCharactersStateCopyWith(_InitialCharactersState value,
          $Res Function(_InitialCharactersState) then) =
      __$InitialCharactersStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCharactersStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$InitialCharactersStateCopyWith<$Res> {
  __$InitialCharactersStateCopyWithImpl(_InitialCharactersState _value,
      $Res Function(_InitialCharactersState) _then)
      : super(_value, (v) => _then(v as _InitialCharactersState));

  @override
  _InitialCharactersState get _value => super._value as _InitialCharactersState;
}

/// @nodoc

class _$_InitialCharactersState implements _InitialCharactersState {
  const _$_InitialCharactersState();

  @override
  String toString() {
    return 'CharactersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialCharactersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> charactersList, bool isGrid) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() message,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? message,
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
    required TResult Function(_DataCharactersState value) data,
    required TResult Function(_InitialCharactersState value) initial,
    required TResult Function(_LoadingCharactersState value) loading,
    required TResult Function(_MessageState value) message,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
    TResult Function(_MessageState value)? message,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCharactersState implements CharactersState {
  const factory _InitialCharactersState() = _$_InitialCharactersState;
}

/// @nodoc
abstract class _$LoadingCharactersStateCopyWith<$Res> {
  factory _$LoadingCharactersStateCopyWith(_LoadingCharactersState value,
          $Res Function(_LoadingCharactersState) then) =
      __$LoadingCharactersStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCharactersStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$LoadingCharactersStateCopyWith<$Res> {
  __$LoadingCharactersStateCopyWithImpl(_LoadingCharactersState _value,
      $Res Function(_LoadingCharactersState) _then)
      : super(_value, (v) => _then(v as _LoadingCharactersState));

  @override
  _LoadingCharactersState get _value => super._value as _LoadingCharactersState;
}

/// @nodoc

class _$_LoadingCharactersState implements _LoadingCharactersState {
  const _$_LoadingCharactersState();

  @override
  String toString() {
    return 'CharactersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingCharactersState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> charactersList, bool isGrid) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() message,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? message,
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
    required TResult Function(_DataCharactersState value) data,
    required TResult Function(_InitialCharactersState value) initial,
    required TResult Function(_LoadingCharactersState value) loading,
    required TResult Function(_MessageState value) message,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
    TResult Function(_MessageState value)? message,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingCharactersState implements CharactersState {
  const factory _LoadingCharactersState() = _$_LoadingCharactersState;
}

/// @nodoc
abstract class _$MessageStateCopyWith<$Res> {
  factory _$MessageStateCopyWith(
          _MessageState value, $Res Function(_MessageState) then) =
      __$MessageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$MessageStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$MessageStateCopyWith<$Res> {
  __$MessageStateCopyWithImpl(
      _MessageState _value, $Res Function(_MessageState) _then)
      : super(_value, (v) => _then(v as _MessageState));

  @override
  _MessageState get _value => super._value as _MessageState;
}

/// @nodoc

class _$_MessageState implements _MessageState {
  const _$_MessageState();

  @override
  String toString() {
    return 'CharactersState.message()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MessageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> charactersList, bool isGrid) data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() message,
  }) {
    return message();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataCharactersState value) data,
    required TResult Function(_InitialCharactersState value) initial,
    required TResult Function(_LoadingCharactersState value) loading,
    required TResult Function(_MessageState value) message,
  }) {
    return message(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
    TResult Function(_MessageState value)? message,
    required TResult orElse(),
  }) {
    if (message != null) {
      return message(this);
    }
    return orElse();
  }
}

abstract class _MessageState implements CharactersState {
  const factory _MessageState() = _$_MessageState;
}
