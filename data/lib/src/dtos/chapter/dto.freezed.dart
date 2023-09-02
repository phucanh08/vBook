// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChapterDto {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get host => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChapterDtoCopyWith<ChapterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterDtoCopyWith<$Res> {
  factory $ChapterDtoCopyWith(
          ChapterDto value, $Res Function(ChapterDto) then) =
      _$ChapterDtoCopyWithImpl<$Res, ChapterDto>;
  @useResult
  $Res call({String? name, String? url, String? host});
}

/// @nodoc
class _$ChapterDtoCopyWithImpl<$Res, $Val extends ChapterDto>
    implements $ChapterDtoCopyWith<$Res> {
  _$ChapterDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? host = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChapterDtoCopyWith<$Res>
    implements $ChapterDtoCopyWith<$Res> {
  factory _$$_ChapterDtoCopyWith(
          _$_ChapterDto value, $Res Function(_$_ChapterDto) then) =
      __$$_ChapterDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url, String? host});
}

/// @nodoc
class __$$_ChapterDtoCopyWithImpl<$Res>
    extends _$ChapterDtoCopyWithImpl<$Res, _$_ChapterDto>
    implements _$$_ChapterDtoCopyWith<$Res> {
  __$$_ChapterDtoCopyWithImpl(
      _$_ChapterDto _value, $Res Function(_$_ChapterDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? host = freezed,
  }) {
    return _then(_$_ChapterDto(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChapterDto implements _ChapterDto {
  const _$_ChapterDto({this.name, this.url, this.host});

  @override
  final String? name;
  @override
  final String? url;
  @override
  final String? host;

  @override
  String toString() {
    return 'ChapterDto(name: $name, url: $url, host: $host)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.host, host) || other.host == host));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url, host);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChapterDtoCopyWith<_$_ChapterDto> get copyWith =>
      __$$_ChapterDtoCopyWithImpl<_$_ChapterDto>(this, _$identity);
}

abstract class _ChapterDto implements ChapterDto {
  const factory _ChapterDto(
      {final String? name,
      final String? url,
      final String? host}) = _$_ChapterDto;

  @override
  String? get name;
  @override
  String? get url;
  @override
  String? get host;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterDtoCopyWith<_$_ChapterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChapterDetailDto {
  String get url => throw _privateConstructorUsedError;
  List<String> get contents => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChapterDetailDtoCopyWith<ChapterDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterDetailDtoCopyWith<$Res> {
  factory $ChapterDetailDtoCopyWith(
          ChapterDetailDto value, $Res Function(ChapterDetailDto) then) =
      _$ChapterDetailDtoCopyWithImpl<$Res, ChapterDetailDto>;
  @useResult
  $Res call({String url, List<String> contents});
}

/// @nodoc
class _$ChapterDetailDtoCopyWithImpl<$Res, $Val extends ChapterDetailDto>
    implements $ChapterDetailDtoCopyWith<$Res> {
  _$ChapterDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? contents = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChapterDetailDtoCopyWith<$Res>
    implements $ChapterDetailDtoCopyWith<$Res> {
  factory _$$_ChapterDetailDtoCopyWith(
          _$_ChapterDetailDto value, $Res Function(_$_ChapterDetailDto) then) =
      __$$_ChapterDetailDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, List<String> contents});
}

/// @nodoc
class __$$_ChapterDetailDtoCopyWithImpl<$Res>
    extends _$ChapterDetailDtoCopyWithImpl<$Res, _$_ChapterDetailDto>
    implements _$$_ChapterDetailDtoCopyWith<$Res> {
  __$$_ChapterDetailDtoCopyWithImpl(
      _$_ChapterDetailDto _value, $Res Function(_$_ChapterDetailDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? contents = null,
  }) {
    return _then(_$_ChapterDetailDto(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ChapterDetailDto implements _ChapterDetailDto {
  const _$_ChapterDetailDto(
      {required this.url, required final List<String> contents})
      : _contents = contents;

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
  String toString() {
    return 'ChapterDetailDto(url: $url, contents: $contents)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChapterDetailDto &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._contents, _contents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, url, const DeepCollectionEquality().hash(_contents));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChapterDetailDtoCopyWith<_$_ChapterDetailDto> get copyWith =>
      __$$_ChapterDetailDtoCopyWithImpl<_$_ChapterDetailDto>(this, _$identity);
}

abstract class _ChapterDetailDto implements ChapterDetailDto {
  const factory _ChapterDetailDto(
      {required final String url,
      required final List<String> contents}) = _$_ChapterDetailDto;

  @override
  String get url;
  @override
  List<String> get contents;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterDetailDtoCopyWith<_$_ChapterDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
