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

DetailDto _$DetailDtoFromJson(Map<String, dynamic> json) {
  return _DetailDto.fromJson(json);
}

/// @nodoc
mixin _$DetailDto {
  String? get name => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get host => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailDtoCopyWith<DetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDtoCopyWith<$Res> {
  factory $DetailDtoCopyWith(DetailDto value, $Res Function(DetailDto) then) =
      _$DetailDtoCopyWithImpl<$Res, DetailDto>;
  @useResult
  $Res call(
      {String? name,
      String? cover,
      String? host,
      String? author,
      String? description,
      String? detail});
}

/// @nodoc
class _$DetailDtoCopyWithImpl<$Res, $Val extends DetailDto>
    implements $DetailDtoCopyWith<$Res> {
  _$DetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cover = freezed,
    Object? host = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailDtoCopyWith<$Res> implements $DetailDtoCopyWith<$Res> {
  factory _$$_DetailDtoCopyWith(
          _$_DetailDto value, $Res Function(_$_DetailDto) then) =
      __$$_DetailDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? cover,
      String? host,
      String? author,
      String? description,
      String? detail});
}

/// @nodoc
class __$$_DetailDtoCopyWithImpl<$Res>
    extends _$DetailDtoCopyWithImpl<$Res, _$_DetailDto>
    implements _$$_DetailDtoCopyWith<$Res> {
  __$$_DetailDtoCopyWithImpl(
      _$_DetailDto _value, $Res Function(_$_DetailDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? cover = freezed,
    Object? host = freezed,
    Object? author = freezed,
    Object? description = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$_DetailDto(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailDto implements _DetailDto {
  const _$_DetailDto(
      {this.name,
      this.cover,
      this.host,
      this.author,
      this.description,
      this.detail});

  factory _$_DetailDto.fromJson(Map<String, dynamic> json) =>
      _$$_DetailDtoFromJson(json);

  @override
  final String? name;
  @override
  final String? cover;
  @override
  final String? host;
  @override
  final String? author;
  @override
  final String? description;
  @override
  final String? detail;

  @override
  String toString() {
    return 'DetailDto(name: $name, cover: $cover, host: $host, author: $author, description: $description, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.detail, detail) || other.detail == detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, cover, host, author, description, detail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailDtoCopyWith<_$_DetailDto> get copyWith =>
      __$$_DetailDtoCopyWithImpl<_$_DetailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailDtoToJson(
      this,
    );
  }
}

abstract class _DetailDto implements DetailDto {
  const factory _DetailDto(
      {final String? name,
      final String? cover,
      final String? host,
      final String? author,
      final String? description,
      final String? detail}) = _$_DetailDto;

  factory _DetailDto.fromJson(Map<String, dynamic> json) =
      _$_DetailDto.fromJson;

  @override
  String? get name;
  @override
  String? get cover;
  @override
  String? get host;
  @override
  String? get author;
  @override
  String? get description;
  @override
  String? get detail;
  @override
  @JsonKey(ignore: true)
  _$$_DetailDtoCopyWith<_$_DetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}
