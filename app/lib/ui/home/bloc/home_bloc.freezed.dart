// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) navigationBarDestinationSelected,
    required TResult Function(List<NovelModel> data) historyUpdated,
    required TResult Function(List<NovelModel> data) shelfUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? navigationBarDestinationSelected,
    TResult? Function(List<NovelModel> data)? historyUpdated,
    TResult? Function(List<NovelModel> data)? shelfUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? navigationBarDestinationSelected,
    TResult Function(List<NovelModel> data)? historyUpdated,
    TResult Function(List<NovelModel> data)? shelfUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageStarted value) started,
    required TResult Function(NavigationBarDestinationSelected value)
        navigationBarDestinationSelected,
    required TResult Function(_HistoryUpdated value) historyUpdated,
    required TResult Function(_ShelfUpdated value) shelfUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageStarted value)? started,
    TResult? Function(NavigationBarDestinationSelected value)?
        navigationBarDestinationSelected,
    TResult? Function(_HistoryUpdated value)? historyUpdated,
    TResult? Function(_ShelfUpdated value)? shelfUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageStarted value)? started,
    TResult Function(NavigationBarDestinationSelected value)?
        navigationBarDestinationSelected,
    TResult Function(_HistoryUpdated value)? historyUpdated,
    TResult Function(_ShelfUpdated value)? shelfUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomePageStartedCopyWith<$Res> {
  factory _$$HomePageStartedCopyWith(
          _$HomePageStarted value, $Res Function(_$HomePageStarted) then) =
      __$$HomePageStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomePageStartedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomePageStarted>
    implements _$$HomePageStartedCopyWith<$Res> {
  __$$HomePageStartedCopyWithImpl(
      _$HomePageStarted _value, $Res Function(_$HomePageStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomePageStarted implements HomePageStarted {
  const _$HomePageStarted();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomePageStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) navigationBarDestinationSelected,
    required TResult Function(List<NovelModel> data) historyUpdated,
    required TResult Function(List<NovelModel> data) shelfUpdated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? navigationBarDestinationSelected,
    TResult? Function(List<NovelModel> data)? historyUpdated,
    TResult? Function(List<NovelModel> data)? shelfUpdated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? navigationBarDestinationSelected,
    TResult Function(List<NovelModel> data)? historyUpdated,
    TResult Function(List<NovelModel> data)? shelfUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageStarted value) started,
    required TResult Function(NavigationBarDestinationSelected value)
        navigationBarDestinationSelected,
    required TResult Function(_HistoryUpdated value) historyUpdated,
    required TResult Function(_ShelfUpdated value) shelfUpdated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageStarted value)? started,
    TResult? Function(NavigationBarDestinationSelected value)?
        navigationBarDestinationSelected,
    TResult? Function(_HistoryUpdated value)? historyUpdated,
    TResult? Function(_ShelfUpdated value)? shelfUpdated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageStarted value)? started,
    TResult Function(NavigationBarDestinationSelected value)?
        navigationBarDestinationSelected,
    TResult Function(_HistoryUpdated value)? historyUpdated,
    TResult Function(_ShelfUpdated value)? shelfUpdated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class HomePageStarted implements HomeEvent {
  const factory HomePageStarted() = _$HomePageStarted;
}

/// @nodoc
abstract class _$$NavigationBarDestinationSelectedCopyWith<$Res> {
  factory _$$NavigationBarDestinationSelectedCopyWith(
          _$NavigationBarDestinationSelected value,
          $Res Function(_$NavigationBarDestinationSelected) then) =
      __$$NavigationBarDestinationSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$NavigationBarDestinationSelectedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$NavigationBarDestinationSelected>
    implements _$$NavigationBarDestinationSelectedCopyWith<$Res> {
  __$$NavigationBarDestinationSelectedCopyWithImpl(
      _$NavigationBarDestinationSelected _value,
      $Res Function(_$NavigationBarDestinationSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$NavigationBarDestinationSelected(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NavigationBarDestinationSelected
    implements NavigationBarDestinationSelected {
  const _$NavigationBarDestinationSelected(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.navigationBarDestinationSelected(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigationBarDestinationSelected &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigationBarDestinationSelectedCopyWith<
          _$NavigationBarDestinationSelected>
      get copyWith => __$$NavigationBarDestinationSelectedCopyWithImpl<
          _$NavigationBarDestinationSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) navigationBarDestinationSelected,
    required TResult Function(List<NovelModel> data) historyUpdated,
    required TResult Function(List<NovelModel> data) shelfUpdated,
  }) {
    return navigationBarDestinationSelected(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? navigationBarDestinationSelected,
    TResult? Function(List<NovelModel> data)? historyUpdated,
    TResult? Function(List<NovelModel> data)? shelfUpdated,
  }) {
    return navigationBarDestinationSelected?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? navigationBarDestinationSelected,
    TResult Function(List<NovelModel> data)? historyUpdated,
    TResult Function(List<NovelModel> data)? shelfUpdated,
    required TResult orElse(),
  }) {
    if (navigationBarDestinationSelected != null) {
      return navigationBarDestinationSelected(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageStarted value) started,
    required TResult Function(NavigationBarDestinationSelected value)
        navigationBarDestinationSelected,
    required TResult Function(_HistoryUpdated value) historyUpdated,
    required TResult Function(_ShelfUpdated value) shelfUpdated,
  }) {
    return navigationBarDestinationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageStarted value)? started,
    TResult? Function(NavigationBarDestinationSelected value)?
        navigationBarDestinationSelected,
    TResult? Function(_HistoryUpdated value)? historyUpdated,
    TResult? Function(_ShelfUpdated value)? shelfUpdated,
  }) {
    return navigationBarDestinationSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageStarted value)? started,
    TResult Function(NavigationBarDestinationSelected value)?
        navigationBarDestinationSelected,
    TResult Function(_HistoryUpdated value)? historyUpdated,
    TResult Function(_ShelfUpdated value)? shelfUpdated,
    required TResult orElse(),
  }) {
    if (navigationBarDestinationSelected != null) {
      return navigationBarDestinationSelected(this);
    }
    return orElse();
  }
}

abstract class NavigationBarDestinationSelected implements HomeEvent {
  const factory NavigationBarDestinationSelected(final int index) =
      _$NavigationBarDestinationSelected;

  int get index;
  @JsonKey(ignore: true)
  _$$NavigationBarDestinationSelectedCopyWith<
          _$NavigationBarDestinationSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HistoryUpdatedCopyWith<$Res> {
  factory _$$_HistoryUpdatedCopyWith(
          _$_HistoryUpdated value, $Res Function(_$_HistoryUpdated) then) =
      __$$_HistoryUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NovelModel> data});
}

/// @nodoc
class __$$_HistoryUpdatedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HistoryUpdated>
    implements _$$_HistoryUpdatedCopyWith<$Res> {
  __$$_HistoryUpdatedCopyWithImpl(
      _$_HistoryUpdated _value, $Res Function(_$_HistoryUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_HistoryUpdated(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NovelModel>,
    ));
  }
}

/// @nodoc

class _$_HistoryUpdated implements _HistoryUpdated {
  const _$_HistoryUpdated(final List<NovelModel> data) : _data = data;

  final List<NovelModel> _data;
  @override
  List<NovelModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HomeEvent.historyUpdated(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryUpdated &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HistoryUpdatedCopyWith<_$_HistoryUpdated> get copyWith =>
      __$$_HistoryUpdatedCopyWithImpl<_$_HistoryUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) navigationBarDestinationSelected,
    required TResult Function(List<NovelModel> data) historyUpdated,
    required TResult Function(List<NovelModel> data) shelfUpdated,
  }) {
    return historyUpdated(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? navigationBarDestinationSelected,
    TResult? Function(List<NovelModel> data)? historyUpdated,
    TResult? Function(List<NovelModel> data)? shelfUpdated,
  }) {
    return historyUpdated?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? navigationBarDestinationSelected,
    TResult Function(List<NovelModel> data)? historyUpdated,
    TResult Function(List<NovelModel> data)? shelfUpdated,
    required TResult orElse(),
  }) {
    if (historyUpdated != null) {
      return historyUpdated(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageStarted value) started,
    required TResult Function(NavigationBarDestinationSelected value)
        navigationBarDestinationSelected,
    required TResult Function(_HistoryUpdated value) historyUpdated,
    required TResult Function(_ShelfUpdated value) shelfUpdated,
  }) {
    return historyUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageStarted value)? started,
    TResult? Function(NavigationBarDestinationSelected value)?
        navigationBarDestinationSelected,
    TResult? Function(_HistoryUpdated value)? historyUpdated,
    TResult? Function(_ShelfUpdated value)? shelfUpdated,
  }) {
    return historyUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageStarted value)? started,
    TResult Function(NavigationBarDestinationSelected value)?
        navigationBarDestinationSelected,
    TResult Function(_HistoryUpdated value)? historyUpdated,
    TResult Function(_ShelfUpdated value)? shelfUpdated,
    required TResult orElse(),
  }) {
    if (historyUpdated != null) {
      return historyUpdated(this);
    }
    return orElse();
  }
}

abstract class _HistoryUpdated implements HomeEvent {
  const factory _HistoryUpdated(final List<NovelModel> data) =
      _$_HistoryUpdated;

  List<NovelModel> get data;
  @JsonKey(ignore: true)
  _$$_HistoryUpdatedCopyWith<_$_HistoryUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ShelfUpdatedCopyWith<$Res> {
  factory _$$_ShelfUpdatedCopyWith(
          _$_ShelfUpdated value, $Res Function(_$_ShelfUpdated) then) =
      __$$_ShelfUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NovelModel> data});
}

/// @nodoc
class __$$_ShelfUpdatedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_ShelfUpdated>
    implements _$$_ShelfUpdatedCopyWith<$Res> {
  __$$_ShelfUpdatedCopyWithImpl(
      _$_ShelfUpdated _value, $Res Function(_$_ShelfUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ShelfUpdated(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NovelModel>,
    ));
  }
}

/// @nodoc

class _$_ShelfUpdated implements _ShelfUpdated {
  const _$_ShelfUpdated(final List<NovelModel> data) : _data = data;

  final List<NovelModel> _data;
  @override
  List<NovelModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HomeEvent.shelfUpdated(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShelfUpdated &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShelfUpdatedCopyWith<_$_ShelfUpdated> get copyWith =>
      __$$_ShelfUpdatedCopyWithImpl<_$_ShelfUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) navigationBarDestinationSelected,
    required TResult Function(List<NovelModel> data) historyUpdated,
    required TResult Function(List<NovelModel> data) shelfUpdated,
  }) {
    return shelfUpdated(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? navigationBarDestinationSelected,
    TResult? Function(List<NovelModel> data)? historyUpdated,
    TResult? Function(List<NovelModel> data)? shelfUpdated,
  }) {
    return shelfUpdated?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? navigationBarDestinationSelected,
    TResult Function(List<NovelModel> data)? historyUpdated,
    TResult Function(List<NovelModel> data)? shelfUpdated,
    required TResult orElse(),
  }) {
    if (shelfUpdated != null) {
      return shelfUpdated(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePageStarted value) started,
    required TResult Function(NavigationBarDestinationSelected value)
        navigationBarDestinationSelected,
    required TResult Function(_HistoryUpdated value) historyUpdated,
    required TResult Function(_ShelfUpdated value) shelfUpdated,
  }) {
    return shelfUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomePageStarted value)? started,
    TResult? Function(NavigationBarDestinationSelected value)?
        navigationBarDestinationSelected,
    TResult? Function(_HistoryUpdated value)? historyUpdated,
    TResult? Function(_ShelfUpdated value)? shelfUpdated,
  }) {
    return shelfUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePageStarted value)? started,
    TResult Function(NavigationBarDestinationSelected value)?
        navigationBarDestinationSelected,
    TResult Function(_HistoryUpdated value)? historyUpdated,
    TResult Function(_ShelfUpdated value)? shelfUpdated,
    required TResult orElse(),
  }) {
    if (shelfUpdated != null) {
      return shelfUpdated(this);
    }
    return orElse();
  }
}

abstract class _ShelfUpdated implements HomeEvent {
  const factory _ShelfUpdated(final List<NovelModel> data) = _$_ShelfUpdated;

  List<NovelModel> get data;
  @JsonKey(ignore: true)
  _$$_ShelfUpdatedCopyWith<_$_ShelfUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<NovelModel> get novelInShelf => throw _privateConstructorUsedError;
  List<NovelModel> get novelInHistory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({List<NovelModel> novelInShelf, List<NovelModel> novelInHistory});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? novelInShelf = null,
    Object? novelInHistory = null,
  }) {
    return _then(_value.copyWith(
      novelInShelf: null == novelInShelf
          ? _value.novelInShelf
          : novelInShelf // ignore: cast_nullable_to_non_nullable
              as List<NovelModel>,
      novelInHistory: null == novelInHistory
          ? _value.novelInHistory
          : novelInHistory // ignore: cast_nullable_to_non_nullable
              as List<NovelModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NovelModel> novelInShelf, List<NovelModel> novelInHistory});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? novelInShelf = null,
    Object? novelInHistory = null,
  }) {
    return _then(_$_HomeState(
      novelInShelf: null == novelInShelf
          ? _value._novelInShelf
          : novelInShelf // ignore: cast_nullable_to_non_nullable
              as List<NovelModel>,
      novelInHistory: null == novelInHistory
          ? _value._novelInHistory
          : novelInHistory // ignore: cast_nullable_to_non_nullable
              as List<NovelModel>,
    ));
  }
}

/// @nodoc

class _$_HomeState extends _HomeState {
  const _$_HomeState(
      {final List<NovelModel> novelInShelf = const [],
      final List<NovelModel> novelInHistory = const []})
      : _novelInShelf = novelInShelf,
        _novelInHistory = novelInHistory,
        super._();

  final List<NovelModel> _novelInShelf;
  @override
  @JsonKey()
  List<NovelModel> get novelInShelf {
    if (_novelInShelf is EqualUnmodifiableListView) return _novelInShelf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_novelInShelf);
  }

  final List<NovelModel> _novelInHistory;
  @override
  @JsonKey()
  List<NovelModel> get novelInHistory {
    if (_novelInHistory is EqualUnmodifiableListView) return _novelInHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_novelInHistory);
  }

  @override
  String toString() {
    return 'HomeState(novelInShelf: $novelInShelf, novelInHistory: $novelInHistory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other._novelInShelf, _novelInShelf) &&
            const DeepCollectionEquality()
                .equals(other._novelInHistory, _novelInHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_novelInShelf),
      const DeepCollectionEquality().hash(_novelInHistory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final List<NovelModel> novelInShelf,
      final List<NovelModel> novelInHistory}) = _$_HomeState;
  const _HomeState._() : super._();

  @override
  List<NovelModel> get novelInShelf;
  @override
  List<NovelModel> get novelInHistory;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
