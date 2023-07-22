// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NovelItemModel {
  String get name => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get host => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NovelItemModelCopyWith<NovelItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelItemModelCopyWith<$Res> {
  factory $NovelItemModelCopyWith(
          NovelItemModel value, $Res Function(NovelItemModel) then) =
      _$NovelItemModelCopyWithImpl<$Res, NovelItemModel>;
  @useResult
  $Res call(
      {String name,
      String link,
      String imgUrl,
      String description,
      String host});
}

/// @nodoc
class _$NovelItemModelCopyWithImpl<$Res, $Val extends NovelItemModel>
    implements $NovelItemModelCopyWith<$Res> {
  _$NovelItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? link = null,
    Object? imgUrl = null,
    Object? description = null,
    Object? host = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NovelItemModelCopyWith<$Res>
    implements $NovelItemModelCopyWith<$Res> {
  factory _$$_NovelItemModelCopyWith(
          _$_NovelItemModel value, $Res Function(_$_NovelItemModel) then) =
      __$$_NovelItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String link,
      String imgUrl,
      String description,
      String host});
}

/// @nodoc
class __$$_NovelItemModelCopyWithImpl<$Res>
    extends _$NovelItemModelCopyWithImpl<$Res, _$_NovelItemModel>
    implements _$$_NovelItemModelCopyWith<$Res> {
  __$$_NovelItemModelCopyWithImpl(
      _$_NovelItemModel _value, $Res Function(_$_NovelItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? link = null,
    Object? imgUrl = null,
    Object? description = null,
    Object? host = null,
  }) {
    return _then(_$_NovelItemModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NovelItemModel extends _NovelItemModel {
  const _$_NovelItemModel(
      {required this.name,
      required this.link,
      required this.imgUrl,
      required this.description,
      required this.host})
      : super._();

  @override
  final String name;
  @override
  final String link;
  @override
  final String imgUrl;
  @override
  final String description;
  @override
  final String host;

  @override
  String toString() {
    return 'NovelItemModel(name: $name, link: $link, imgUrl: $imgUrl, description: $description, host: $host)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NovelItemModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.host, host) || other.host == host));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, link, imgUrl, description, host);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NovelItemModelCopyWith<_$_NovelItemModel> get copyWith =>
      __$$_NovelItemModelCopyWithImpl<_$_NovelItemModel>(this, _$identity);
}

abstract class _NovelItemModel extends NovelItemModel {
  const factory _NovelItemModel(
      {required final String name,
      required final String link,
      required final String imgUrl,
      required final String description,
      required final String host}) = _$_NovelItemModel;
  const _NovelItemModel._() : super._();

  @override
  String get name;
  @override
  String get link;
  @override
  String get imgUrl;
  @override
  String get description;
  @override
  String get host;
  @override
  @JsonKey(ignore: true)
  _$$_NovelItemModelCopyWith<_$_NovelItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NovelDetailModel {
  String get name => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  String get host => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NovelDetailModelCopyWith<NovelDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelDetailModelCopyWith<$Res> {
  factory $NovelDetailModelCopyWith(
          NovelDetailModel value, $Res Function(NovelDetailModel) then) =
      _$NovelDetailModelCopyWithImpl<$Res, NovelDetailModel>;
  @useResult
  $Res call(
      {String name,
      String imgUrl,
      String host,
      String author,
      String description,
      String detail});
}

/// @nodoc
class _$NovelDetailModelCopyWithImpl<$Res, $Val extends NovelDetailModel>
    implements $NovelDetailModelCopyWith<$Res> {
  _$NovelDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imgUrl = null,
    Object? host = null,
    Object? author = null,
    Object? description = null,
    Object? detail = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NovelDetailModelCopyWith<$Res>
    implements $NovelDetailModelCopyWith<$Res> {
  factory _$$_NovelDetailModelCopyWith(
          _$_NovelDetailModel value, $Res Function(_$_NovelDetailModel) then) =
      __$$_NovelDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String imgUrl,
      String host,
      String author,
      String description,
      String detail});
}

/// @nodoc
class __$$_NovelDetailModelCopyWithImpl<$Res>
    extends _$NovelDetailModelCopyWithImpl<$Res, _$_NovelDetailModel>
    implements _$$_NovelDetailModelCopyWith<$Res> {
  __$$_NovelDetailModelCopyWithImpl(
      _$_NovelDetailModel _value, $Res Function(_$_NovelDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imgUrl = null,
    Object? host = null,
    Object? author = null,
    Object? description = null,
    Object? detail = null,
  }) {
    return _then(_$_NovelDetailModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NovelDetailModel extends _NovelDetailModel {
  const _$_NovelDetailModel(
      {required this.name,
      required this.imgUrl,
      required this.host,
      required this.author,
      required this.description,
      required this.detail})
      : super._();

  @override
  final String name;
  @override
  final String imgUrl;
  @override
  final String host;
  @override
  final String author;
  @override
  final String description;
  @override
  final String detail;

  @override
  String toString() {
    return 'NovelDetailModel(name: $name, imgUrl: $imgUrl, host: $host, author: $author, description: $description, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NovelDetailModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, imgUrl, host, author, description, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NovelDetailModelCopyWith<_$_NovelDetailModel> get copyWith =>
      __$$_NovelDetailModelCopyWithImpl<_$_NovelDetailModel>(this, _$identity);
}

abstract class _NovelDetailModel extends NovelDetailModel {
  const factory _NovelDetailModel(
      {required final String name,
      required final String imgUrl,
      required final String host,
      required final String author,
      required final String description,
      required final String detail}) = _$_NovelDetailModel;
  const _NovelDetailModel._() : super._();

  @override
  String get name;
  @override
  String get imgUrl;
  @override
  String get host;
  @override
  String get author;
  @override
  String get description;
  @override
  String get detail;
  @override
  @JsonKey(ignore: true)
  _$$_NovelDetailModelCopyWith<_$_NovelDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NovelModel {
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get sourceName => throw _privateConstructorUsedError;
  String get imgUrl => throw _privateConstructorUsedError;
  int get totalChapters => throw _privateConstructorUsedError;
  int get currentChapter => throw _privateConstructorUsedError;
  String get currentChapterName => throw _privateConstructorUsedError;
  int get timeRead => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NovelModelCopyWith<NovelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelModelCopyWith<$Res> {
  factory $NovelModelCopyWith(
          NovelModel value, $Res Function(NovelModel) then) =
      _$NovelModelCopyWithImpl<$Res, NovelModel>;
  @useResult
  $Res call(
      {DateTime updatedAt,
      String name,
      String path,
      String sourceName,
      String imgUrl,
      int totalChapters,
      int currentChapter,
      String currentChapterName,
      int timeRead});
}

/// @nodoc
class _$NovelModelCopyWithImpl<$Res, $Val extends NovelModel>
    implements $NovelModelCopyWith<$Res> {
  _$NovelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAt = null,
    Object? name = null,
    Object? path = null,
    Object? sourceName = null,
    Object? imgUrl = null,
    Object? totalChapters = null,
    Object? currentChapter = null,
    Object? currentChapterName = null,
    Object? timeRead = null,
  }) {
    return _then(_value.copyWith(
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      totalChapters: null == totalChapters
          ? _value.totalChapters
          : totalChapters // ignore: cast_nullable_to_non_nullable
              as int,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
      currentChapterName: null == currentChapterName
          ? _value.currentChapterName
          : currentChapterName // ignore: cast_nullable_to_non_nullable
              as String,
      timeRead: null == timeRead
          ? _value.timeRead
          : timeRead // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NovelModelCopyWith<$Res>
    implements $NovelModelCopyWith<$Res> {
  factory _$$_NovelModelCopyWith(
          _$_NovelModel value, $Res Function(_$_NovelModel) then) =
      __$$_NovelModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime updatedAt,
      String name,
      String path,
      String sourceName,
      String imgUrl,
      int totalChapters,
      int currentChapter,
      String currentChapterName,
      int timeRead});
}

/// @nodoc
class __$$_NovelModelCopyWithImpl<$Res>
    extends _$NovelModelCopyWithImpl<$Res, _$_NovelModel>
    implements _$$_NovelModelCopyWith<$Res> {
  __$$_NovelModelCopyWithImpl(
      _$_NovelModel _value, $Res Function(_$_NovelModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAt = null,
    Object? name = null,
    Object? path = null,
    Object? sourceName = null,
    Object? imgUrl = null,
    Object? totalChapters = null,
    Object? currentChapter = null,
    Object? currentChapterName = null,
    Object? timeRead = null,
  }) {
    return _then(_$_NovelModel(
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      imgUrl: null == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      totalChapters: null == totalChapters
          ? _value.totalChapters
          : totalChapters // ignore: cast_nullable_to_non_nullable
              as int,
      currentChapter: null == currentChapter
          ? _value.currentChapter
          : currentChapter // ignore: cast_nullable_to_non_nullable
              as int,
      currentChapterName: null == currentChapterName
          ? _value.currentChapterName
          : currentChapterName // ignore: cast_nullable_to_non_nullable
              as String,
      timeRead: null == timeRead
          ? _value.timeRead
          : timeRead // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NovelModel extends _NovelModel {
  const _$_NovelModel(
      {required this.updatedAt,
      required this.name,
      required this.path,
      required this.sourceName,
      required this.imgUrl,
      required this.totalChapters,
      required this.currentChapter,
      required this.currentChapterName,
      required this.timeRead})
      : super._();

  @override
  final DateTime updatedAt;
  @override
  final String name;
  @override
  final String path;
  @override
  final String sourceName;
  @override
  final String imgUrl;
  @override
  final int totalChapters;
  @override
  final int currentChapter;
  @override
  final String currentChapterName;
  @override
  final int timeRead;

  @override
  String toString() {
    return 'NovelModel(updatedAt: $updatedAt, name: $name, path: $path, sourceName: $sourceName, imgUrl: $imgUrl, totalChapters: $totalChapters, currentChapter: $currentChapter, currentChapterName: $currentChapterName, timeRead: $timeRead)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NovelModel &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.totalChapters, totalChapters) ||
                other.totalChapters == totalChapters) &&
            (identical(other.currentChapter, currentChapter) ||
                other.currentChapter == currentChapter) &&
            (identical(other.currentChapterName, currentChapterName) ||
                other.currentChapterName == currentChapterName) &&
            (identical(other.timeRead, timeRead) ||
                other.timeRead == timeRead));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      updatedAt,
      name,
      path,
      sourceName,
      imgUrl,
      totalChapters,
      currentChapter,
      currentChapterName,
      timeRead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NovelModelCopyWith<_$_NovelModel> get copyWith =>
      __$$_NovelModelCopyWithImpl<_$_NovelModel>(this, _$identity);
}

abstract class _NovelModel extends NovelModel {
  const factory _NovelModel(
      {required final DateTime updatedAt,
      required final String name,
      required final String path,
      required final String sourceName,
      required final String imgUrl,
      required final int totalChapters,
      required final int currentChapter,
      required final String currentChapterName,
      required final int timeRead}) = _$_NovelModel;
  const _NovelModel._() : super._();

  @override
  DateTime get updatedAt;
  @override
  String get name;
  @override
  String get path;
  @override
  String get sourceName;
  @override
  String get imgUrl;
  @override
  int get totalChapters;
  @override
  int get currentChapter;
  @override
  String get currentChapterName;
  @override
  int get timeRead;
  @override
  @JsonKey(ignore: true)
  _$$_NovelModelCopyWith<_$_NovelModel> get copyWith =>
      throw _privateConstructorUsedError;
}
