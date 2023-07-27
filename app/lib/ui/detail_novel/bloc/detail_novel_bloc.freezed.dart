// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_novel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailNovelEvent {
  String get id => throw _privateConstructorUsedError;
  String get endpoint => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String endpoint) started,
    required TResult Function(String id, String endpoint)
        addToShelfButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String endpoint)? started,
    TResult? Function(String id, String endpoint)? addToShelfButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String endpoint)? started,
    TResult Function(String id, String endpoint)? addToShelfButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToShelfButtonPressed value)
        addToShelfButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToShelfButtonPressed value)? addToShelfButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToShelfButtonPressed value)? addToShelfButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailNovelEventCopyWith<DetailNovelEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailNovelEventCopyWith<$Res> {
  factory $DetailNovelEventCopyWith(
          DetailNovelEvent value, $Res Function(DetailNovelEvent) then) =
      _$DetailNovelEventCopyWithImpl<$Res, DetailNovelEvent>;
  @useResult
  $Res call({String id, String endpoint});
}

/// @nodoc
class _$DetailNovelEventCopyWithImpl<$Res, $Val extends DetailNovelEvent>
    implements $DetailNovelEventCopyWith<$Res> {
  _$DetailNovelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? endpoint = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $DetailNovelEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String endpoint});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$DetailNovelEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? endpoint = null,
  }) {
    return _then(_$_Started(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started({required this.id, required this.endpoint});

  @override
  final String id;
  @override
  final String endpoint;

  @override
  String toString() {
    return 'DetailNovelEvent.started(id: $id, endpoint: $endpoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, endpoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String endpoint) started,
    required TResult Function(String id, String endpoint)
        addToShelfButtonPressed,
  }) {
    return started(id, endpoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String endpoint)? started,
    TResult? Function(String id, String endpoint)? addToShelfButtonPressed,
  }) {
    return started?.call(id, endpoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String endpoint)? started,
    TResult Function(String id, String endpoint)? addToShelfButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id, endpoint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToShelfButtonPressed value)
        addToShelfButtonPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToShelfButtonPressed value)? addToShelfButtonPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToShelfButtonPressed value)? addToShelfButtonPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailNovelEvent {
  const factory _Started(
      {required final String id, required final String endpoint}) = _$_Started;

  @override
  String get id;
  @override
  String get endpoint;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddToShelfButtonPressedCopyWith<$Res>
    implements $DetailNovelEventCopyWith<$Res> {
  factory _$$_AddToShelfButtonPressedCopyWith(_$_AddToShelfButtonPressed value,
          $Res Function(_$_AddToShelfButtonPressed) then) =
      __$$_AddToShelfButtonPressedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String endpoint});
}

/// @nodoc
class __$$_AddToShelfButtonPressedCopyWithImpl<$Res>
    extends _$DetailNovelEventCopyWithImpl<$Res, _$_AddToShelfButtonPressed>
    implements _$$_AddToShelfButtonPressedCopyWith<$Res> {
  __$$_AddToShelfButtonPressedCopyWithImpl(_$_AddToShelfButtonPressed _value,
      $Res Function(_$_AddToShelfButtonPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? endpoint = null,
  }) {
    return _then(_$_AddToShelfButtonPressed(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddToShelfButtonPressed implements _AddToShelfButtonPressed {
  const _$_AddToShelfButtonPressed({required this.id, required this.endpoint});

  @override
  final String id;
  @override
  final String endpoint;

  @override
  String toString() {
    return 'DetailNovelEvent.addToShelfButtonPressed(id: $id, endpoint: $endpoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToShelfButtonPressed &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, endpoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddToShelfButtonPressedCopyWith<_$_AddToShelfButtonPressed>
      get copyWith =>
          __$$_AddToShelfButtonPressedCopyWithImpl<_$_AddToShelfButtonPressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String endpoint) started,
    required TResult Function(String id, String endpoint)
        addToShelfButtonPressed,
  }) {
    return addToShelfButtonPressed(id, endpoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String endpoint)? started,
    TResult? Function(String id, String endpoint)? addToShelfButtonPressed,
  }) {
    return addToShelfButtonPressed?.call(id, endpoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String endpoint)? started,
    TResult Function(String id, String endpoint)? addToShelfButtonPressed,
    required TResult orElse(),
  }) {
    if (addToShelfButtonPressed != null) {
      return addToShelfButtonPressed(id, endpoint);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToShelfButtonPressed value)
        addToShelfButtonPressed,
  }) {
    return addToShelfButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToShelfButtonPressed value)? addToShelfButtonPressed,
  }) {
    return addToShelfButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToShelfButtonPressed value)? addToShelfButtonPressed,
    required TResult orElse(),
  }) {
    if (addToShelfButtonPressed != null) {
      return addToShelfButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _AddToShelfButtonPressed implements DetailNovelEvent {
  const factory _AddToShelfButtonPressed(
      {required final String id,
      required final String endpoint}) = _$_AddToShelfButtonPressed;

  @override
  String get id;
  @override
  String get endpoint;
  @override
  @JsonKey(ignore: true)
  _$$_AddToShelfButtonPressedCopyWith<_$_AddToShelfButtonPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailNovelState {
  NovelDetailModel? get model => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailNovelStateCopyWith<DetailNovelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailNovelStateCopyWith<$Res> {
  factory $DetailNovelStateCopyWith(
          DetailNovelState value, $Res Function(DetailNovelState) then) =
      _$DetailNovelStateCopyWithImpl<$Res, DetailNovelState>;
  @useResult
  $Res call({NovelDetailModel? model});

  $NovelDetailModelCopyWith<$Res>? get model;
}

/// @nodoc
class _$DetailNovelStateCopyWithImpl<$Res, $Val extends DetailNovelState>
    implements $DetailNovelStateCopyWith<$Res> {
  _$DetailNovelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as NovelDetailModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NovelDetailModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $NovelDetailModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailNovelStateCopyWith<$Res>
    implements $DetailNovelStateCopyWith<$Res> {
  factory _$$_DetailNovelStateCopyWith(
          _$_DetailNovelState value, $Res Function(_$_DetailNovelState) then) =
      __$$_DetailNovelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NovelDetailModel? model});

  @override
  $NovelDetailModelCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_DetailNovelStateCopyWithImpl<$Res>
    extends _$DetailNovelStateCopyWithImpl<$Res, _$_DetailNovelState>
    implements _$$_DetailNovelStateCopyWith<$Res> {
  __$$_DetailNovelStateCopyWithImpl(
      _$_DetailNovelState _value, $Res Function(_$_DetailNovelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
  }) {
    return _then(_$_DetailNovelState(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as NovelDetailModel?,
    ));
  }
}

/// @nodoc

class _$_DetailNovelState implements _DetailNovelState {
  const _$_DetailNovelState({this.model});

  @override
  final NovelDetailModel? model;

  @override
  String toString() {
    return 'DetailNovelState(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailNovelState &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailNovelStateCopyWith<_$_DetailNovelState> get copyWith =>
      __$$_DetailNovelStateCopyWithImpl<_$_DetailNovelState>(this, _$identity);
}

abstract class _DetailNovelState implements DetailNovelState {
  const factory _DetailNovelState({final NovelDetailModel? model}) =
      _$_DetailNovelState;

  @override
  NovelDetailModel? get model;
  @override
  @JsonKey(ignore: true)
  _$$_DetailNovelStateCopyWith<_$_DetailNovelState> get copyWith =>
      throw _privateConstructorUsedError;
}
