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
      {required String name,
      required List<int> status,
      required List<int> gender,
      required bool isSortAscending}) {
    return _SelectedFiltersCharactersEvent(
      name: name,
      status: status,
      gender: gender,
      isSortAscending: isSortAscending,
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
    required TResult Function(String name, List<int> status, List<int> gender,
            bool isSortAscending)
        selectedFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
    TResult Function(String name, List<int> status, List<int> gender,
            bool isSortAscending)?
        selectedFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCharactersEvent value) initial,
    required TResult Function(_SelectedViewCharactersEvent value) selectedView,
    required TResult Function(_SelectedFiltersCharactersEvent value)
        selectedFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
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
    required TResult Function(String name, List<int> status, List<int> gender,
            bool isSortAscending)
        selectedFilters,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
    TResult Function(String name, List<int> status, List<int> gender,
            bool isSortAscending)?
        selectedFilters,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
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
    required TResult Function(String name, List<int> status, List<int> gender,
            bool isSortAscending)
        selectedFilters,
  }) {
    return selectedView(isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
    TResult Function(String name, List<int> status, List<int> gender,
            bool isSortAscending)?
        selectedFilters,
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
  }) {
    return selectedView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
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
  $Res call(
      {String name, List<int> status, List<int> gender, bool isSortAscending});
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
    Object? name = freezed,
    Object? status = freezed,
    Object? gender = freezed,
    Object? isSortAscending = freezed,
  }) {
    return _then(_SelectedFiltersCharactersEvent(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      {required this.name,
      required this.status,
      required this.gender,
      required this.isSortAscending});

  @override
  final String name;
  @override
  final List<int> status;
  @override
  final List<int> gender;
  @override
  final bool isSortAscending;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.selectedFilters(name: $name, status: $status, gender: $gender, isSortAscending: $isSortAscending)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersEvent.selectedFilters'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('isSortAscending', isSortAscending));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedFiltersCharactersEvent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(name) ^
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
    required TResult Function(String name, List<int> status, List<int> gender,
            bool isSortAscending)
        selectedFilters,
  }) {
    return selectedFilters(name, status, gender, isSortAscending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isGrid)? selectedView,
    TResult Function(String name, List<int> status, List<int> gender,
            bool isSortAscending)?
        selectedFilters,
    required TResult orElse(),
  }) {
    if (selectedFilters != null) {
      return selectedFilters(name, status, gender, isSortAscending);
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
  }) {
    return selectedFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
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
      {required String name,
      required List<int> status,
      required List<int> gender,
      required bool isSortAscending}) = _$_SelectedFiltersCharactersEvent;

  String get name => throw _privateConstructorUsedError;
  List<int> get status => throw _privateConstructorUsedError;
  List<int> get gender => throw _privateConstructorUsedError;
  bool get isSortAscending => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedFiltersCharactersEventCopyWith<_SelectedFiltersCharactersEvent>
      get copyWith => throw _privateConstructorUsedError;
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid,
            List<int> status, List<int> gender, bool isSortAscending)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataCharactersState value) data,
    required TResult Function(_InitialCharactersState value) initial,
    required TResult Function(_LoadingCharactersState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
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
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
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
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataCharactersState value)? data,
    TResult Function(_InitialCharactersState value)? initial,
    TResult Function(_LoadingCharactersState value)? loading,
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
