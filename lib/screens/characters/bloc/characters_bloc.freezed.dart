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

  _InitialCharactersEvent initial({required CharactersFilter filter}) {
    return _InitialCharactersEvent(
      filter: filter,
    );
  }

  _SelectedViewCharactersEvent selectedView(
      {required CharactersFilter filter, required bool isGrid}) {
    return _SelectedViewCharactersEvent(
      filter: filter,
      isGrid: isGrid,
    );
  }

  _SelectedFiltersCharactersEvent selectedFilters(
      {required CharactersFilter filter}) {
    return _SelectedFiltersCharactersEvent(
      filter: filter,
    );
  }

  _NextPageEvent nextPage({required CharactersFilter filter}) {
    return _NextPageEvent(
      filter: filter,
    );
  }
}

/// @nodoc
const $CharactersEvent = _$CharactersEventTearOff();

/// @nodoc
mixin _$CharactersEvent {
  CharactersFilter get filter => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharactersFilter filter) initial,
    required TResult Function(CharactersFilter filter, bool isGrid)
        selectedView,
    required TResult Function(CharactersFilter filter) selectedFilters,
    required TResult Function(CharactersFilter filter) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersFilter filter)? initial,
    TResult Function(CharactersFilter filter, bool isGrid)? selectedView,
    TResult Function(CharactersFilter filter)? selectedFilters,
    TResult Function(CharactersFilter filter)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCharactersEvent value) initial,
    required TResult Function(_SelectedViewCharactersEvent value) selectedView,
    required TResult Function(_SelectedFiltersCharactersEvent value)
        selectedFilters,
    required TResult Function(_NextPageEvent value) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharactersEventCopyWith<CharactersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersEventCopyWith<$Res> {
  factory $CharactersEventCopyWith(
          CharactersEvent value, $Res Function(CharactersEvent) then) =
      _$CharactersEventCopyWithImpl<$Res>;
  $Res call({CharactersFilter filter});
}

/// @nodoc
class _$CharactersEventCopyWithImpl<$Res>
    implements $CharactersEventCopyWith<$Res> {
  _$CharactersEventCopyWithImpl(this._value, this._then);

  final CharactersEvent _value;
  // ignore: unused_field
  final $Res Function(CharactersEvent) _then;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharactersFilter,
    ));
  }
}

/// @nodoc
abstract class _$InitialCharactersEventCopyWith<$Res>
    implements $CharactersEventCopyWith<$Res> {
  factory _$InitialCharactersEventCopyWith(_InitialCharactersEvent value,
          $Res Function(_InitialCharactersEvent) then) =
      __$InitialCharactersEventCopyWithImpl<$Res>;
  @override
  $Res call({CharactersFilter filter});
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

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_InitialCharactersEvent(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharactersFilter,
    ));
  }
}

/// @nodoc

class _$_InitialCharactersEvent
    with DiagnosticableTreeMixin
    implements _InitialCharactersEvent {
  const _$_InitialCharactersEvent({required this.filter});

  @override
  final CharactersFilter filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.initial(filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersEvent.initial'))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialCharactersEvent &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$InitialCharactersEventCopyWith<_InitialCharactersEvent> get copyWith =>
      __$InitialCharactersEventCopyWithImpl<_InitialCharactersEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharactersFilter filter) initial,
    required TResult Function(CharactersFilter filter, bool isGrid)
        selectedView,
    required TResult Function(CharactersFilter filter) selectedFilters,
    required TResult Function(CharactersFilter filter) nextPage,
  }) {
    return initial(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersFilter filter)? initial,
    TResult Function(CharactersFilter filter, bool isGrid)? selectedView,
    TResult Function(CharactersFilter filter)? selectedFilters,
    TResult Function(CharactersFilter filter)? nextPage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(filter);
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
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCharactersEvent implements CharactersEvent {
  const factory _InitialCharactersEvent({required CharactersFilter filter}) =
      _$_InitialCharactersEvent;

  @override
  CharactersFilter get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCharactersEventCopyWith<_InitialCharactersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectedViewCharactersEventCopyWith<$Res>
    implements $CharactersEventCopyWith<$Res> {
  factory _$SelectedViewCharactersEventCopyWith(
          _SelectedViewCharactersEvent value,
          $Res Function(_SelectedViewCharactersEvent) then) =
      __$SelectedViewCharactersEventCopyWithImpl<$Res>;
  @override
  $Res call({CharactersFilter filter, bool isGrid});
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
    Object? filter = freezed,
    Object? isGrid = freezed,
  }) {
    return _then(_SelectedViewCharactersEvent(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharactersFilter,
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
  const _$_SelectedViewCharactersEvent(
      {required this.filter, required this.isGrid});

  @override
  final CharactersFilter filter;
  @override
  final bool isGrid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.selectedView(filter: $filter, isGrid: $isGrid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersEvent.selectedView'))
      ..add(DiagnosticsProperty('filter', filter))
      ..add(DiagnosticsProperty('isGrid', isGrid));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedViewCharactersEvent &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)) &&
            (identical(other.isGrid, isGrid) ||
                const DeepCollectionEquality().equals(other.isGrid, isGrid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filter) ^
      const DeepCollectionEquality().hash(isGrid);

  @JsonKey(ignore: true)
  @override
  _$SelectedViewCharactersEventCopyWith<_SelectedViewCharactersEvent>
      get copyWith => __$SelectedViewCharactersEventCopyWithImpl<
          _SelectedViewCharactersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharactersFilter filter) initial,
    required TResult Function(CharactersFilter filter, bool isGrid)
        selectedView,
    required TResult Function(CharactersFilter filter) selectedFilters,
    required TResult Function(CharactersFilter filter) nextPage,
  }) {
    return selectedView(filter, isGrid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersFilter filter)? initial,
    TResult Function(CharactersFilter filter, bool isGrid)? selectedView,
    TResult Function(CharactersFilter filter)? selectedFilters,
    TResult Function(CharactersFilter filter)? nextPage,
    required TResult orElse(),
  }) {
    if (selectedView != null) {
      return selectedView(filter, isGrid);
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
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return selectedView(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) {
    if (selectedView != null) {
      return selectedView(this);
    }
    return orElse();
  }
}

abstract class _SelectedViewCharactersEvent implements CharactersEvent {
  const factory _SelectedViewCharactersEvent(
      {required CharactersFilter filter,
      required bool isGrid}) = _$_SelectedViewCharactersEvent;

  @override
  CharactersFilter get filter => throw _privateConstructorUsedError;
  bool get isGrid => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectedViewCharactersEventCopyWith<_SelectedViewCharactersEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectedFiltersCharactersEventCopyWith<$Res>
    implements $CharactersEventCopyWith<$Res> {
  factory _$SelectedFiltersCharactersEventCopyWith(
          _SelectedFiltersCharactersEvent value,
          $Res Function(_SelectedFiltersCharactersEvent) then) =
      __$SelectedFiltersCharactersEventCopyWithImpl<$Res>;
  @override
  $Res call({CharactersFilter filter});
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
    Object? filter = freezed,
  }) {
    return _then(_SelectedFiltersCharactersEvent(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharactersFilter,
    ));
  }
}

/// @nodoc

class _$_SelectedFiltersCharactersEvent
    with DiagnosticableTreeMixin
    implements _SelectedFiltersCharactersEvent {
  const _$_SelectedFiltersCharactersEvent({required this.filter});

  @override
  final CharactersFilter filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.selectedFilters(filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersEvent.selectedFilters'))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedFiltersCharactersEvent &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$SelectedFiltersCharactersEventCopyWith<_SelectedFiltersCharactersEvent>
      get copyWith => __$SelectedFiltersCharactersEventCopyWithImpl<
          _SelectedFiltersCharactersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharactersFilter filter) initial,
    required TResult Function(CharactersFilter filter, bool isGrid)
        selectedView,
    required TResult Function(CharactersFilter filter) selectedFilters,
    required TResult Function(CharactersFilter filter) nextPage,
  }) {
    return selectedFilters(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersFilter filter)? initial,
    TResult Function(CharactersFilter filter, bool isGrid)? selectedView,
    TResult Function(CharactersFilter filter)? selectedFilters,
    TResult Function(CharactersFilter filter)? nextPage,
    required TResult orElse(),
  }) {
    if (selectedFilters != null) {
      return selectedFilters(filter);
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
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return selectedFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
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
      {required CharactersFilter filter}) = _$_SelectedFiltersCharactersEvent;

  @override
  CharactersFilter get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectedFiltersCharactersEventCopyWith<_SelectedFiltersCharactersEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NextPageEventCopyWith<$Res>
    implements $CharactersEventCopyWith<$Res> {
  factory _$NextPageEventCopyWith(
          _NextPageEvent value, $Res Function(_NextPageEvent) then) =
      __$NextPageEventCopyWithImpl<$Res>;
  @override
  $Res call({CharactersFilter filter});
}

/// @nodoc
class __$NextPageEventCopyWithImpl<$Res>
    extends _$CharactersEventCopyWithImpl<$Res>
    implements _$NextPageEventCopyWith<$Res> {
  __$NextPageEventCopyWithImpl(
      _NextPageEvent _value, $Res Function(_NextPageEvent) _then)
      : super(_value, (v) => _then(v as _NextPageEvent));

  @override
  _NextPageEvent get _value => super._value as _NextPageEvent;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_NextPageEvent(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as CharactersFilter,
    ));
  }
}

/// @nodoc

class _$_NextPageEvent with DiagnosticableTreeMixin implements _NextPageEvent {
  const _$_NextPageEvent({required this.filter});

  @override
  final CharactersFilter filter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersEvent.nextPage(filter: $filter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersEvent.nextPage'))
      ..add(DiagnosticsProperty('filter', filter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NextPageEvent &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$NextPageEventCopyWith<_NextPageEvent> get copyWith =>
      __$NextPageEventCopyWithImpl<_NextPageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharactersFilter filter) initial,
    required TResult Function(CharactersFilter filter, bool isGrid)
        selectedView,
    required TResult Function(CharactersFilter filter) selectedFilters,
    required TResult Function(CharactersFilter filter) nextPage,
  }) {
    return nextPage(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharactersFilter filter)? initial,
    TResult Function(CharactersFilter filter, bool isGrid)? selectedView,
    TResult Function(CharactersFilter filter)? selectedFilters,
    TResult Function(CharactersFilter filter)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(filter);
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
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCharactersEvent value)? initial,
    TResult Function(_SelectedViewCharactersEvent value)? selectedView,
    TResult Function(_SelectedFiltersCharactersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPageEvent implements CharactersEvent {
  const factory _NextPageEvent({required CharactersFilter filter}) =
      _$_NextPageEvent;

  @override
  CharactersFilter get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NextPageEventCopyWith<_NextPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CharactersStateTearOff {
  const _$CharactersStateTearOff();

  _DataCharactersState data(
      {required List<Character> charactersList,
      required bool isGrid,
      required CharactersFilter charactersFilter}) {
    return _DataCharactersState(
      charactersList: charactersList,
      isGrid: isGrid,
      charactersFilter: charactersFilter,
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
            CharactersFilter charactersFilter)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid,
            CharactersFilter charactersFilter)?
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
      CharactersFilter charactersFilter});
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
    Object? charactersFilter = freezed,
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
      charactersFilter: charactersFilter == freezed
          ? _value.charactersFilter
          : charactersFilter // ignore: cast_nullable_to_non_nullable
              as CharactersFilter,
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
      required this.charactersFilter});

  @override

  /// Параметры
  final List<Character> charactersList;
  @override
  final bool isGrid;
  @override
  final CharactersFilter charactersFilter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CharactersState.data(charactersList: $charactersList, isGrid: $isGrid, charactersFilter: $charactersFilter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CharactersState.data'))
      ..add(DiagnosticsProperty('charactersList', charactersList))
      ..add(DiagnosticsProperty('isGrid', isGrid))
      ..add(DiagnosticsProperty('charactersFilter', charactersFilter));
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
            (identical(other.charactersFilter, charactersFilter) ||
                const DeepCollectionEquality()
                    .equals(other.charactersFilter, charactersFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(charactersList) ^
      const DeepCollectionEquality().hash(isGrid) ^
      const DeepCollectionEquality().hash(charactersFilter);

  @JsonKey(ignore: true)
  @override
  _$DataCharactersStateCopyWith<_DataCharactersState> get copyWith =>
      __$DataCharactersStateCopyWithImpl<_DataCharactersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Character> charactersList, bool isGrid,
            CharactersFilter charactersFilter)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(charactersList, isGrid, charactersFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Character> charactersList, bool isGrid,
            CharactersFilter charactersFilter)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(charactersList, isGrid, charactersFilter);
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
      required CharactersFilter charactersFilter}) = _$_DataCharactersState;

  /// Параметры
  List<Character> get charactersList => throw _privateConstructorUsedError;
  bool get isGrid => throw _privateConstructorUsedError;
  CharactersFilter get charactersFilter => throw _privateConstructorUsedError;
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
            CharactersFilter charactersFilter)
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
            CharactersFilter charactersFilter)?
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
            CharactersFilter charactersFilter)
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
            CharactersFilter charactersFilter)?
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
