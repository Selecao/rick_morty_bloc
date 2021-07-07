// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'global_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GlobalEventTearOff {
  const _$GlobalEventTearOff();

  _InitialGlobalEvent initial() {
    return const _InitialGlobalEvent();
  }

  _SelectedTabGlobalEvent selectedTab({required int index}) {
    return _SelectedTabGlobalEvent(
      index: index,
    );
  }
}

/// @nodoc
const $GlobalEvent = _$GlobalEventTearOff();

/// @nodoc
mixin _$GlobalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) selectedTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? selectedTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialGlobalEvent value) initial,
    required TResult Function(_SelectedTabGlobalEvent value) selectedTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGlobalEvent value)? initial,
    TResult Function(_SelectedTabGlobalEvent value)? selectedTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalEventCopyWith<$Res> {
  factory $GlobalEventCopyWith(
          GlobalEvent value, $Res Function(GlobalEvent) then) =
      _$GlobalEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GlobalEventCopyWithImpl<$Res> implements $GlobalEventCopyWith<$Res> {
  _$GlobalEventCopyWithImpl(this._value, this._then);

  final GlobalEvent _value;
  // ignore: unused_field
  final $Res Function(GlobalEvent) _then;
}

/// @nodoc
abstract class _$InitialGlobalEventCopyWith<$Res> {
  factory _$InitialGlobalEventCopyWith(
          _InitialGlobalEvent value, $Res Function(_InitialGlobalEvent) then) =
      __$InitialGlobalEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialGlobalEventCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res>
    implements _$InitialGlobalEventCopyWith<$Res> {
  __$InitialGlobalEventCopyWithImpl(
      _InitialGlobalEvent _value, $Res Function(_InitialGlobalEvent) _then)
      : super(_value, (v) => _then(v as _InitialGlobalEvent));

  @override
  _InitialGlobalEvent get _value => super._value as _InitialGlobalEvent;
}

/// @nodoc

class _$_InitialGlobalEvent implements _InitialGlobalEvent {
  const _$_InitialGlobalEvent();

  @override
  String toString() {
    return 'GlobalEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialGlobalEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) selectedTab,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? selectedTab,
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
    required TResult Function(_InitialGlobalEvent value) initial,
    required TResult Function(_SelectedTabGlobalEvent value) selectedTab,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGlobalEvent value)? initial,
    TResult Function(_SelectedTabGlobalEvent value)? selectedTab,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialGlobalEvent implements GlobalEvent {
  const factory _InitialGlobalEvent() = _$_InitialGlobalEvent;
}

/// @nodoc
abstract class _$SelectedTabGlobalEventCopyWith<$Res> {
  factory _$SelectedTabGlobalEventCopyWith(_SelectedTabGlobalEvent value,
          $Res Function(_SelectedTabGlobalEvent) then) =
      __$SelectedTabGlobalEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$SelectedTabGlobalEventCopyWithImpl<$Res>
    extends _$GlobalEventCopyWithImpl<$Res>
    implements _$SelectedTabGlobalEventCopyWith<$Res> {
  __$SelectedTabGlobalEventCopyWithImpl(_SelectedTabGlobalEvent _value,
      $Res Function(_SelectedTabGlobalEvent) _then)
      : super(_value, (v) => _then(v as _SelectedTabGlobalEvent));

  @override
  _SelectedTabGlobalEvent get _value => super._value as _SelectedTabGlobalEvent;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_SelectedTabGlobalEvent(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SelectedTabGlobalEvent implements _SelectedTabGlobalEvent {
  const _$_SelectedTabGlobalEvent({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'GlobalEvent.selectedTab(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectedTabGlobalEvent &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$SelectedTabGlobalEventCopyWith<_SelectedTabGlobalEvent> get copyWith =>
      __$SelectedTabGlobalEventCopyWithImpl<_SelectedTabGlobalEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int index) selectedTab,
  }) {
    return selectedTab(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int index)? selectedTab,
    required TResult orElse(),
  }) {
    if (selectedTab != null) {
      return selectedTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialGlobalEvent value) initial,
    required TResult Function(_SelectedTabGlobalEvent value) selectedTab,
  }) {
    return selectedTab(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGlobalEvent value)? initial,
    TResult Function(_SelectedTabGlobalEvent value)? selectedTab,
    required TResult orElse(),
  }) {
    if (selectedTab != null) {
      return selectedTab(this);
    }
    return orElse();
  }
}

abstract class _SelectedTabGlobalEvent implements GlobalEvent {
  const factory _SelectedTabGlobalEvent({required int index}) =
      _$_SelectedTabGlobalEvent;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectedTabGlobalEventCopyWith<_SelectedTabGlobalEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GlobalStateTearOff {
  const _$GlobalStateTearOff();

  _DataGlobalState data({required int activeTab}) {
    return _DataGlobalState(
      activeTab: activeTab,
    );
  }

  _InitialGlobalState initial() {
    return const _InitialGlobalState();
  }

  _LoadingGlobalState loading() {
    return const _LoadingGlobalState();
  }
}

/// @nodoc
const $GlobalState = _$GlobalStateTearOff();

/// @nodoc
mixin _$GlobalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int activeTab) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int activeTab)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataGlobalState value) data,
    required TResult Function(_InitialGlobalState value) initial,
    required TResult Function(_LoadingGlobalState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataGlobalState value)? data,
    TResult Function(_InitialGlobalState value)? initial,
    TResult Function(_LoadingGlobalState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalStateCopyWith<$Res> {
  factory $GlobalStateCopyWith(
          GlobalState value, $Res Function(GlobalState) then) =
      _$GlobalStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GlobalStateCopyWithImpl<$Res> implements $GlobalStateCopyWith<$Res> {
  _$GlobalStateCopyWithImpl(this._value, this._then);

  final GlobalState _value;
  // ignore: unused_field
  final $Res Function(GlobalState) _then;
}

/// @nodoc
abstract class _$DataGlobalStateCopyWith<$Res> {
  factory _$DataGlobalStateCopyWith(
          _DataGlobalState value, $Res Function(_DataGlobalState) then) =
      __$DataGlobalStateCopyWithImpl<$Res>;
  $Res call({int activeTab});
}

/// @nodoc
class __$DataGlobalStateCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res>
    implements _$DataGlobalStateCopyWith<$Res> {
  __$DataGlobalStateCopyWithImpl(
      _DataGlobalState _value, $Res Function(_DataGlobalState) _then)
      : super(_value, (v) => _then(v as _DataGlobalState));

  @override
  _DataGlobalState get _value => super._value as _DataGlobalState;

  @override
  $Res call({
    Object? activeTab = freezed,
  }) {
    return _then(_DataGlobalState(
      activeTab: activeTab == freezed
          ? _value.activeTab
          : activeTab // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DataGlobalState implements _DataGlobalState {
  const _$_DataGlobalState({required this.activeTab});

  @override

  /// Параметры
  final int activeTab;

  @override
  String toString() {
    return 'GlobalState.data(activeTab: $activeTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DataGlobalState &&
            (identical(other.activeTab, activeTab) ||
                const DeepCollectionEquality()
                    .equals(other.activeTab, activeTab)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(activeTab);

  @JsonKey(ignore: true)
  @override
  _$DataGlobalStateCopyWith<_DataGlobalState> get copyWith =>
      __$DataGlobalStateCopyWithImpl<_DataGlobalState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int activeTab) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return data(activeTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int activeTab)? data,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(activeTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataGlobalState value) data,
    required TResult Function(_InitialGlobalState value) initial,
    required TResult Function(_LoadingGlobalState value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataGlobalState value)? data,
    TResult Function(_InitialGlobalState value)? initial,
    TResult Function(_LoadingGlobalState value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataGlobalState implements GlobalState {
  const factory _DataGlobalState({required int activeTab}) = _$_DataGlobalState;

  /// Параметры
  int get activeTab => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataGlobalStateCopyWith<_DataGlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InitialGlobalStateCopyWith<$Res> {
  factory _$InitialGlobalStateCopyWith(
          _InitialGlobalState value, $Res Function(_InitialGlobalState) then) =
      __$InitialGlobalStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialGlobalStateCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res>
    implements _$InitialGlobalStateCopyWith<$Res> {
  __$InitialGlobalStateCopyWithImpl(
      _InitialGlobalState _value, $Res Function(_InitialGlobalState) _then)
      : super(_value, (v) => _then(v as _InitialGlobalState));

  @override
  _InitialGlobalState get _value => super._value as _InitialGlobalState;
}

/// @nodoc

class _$_InitialGlobalState implements _InitialGlobalState {
  const _$_InitialGlobalState();

  @override
  String toString() {
    return 'GlobalState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InitialGlobalState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int activeTab) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int activeTab)? data,
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
    required TResult Function(_DataGlobalState value) data,
    required TResult Function(_InitialGlobalState value) initial,
    required TResult Function(_LoadingGlobalState value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataGlobalState value)? data,
    TResult Function(_InitialGlobalState value)? initial,
    TResult Function(_LoadingGlobalState value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialGlobalState implements GlobalState {
  const factory _InitialGlobalState() = _$_InitialGlobalState;
}

/// @nodoc
abstract class _$LoadingGlobalStateCopyWith<$Res> {
  factory _$LoadingGlobalStateCopyWith(
          _LoadingGlobalState value, $Res Function(_LoadingGlobalState) then) =
      __$LoadingGlobalStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingGlobalStateCopyWithImpl<$Res>
    extends _$GlobalStateCopyWithImpl<$Res>
    implements _$LoadingGlobalStateCopyWith<$Res> {
  __$LoadingGlobalStateCopyWithImpl(
      _LoadingGlobalState _value, $Res Function(_LoadingGlobalState) _then)
      : super(_value, (v) => _then(v as _LoadingGlobalState));

  @override
  _LoadingGlobalState get _value => super._value as _LoadingGlobalState;
}

/// @nodoc

class _$_LoadingGlobalState implements _LoadingGlobalState {
  const _$_LoadingGlobalState();

  @override
  String toString() {
    return 'GlobalState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingGlobalState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int activeTab) data,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int activeTab)? data,
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
    required TResult Function(_DataGlobalState value) data,
    required TResult Function(_InitialGlobalState value) initial,
    required TResult Function(_LoadingGlobalState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataGlobalState value)? data,
    TResult Function(_InitialGlobalState value)? initial,
    TResult Function(_LoadingGlobalState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingGlobalState implements GlobalState {
  const factory _LoadingGlobalState() = _$_LoadingGlobalState;
}
