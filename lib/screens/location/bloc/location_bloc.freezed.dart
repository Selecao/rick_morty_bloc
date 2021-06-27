// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationEventTearOff {
  const _$LocationEventTearOff();

  _InitialLocationEvent initial() {
    return const _InitialLocationEvent();
  }
}

/// @nodoc
const $LocationEvent = _$LocationEventTearOff();

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialLocationEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  final LocationEvent _value;
  // ignore: unused_field
  final $Res Function(LocationEvent) _then;
}

/// @nodoc
abstract class _$InitialLocationEventCopyWith<$Res> {
  factory _$InitialLocationEventCopyWith(_InitialLocationEvent value,
          $Res Function(_InitialLocationEvent) then) =
      __$InitialLocationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialLocationEventCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res>
    implements _$InitialLocationEventCopyWith<$Res> {
  __$InitialLocationEventCopyWithImpl(
      _InitialLocationEvent _value, $Res Function(_InitialLocationEvent) _then)
      : super(_value, (v) => _then(v as _InitialLocationEvent));

  @override
  _InitialLocationEvent get _value => super._value as _InitialLocationEvent;
}

/// @nodoc

class _$_InitialLocationEvent implements _InitialLocationEvent {
  const _$_InitialLocationEvent();

  @override
  String toString() {
    return 'LocationEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialLocationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(_InitialLocationEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialLocationEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLocationEvent implements LocationEvent {
  const factory _InitialLocationEvent() = _$_InitialLocationEvent;
}

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _DataLocationState data(
      {required Location location, required List<Datum> charactersAtLocation}) {
    return _DataLocationState(
      location: location,
      charactersAtLocation: charactersAtLocation,
    );
  }

  _InitialLocationState initial() {
    return const _InitialLocationState();
  }

  _LoadingLocationState loading() {
    return const _LoadingLocationState();
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Location location, List<Datum> charactersAtLocation)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<Datum> charactersAtLocation)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLocationState value) data,
    required TResult Function(_InitialLocationState value) initial,
    required TResult Function(_LoadingLocationState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationState value)? data,
    TResult Function(_InitialLocationState value)? initial,
    TResult Function(_LoadingLocationState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;
}

/// @nodoc
abstract class _$DataLocationStateCopyWith<$Res> {
  factory _$DataLocationStateCopyWith(
          _DataLocationState value, $Res Function(_DataLocationState) then) =
      __$DataLocationStateCopyWithImpl<$Res>;
  $Res call({Location location, List<Datum> charactersAtLocation});
}

/// @nodoc
class __$DataLocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$DataLocationStateCopyWith<$Res> {
  __$DataLocationStateCopyWithImpl(
      _DataLocationState _value, $Res Function(_DataLocationState) _then)
      : super(_value, (v) => _then(v as _DataLocationState));

  @override
  _DataLocationState get _value => super._value as _DataLocationState;

  @override
  $Res call({
    Object? location = freezed,
    Object? charactersAtLocation = freezed,
  }) {
    return _then(_DataLocationState(
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      charactersAtLocation: charactersAtLocation == freezed
          ? _value.charactersAtLocation
          : charactersAtLocation // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
    ));
  }
}

/// @nodoc

class _$_DataLocationState implements _DataLocationState {
  const _$_DataLocationState(
      {required this.location, required this.charactersAtLocation});

  @override

  ///Параметры
  final Location location;
  @override
  final List<Datum> charactersAtLocation;

  @override
  String toString() {
    return 'LocationState.data(location: $location, charactersAtLocation: $charactersAtLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataLocationState &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.charactersAtLocation, charactersAtLocation) ||
                const DeepCollectionEquality()
                    .equals(other.charactersAtLocation, charactersAtLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(charactersAtLocation);

  @JsonKey(ignore: true)
  @override
  _$DataLocationStateCopyWith<_DataLocationState> get copyWith =>
      __$DataLocationStateCopyWithImpl<_DataLocationState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Location location, List<Datum> charactersAtLocation)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(location, charactersAtLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<Datum> charactersAtLocation)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(location, charactersAtLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataLocationState value) data,
    required TResult Function(_InitialLocationState value) initial,
    required TResult Function(_LoadingLocationState value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationState value)? data,
    TResult Function(_InitialLocationState value)? initial,
    TResult Function(_LoadingLocationState value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataLocationState implements LocationState {
  const factory _DataLocationState(
      {required Location location,
      required List<Datum> charactersAtLocation}) = _$_DataLocationState;

  ///Параметры
  Location get location => throw _privateConstructorUsedError;
  List<Datum> get charactersAtLocation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataLocationStateCopyWith<_DataLocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialLocationStateCopyWith<$Res> {
  factory _$InitialLocationStateCopyWith(_InitialLocationState value,
          $Res Function(_InitialLocationState) then) =
      __$InitialLocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialLocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$InitialLocationStateCopyWith<$Res> {
  __$InitialLocationStateCopyWithImpl(
      _InitialLocationState _value, $Res Function(_InitialLocationState) _then)
      : super(_value, (v) => _then(v as _InitialLocationState));

  @override
  _InitialLocationState get _value => super._value as _InitialLocationState;
}

/// @nodoc

class _$_InitialLocationState implements _InitialLocationState {
  const _$_InitialLocationState();

  @override
  String toString() {
    return 'LocationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialLocationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Location location, List<Datum> charactersAtLocation)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<Datum> charactersAtLocation)? data,
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
    required TResult Function(_DataLocationState value) data,
    required TResult Function(_InitialLocationState value) initial,
    required TResult Function(_LoadingLocationState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationState value)? data,
    TResult Function(_InitialLocationState value)? initial,
    TResult Function(_LoadingLocationState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialLocationState implements LocationState {
  const factory _InitialLocationState() = _$_InitialLocationState;
}

/// @nodoc
abstract class _$LoadingLocationStateCopyWith<$Res> {
  factory _$LoadingLocationStateCopyWith(_LoadingLocationState value,
          $Res Function(_LoadingLocationState) then) =
      __$LoadingLocationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingLocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LoadingLocationStateCopyWith<$Res> {
  __$LoadingLocationStateCopyWithImpl(
      _LoadingLocationState _value, $Res Function(_LoadingLocationState) _then)
      : super(_value, (v) => _then(v as _LoadingLocationState));

  @override
  _LoadingLocationState get _value => super._value as _LoadingLocationState;
}

/// @nodoc

class _$_LoadingLocationState implements _LoadingLocationState {
  const _$_LoadingLocationState();

  @override
  String toString() {
    return 'LocationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingLocationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Location location, List<Datum> charactersAtLocation)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Location location, List<Datum> charactersAtLocation)? data,
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
    required TResult Function(_DataLocationState value) data,
    required TResult Function(_InitialLocationState value) initial,
    required TResult Function(_LoadingLocationState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataLocationState value)? data,
    TResult Function(_InitialLocationState value)? initial,
    TResult Function(_LoadingLocationState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingLocationState implements LocationState {
  const factory _LoadingLocationState() = _$_LoadingLocationState;
}
