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
mixin _$ChapterModel {
  String get name => throw _privateConstructorUsedError;
  String get endpoint => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChapterModelCopyWith<ChapterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterModelCopyWith<$Res> {
  factory $ChapterModelCopyWith(
          ChapterModel value, $Res Function(ChapterModel) then) =
      _$ChapterModelCopyWithImpl<$Res, ChapterModel>;
  @useResult
  $Res call({String name, String endpoint});
}

/// @nodoc
class _$ChapterModelCopyWithImpl<$Res, $Val extends ChapterModel>
    implements $ChapterModelCopyWith<$Res> {
  _$ChapterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? endpoint = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChapterModelCopyWith<$Res>
    implements $ChapterModelCopyWith<$Res> {
  factory _$$_ChapterModelCopyWith(
          _$_ChapterModel value, $Res Function(_$_ChapterModel) then) =
      __$$_ChapterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String endpoint});
}

/// @nodoc
class __$$_ChapterModelCopyWithImpl<$Res>
    extends _$ChapterModelCopyWithImpl<$Res, _$_ChapterModel>
    implements _$$_ChapterModelCopyWith<$Res> {
  __$$_ChapterModelCopyWithImpl(
      _$_ChapterModel _value, $Res Function(_$_ChapterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? endpoint = null,
  }) {
    return _then(_$_ChapterModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      endpoint: null == endpoint
          ? _value.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChapterModel extends _ChapterModel {
  const _$_ChapterModel({required this.name, required this.endpoint})
      : super._();

  @override
  final String name;
  @override
  final String endpoint;

  @override
  String toString() {
    return 'ChapterModel(name: $name, endpoint: $endpoint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, endpoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChapterModelCopyWith<_$_ChapterModel> get copyWith =>
      __$$_ChapterModelCopyWithImpl<_$_ChapterModel>(this, _$identity);
}

abstract class _ChapterModel extends ChapterModel {
  const factory _ChapterModel(
      {required final String name,
      required final String endpoint}) = _$_ChapterModel;
  const _ChapterModel._() : super._();

  @override
  String get name;
  @override
  String get endpoint;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterModelCopyWith<_$_ChapterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChapterDetailModel {
  String get url => throw _privateConstructorUsedError;
  List<String> get contents => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChapterDetailModelCopyWith<ChapterDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterDetailModelCopyWith<$Res> {
  factory $ChapterDetailModelCopyWith(
          ChapterDetailModel value, $Res Function(ChapterDetailModel) then) =
      _$ChapterDetailModelCopyWithImpl<$Res, ChapterDetailModel>;
  @useResult
  $Res call({String url, List<String> contents, int index});
}

/// @nodoc
class _$ChapterDetailModelCopyWithImpl<$Res, $Val extends ChapterDetailModel>
    implements $ChapterDetailModelCopyWith<$Res> {
  _$ChapterDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? contents = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChapterDetailModelCopyWith<$Res>
    implements $ChapterDetailModelCopyWith<$Res> {
  factory _$$_ChapterDetailModelCopyWith(_$_ChapterDetailModel value,
          $Res Function(_$_ChapterDetailModel) then) =
      __$$_ChapterDetailModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, List<String> contents, int index});
}

/// @nodoc
class __$$_ChapterDetailModelCopyWithImpl<$Res>
    extends _$ChapterDetailModelCopyWithImpl<$Res, _$_ChapterDetailModel>
    implements _$$_ChapterDetailModelCopyWith<$Res> {
  __$$_ChapterDetailModelCopyWithImpl(
      _$_ChapterDetailModel _value, $Res Function(_$_ChapterDetailModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? contents = null,
    Object? index = null,
  }) {
    return _then(_$_ChapterDetailModel(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChapterDetailModel extends _ChapterDetailModel {
  const _$_ChapterDetailModel(
      {required this.url, required final List<String> contents, this.index = 0})
      : _contents = contents,
        super._();

  @override
  final String url;
  final List<String> _contents;
  @override
  List<String> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  @JsonKey()
  final int index;

  @override
  String toString() {
    return 'ChapterDetailModel(url: $url, contents: $contents, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterDetailModel &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, url, const DeepCollectionEquality().hash(_contents), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChapterDetailModelCopyWith<_$_ChapterDetailModel> get copyWith =>
      __$$_ChapterDetailModelCopyWithImpl<_$_ChapterDetailModel>(
          this, _$identity);
}

abstract class _ChapterDetailModel extends ChapterDetailModel {
  const factory _ChapterDetailModel(
      {required final String url,
      required final List<String> contents,
      final int index}) = _$_ChapterDetailModel;
  const _ChapterDetailModel._() : super._();

  @override
  String get url;
  @override
  List<String> get contents;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterDetailModelCopyWith<_$_ChapterDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
