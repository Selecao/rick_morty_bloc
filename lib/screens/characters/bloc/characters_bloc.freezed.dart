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

  _SelectedFiltersCharactersEvent selectedFilters(
      {required List<int> status,
      required List<int> gender,
      required bool isSortAscending}) {
    return _SelectedFiltersCharactersEvent(
      status: status,
      gender: gender,
      isSortAscending: isSortAscending,
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
    required TResult Function(
            List<int> status, List<int> gender, bool isSortAscending)
        selectedFilters,
    required TResult Function(String chars) find,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
    TResult Function(List<int> status, List<int> gender, bool isSortAscending)?
        selectedFilters,
    TResult Function(String chars)? find,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCharactersEvent value) initial,
    required TResult Function(_SelectedViewCharactersEvent value) selectedView,
    required TResult Function(_SelectedFiltersCharactersEvent value)
        selectedFilters,
    required TResult Function(_FindingCharactersEvent value) find,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
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

class _$_InitialCharactersEvent
    with DiagnosticableTreeMixin
    implements _InitialCharactersEvent {
  const _$_InitialCharactersEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CharactersEvent.initial'));
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
    required TResult Function(
            List<int> status, List<int> gender, bool isSortAscending)
        selectedFilters,
    required TResult Function(String chars) find,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
    TResult Function(List<int> status, List<int> gender, bool isSortAscending)?
        selectedFilters,
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
    required TResult Function(_SelectedFiltersCharactersEvent value)
        selectedFilters,
    required TResult Function(_FindingCharactersEvent value) find,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
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

class _$_SelectedViewCharactersEvent
    with DiagnosticableTreeMixin
    implements _SelectedViewCharactersEvent {
  const _$_SelectedViewCharactersEvent({required this.isGrid});

  @override
  final bool isGrid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.selectedView(isGrid: $isGrid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersEvent.selectedView'))
      ..add(DiagnosticsProperty('isGrid', isGrid));
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
    required TResult Function(
            List<int> status, List<int> gender, bool isSortAscending)
        selectedFilters,
    required TResult Function(String chars) find,
  }) {
    return selectedView(isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
    TResult Function(List<int> status, List<int> gender, bool isSortAscending)?
        selectedFilters,
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
    required TResult Function(_SelectedFiltersCharactersEvent value)
        selectedFilters,
    required TResult Function(_FindingCharactersEvent value) find,
  }) {
    return selectedView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
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
abstract class _$SelectedFiltersCharactersEventCopyWith<$Res> {
  factory _$SelectedFiltersCharactersEventCopyWith(
          _SelectedFiltersCharactersEvent value,
          $Res Function(_SelectedFiltersCharactersEvent) then) =
      __$SelectedFiltersCharactersEventCopyWithImpl<$Res>;
  $Res call({List<int> status, List<int> gender, bool isSortAscending});
}

/// @nodoc
class __$SelectedFiltersCharactersEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$SelectedFiltersCharactersEventCopyWith<$Res> {
  __$SelectedFiltersCharactersEventCopyWithImpl(
      _SelectedFiltersCharactersEvent _value,
      $Res Function(_SelectedFiltersCharactersEvent) _then)
      : super(_value, (v) => _then(v as _SelectedFiltersCharactersEvent));

  @override
  _SelectedFiltersCharactersEvent get _value =>
      super._value as _SelectedFiltersCharactersEvent;

  @override
  $Res call({
    Object? status = freezed,
    Object? gender = freezed,
    Object? isSortAscending = freezed,
  }) {
    return _then(_SelectedFiltersCharactersEvent(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<int>,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isSortAscending: isSortAscending == freezed
          ? _value.isSortAscending
          : isSortAscending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SelectedFiltersCharactersEvent
    with DiagnosticableTreeMixin
    implements _SelectedFiltersCharactersEvent {
  const _$_SelectedFiltersCharactersEvent(
      {required this.status,
      required this.gender,
      required this.isSortAscending});

  @override
  final List<int> status;
  @override
  final List<int> gender;
  @override
  final bool isSortAscending;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.selectedFilters(status: $status, gender: $gender, isSortAscending: $isSortAscending)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersEvent.selectedFilters'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('isSortAscending', isSortAscending));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedFiltersCharactersEvent &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.isSortAscending, isSortAscending) ||
                const DeepCollectionEquality()
                    .equals(other.isSortAscending, isSortAscending)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(isSortAscending);

  @JsonKey(ignore: true)
  @override
  _$SelectedFiltersCharactersEventCopyWith<_SelectedFiltersCharactersEvent>
      get copyWith => __$SelectedFiltersCharactersEventCopyWithImpl<
          _SelectedFiltersCharactersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isGrid) selectedView,
    required TResult Function(
            List<int> status, List<int> gender, bool isSortAscending)
        selectedFilters,
    required TResult Function(String chars) find,
  }) {
    return selectedFilters(status, gender, isSortAscending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
    TResult Function(List<int> status, List<int> gender, bool isSortAscending)?
        selectedFilters,
    TResult Function(String chars)? find,
    required TResult orElse(),
  }) {
    if (selectedFilters != null) {
      return selectedFilters(status, gender, isSortAscending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCharactersEvent value) initial,
    required TResult Function(_SelectedViewCharactersEvent value) selectedView,
    required TResult Function(_SelectedFiltersCharactersEvent value)
        selectedFilters,
    required TResult Function(_FindingCharactersEvent value) find,
  }) {
    return selectedFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
    TResult Function(_FindingCharactersEvent value)? find,
    required TResult orElse(),
  }) {
    if (selectedFilters != null) {
      return selectedFilters(this);
    }
    return orElse();
  }
}

abstract class _SelectedFiltersCharactersEvent implements CharactersEvent {
  const factory _SelectedFiltersCharactersEvent(
      {required List<int> status,
      required List<int> gender,
      required bool isSortAscending}) = _$_SelectedFiltersCharactersEvent;

  List<int> get status => throw _privateConstructorUsedError;
  List<int> get gender => throw _privateConstructorUsedError;
  bool get isSortAscending => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedFiltersCharactersEventCopyWith<_SelectedFiltersCharactersEvent>
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

class _$_FindingCharactersEvent
    with DiagnosticableTreeMixin
    implements _FindingCharactersEvent {
  const _$_FindingCharactersEvent({required this.chars});

  @override
  final String chars;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.find(chars: $chars)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersEvent.find'))
      ..add(DiagnosticsProperty('chars', chars));
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
    required TResult Function(
            List<int> status, List<int> gender, bool isSortAscending)
        selectedFilters,
    required TResult Function(String chars) find,
  }) {
    return find(chars);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
    TResult Function(List<int> status, List<int> gender, bool isSortAscending)?
        selectedFilters,
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
    required TResult Function(_SelectedFiltersCharactersEvent value)
        selectedFilters,
    required TResult Function(_FindingCharactersEvent value) find,
  }) {
    return find(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
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
      {required List<Character> charactersList,
      required bool isGrid,
      required List<int> status,
      required List<int> gender,
      required bool isSortAscending}) {
    return _DataCharactersState(
      charactersList: charactersList,
      isGrid: isGrid,
      status: status,
      gender: gender,
      isSortAscending: isSortAscending,
    );
  }

  _InitialCharactersState initial() {
    return const _InitialCharactersState();
  }

  _LoadingCharactersState loading() {
    return const _LoadingCharactersState();
  }

  _FindCharactersState finding({required List<Character> charactersList}) {
    return _FindCharactersState(
      charactersList: charactersList,
    );
  }
}

/// @nodoc
const $CharactersState = _$CharactersStateTearOff();

/// @nodoc
mixin _$CharactersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> charactersList, bool isGrid,
            List<int> status, List<int> gender, bool isSortAscending)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> charactersList) finding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid,
            List<int> status, List<int> gender, bool isSortAscending)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> charactersList)? finding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataCharactersState value) data,
    required TResult Function(_InitialCharactersState value) initial,
    required TResult Function(_LoadingCharactersState value) loading,
    required TResult Function(_FindCharactersState value) finding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
    TResult Function(_FindCharactersState value)? finding,
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
  $Res call(
      {List<Character> charactersList,
      bool isGrid,
      List<int> status,
      List<int> gender,
      bool isSortAscending});
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
    Object? status = freezed,
    Object? gender = freezed,
    Object? isSortAscending = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<int>,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isSortAscending: isSortAscending == freezed
          ? _value.isSortAscending
          : isSortAscending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DataCharactersState
    with DiagnosticableTreeMixin
    implements _DataCharactersState {
  const _$_DataCharactersState(
      {required this.charactersList,
      required this.isGrid,
      required this.status,
      required this.gender,
      required this.isSortAscending});

  @override

  /// Параметры
  final List<Character> charactersList;
  @override
  final bool isGrid;
  @override
  final List<int> status;
  @override
  final List<int> gender;
  @override
  final bool isSortAscending;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.data(charactersList: $charactersList, isGrid: $isGrid, status: $status, gender: $gender, isSortAscending: $isSortAscending)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersState.data'))
      ..add(DiagnosticsProperty('charactersList', charactersList))
      ..add(DiagnosticsProperty('isGrid', isGrid))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('isSortAscending', isSortAscending));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataCharactersState &&
            (identical(other.charactersList, charactersList) ||
                const DeepCollectionEquality()
                    .equals(other.charactersList, charactersList)) &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.isSortAscending, isSortAscending) ||
                const DeepCollectionEquality()
                    .equals(other.isSortAscending, isSortAscending)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(charactersList) ^
      const DeepCollectionEquality().hash(isGrid) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(isSortAscending);

  @JsonKey(ignore: true)
  @override
  _$DataCharactersStateCopyWith<_DataCharactersState> get copyWith =>
      __$DataCharactersStateCopyWithImpl<_DataCharactersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> charactersList, bool isGrid,
            List<int> status, List<int> gender, bool isSortAscending)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> charactersList) finding,
  }) {
    return data(charactersList, isGrid, status, gender, isSortAscending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid,
            List<int> status, List<int> gender, bool isSortAscending)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> charactersList)? finding,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(charactersList, isGrid, status, gender, isSortAscending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataCharactersState value) data,
    required TResult Function(_InitialCharactersState value) initial,
    required TResult Function(_LoadingCharactersState value) loading,
    required TResult Function(_FindCharactersState value) finding,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
    TResult Function(_FindCharactersState value)? finding,
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
      required bool isGrid,
      required List<int> status,
      required List<int> gender,
      required bool isSortAscending}) = _$_DataCharactersState;

  /// Параметры
  List<Character> get charactersList => throw _privateConstructorUsedError;
  bool get isGrid => throw _privateConstructorUsedError;
  List<int> get status => throw _privateConstructorUsedError;
  List<int> get gender => throw _privateConstructorUsedError;
  bool get isSortAscending => throw _privateConstructorUsedError;
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

class _$_InitialCharactersState
    with DiagnosticableTreeMixin
    implements _InitialCharactersState {
  const _$_InitialCharactersState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CharactersState.initial'));
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
    required TResult Function(List<Character> charactersList, bool isGrid,
            List<int> status, List<int> gender, bool isSortAscending)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> charactersList) finding,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid,
            List<int> status, List<int> gender, bool isSortAscending)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> charactersList)? finding,
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
    required TResult Function(_FindCharactersState value) finding,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
    TResult Function(_FindCharactersState value)? finding,
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

class _$_LoadingCharactersState
    with DiagnosticableTreeMixin
    implements _LoadingCharactersState {
  const _$_LoadingCharactersState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CharactersState.loading'));
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
    required TResult Function(List<Character> charactersList, bool isGrid,
            List<int> status, List<int> gender, bool isSortAscending)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> charactersList) finding,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid,
            List<int> status, List<int> gender, bool isSortAscending)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> charactersList)? finding,
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
    required TResult Function(_FindCharactersState value) finding,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
    TResult Function(_FindCharactersState value)? finding,
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
abstract class _$FindCharactersStateCopyWith<$Res> {
  factory _$FindCharactersStateCopyWith(_FindCharactersState value,
          $Res Function(_FindCharactersState) then) =
      __$FindCharactersStateCopyWithImpl<$Res>;
  $Res call({List<Character> charactersList});
}

/// @nodoc
class __$FindCharactersStateCopyWithImpl<$Res>
    extends _$CharactersStateCopyWithImpl<$Res>
    implements _$FindCharactersStateCopyWith<$Res> {
  __$FindCharactersStateCopyWithImpl(
      _FindCharactersState _value, $Res Function(_FindCharactersState) _then)
      : super(_value, (v) => _then(v as _FindCharactersState));

  @override
  _FindCharactersState get _value => super._value as _FindCharactersState;

  @override
  $Res call({
    Object? charactersList = freezed,
  }) {
    return _then(_FindCharactersState(
      charactersList: charactersList == freezed
          ? _value.charactersList
          : charactersList // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$_FindCharactersState
    with DiagnosticableTreeMixin
    implements _FindCharactersState {
  const _$_FindCharactersState({required this.charactersList});

  @override
  final List<Character> charactersList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.finding(charactersList: $charactersList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersState.finding'))
      ..add(DiagnosticsProperty('charactersList', charactersList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FindCharactersState &&
            (identical(other.charactersList, charactersList) ||
                const DeepCollectionEquality()
                    .equals(other.charactersList, charactersList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(charactersList);

  @JsonKey(ignore: true)
  @override
  _$FindCharactersStateCopyWith<_FindCharactersState> get copyWith =>
      __$FindCharactersStateCopyWithImpl<_FindCharactersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> charactersList, bool isGrid,
            List<int> status, List<int> gender, bool isSortAscending)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Character> charactersList) finding,
  }) {
    return finding(charactersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid,
            List<int> status, List<int> gender, bool isSortAscending)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Character> charactersList)? finding,
    required TResult orElse(),
  }) {
    if (finding != null) {
      return finding(charactersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataCharactersState value) data,
    required TResult Function(_InitialCharactersState value) initial,
    required TResult Function(_LoadingCharactersState value) loading,
    required TResult Function(_FindCharactersState value) finding,
  }) {
    return finding(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
    TResult Function(_FindCharactersState value)? finding,
    required TResult orElse(),
  }) {
    if (finding != null) {
      return finding(this);
    }
    return orElse();
  }
}

abstract class _FindCharactersState implements CharactersState {
  const factory _FindCharactersState(
      {required List<Character> charactersList}) = _$_FindCharactersState;

  List<Character> get charactersList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FindCharactersStateCopyWith<_FindCharactersState> get copyWith =>
      throw _privateConstructorUsedError;
}
