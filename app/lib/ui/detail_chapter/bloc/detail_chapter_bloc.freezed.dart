// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_chapter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailChapterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceId, String endpoint,
            String novelEndpoint, String title)
        started,
    required TResult Function(bool visible) visibleAppBarChanged,
    required TResult Function() bookmarkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sourceId, String endpoint, String novelEndpoint,
            String title)?
        started,
    TResult? Function(bool visible)? visibleAppBarChanged,
    TResult? Function()? bookmarkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceId, String endpoint, String novelEndpoint,
            String title)?
        started,
    TResult Function(bool visible)? visibleAppBarChanged,
    TResult Function()? bookmarkChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_VisibleAppBarChanged value) visibleAppBarChanged,
    required TResult Function(_BookmarkChanged value) bookmarkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_VisibleAppBarChanged value)? visibleAppBarChanged,
    TResult? Function(_BookmarkChanged value)? bookmarkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VisibleAppBarChanged value)? visibleAppBarChanged,
    TResult Function(_BookmarkChanged value)? bookmarkChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailChapterEventCopyWith<$Res> {
  factory $DetailChapterEventCopyWith(
          DetailChapterEvent value, $Res Function(DetailChapterEvent) then) =
      _$DetailChapterEventCopyWithImpl<$Res, DetailChapterEvent>;
}

/// @nodoc
class _$DetailChapterEventCopyWithImpl<$Res, $Val extends DetailChapterEvent>
    implements $DetailChapterEventCopyWith<$Res> {
  _$DetailChapterEventCopyWithImpl(this._value, this._then);

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
      {String sourceId, String endpoint, String novelEndpoint, String title});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$DetailChapterEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sourceId = null,
    Object? endpoint = null,
    Object? novelEndpoint = null,
    Object? title = null,
  }) {
    return _then(_$_Started(
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(
      {required this.sourceId,
      required this.endpoint,
      required this.novelEndpoint,
      required this.title});

  @override
  final String sourceId;
  @override
  final String endpoint;
  @override
  final String novelEndpoint;
  @override
  final String title;

  @override
  String toString() {
    return 'DetailChapterEvent.started(sourceId: $sourceId, endpoint: $endpoint, novelEndpoint: $novelEndpoint, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.novelEndpoint, novelEndpoint) ||
                other.novelEndpoint == novelEndpoint) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sourceId, endpoint, novelEndpoint, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceId, String endpoint,
            String novelEndpoint, String title)
        started,
    required TResult Function(bool visible) visibleAppBarChanged,
    required TResult Function() bookmarkChanged,
  }) {
    return started(sourceId, endpoint, novelEndpoint, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sourceId, String endpoint, String novelEndpoint,
            String title)?
        started,
    TResult? Function(bool visible)? visibleAppBarChanged,
    TResult? Function()? bookmarkChanged,
  }) {
    return started?.call(sourceId, endpoint, novelEndpoint, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceId, String endpoint, String novelEndpoint,
            String title)?
        started,
    TResult Function(bool visible)? visibleAppBarChanged,
    TResult Function()? bookmarkChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(sourceId, endpoint, novelEndpoint, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_VisibleAppBarChanged value) visibleAppBarChanged,
    required TResult Function(_BookmarkChanged value) bookmarkChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_VisibleAppBarChanged value)? visibleAppBarChanged,
    TResult? Function(_BookmarkChanged value)? bookmarkChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VisibleAppBarChanged value)? visibleAppBarChanged,
    TResult Function(_BookmarkChanged value)? bookmarkChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailChapterEvent {
  const factory _Started(
      {required final String sourceId,
      required final String endpoint,
      required final String novelEndpoint,
      required final String title}) = _$_Started;

  String get sourceId;
  String get endpoint;
  String get novelEndpoint;
  String get title;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VisibleAppBarChangedCopyWith<$Res> {
  factory _$$_VisibleAppBarChangedCopyWith(_$_VisibleAppBarChanged value,
          $Res Function(_$_VisibleAppBarChanged) then) =
      __$$_VisibleAppBarChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool visible});
}

/// @nodoc
class __$$_VisibleAppBarChangedCopyWithImpl<$Res>
    extends _$DetailChapterEventCopyWithImpl<$Res, _$_VisibleAppBarChanged>
    implements _$$_VisibleAppBarChangedCopyWith<$Res> {
  __$$_VisibleAppBarChangedCopyWithImpl(_$_VisibleAppBarChanged _value,
      $Res Function(_$_VisibleAppBarChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visible = null,
  }) {
    return _then(_$_VisibleAppBarChanged(
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VisibleAppBarChanged implements _VisibleAppBarChanged {
  const _$_VisibleAppBarChanged({required this.visible});

  @override
  final bool visible;

  @override
  String toString() {
    return 'DetailChapterEvent.visibleAppBarChanged(visible: $visible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisibleAppBarChanged &&
            (identical(other.visible, visible) || other.visible == visible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VisibleAppBarChangedCopyWith<_$_VisibleAppBarChanged> get copyWith =>
      __$$_VisibleAppBarChangedCopyWithImpl<_$_VisibleAppBarChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceId, String endpoint,
            String novelEndpoint, String title)
        started,
    required TResult Function(bool visible) visibleAppBarChanged,
    required TResult Function() bookmarkChanged,
  }) {
    return visibleAppBarChanged(visible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sourceId, String endpoint, String novelEndpoint,
            String title)?
        started,
    TResult? Function(bool visible)? visibleAppBarChanged,
    TResult? Function()? bookmarkChanged,
  }) {
    return visibleAppBarChanged?.call(visible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceId, String endpoint, String novelEndpoint,
            String title)?
        started,
    TResult Function(bool visible)? visibleAppBarChanged,
    TResult Function()? bookmarkChanged,
    required TResult orElse(),
  }) {
    if (visibleAppBarChanged != null) {
      return visibleAppBarChanged(visible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_VisibleAppBarChanged value) visibleAppBarChanged,
    required TResult Function(_BookmarkChanged value) bookmarkChanged,
  }) {
    return visibleAppBarChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_VisibleAppBarChanged value)? visibleAppBarChanged,
    TResult? Function(_BookmarkChanged value)? bookmarkChanged,
  }) {
    return visibleAppBarChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VisibleAppBarChanged value)? visibleAppBarChanged,
    TResult Function(_BookmarkChanged value)? bookmarkChanged,
    required TResult orElse(),
  }) {
    if (visibleAppBarChanged != null) {
      return visibleAppBarChanged(this);
    }
    return orElse();
  }
}

abstract class _VisibleAppBarChanged implements DetailChapterEvent {
  const factory _VisibleAppBarChanged({required final bool visible}) =
      _$_VisibleAppBarChanged;

  bool get visible;
  @JsonKey(ignore: true)
  _$$_VisibleAppBarChangedCopyWith<_$_VisibleAppBarChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BookmarkChangedCopyWith<$Res> {
  factory _$$_BookmarkChangedCopyWith(
          _$_BookmarkChanged value, $Res Function(_$_BookmarkChanged) then) =
      __$$_BookmarkChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BookmarkChangedCopyWithImpl<$Res>
    extends _$DetailChapterEventCopyWithImpl<$Res, _$_BookmarkChanged>
    implements _$$_BookmarkChangedCopyWith<$Res> {
  __$$_BookmarkChangedCopyWithImpl(
      _$_BookmarkChanged _value, $Res Function(_$_BookmarkChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BookmarkChanged implements _BookmarkChanged {
  const _$_BookmarkChanged();

  @override
  String toString() {
    return 'DetailChapterEvent.bookmarkChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BookmarkChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String sourceId, String endpoint,
            String novelEndpoint, String title)
        started,
    required TResult Function(bool visible) visibleAppBarChanged,
    required TResult Function() bookmarkChanged,
  }) {
    return bookmarkChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String sourceId, String endpoint, String novelEndpoint,
            String title)?
        started,
    TResult? Function(bool visible)? visibleAppBarChanged,
    TResult? Function()? bookmarkChanged,
  }) {
    return bookmarkChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String sourceId, String endpoint, String novelEndpoint,
            String title)?
        started,
    TResult Function(bool visible)? visibleAppBarChanged,
    TResult Function()? bookmarkChanged,
    required TResult orElse(),
  }) {
    if (bookmarkChanged != null) {
      return bookmarkChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_VisibleAppBarChanged value) visibleAppBarChanged,
    required TResult Function(_BookmarkChanged value) bookmarkChanged,
  }) {
    return bookmarkChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_VisibleAppBarChanged value)? visibleAppBarChanged,
    TResult? Function(_BookmarkChanged value)? bookmarkChanged,
  }) {
    return bookmarkChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_VisibleAppBarChanged value)? visibleAppBarChanged,
    TResult Function(_BookmarkChanged value)? bookmarkChanged,
    required TResult orElse(),
  }) {
    if (bookmarkChanged != null) {
      return bookmarkChanged(this);
    }
    return orElse();
  }
}

abstract class _BookmarkChanged implements DetailChapterEvent {
  const factory _BookmarkChanged() = _$_BookmarkChanged;
}

/// @nodoc
mixin _$DetailChapterState {
  ChapterDetailModel? get model => throw _privateConstructorUsedError;
  bool get visibleAppBar => throw _privateConstructorUsedError;
  bool get bookmarked => throw _privateConstructorUsedError;
  List<ChapterModel> get catalog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailChapterStateCopyWith<DetailChapterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailChapterStateCopyWith<$Res> {
  factory $DetailChapterStateCopyWith(
          DetailChapterState value, $Res Function(DetailChapterState) then) =
      _$DetailChapterStateCopyWithImpl<$Res, DetailChapterState>;
  @useResult
  $Res call(
      {ChapterDetailModel? model,
      bool visibleAppBar,
      bool bookmarked,
      List<ChapterModel> catalog});

  $ChapterDetailModelCopyWith<$Res>? get model;
}

/// @nodoc
class _$DetailChapterStateCopyWithImpl<$Res, $Val extends DetailChapterState>
    implements $DetailChapterStateCopyWith<$Res> {
  _$DetailChapterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? visibleAppBar = null,
    Object? bookmarked = null,
    Object? catalog = null,
  }) {
    return _then(_value.copyWith(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ChapterDetailModel?,
      visibleAppBar: null == visibleAppBar
          ? _value.visibleAppBar
          : visibleAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      bookmarked: null == bookmarked
          ? _value.bookmarked
          : bookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      catalog: null == catalog
          ? _value.catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as List<ChapterModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChapterDetailModelCopyWith<$Res>? get model {
    if (_value.model == null) {
      return null;
    }

    return $ChapterDetailModelCopyWith<$Res>(_value.model!, (value) {
      return _then(_value.copyWith(model: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailChapterStateCopyWith<$Res>
    implements $DetailChapterStateCopyWith<$Res> {
  factory _$$_DetailChapterStateCopyWith(_$_DetailChapterState value,
          $Res Function(_$_DetailChapterState) then) =
      __$$_DetailChapterStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChapterDetailModel? model,
      bool visibleAppBar,
      bool bookmarked,
      List<ChapterModel> catalog});

  @override
  $ChapterDetailModelCopyWith<$Res>? get model;
}

/// @nodoc
class __$$_DetailChapterStateCopyWithImpl<$Res>
    extends _$DetailChapterStateCopyWithImpl<$Res, _$_DetailChapterState>
    implements _$$_DetailChapterStateCopyWith<$Res> {
  __$$_DetailChapterStateCopyWithImpl(
      _$_DetailChapterState _value, $Res Function(_$_DetailChapterState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = freezed,
    Object? visibleAppBar = null,
    Object? bookmarked = null,
    Object? catalog = null,
  }) {
    return _then(_$_DetailChapterState(
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ChapterDetailModel?,
      visibleAppBar: null == visibleAppBar
          ? _value.visibleAppBar
          : visibleAppBar // ignore: cast_nullable_to_non_nullable
              as bool,
      bookmarked: null == bookmarked
          ? _value.bookmarked
          : bookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      catalog: null == catalog
          ? _value._catalog
          : catalog // ignore: cast_nullable_to_non_nullable
              as List<ChapterModel>,
    ));
  }
}

/// @nodoc

class _$_DetailChapterState extends _DetailChapterState {
  const _$_DetailChapterState(
      {this.model,
      this.visibleAppBar = true,
      this.bookmarked = false,
      final List<ChapterModel> catalog = const []})
      : _catalog = catalog,
        super._();

  @override
  final ChapterDetailModel? model;
  @override
  @JsonKey()
  final bool visibleAppBar;
  @override
  @JsonKey()
  final bool bookmarked;
  final List<ChapterModel> _catalog;
  @override
  @JsonKey()
  List<ChapterModel> get catalog {
    if (_catalog is EqualUnmodifiableListView) return _catalog;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catalog);
  }

  @override
  String toString() {
    return 'DetailChapterState(model: $model, visibleAppBar: $visibleAppBar, bookmarked: $bookmarked, catalog: $catalog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailChapterState &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.visibleAppBar, visibleAppBar) ||
                other.visibleAppBar == visibleAppBar) &&
            (identical(other.bookmarked, bookmarked) ||
                other.bookmarked == bookmarked) &&
            const DeepCollectionEquality().equals(other._catalog, _catalog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model, visibleAppBar, bookmarked,
      const DeepCollectionEquality().hash(_catalog));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailChapterStateCopyWith<_$_DetailChapterState> get copyWith =>
      __$$_DetailChapterStateCopyWithImpl<_$_DetailChapterState>(
          this, _$identity);
}

abstract class _DetailChapterState extends DetailChapterState {
  const factory _DetailChapterState(
      {final ChapterDetailModel? model,
      final bool visibleAppBar,
      final bool bookmarked,
      final List<ChapterModel> catalog}) = _$_DetailChapterState;
  const _DetailChapterState._() : super._();

  @override
  ChapterDetailModel? get model;
  @override
  bool get visibleAppBar;
  @override
  bool get bookmarked;
  @override
  List<ChapterModel> get catalog;
  @override
  @JsonKey(ignore: true)
  _$$_DetailChapterStateCopyWith<_$_DetailChapterState> get copyWith =>
      throw _privateConstructorUsedError;
}
