// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_source_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChooseSourceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)
        started,
    required TResult Function() dragged,
    required TResult Function(String searchText) searchTextFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)?
        started,
    TResult? Function()? dragged,
    TResult? Function(String searchText)? searchTextFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)?
        started,
    TResult Function()? dragged,
    TResult Function(String searchText)? searchTextFieldChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Dragged value) dragged,
    required TResult Function(_SearchTextFieldChanged value)
        searchTextFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Dragged value)? dragged,
    TResult? Function(_SearchTextFieldChanged value)? searchTextFieldChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Dragged value)? dragged,
    TResult Function(_SearchTextFieldChanged value)? searchTextFieldChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseSourceEventCopyWith<$Res> {
  factory $ChooseSourceEventCopyWith(
          ChooseSourceEvent value, $Res Function(ChooseSourceEvent) then) =
      _$ChooseSourceEventCopyWithImpl<$Res, ChooseSourceEvent>;
}

/// @nodoc
class _$ChooseSourceEventCopyWithImpl<$Res, $Val extends ChooseSourceEvent>
    implements $ChooseSourceEventCopyWith<$Res> {
  _$ChooseSourceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PluginModel> listPlugin, DraggableScrollableController controller});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$ChooseSourceEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPlugin = null,
    Object? controller = null,
  }) {
    return _then(_$_Started(
      listPlugin: null == listPlugin
          ? _value._listPlugin
          : listPlugin // ignore: cast_nullable_to_non_nullable
              as List<PluginModel>,
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as DraggableScrollableController,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {required final List<PluginModel> listPlugin, required this.controller})
      : _listPlugin = listPlugin;

  final List<PluginModel> _listPlugin;
  @override
  List<PluginModel> get listPlugin {
    if (_listPlugin is EqualUnmodifiableListView) return _listPlugin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listPlugin);
  }

  @override
  final DraggableScrollableController controller;

  @override
  String toString() {
    return 'ChooseSourceEvent.started(listPlugin: $listPlugin, controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality()
                .equals(other._listPlugin, _listPlugin) &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_listPlugin), controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)
        started,
    required TResult Function() dragged,
    required TResult Function(String searchText) searchTextFieldChanged,
  }) {
    return started(listPlugin, controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)?
        started,
    TResult? Function()? dragged,
    TResult? Function(String searchText)? searchTextFieldChanged,
  }) {
    return started?.call(listPlugin, controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)?
        started,
    TResult Function()? dragged,
    TResult Function(String searchText)? searchTextFieldChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(listPlugin, controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Dragged value) dragged,
    required TResult Function(_SearchTextFieldChanged value)
        searchTextFieldChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Dragged value)? dragged,
    TResult? Function(_SearchTextFieldChanged value)? searchTextFieldChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Dragged value)? dragged,
    TResult Function(_SearchTextFieldChanged value)? searchTextFieldChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChooseSourceEvent {
  const factory _Started(
      {required final List<PluginModel> listPlugin,
      required final DraggableScrollableController controller}) = _$_Started;

  List<PluginModel> get listPlugin;
  DraggableScrollableController get controller;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DraggedCopyWith<$Res> {
  factory _$$_DraggedCopyWith(
          _$_Dragged value, $Res Function(_$_Dragged) then) =
      __$$_DraggedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DraggedCopyWithImpl<$Res>
    extends _$ChooseSourceEventCopyWithImpl<$Res, _$_Dragged>
    implements _$$_DraggedCopyWith<$Res> {
  __$$_DraggedCopyWithImpl(_$_Dragged _value, $Res Function(_$_Dragged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Dragged implements _Dragged {
  const _$_Dragged();

  @override
  String toString() {
    return 'ChooseSourceEvent.dragged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Dragged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)
        started,
    required TResult Function() dragged,
    required TResult Function(String searchText) searchTextFieldChanged,
  }) {
    return dragged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)?
        started,
    TResult? Function()? dragged,
    TResult? Function(String searchText)? searchTextFieldChanged,
  }) {
    return dragged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)?
        started,
    TResult Function()? dragged,
    TResult Function(String searchText)? searchTextFieldChanged,
    required TResult orElse(),
  }) {
    if (dragged != null) {
      return dragged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Dragged value) dragged,
    required TResult Function(_SearchTextFieldChanged value)
        searchTextFieldChanged,
  }) {
    return dragged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Dragged value)? dragged,
    TResult? Function(_SearchTextFieldChanged value)? searchTextFieldChanged,
  }) {
    return dragged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Dragged value)? dragged,
    TResult Function(_SearchTextFieldChanged value)? searchTextFieldChanged,
    required TResult orElse(),
  }) {
    if (dragged != null) {
      return dragged(this);
    }
    return orElse();
  }
}

abstract class _Dragged implements ChooseSourceEvent {
  const factory _Dragged() = _$_Dragged;
}

/// @nodoc
abstract class _$$_SearchTextFieldChangedCopyWith<$Res> {
  factory _$$_SearchTextFieldChangedCopyWith(_$_SearchTextFieldChanged value,
          $Res Function(_$_SearchTextFieldChanged) then) =
      __$$_SearchTextFieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$_SearchTextFieldChangedCopyWithImpl<$Res>
    extends _$ChooseSourceEventCopyWithImpl<$Res, _$_SearchTextFieldChanged>
    implements _$$_SearchTextFieldChangedCopyWith<$Res> {
  __$$_SearchTextFieldChangedCopyWithImpl(_$_SearchTextFieldChanged _value,
      $Res Function(_$_SearchTextFieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$_SearchTextFieldChanged(
      null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchTextFieldChanged implements _SearchTextFieldChanged {
  const _$_SearchTextFieldChanged(this.searchText);

  @override
  final String searchText;

  @override
  String toString() {
    return 'ChooseSourceEvent.searchTextFieldChanged(searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchTextFieldChanged &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchTextFieldChangedCopyWith<_$_SearchTextFieldChanged> get copyWith =>
      __$$_SearchTextFieldChangedCopyWithImpl<_$_SearchTextFieldChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)
        started,
    required TResult Function() dragged,
    required TResult Function(String searchText) searchTextFieldChanged,
  }) {
    return searchTextFieldChanged(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)?
        started,
    TResult? Function()? dragged,
    TResult? Function(String searchText)? searchTextFieldChanged,
  }) {
    return searchTextFieldChanged?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PluginModel> listPlugin,
            DraggableScrollableController controller)?
        started,
    TResult Function()? dragged,
    TResult Function(String searchText)? searchTextFieldChanged,
    required TResult orElse(),
  }) {
    if (searchTextFieldChanged != null) {
      return searchTextFieldChanged(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Dragged value) dragged,
    required TResult Function(_SearchTextFieldChanged value)
        searchTextFieldChanged,
  }) {
    return searchTextFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Dragged value)? dragged,
    TResult? Function(_SearchTextFieldChanged value)? searchTextFieldChanged,
  }) {
    return searchTextFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Dragged value)? dragged,
    TResult Function(_SearchTextFieldChanged value)? searchTextFieldChanged,
    required TResult orElse(),
  }) {
    if (searchTextFieldChanged != null) {
      return searchTextFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchTextFieldChanged implements ChooseSourceEvent {
  const factory _SearchTextFieldChanged(final String searchText) =
      _$_SearchTextFieldChanged;

  String get searchText;
  @JsonKey(ignore: true)
  _$$_SearchTextFieldChangedCopyWith<_$_SearchTextFieldChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChooseSourceState {
  List<PluginModel> get listPlugin => throw _privateConstructorUsedError;
  double get dragSize => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChooseSourceStateCopyWith<ChooseSourceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseSourceStateCopyWith<$Res> {
  factory $ChooseSourceStateCopyWith(
          ChooseSourceState value, $Res Function(ChooseSourceState) then) =
      _$ChooseSourceStateCopyWithImpl<$Res, ChooseSourceState>;
  @useResult
  $Res call({List<PluginModel> listPlugin, double dragSize, String searchText});
}

/// @nodoc
class _$ChooseSourceStateCopyWithImpl<$Res, $Val extends ChooseSourceState>
    implements $ChooseSourceStateCopyWith<$Res> {
  _$ChooseSourceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPlugin = null,
    Object? dragSize = null,
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      listPlugin: null == listPlugin
          ? _value.listPlugin
          : listPlugin // ignore: cast_nullable_to_non_nullable
              as List<PluginModel>,
      dragSize: null == dragSize
          ? _value.dragSize
          : dragSize // ignore: cast_nullable_to_non_nullable
              as double,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChooseSourceStateCopyWith<$Res>
    implements $ChooseSourceStateCopyWith<$Res> {
  factory _$$_ChooseSourceStateCopyWith(_$_ChooseSourceState value,
          $Res Function(_$_ChooseSourceState) then) =
      __$$_ChooseSourceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PluginModel> listPlugin, double dragSize, String searchText});
}

/// @nodoc
class __$$_ChooseSourceStateCopyWithImpl<$Res>
    extends _$ChooseSourceStateCopyWithImpl<$Res, _$_ChooseSourceState>
    implements _$$_ChooseSourceStateCopyWith<$Res> {
  __$$_ChooseSourceStateCopyWithImpl(
      _$_ChooseSourceState _value, $Res Function(_$_ChooseSourceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPlugin = null,
    Object? dragSize = null,
    Object? searchText = null,
  }) {
    return _then(_$_ChooseSourceState(
      listPlugin: null == listPlugin
          ? _value._listPlugin
          : listPlugin // ignore: cast_nullable_to_non_nullable
              as List<PluginModel>,
      dragSize: null == dragSize
          ? _value.dragSize
          : dragSize // ignore: cast_nullable_to_non_nullable
              as double,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChooseSourceState extends _ChooseSourceState {
  const _$_ChooseSourceState(
      {final List<PluginModel> listPlugin = const <PluginModel>[],
      this.dragSize = 0.8,
      this.searchText = ''})
      : _listPlugin = listPlugin,
        super._();

  final List<PluginModel> _listPlugin;
  @override
  @JsonKey()
  List<PluginModel> get listPlugin {
    if (_listPlugin is EqualUnmodifiableListView) return _listPlugin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listPlugin);
  }

  @override
  @JsonKey()
  final double dragSize;
  @override
  @JsonKey()
  final String searchText;

  @override
  String toString() {
    return 'ChooseSourceState(listPlugin: $listPlugin, dragSize: $dragSize, searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChooseSourceState &&
            const DeepCollectionEquality()
                .equals(other._listPlugin, _listPlugin) &&
            (identical(other.dragSize, dragSize) ||
                other.dragSize == dragSize) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_listPlugin), dragSize, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChooseSourceStateCopyWith<_$_ChooseSourceState> get copyWith =>
      __$$_ChooseSourceStateCopyWithImpl<_$_ChooseSourceState>(
          this, _$identity);
}

abstract class _ChooseSourceState extends ChooseSourceState {
  const factory _ChooseSourceState(
      {final List<PluginModel> listPlugin,
      final double dragSize,
      final String searchText}) = _$_ChooseSourceState;
  const _ChooseSourceState._() : super._();

  @override
  List<PluginModel> get listPlugin;
  @override
  double get dragSize;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$_ChooseSourceStateCopyWith<_$_ChooseSourceState> get copyWith =>
      throw _privateConstructorUsedError;
}
