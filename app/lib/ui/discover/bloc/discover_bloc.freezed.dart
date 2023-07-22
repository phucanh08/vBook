// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() titlePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? titlePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? titlePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitlePressed value) titlePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitlePressed value)? titlePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitlePressed value)? titlePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverEventCopyWith<$Res> {
  factory $DiscoverEventCopyWith(
          DiscoverEvent value, $Res Function(DiscoverEvent) then) =
      _$DiscoverEventCopyWithImpl<$Res, DiscoverEvent>;
}

/// @nodoc
class _$DiscoverEventCopyWithImpl<$Res, $Val extends DiscoverEvent>
    implements $DiscoverEventCopyWith<$Res> {
  _$DiscoverEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$DiscoverEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DiscoverEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() titlePressed,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? titlePressed,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? titlePressed,
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
    required TResult Function(_Started value) started,
    required TResult Function(_TitlePressed value) titlePressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitlePressed value)? titlePressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitlePressed value)? titlePressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DiscoverEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_TitlePressedCopyWith<$Res> {
  factory _$$_TitlePressedCopyWith(
          _$_TitlePressed value, $Res Function(_$_TitlePressed) then) =
      __$$_TitlePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TitlePressedCopyWithImpl<$Res>
    extends _$DiscoverEventCopyWithImpl<$Res, _$_TitlePressed>
    implements _$$_TitlePressedCopyWith<$Res> {
  __$$_TitlePressedCopyWithImpl(
      _$_TitlePressed _value, $Res Function(_$_TitlePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TitlePressed implements _TitlePressed {
  const _$_TitlePressed();

  @override
  String toString() {
    return 'DiscoverEvent.titlePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TitlePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() titlePressed,
  }) {
    return titlePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? titlePressed,
  }) {
    return titlePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? titlePressed,
    required TResult orElse(),
  }) {
    if (titlePressed != null) {
      return titlePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_TitlePressed value) titlePressed,
  }) {
    return titlePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_TitlePressed value)? titlePressed,
  }) {
    return titlePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_TitlePressed value)? titlePressed,
    required TResult orElse(),
  }) {
    if (titlePressed != null) {
      return titlePressed(this);
    }
    return orElse();
  }
}

abstract class _TitlePressed implements DiscoverEvent {
  const factory _TitlePressed() = _$_TitlePressed;
}

/// @nodoc
mixin _$DiscoverState {
  List<PluginModel> get listPlugin => throw _privateConstructorUsedError;
  List<HomeModel> get listHome => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverStateCopyWith<DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverStateCopyWith<$Res> {
  factory $DiscoverStateCopyWith(
          DiscoverState value, $Res Function(DiscoverState) then) =
      _$DiscoverStateCopyWithImpl<$Res, DiscoverState>;
  @useResult
  $Res call({List<PluginModel> listPlugin, List<HomeModel> listHome});
}

/// @nodoc
class _$DiscoverStateCopyWithImpl<$Res, $Val extends DiscoverState>
    implements $DiscoverStateCopyWith<$Res> {
  _$DiscoverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPlugin = null,
    Object? listHome = null,
  }) {
    return _then(_value.copyWith(
      listPlugin: null == listPlugin
          ? _value.listPlugin
          : listPlugin // ignore: cast_nullable_to_non_nullable
              as List<PluginModel>,
      listHome: null == listHome
          ? _value.listHome
          : listHome // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscoverStateCopyWith<$Res>
    implements $DiscoverStateCopyWith<$Res> {
  factory _$$_DiscoverStateCopyWith(
          _$_DiscoverState value, $Res Function(_$_DiscoverState) then) =
      __$$_DiscoverStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PluginModel> listPlugin, List<HomeModel> listHome});
}

/// @nodoc
class __$$_DiscoverStateCopyWithImpl<$Res>
    extends _$DiscoverStateCopyWithImpl<$Res, _$_DiscoverState>
    implements _$$_DiscoverStateCopyWith<$Res> {
  __$$_DiscoverStateCopyWithImpl(
      _$_DiscoverState _value, $Res Function(_$_DiscoverState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listPlugin = null,
    Object? listHome = null,
  }) {
    return _then(_$_DiscoverState(
      listPlugin: null == listPlugin
          ? _value._listPlugin
          : listPlugin // ignore: cast_nullable_to_non_nullable
              as List<PluginModel>,
      listHome: null == listHome
          ? _value._listHome
          : listHome // ignore: cast_nullable_to_non_nullable
              as List<HomeModel>,
    ));
  }
}

/// @nodoc

class _$_DiscoverState extends _DiscoverState {
  const _$_DiscoverState(
      {final List<PluginModel> listPlugin = const <PluginModel>[],
      final List<HomeModel> listHome = const <HomeModel>[]})
      : _listPlugin = listPlugin,
        _listHome = listHome,
        super._();

  final List<PluginModel> _listPlugin;
  @override
  @JsonKey()
  List<PluginModel> get listPlugin {
    if (_listPlugin is EqualUnmodifiableListView) return _listPlugin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listPlugin);
  }

  final List<HomeModel> _listHome;
  @override
  @JsonKey()
  List<HomeModel> get listHome {
    if (_listHome is EqualUnmodifiableListView) return _listHome;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listHome);
  }

  @override
  String toString() {
    return 'DiscoverState(listPlugin: $listPlugin, listHome: $listHome)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscoverState &&
            const DeepCollectionEquality()
                .equals(other._listPlugin, _listPlugin) &&
            const DeepCollectionEquality().equals(other._listHome, _listHome));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listPlugin),
      const DeepCollectionEquality().hash(_listHome));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscoverStateCopyWith<_$_DiscoverState> get copyWith =>
      __$$_DiscoverStateCopyWithImpl<_$_DiscoverState>(this, _$identity);
}

abstract class _DiscoverState extends DiscoverState {
  const factory _DiscoverState(
      {final List<PluginModel> listPlugin,
      final List<HomeModel> listHome}) = _$_DiscoverState;
  const _DiscoverState._() : super._();

  @override
  List<PluginModel> get listPlugin;
  @override
  List<HomeModel> get listHome;
  @override
  @JsonKey(ignore: true)
  _$$_DiscoverStateCopyWith<_$_DiscoverState> get copyWith =>
      throw _privateConstructorUsedError;
}
