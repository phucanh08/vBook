// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discover_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DiscoverTabEvent {
  String get id => throw _privateConstructorUsedError;
  String get endpoint => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String endpoint) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String endpoint)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String endpoint)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverTabEventCopyWith<DiscoverTabEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverTabEventCopyWith<$Res> {
  factory $DiscoverTabEventCopyWith(
          DiscoverTabEvent value, $Res Function(DiscoverTabEvent) then) =
      _$DiscoverTabEventCopyWithImpl<$Res, DiscoverTabEvent>;
  @useResult
  $Res call({String id, String endpoint});
}

/// @nodoc
class _$DiscoverTabEventCopyWithImpl<$Res, $Val extends DiscoverTabEvent>
    implements $DiscoverTabEventCopyWith<$Res> {
  _$DiscoverTabEventCopyWithImpl(this._value, this._then);

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
    implements $DiscoverTabEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String endpoint});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$DiscoverTabEventCopyWithImpl<$Res, _$_Started>
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
    return 'DiscoverTabEvent.started(id: $id, endpoint: $endpoint)';
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
  }) {
    return started(id, endpoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String endpoint)? started,
  }) {
    return started?.call(id, endpoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String endpoint)? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DiscoverTabEvent {
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
mixin _$DiscoverTabState {
  String get id => throw _privateConstructorUsedError;
  String get endpoint => throw _privateConstructorUsedError;
  Page get page => throw _privateConstructorUsedError;
  Pagination<NovelItemModel> get paginationData =>
      throw _privateConstructorUsedError;
  PagedStatus get pagedStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverTabStateCopyWith<DiscoverTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverTabStateCopyWith<$Res> {
  factory $DiscoverTabStateCopyWith(
          DiscoverTabState value, $Res Function(DiscoverTabState) then) =
      _$DiscoverTabStateCopyWithImpl<$Res, DiscoverTabState>;
  @useResult
  $Res call(
      {String id,
      String endpoint,
      Page page,
      Pagination<NovelItemModel> paginationData,
      PagedStatus pagedStatus});

  $PageCopyWith<$Res> get page;
}

/// @nodoc
class _$DiscoverTabStateCopyWithImpl<$Res, $Val extends DiscoverTabState>
    implements $DiscoverTabStateCopyWith<$Res> {
  _$DiscoverTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? endpoint = null,
    Object? page = null,
    Object? paginationData = null,
    Object? pagedStatus = null,
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
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Page,
      paginationData: null == paginationData
          ? _value.paginationData
          : paginationData // ignore: cast_nullable_to_non_nullable
              as Pagination<NovelItemModel>,
      pagedStatus: null == pagedStatus
          ? _value.pagedStatus
          : pagedStatus // ignore: cast_nullable_to_non_nullable
              as PagedStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageCopyWith<$Res> get page {
    return $PageCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DiscoverTabStateCopyWith<$Res>
    implements $DiscoverTabStateCopyWith<$Res> {
  factory _$$_DiscoverTabStateCopyWith(
          _$_DiscoverTabState value, $Res Function(_$_DiscoverTabState) then) =
      __$$_DiscoverTabStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String endpoint,
      Page page,
      Pagination<NovelItemModel> paginationData,
      PagedStatus pagedStatus});

  @override
  $PageCopyWith<$Res> get page;
}

/// @nodoc
class __$$_DiscoverTabStateCopyWithImpl<$Res>
    extends _$DiscoverTabStateCopyWithImpl<$Res, _$_DiscoverTabState>
    implements _$$_DiscoverTabStateCopyWith<$Res> {
  __$$_DiscoverTabStateCopyWithImpl(
      _$_DiscoverTabState _value, $Res Function(_$_DiscoverTabState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? endpoint = null,
    Object? page = null,
    Object? paginationData = null,
    Object? pagedStatus = null,
  }) {
    return _then(_$_DiscoverTabState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Page,
      paginationData: null == paginationData
          ? _value.paginationData
          : paginationData // ignore: cast_nullable_to_non_nullable
              as Pagination<NovelItemModel>,
      pagedStatus: null == pagedStatus
          ? _value.pagedStatus
          : pagedStatus // ignore: cast_nullable_to_non_nullable
              as PagedStatus,
    ));
  }
}

/// @nodoc

class _$_DiscoverTabState extends _DiscoverTabState {
  const _$_DiscoverTabState(
      {this.id = '',
      this.endpoint = '',
      this.page = const Page(),
      this.paginationData =
          const Pagination(items: <NovelItemModel>[], hasNext: false),
      this.pagedStatus = PagedStatus.initial})
      : super._();

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String endpoint;
  @override
  @JsonKey()
  final Page page;
  @override
  @JsonKey()
  final Pagination<NovelItemModel> paginationData;
  @override
  @JsonKey()
  final PagedStatus pagedStatus;

  @override
  String toString() {
    return 'DiscoverTabState(id: $id, endpoint: $endpoint, page: $page, paginationData: $paginationData, pagedStatus: $pagedStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscoverTabState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.paginationData, paginationData) ||
                other.paginationData == paginationData) &&
            (identical(other.pagedStatus, pagedStatus) ||
                other.pagedStatus == pagedStatus));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, endpoint, page, paginationData, pagedStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscoverTabStateCopyWith<_$_DiscoverTabState> get copyWith =>
      __$$_DiscoverTabStateCopyWithImpl<_$_DiscoverTabState>(this, _$identity);
}

abstract class _DiscoverTabState extends DiscoverTabState {
  const factory _DiscoverTabState(
      {final String id,
      final String endpoint,
      final Page page,
      final Pagination<NovelItemModel> paginationData,
      final PagedStatus pagedStatus}) = _$_DiscoverTabState;
  const _DiscoverTabState._() : super._();

  @override
  String get id;
  @override
  String get endpoint;
  @override
  Page get page;
  @override
  Pagination<NovelItemModel> get paginationData;
  @override
  PagedStatus get pagedStatus;
  @override
  @JsonKey(ignore: true)
  _$$_DiscoverTabStateCopyWith<_$_DiscoverTabState> get copyWith =>
      throw _privateConstructorUsedError;
}
