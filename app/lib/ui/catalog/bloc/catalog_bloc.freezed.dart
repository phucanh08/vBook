// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CatalogEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String endpoint) started,
    required TResult Function(Sort sort) sortSelected,
    required TResult Function(String sourceId, String endpoint,
            String novelEndpoint, String currentChapterName, int currentChapter)
        itemPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String endpoint)? started,
    TResult? Function(Sort sort)? sortSelected,
    TResult? Function(String sourceId, String endpoint, String novelEndpoint,
            String currentChapterName, int currentChapter)?
        itemPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String endpoint)? started,
    TResult Function(Sort sort)? sortSelected,
    TResult Function(String sourceId, String endpoint, String novelEndpoint,
            String currentChapterName, int currentChapter)?
        itemPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_sortSelected value) sortSelected,
    required TResult Function(_itemPressed value) itemPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_sortSelected value)? sortSelected,
    TResult? Function(_itemPressed value)? itemPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_sortSelected value)? sortSelected,
    TResult Function(_itemPressed value)? itemPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogEventCopyWith<$Res> {
  factory $CatalogEventCopyWith(
          CatalogEvent value, $Res Function(CatalogEvent) then) =
      _$CatalogEventCopyWithImpl<$Res, CatalogEvent>;
}

/// @nodoc
class _$CatalogEventCopyWithImpl<$Res, $Val extends CatalogEvent>
    implements $CatalogEventCopyWith<$Res> {
  _$CatalogEventCopyWithImpl(this._value, this._then);

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
  $Res call({String id, String endpoint});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$_Started>
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
    return 'CatalogEvent.started(id: $id, endpoint: $endpoint)';
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
    required TResult Function(Sort sort) sortSelected,
    required TResult Function(String sourceId, String endpoint,
            String novelEndpoint, String currentChapterName, int currentChapter)
        itemPressed,
  }) {
    return started(id, endpoint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String endpoint)? started,
    TResult? Function(Sort sort)? sortSelected,
    TResult? Function(String sourceId, String endpoint, String novelEndpoint,
            String currentChapterName, int currentChapter)?
        itemPressed,
  }) {
    return started?.call(id, endpoint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String endpoint)? started,
    TResult Function(Sort sort)? sortSelected,
    TResult Function(String sourceId, String endpoint, String novelEndpoint,
            String currentChapterName, int currentChapter)?
        itemPressed,
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
    required TResult Function(_sortSelected value) sortSelected,
    required TResult Function(_itemPressed value) itemPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_sortSelected value)? sortSelected,
    TResult? Function(_itemPressed value)? itemPressed,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_sortSelected value)? sortSelected,
    TResult Function(_itemPressed value)? itemPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CatalogEvent {
  const factory _Started(
      {required final String id, required final String endpoint}) = _$_Started;

  String get id;
  String get endpoint;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_sortSelectedCopyWith<$Res> {
  factory _$$_sortSelectedCopyWith(
          _$_sortSelected value, $Res Function(_$_sortSelected) then) =
      __$$_sortSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Sort sort});
}

/// @nodoc
class __$$_sortSelectedCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$_sortSelected>
    implements _$$_sortSelectedCopyWith<$Res> {
  __$$_sortSelectedCopyWithImpl(
      _$_sortSelected _value, $Res Function(_$_sortSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
  }) {
    return _then(_$_sortSelected(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
    ));
  }
}

/// @nodoc

class _$_sortSelected implements _sortSelected {
  const _$_sortSelected({required this.sort});

  @override
  final Sort sort;

  @override
  String toString() {
    return 'CatalogEvent.sortSelected(sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_sortSelected &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_sortSelectedCopyWith<_$_sortSelected> get copyWith =>
      __$$_sortSelectedCopyWithImpl<_$_sortSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String endpoint) started,
    required TResult Function(Sort sort) sortSelected,
    required TResult Function(String sourceId, String endpoint,
            String novelEndpoint, String currentChapterName, int currentChapter)
        itemPressed,
  }) {
    return sortSelected(sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String endpoint)? started,
    TResult? Function(Sort sort)? sortSelected,
    TResult? Function(String sourceId, String endpoint, String novelEndpoint,
            String currentChapterName, int currentChapter)?
        itemPressed,
  }) {
    return sortSelected?.call(sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String endpoint)? started,
    TResult Function(Sort sort)? sortSelected,
    TResult Function(String sourceId, String endpoint, String novelEndpoint,
            String currentChapterName, int currentChapter)?
        itemPressed,
    required TResult orElse(),
  }) {
    if (sortSelected != null) {
      return sortSelected(sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_sortSelected value) sortSelected,
    required TResult Function(_itemPressed value) itemPressed,
  }) {
    return sortSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_sortSelected value)? sortSelected,
    TResult? Function(_itemPressed value)? itemPressed,
  }) {
    return sortSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_sortSelected value)? sortSelected,
    TResult Function(_itemPressed value)? itemPressed,
    required TResult orElse(),
  }) {
    if (sortSelected != null) {
      return sortSelected(this);
    }
    return orElse();
  }
}

abstract class _sortSelected implements CatalogEvent {
  const factory _sortSelected({required final Sort sort}) = _$_sortSelected;

  Sort get sort;
  @JsonKey(ignore: true)
  _$$_sortSelectedCopyWith<_$_sortSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_itemPressedCopyWith<$Res> {
  factory _$$_itemPressedCopyWith(
          _$_itemPressed value, $Res Function(_$_itemPressed) then) =
      __$$_itemPressedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String sourceId,
      String endpoint,
      String novelEndpoint,
      String currentChapterName,
      int currentChapter});
}

/// @nodoc
class __$$_itemPressedCopyWithImpl<$Res>
    extends _$CatalogEventCopyWithImpl<$Res, _$_itemPressed>
    implements _$$_itemPressedCopyWith<$Res> {
  __$$_itemPressedCopyWithImpl(
      _$_itemPressed _value, $Res Function(_$_itemPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? endpoint = null,
    Object? novelEndpoint = null,
    Object? currentChapterName = null,
    Object? currentChapter = null,
  }) {
    return _then(_$_itemPressed(
      sourceId: null == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
      novelEndpoint: null == novelEndpoint
          ? _value.novelEndpoint
          : novelEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
      currentChapterName: null == currentChapterName
          ? _value.currentChapterName
          : currentChapterName // ignore: cast_nullable_to_non_nullable
              as String,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_itemPressed implements _itemPressed {
  const _$_itemPressed(
      {required this.sourceId,
      required this.endpoint,
      required this.novelEndpoint,
      required this.currentChapterName,
      required this.currentChapter});

  @override
  final String sourceId;
  @override
  final String endpoint;
  @override
  final String novelEndpoint;
  @override
  final String currentChapterName;
  @override
  final int currentChapter;

  @override
  String toString() {
    return 'CatalogEvent.itemPressed(sourceId: $sourceId, endpoint: $endpoint, novelEndpoint: $novelEndpoint, currentChapterName: $currentChapterName, currentChapter: $currentChapter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_itemPressed &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.novelEndpoint, novelEndpoint) ||
                other.novelEndpoint == novelEndpoint) &&
            (identical(other.currentChapterName, currentChapterName) ||
                other.currentChapterName == currentChapterName) &&
            (identical(other.currentChapter, currentChapter) ||
                other.currentChapter == currentChapter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sourceId, endpoint,
      novelEndpoint, currentChapterName, currentChapter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_itemPressedCopyWith<_$_itemPressed> get copyWith =>
      __$$_itemPressedCopyWithImpl<_$_itemPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String endpoint) started,
    required TResult Function(Sort sort) sortSelected,
    required TResult Function(String sourceId, String endpoint,
            String novelEndpoint, String currentChapterName, int currentChapter)
        itemPressed,
  }) {
    return itemPressed(
        sourceId, endpoint, novelEndpoint, currentChapterName, currentChapter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String endpoint)? started,
    TResult? Function(Sort sort)? sortSelected,
    TResult? Function(String sourceId, String endpoint, String novelEndpoint,
            String currentChapterName, int currentChapter)?
        itemPressed,
  }) {
    return itemPressed?.call(
        sourceId, endpoint, novelEndpoint, currentChapterName, currentChapter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String endpoint)? started,
    TResult Function(Sort sort)? sortSelected,
    TResult Function(String sourceId, String endpoint, String novelEndpoint,
            String currentChapterName, int currentChapter)?
        itemPressed,
    required TResult orElse(),
  }) {
    if (itemPressed != null) {
      return itemPressed(sourceId, endpoint, novelEndpoint, currentChapterName,
          currentChapter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_sortSelected value) sortSelected,
    required TResult Function(_itemPressed value) itemPressed,
  }) {
    return itemPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_sortSelected value)? sortSelected,
    TResult? Function(_itemPressed value)? itemPressed,
  }) {
    return itemPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_sortSelected value)? sortSelected,
    TResult Function(_itemPressed value)? itemPressed,
    required TResult orElse(),
  }) {
    if (itemPressed != null) {
      return itemPressed(this);
    }
    return orElse();
  }
}

abstract class _itemPressed implements CatalogEvent {
  const factory _itemPressed(
      {required final String sourceId,
      required final String endpoint,
      required final String novelEndpoint,
      required final String currentChapterName,
      required final int currentChapter}) = _$_itemPressed;

  String get sourceId;
  String get endpoint;
  String get novelEndpoint;
  String get currentChapterName;
  int get currentChapter;
  @JsonKey(ignore: true)
  _$$_itemPressedCopyWith<_$_itemPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CatalogState {
  String get id => throw _privateConstructorUsedError;
  String get endpoint => throw _privateConstructorUsedError;
  Page get page => throw _privateConstructorUsedError;
  Pagination<ChapterModel> get paginationData =>
      throw _privateConstructorUsedError;
  PagedStatus get pagedStatus => throw _privateConstructorUsedError;
  Sort get sort => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatalogStateCopyWith<CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogStateCopyWith<$Res> {
  factory $CatalogStateCopyWith(
          CatalogState value, $Res Function(CatalogState) then) =
      _$CatalogStateCopyWithImpl<$Res, CatalogState>;
  @useResult
  $Res call(
      {String id,
      String endpoint,
      Page page,
      Pagination<ChapterModel> paginationData,
      PagedStatus pagedStatus,
      Sort sort});

  $PageCopyWith<$Res> get page;
}

/// @nodoc
class _$CatalogStateCopyWithImpl<$Res, $Val extends CatalogState>
    implements $CatalogStateCopyWith<$Res> {
  _$CatalogStateCopyWithImpl(this._value, this._then);

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
    Object? sort = null,
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
              as Pagination<ChapterModel>,
      pagedStatus: null == pagedStatus
          ? _value.pagedStatus
          : pagedStatus // ignore: cast_nullable_to_non_nullable
              as PagedStatus,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
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
abstract class _$$_CatalogStateCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory _$$_CatalogStateCopyWith(
          _$_CatalogState value, $Res Function(_$_CatalogState) then) =
      __$$_CatalogStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String endpoint,
      Page page,
      Pagination<ChapterModel> paginationData,
      PagedStatus pagedStatus,
      Sort sort});

  @override
  $PageCopyWith<$Res> get page;
}

/// @nodoc
class __$$_CatalogStateCopyWithImpl<$Res>
    extends _$CatalogStateCopyWithImpl<$Res, _$_CatalogState>
    implements _$$_CatalogStateCopyWith<$Res> {
  __$$_CatalogStateCopyWithImpl(
      _$_CatalogState _value, $Res Function(_$_CatalogState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? endpoint = null,
    Object? page = null,
    Object? paginationData = null,
    Object? pagedStatus = null,
    Object? sort = null,
  }) {
    return _then(_$_CatalogState(
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
              as Pagination<ChapterModel>,
      pagedStatus: null == pagedStatus
          ? _value.pagedStatus
          : pagedStatus // ignore: cast_nullable_to_non_nullable
              as PagedStatus,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
    ));
  }
}

/// @nodoc

class _$_CatalogState extends _CatalogState {
  const _$_CatalogState(
      {this.id = '',
      this.endpoint = '',
      this.page = const Page(),
      this.paginationData =
          const Pagination(items: <ChapterModel>[], hasNext: false),
      this.pagedStatus = PagedStatus.initial,
      this.sort = Sort.oldest})
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
  final Pagination<ChapterModel> paginationData;
  @override
  @JsonKey()
  final PagedStatus pagedStatus;
  @override
  @JsonKey()
  final Sort sort;

  @override
  String toString() {
    return 'CatalogState(id: $id, endpoint: $endpoint, page: $page, paginationData: $paginationData, pagedStatus: $pagedStatus, sort: $sort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatalogState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.paginationData, paginationData) ||
                other.paginationData == paginationData) &&
            (identical(other.pagedStatus, pagedStatus) ||
                other.pagedStatus == pagedStatus) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, endpoint, page, paginationData, pagedStatus, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      __$$_CatalogStateCopyWithImpl<_$_CatalogState>(this, _$identity);
}

abstract class _CatalogState extends CatalogState {
  const factory _CatalogState(
      {final String id,
      final String endpoint,
      final Page page,
      final Pagination<ChapterModel> paginationData,
      final PagedStatus pagedStatus,
      final Sort sort}) = _$_CatalogState;
  const _CatalogState._() : super._();

  @override
  String get id;
  @override
  String get endpoint;
  @override
  Page get page;
  @override
  Pagination<ChapterModel> get paginationData;
  @override
  PagedStatus get pagedStatus;
  @override
  Sort get sort;
  @override
  @JsonKey(ignore: true)
  _$$_CatalogStateCopyWith<_$_CatalogState> get copyWith =>
      throw _privateConstructorUsedError;
}
