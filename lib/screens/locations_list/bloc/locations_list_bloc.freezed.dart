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

  _SelectedFiltersEvent selectedFilters(
      {required String locationToFind,
      required bool? isSortAscending,
      required String locationType,
      required String locationMeasure}) {
    return _SelectedFiltersEvent(
      locationToFind: locationToFind,
      isSortAscending: isSortAscending,
      locationType: locationType,
      locationMeasure: locationMeasure,
    );
  }

  _NextPageEvent nextPage() {
    return const _NextPageEvent();
  }
}

/// @nodoc
const $LocationsListEvent = _$LocationsListEventTearOff();

/// @nodoc
mixin _$LocationsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String locationToFind, bool? isSortAscending,
            String locationType, String locationMeasure)
        selectedFilters,
    required TResult Function() nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String locationToFind, bool? isSortAscending,
            String locationType, String locationMeasure)?
        selectedFilters,
    TResult Function()? nextPage,
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationsListEvent value)? initial,
    TResult Function(_SelectedFiltersEvent value)? selectedFilters,
    TResult Function(_NextPageEvent value)? nextPage,
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
    required TResult Function(String locationToFind, bool? isSortAscending,
            String locationType, String locationMeasure)
        selectedFilters,
    required TResult Function() nextPage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String locationToFind, bool? isSortAscending,
            String locationType, String locationMeasure)?
        selectedFilters,
    TResult Function()? nextPage,
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
    required TResult Function(_SelectedFiltersEvent value) selectedFilters,
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return initial(this);
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
  const factory _InitialLocationsListEvent() = _$_InitialLocationsListEvent;
}

/// @nodoc
abstract class _$SelectedFiltersEventCopyWith<$Res> {
  factory _$SelectedFiltersEventCopyWith(_SelectedFiltersEvent value,
          $Res Function(_SelectedFiltersEvent) then) =
      __$SelectedFiltersEventCopyWithImpl<$Res>;
  $Res call(
      {String locationToFind,
      bool? isSortAscending,
      String locationType,
      String locationMeasure});
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
    Object? locationToFind = freezed,
    Object? isSortAscending = freezed,
    Object? locationType = freezed,
    Object? locationMeasure = freezed,
  }) {
    return _then(_SelectedFiltersEvent(
      locationToFind: locationToFind == freezed
          ? _value.locationToFind
          : locationToFind // ignore: cast_nullable_to_non_nullable
              as String,
      isSortAscending: isSortAscending == freezed
          ? _value.isSortAscending
          : isSortAscending // ignore: cast_nullable_to_non_nullable
              as bool?,
      locationType: locationType == freezed
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as String,
      locationMeasure: locationMeasure == freezed
          ? _value.locationMeasure
          : locationMeasure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectedFiltersEvent implements _SelectedFiltersEvent {
  const _$_SelectedFiltersEvent(
      {required this.locationToFind,
      required this.isSortAscending,
      required this.locationType,
      required this.locationMeasure});

  @override
  final String locationToFind;
  @override
  final bool? isSortAscending;
  @override
  final String locationType;
  @override
  final String locationMeasure;

  @override
  String toString() {
    return 'LocationsListEvent.selectedFilters(locationToFind: $locationToFind, isSortAscending: $isSortAscending, locationType: $locationType, locationMeasure: $locationMeasure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedFiltersEvent &&
            (identical(other.locationToFind, locationToFind) ||
                const DeepCollectionEquality()
                    .equals(other.locationToFind, locationToFind)) &&
            (identical(other.isSortAscending, isSortAscending) ||
                const DeepCollectionEquality()
                    .equals(other.isSortAscending, isSortAscending)) &&
            (identical(other.locationType, locationType) ||
                const DeepCollectionEquality()
                    .equals(other.locationType, locationType)) &&
            (identical(other.locationMeasure, locationMeasure) ||
                const DeepCollectionEquality()
                    .equals(other.locationMeasure, locationMeasure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationToFind) ^
      const DeepCollectionEquality().hash(isSortAscending) ^
      const DeepCollectionEquality().hash(locationType) ^
      const DeepCollectionEquality().hash(locationMeasure);

  @JsonKey(ignore: true)
  @override
  _$SelectedFiltersEventCopyWith<_SelectedFiltersEvent> get copyWith =>
      __$SelectedFiltersEventCopyWithImpl<_SelectedFiltersEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String locationToFind, bool? isSortAscending,
            String locationType, String locationMeasure)
        selectedFilters,
    required TResult Function() nextPage,
  }) {
    return selectedFilters(
        locationToFind, isSortAscending, locationType, locationMeasure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String locationToFind, bool? isSortAscending,
            String locationType, String locationMeasure)?
        selectedFilters,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (selectedFilters != null) {
      return selectedFilters(
          locationToFind, isSortAscending, locationType, locationMeasure);
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
  const factory _SelectedFiltersEvent(
      {required String locationToFind,
      required bool? isSortAscending,
      required String locationType,
      required String locationMeasure}) = _$_SelectedFiltersEvent;

  String get locationToFind => throw _privateConstructorUsedError;
  bool? get isSortAscending => throw _privateConstructorUsedError;
  String get locationType => throw _privateConstructorUsedError;
  String get locationMeasure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedFiltersEventCopyWith<_SelectedFiltersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NextPageEventCopyWith<$Res> {
  factory _$NextPageEventCopyWith(
          _NextPageEvent value, $Res Function(_NextPageEvent) then) =
      __$NextPageEventCopyWithImpl<$Res>;
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
}

/// @nodoc

class _$_NextPageEvent implements _NextPageEvent {
  const _$_NextPageEvent();

  @override
  String toString() {
    return 'LocationsListEvent.nextPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextPageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String locationToFind, bool? isSortAscending,
            String locationType, String locationMeasure)
        selectedFilters,
    required TResult Function() nextPage,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String locationToFind, bool? isSortAscending,
            String locationType, String locationMeasure)?
        selectedFilters,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
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
  const factory _NextPageEvent() = _$_NextPageEvent;
}

/// @nodoc
class _$LocationsListStateTearOff {
  const _$LocationsListStateTearOff();

  _DataLocationsListState data(
      {required List<Location> locationsList, bool? isLastPage}) {
    return _DataLocationsListState(
      locationsList: locationsList,
      isLastPage: isLastPage,
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
    required TResult Function(List<Location> locationsList, bool? isLastPage)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location> locationsList, bool? isLastPage)? data,
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
  $Res call({List<Location> locationsList, bool? isLastPage});
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
    Object? isLastPage = freezed,
  }) {
    return _then(_DataLocationsListState(
      locationsList: locationsList == freezed
          ? _value.locationsList
          : locationsList // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      isLastPage: isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_DataLocationsListState implements _DataLocationsListState {
  const _$_DataLocationsListState(
      {required this.locationsList, this.isLastPage});

  @override

  /// Параметры
  final List<Location> locationsList;
  @override
  final bool? isLastPage;

  @override
  String toString() {
    return 'LocationsListState.data(locationsList: $locationsList, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataLocationsListState &&
            (identical(other.locationsList, locationsList) ||
                const DeepCollectionEquality()
                    .equals(other.locationsList, locationsList)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locationsList) ^
      const DeepCollectionEquality().hash(isLastPage);

  @JsonKey(ignore: true)
  @override
  _$DataLocationsListStateCopyWith<_DataLocationsListState> get copyWith =>
      __$DataLocationsListStateCopyWithImpl<_DataLocationsListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Location> locationsList, bool? isLastPage)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(locationsList, isLastPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location> locationsList, bool? isLastPage)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(locationsList, isLastPage);
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
      {required List<Location> locationsList,
      bool? isLastPage}) = _$_DataLocationsListState;

  /// Параметры
  List<Location> get locationsList => throw _privateConstructorUsedError;
  bool? get isLastPage => throw _privateConstructorUsedError;
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
    required TResult Function(List<Location> locationsList, bool? isLastPage)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location> locationsList, bool? isLastPage)? data,
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
    required TResult Function(List<Location> locationsList, bool? isLastPage)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Location> locationsList, bool? isLastPage)? data,
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
