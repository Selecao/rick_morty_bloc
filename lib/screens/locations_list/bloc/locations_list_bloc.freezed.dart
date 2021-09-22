// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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

  _InitialLocationsListEvent initial({required LocationsFilter filter}) {
    return _InitialLocationsListEvent(
      filter: filter,
    );
  }

  _SelectedFiltersEvent selectedFilters({required LocationsFilter filter}) {
    return _SelectedFiltersEvent(
      filter: filter,
    );
  }

  _NextPageEvent nextPage({required LocationsFilter filter}) {
    return _NextPageEvent(
      filter: filter,
    );
  }
}

/// @nodoc
const $LocationsListEvent = _$LocationsListEventTearOff();

/// @nodoc
mixin _$LocationsListEvent {
  LocationsFilter get filter => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationsFilter filter) initial,
    required TResult Function(LocationsFilter filter) selectedFilters,
    required TResult Function(LocationsFilter filter) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationsFilter filter)? initial,
    TResult Function(LocationsFilter filter)? selectedFilters,
    TResult Function(LocationsFilter filter)? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationsFilter filter)? initial,
    TResult Function(LocationsFilter filter)? selectedFilters,
    TResult Function(LocationsFilter filter)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLocationsListEvent value) initial,
    required TResult Function(_SelectedFiltersEvent value) selectedFilters,
    required TResult Function(_NextPageEvent value) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_SelectedFiltersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_SelectedFiltersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationsListEventCopyWith<LocationsListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationsListEventCopyWith<$Res> {
  factory $LocationsListEventCopyWith(
          LocationsListEvent value, $Res Function(LocationsListEvent) then) =
      _$LocationsListEventCopyWithImpl<$Res>;
  $Res call({LocationsFilter filter});
}

/// @nodoc
class _$LocationsListEventCopyWithImpl<$Res>
    implements $LocationsListEventCopyWith<$Res> {
  _$LocationsListEventCopyWithImpl(this._value, this._then);

  final LocationsListEvent _value;
  // ignore: unused_field
  final $Res Function(LocationsListEvent) _then;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as LocationsFilter,
    ));
  }
}

/// @nodoc
abstract class _$InitialLocationsListEventCopyWith<$Res>
    implements $LocationsListEventCopyWith<$Res> {
  factory _$InitialLocationsListEventCopyWith(_InitialLocationsListEvent value,
          $Res Function(_InitialLocationsListEvent) then) =
      __$InitialLocationsListEventCopyWithImpl<$Res>;
  @override
  $Res call({LocationsFilter filter});
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

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_InitialLocationsListEvent(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as LocationsFilter,
    ));
  }
}

/// @nodoc

class _$_InitialLocationsListEvent implements _InitialLocationsListEvent {
  const _$_InitialLocationsListEvent({required this.filter});

  @override
  final LocationsFilter filter;

  @override
  String toString() {
    return 'LocationsListEvent.initial(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InitialLocationsListEvent &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$InitialLocationsListEventCopyWith<_InitialLocationsListEvent>
      get copyWith =>
          __$InitialLocationsListEventCopyWithImpl<_InitialLocationsListEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationsFilter filter) initial,
    required TResult Function(LocationsFilter filter) selectedFilters,
    required TResult Function(LocationsFilter filter) nextPage,
  }) {
    return initial(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationsFilter filter)? initial,
    TResult Function(LocationsFilter filter)? selectedFilters,
    TResult Function(LocationsFilter filter)? nextPage,
  }) {
    return initial?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationsFilter filter)? initial,
    TResult Function(LocationsFilter filter)? selectedFilters,
    TResult Function(LocationsFilter filter)? nextPage,
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
    required TResult Function(_InitialLocationsListEvent value) initial,
    required TResult Function(_SelectedFiltersEvent value) selectedFilters,
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_SelectedFiltersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_SelectedFiltersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLocationsListEvent implements LocationsListEvent {
  const factory _InitialLocationsListEvent({required LocationsFilter filter}) =
      _$_InitialLocationsListEvent;

  @override
  LocationsFilter get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialLocationsListEventCopyWith<_InitialLocationsListEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SelectedFiltersEventCopyWith<$Res>
    implements $LocationsListEventCopyWith<$Res> {
  factory _$SelectedFiltersEventCopyWith(_SelectedFiltersEvent value,
          $Res Function(_SelectedFiltersEvent) then) =
      __$SelectedFiltersEventCopyWithImpl<$Res>;
  @override
  $Res call({LocationsFilter filter});
}

/// @nodoc
class __$SelectedFiltersEventCopyWithImpl<$Res>
    extends _$LocationsListEventCopyWithImpl<$Res>
    implements _$SelectedFiltersEventCopyWith<$Res> {
  __$SelectedFiltersEventCopyWithImpl(
      _SelectedFiltersEvent _value, $Res Function(_SelectedFiltersEvent) _then)
      : super(_value, (v) => _then(v as _SelectedFiltersEvent));

  @override
  _SelectedFiltersEvent get _value => super._value as _SelectedFiltersEvent;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_SelectedFiltersEvent(
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as LocationsFilter,
    ));
  }
}

/// @nodoc

class _$_SelectedFiltersEvent implements _SelectedFiltersEvent {
  const _$_SelectedFiltersEvent({required this.filter});

  @override
  final LocationsFilter filter;

  @override
  String toString() {
    return 'LocationsListEvent.selectedFilters(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedFiltersEvent &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @JsonKey(ignore: true)
  @override
  _$SelectedFiltersEventCopyWith<_SelectedFiltersEvent> get copyWith =>
      __$SelectedFiltersEventCopyWithImpl<_SelectedFiltersEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocationsFilter filter) initial,
    required TResult Function(LocationsFilter filter) selectedFilters,
    required TResult Function(LocationsFilter filter) nextPage,
  }) {
    return selectedFilters(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationsFilter filter)? initial,
    TResult Function(LocationsFilter filter)? selectedFilters,
    TResult Function(LocationsFilter filter)? nextPage,
  }) {
    return selectedFilters?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationsFilter filter)? initial,
    TResult Function(LocationsFilter filter)? selectedFilters,
    TResult Function(LocationsFilter filter)? nextPage,
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
    required TResult Function(_InitialLocationsListEvent value) initial,
    required TResult Function(_SelectedFiltersEvent value) selectedFilters,
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return selectedFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_SelectedFiltersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
  }) {
    return selectedFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_SelectedFiltersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) {
    if (selectedFilters != null) {
      return selectedFilters(this);
    }
    return orElse();
  }
}

abstract class _SelectedFiltersEvent implements LocationsListEvent {
  const factory _SelectedFiltersEvent({required LocationsFilter filter}) =
      _$_SelectedFiltersEvent;

  @override
  LocationsFilter get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SelectedFiltersEventCopyWith<_SelectedFiltersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NextPageEventCopyWith<$Res>
    implements $LocationsListEventCopyWith<$Res> {
  factory _$NextPageEventCopyWith(
          _NextPageEvent value, $Res Function(_NextPageEvent) then) =
      __$NextPageEventCopyWithImpl<$Res>;
  @override
  $Res call({LocationsFilter filter});
}

/// @nodoc
class __$NextPageEventCopyWithImpl<$Res>
    extends _$LocationsListEventCopyWithImpl<$Res>
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
              as LocationsFilter,
    ));
  }
}

/// @nodoc

class _$_NextPageEvent implements _NextPageEvent {
  const _$_NextPageEvent({required this.filter});

  @override
  final LocationsFilter filter;

  @override
  String toString() {
    return 'LocationsListEvent.nextPage(filter: $filter)';
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
    required TResult Function(LocationsFilter filter) initial,
    required TResult Function(LocationsFilter filter) selectedFilters,
    required TResult Function(LocationsFilter filter) nextPage,
  }) {
    return nextPage(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocationsFilter filter)? initial,
    TResult Function(LocationsFilter filter)? selectedFilters,
    TResult Function(LocationsFilter filter)? nextPage,
  }) {
    return nextPage?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocationsFilter filter)? initial,
    TResult Function(LocationsFilter filter)? selectedFilters,
    TResult Function(LocationsFilter filter)? nextPage,
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
    required TResult Function(_InitialLocationsListEvent value) initial,
    required TResult Function(_SelectedFiltersEvent value) selectedFilters,
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_SelectedFiltersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_SelectedFiltersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPageEvent implements LocationsListEvent {
  const factory _NextPageEvent({required LocationsFilter filter}) =
      _$_NextPageEvent;

  @override
  LocationsFilter get filter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NextPageEventCopyWith<_NextPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocationsListStateTearOff {
  const _$LocationsListStateTearOff();

  _DataLocationsListState data(
      {required List<Location> locationsList,
      required LocationsFilter locationsFilter}) {
    return _DataLocationsListState(
      locationsList: locationsList,
      locationsFilter: locationsFilter,
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
    required TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)?
        data,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataLocationsListState value)? data,
    TResult Function(_InitialLocationsListState value)? initial,
    TResult Function(_LoadingLocationsListState value)? loading,
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
  $Res call({List<Location> locationsList, LocationsFilter locationsFilter});
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
    Object? locationsFilter = freezed,
  }) {
    return _then(_DataLocationsListState(
      locationsList: locationsList == freezed
          ? _value.locationsList
          : locationsList // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      locationsFilter: locationsFilter == freezed
          ? _value.locationsFilter
          : locationsFilter // ignore: cast_nullable_to_non_nullable
              as LocationsFilter,
    ));
  }
}

/// @nodoc

class _$_DataLocationsListState implements _DataLocationsListState {
  const _$_DataLocationsListState(
      {required this.locationsList, required this.locationsFilter});

  @override

  /// Параметры
  final List<Location> locationsList;
  @override
  final LocationsFilter locationsFilter;

  @override
  String toString() {
    return 'LocationsListState.data(locationsList: $locationsList, locationsFilter: $locationsFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataLocationsListState &&
            (identical(other.locationsList, locationsList) ||
                const DeepCollectionEquality()
                    .equals(other.locationsList, locationsList)) &&
            (identical(other.locationsFilter, locationsFilter) ||
                const DeepCollectionEquality()
                    .equals(other.locationsFilter, locationsFilter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationsList) ^
      const DeepCollectionEquality().hash(locationsFilter);

  @JsonKey(ignore: true)
  @override
  _$DataLocationsListStateCopyWith<_DataLocationsListState> get copyWith =>
      __$DataLocationsListStateCopyWithImpl<_DataLocationsListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(locationsList, locationsFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return data?.call(locationsList, locationsFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(locationsList, locationsFilter);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataLocationsListState value)? data,
    TResult Function(_InitialLocationsListState value)? initial,
    TResult Function(_LoadingLocationsListState value)? loading,
  }) {
    return data?.call(this);
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
      {required List<Location> locationsList,
      required LocationsFilter locationsFilter}) = _$_DataLocationsListState;

  /// Параметры
  List<Location> get locationsList => throw _privateConstructorUsedError;
  LocationsFilter get locationsFilter => throw _privateConstructorUsedError;
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
    required TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)?
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
    required TResult Function(_DataLocationsListState value) data,
    required TResult Function(_InitialLocationsListState value) initial,
    required TResult Function(_LoadingLocationsListState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataLocationsListState value)? data,
    TResult Function(_InitialLocationsListState value)? initial,
    TResult Function(_LoadingLocationsListState value)? loading,
  }) {
    return initial?.call(this);
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
    required TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Location> locationsList, LocationsFilter locationsFilter)?
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
    required TResult Function(_DataLocationsListState value) data,
    required TResult Function(_InitialLocationsListState value) initial,
    required TResult Function(_LoadingLocationsListState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataLocationsListState value)? data,
    TResult Function(_InitialLocationsListState value)? initial,
    TResult Function(_LoadingLocationsListState value)? loading,
  }) {
    return loading?.call(this);
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
