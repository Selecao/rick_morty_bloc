// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'adjustments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdjustmentsEventTearOff {
  const _$AdjustmentsEventTearOff();

  _InitialAdjustmentsEvent initial() {
    return const _InitialAdjustmentsEvent();
  }

  _SelectedThemeAdjustmentsEvent selectedTheme(
      {required int darkModeOptionIndex}) {
    return _SelectedThemeAdjustmentsEvent(
      darkModeOptionIndex: darkModeOptionIndex,
    );
  }
}

/// @nodoc
const $AdjustmentsEvent = _$AdjustmentsEventTearOff();

/// @nodoc
mixin _$AdjustmentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int darkModeOptionIndex) selectedTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int darkModeOptionIndex)? selectedTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAdjustmentsEvent value) initial,
    required TResult Function(_SelectedThemeAdjustmentsEvent value)
        selectedTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAdjustmentsEvent value)? initial,
    TResult Function(_SelectedThemeAdjustmentsEvent value)? selectedTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdjustmentsEventCopyWith<$Res> {
  factory $AdjustmentsEventCopyWith(
          AdjustmentsEvent value, $Res Function(AdjustmentsEvent) then) =
      _$AdjustmentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdjustmentsEventCopyWithImpl<$Res>
    implements $AdjustmentsEventCopyWith<$Res> {
  _$AdjustmentsEventCopyWithImpl(this._value, this._then);

  final AdjustmentsEvent _value;
  // ignore: unused_field
  final $Res Function(AdjustmentsEvent) _then;
}

/// @nodoc
abstract class _$InitialAdjustmentsEventCopyWith<$Res> {
  factory _$InitialAdjustmentsEventCopyWith(_InitialAdjustmentsEvent value,
          $Res Function(_InitialAdjustmentsEvent) then) =
      __$InitialAdjustmentsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialAdjustmentsEventCopyWithImpl<$Res>
    extends _$AdjustmentsEventCopyWithImpl<$Res>
    implements _$InitialAdjustmentsEventCopyWith<$Res> {
  __$InitialAdjustmentsEventCopyWithImpl(_InitialAdjustmentsEvent _value,
      $Res Function(_InitialAdjustmentsEvent) _then)
      : super(_value, (v) => _then(v as _InitialAdjustmentsEvent));

  @override
  _InitialAdjustmentsEvent get _value =>
      super._value as _InitialAdjustmentsEvent;
}

/// @nodoc

class _$_InitialAdjustmentsEvent implements _InitialAdjustmentsEvent {
  const _$_InitialAdjustmentsEvent();

  @override
  String toString() {
    return 'AdjustmentsEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialAdjustmentsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int darkModeOptionIndex) selectedTheme,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int darkModeOptionIndex)? selectedTheme,
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
    required TResult Function(_InitialAdjustmentsEvent value) initial,
    required TResult Function(_SelectedThemeAdjustmentsEvent value)
        selectedTheme,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAdjustmentsEvent value)? initial,
    TResult Function(_SelectedThemeAdjustmentsEvent value)? selectedTheme,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAdjustmentsEvent implements AdjustmentsEvent {
  const factory _InitialAdjustmentsEvent() = _$_InitialAdjustmentsEvent;
}

/// @nodoc
abstract class _$SelectedThemeAdjustmentsEventCopyWith<$Res> {
  factory _$SelectedThemeAdjustmentsEventCopyWith(
          _SelectedThemeAdjustmentsEvent value,
          $Res Function(_SelectedThemeAdjustmentsEvent) then) =
      __$SelectedThemeAdjustmentsEventCopyWithImpl<$Res>;
  $Res call({int darkModeOptionIndex});
}

/// @nodoc
class __$SelectedThemeAdjustmentsEventCopyWithImpl<$Res>
    extends _$AdjustmentsEventCopyWithImpl<$Res>
    implements _$SelectedThemeAdjustmentsEventCopyWith<$Res> {
  __$SelectedThemeAdjustmentsEventCopyWithImpl(
      _SelectedThemeAdjustmentsEvent _value,
      $Res Function(_SelectedThemeAdjustmentsEvent) _then)
      : super(_value, (v) => _then(v as _SelectedThemeAdjustmentsEvent));

  @override
  _SelectedThemeAdjustmentsEvent get _value =>
      super._value as _SelectedThemeAdjustmentsEvent;

  @override
  $Res call({
    Object? darkModeOptionIndex = freezed,
  }) {
    return _then(_SelectedThemeAdjustmentsEvent(
      darkModeOptionIndex: darkModeOptionIndex == freezed
          ? _value.darkModeOptionIndex
          : darkModeOptionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectedThemeAdjustmentsEvent
    implements _SelectedThemeAdjustmentsEvent {
  const _$_SelectedThemeAdjustmentsEvent({required this.darkModeOptionIndex});

  @override
  final int darkModeOptionIndex;

  @override
  String toString() {
    return 'AdjustmentsEvent.selectedTheme(darkModeOptionIndex: $darkModeOptionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedThemeAdjustmentsEvent &&
            (identical(other.darkModeOptionIndex, darkModeOptionIndex) ||
                const DeepCollectionEquality()
                    .equals(other.darkModeOptionIndex, darkModeOptionIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(darkModeOptionIndex);

  @JsonKey(ignore: true)
  @override
  _$SelectedThemeAdjustmentsEventCopyWith<_SelectedThemeAdjustmentsEvent>
      get copyWith => __$SelectedThemeAdjustmentsEventCopyWithImpl<
          _SelectedThemeAdjustmentsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int darkModeOptionIndex) selectedTheme,
  }) {
    return selectedTheme(darkModeOptionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int darkModeOptionIndex)? selectedTheme,
    required TResult orElse(),
  }) {
    if (selectedTheme != null) {
      return selectedTheme(darkModeOptionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialAdjustmentsEvent value) initial,
    required TResult Function(_SelectedThemeAdjustmentsEvent value)
        selectedTheme,
  }) {
    return selectedTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialAdjustmentsEvent value)? initial,
    TResult Function(_SelectedThemeAdjustmentsEvent value)? selectedTheme,
    required TResult orElse(),
  }) {
    if (selectedTheme != null) {
      return selectedTheme(this);
    }
    return orElse();
  }
}

abstract class _SelectedThemeAdjustmentsEvent implements AdjustmentsEvent {
  const factory _SelectedThemeAdjustmentsEvent(
      {required int darkModeOptionIndex}) = _$_SelectedThemeAdjustmentsEvent;

  int get darkModeOptionIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedThemeAdjustmentsEventCopyWith<_SelectedThemeAdjustmentsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdjustmentsStateTearOff {
  const _$AdjustmentsStateTearOff();

  _DataAdjustmentsState data(
      {required int darkModeOptionIndex,
      required List<String> themeModeTitles}) {
    return _DataAdjustmentsState(
      darkModeOptionIndex: darkModeOptionIndex,
      themeModeTitles: themeModeTitles,
    );
  }

  _InitialAdjustmentsState initial() {
    return const _InitialAdjustmentsState();
  }

  _LoadingAdjustmentsState loading() {
    return const _LoadingAdjustmentsState();
  }
}

/// @nodoc
const $AdjustmentsState = _$AdjustmentsStateTearOff();

/// @nodoc
mixin _$AdjustmentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int darkModeOptionIndex, List<String> themeModeTitles)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int darkModeOptionIndex, List<String> themeModeTitles)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataAdjustmentsState value) data,
    required TResult Function(_InitialAdjustmentsState value) initial,
    required TResult Function(_LoadingAdjustmentsState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataAdjustmentsState value)? data,
    TResult Function(_InitialAdjustmentsState value)? initial,
    TResult Function(_LoadingAdjustmentsState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdjustmentsStateCopyWith<$Res> {
  factory $AdjustmentsStateCopyWith(
          AdjustmentsState value, $Res Function(AdjustmentsState) then) =
      _$AdjustmentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdjustmentsStateCopyWithImpl<$Res>
    implements $AdjustmentsStateCopyWith<$Res> {
  _$AdjustmentsStateCopyWithImpl(this._value, this._then);

  final AdjustmentsState _value;
  // ignore: unused_field
  final $Res Function(AdjustmentsState) _then;
}

/// @nodoc
abstract class _$DataAdjustmentsStateCopyWith<$Res> {
  factory _$DataAdjustmentsStateCopyWith(_DataAdjustmentsState value,
          $Res Function(_DataAdjustmentsState) then) =
      __$DataAdjustmentsStateCopyWithImpl<$Res>;
  $Res call({int darkModeOptionIndex, List<String> themeModeTitles});
}

/// @nodoc
class __$DataAdjustmentsStateCopyWithImpl<$Res>
    extends _$AdjustmentsStateCopyWithImpl<$Res>
    implements _$DataAdjustmentsStateCopyWith<$Res> {
  __$DataAdjustmentsStateCopyWithImpl(
      _DataAdjustmentsState _value, $Res Function(_DataAdjustmentsState) _then)
      : super(_value, (v) => _then(v as _DataAdjustmentsState));

  @override
  _DataAdjustmentsState get _value => super._value as _DataAdjustmentsState;

  @override
  $Res call({
    Object? darkModeOptionIndex = freezed,
    Object? themeModeTitles = freezed,
  }) {
    return _then(_DataAdjustmentsState(
      darkModeOptionIndex: darkModeOptionIndex == freezed
          ? _value.darkModeOptionIndex
          : darkModeOptionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      themeModeTitles: themeModeTitles == freezed
          ? _value.themeModeTitles
          : themeModeTitles // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_DataAdjustmentsState implements _DataAdjustmentsState {
  const _$_DataAdjustmentsState(
      {required this.darkModeOptionIndex, required this.themeModeTitles});

  @override

  /// Параметры
  final int darkModeOptionIndex;
  @override
  final List<String> themeModeTitles;

  @override
  String toString() {
    return 'AdjustmentsState.data(darkModeOptionIndex: $darkModeOptionIndex, themeModeTitles: $themeModeTitles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataAdjustmentsState &&
            (identical(other.darkModeOptionIndex, darkModeOptionIndex) ||
                const DeepCollectionEquality()
                    .equals(other.darkModeOptionIndex, darkModeOptionIndex)) &&
            (identical(other.themeModeTitles, themeModeTitles) ||
                const DeepCollectionEquality()
                    .equals(other.themeModeTitles, themeModeTitles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(darkModeOptionIndex) ^
      const DeepCollectionEquality().hash(themeModeTitles);

  @JsonKey(ignore: true)
  @override
  _$DataAdjustmentsStateCopyWith<_DataAdjustmentsState> get copyWith =>
      __$DataAdjustmentsStateCopyWithImpl<_DataAdjustmentsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int darkModeOptionIndex, List<String> themeModeTitles)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(darkModeOptionIndex, themeModeTitles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int darkModeOptionIndex, List<String> themeModeTitles)?
        data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(darkModeOptionIndex, themeModeTitles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataAdjustmentsState value) data,
    required TResult Function(_InitialAdjustmentsState value) initial,
    required TResult Function(_LoadingAdjustmentsState value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataAdjustmentsState value)? data,
    TResult Function(_InitialAdjustmentsState value)? initial,
    TResult Function(_LoadingAdjustmentsState value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataAdjustmentsState implements AdjustmentsState {
  const factory _DataAdjustmentsState(
      {required int darkModeOptionIndex,
      required List<String> themeModeTitles}) = _$_DataAdjustmentsState;

  /// Параметры
  int get darkModeOptionIndex => throw _privateConstructorUsedError;
  List<String> get themeModeTitles => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataAdjustmentsStateCopyWith<_DataAdjustmentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialAdjustmentsStateCopyWith<$Res> {
  factory _$InitialAdjustmentsStateCopyWith(_InitialAdjustmentsState value,
          $Res Function(_InitialAdjustmentsState) then) =
      __$InitialAdjustmentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialAdjustmentsStateCopyWithImpl<$Res>
    extends _$AdjustmentsStateCopyWithImpl<$Res>
    implements _$InitialAdjustmentsStateCopyWith<$Res> {
  __$InitialAdjustmentsStateCopyWithImpl(_InitialAdjustmentsState _value,
      $Res Function(_InitialAdjustmentsState) _then)
      : super(_value, (v) => _then(v as _InitialAdjustmentsState));

  @override
  _InitialAdjustmentsState get _value =>
      super._value as _InitialAdjustmentsState;
}

/// @nodoc

class _$_InitialAdjustmentsState implements _InitialAdjustmentsState {
  const _$_InitialAdjustmentsState();

  @override
  String toString() {
    return 'AdjustmentsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialAdjustmentsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int darkModeOptionIndex, List<String> themeModeTitles)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int darkModeOptionIndex, List<String> themeModeTitles)?
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
    required TResult Function(_DataAdjustmentsState value) data,
    required TResult Function(_InitialAdjustmentsState value) initial,
    required TResult Function(_LoadingAdjustmentsState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataAdjustmentsState value)? data,
    TResult Function(_InitialAdjustmentsState value)? initial,
    TResult Function(_LoadingAdjustmentsState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialAdjustmentsState implements AdjustmentsState {
  const factory _InitialAdjustmentsState() = _$_InitialAdjustmentsState;
}

/// @nodoc
abstract class _$LoadingAdjustmentsStateCopyWith<$Res> {
  factory _$LoadingAdjustmentsStateCopyWith(_LoadingAdjustmentsState value,
          $Res Function(_LoadingAdjustmentsState) then) =
      __$LoadingAdjustmentsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingAdjustmentsStateCopyWithImpl<$Res>
    extends _$AdjustmentsStateCopyWithImpl<$Res>
    implements _$LoadingAdjustmentsStateCopyWith<$Res> {
  __$LoadingAdjustmentsStateCopyWithImpl(_LoadingAdjustmentsState _value,
      $Res Function(_LoadingAdjustmentsState) _then)
      : super(_value, (v) => _then(v as _LoadingAdjustmentsState));

  @override
  _LoadingAdjustmentsState get _value =>
      super._value as _LoadingAdjustmentsState;
}

/// @nodoc

class _$_LoadingAdjustmentsState implements _LoadingAdjustmentsState {
  const _$_LoadingAdjustmentsState();

  @override
  String toString() {
    return 'AdjustmentsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingAdjustmentsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int darkModeOptionIndex, List<String> themeModeTitles)
        data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int darkModeOptionIndex, List<String> themeModeTitles)?
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
    required TResult Function(_DataAdjustmentsState value) data,
    required TResult Function(_InitialAdjustmentsState value) initial,
    required TResult Function(_LoadingAdjustmentsState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataAdjustmentsState value)? data,
    TResult Function(_InitialAdjustmentsState value)? initial,
    TResult Function(_LoadingAdjustmentsState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingAdjustmentsState implements AdjustmentsState {
  const factory _LoadingAdjustmentsState() = _$_LoadingAdjustmentsState;
}
