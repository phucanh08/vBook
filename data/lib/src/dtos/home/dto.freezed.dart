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

HomeDto _$HomeDtoFromJson(Map<String, dynamic> json) {
  return _HomeDto.fromJson(json);
}

/// @nodoc
mixin _$HomeDto {
  String? get title => throw _privateConstructorUsedError;
  String? get input => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDtoCopyWith<HomeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDtoCopyWith<$Res> {
  factory $HomeDtoCopyWith(HomeDto value, $Res Function(HomeDto) then) =
      _$HomeDtoCopyWithImpl<$Res, HomeDto>;
  @useResult
  $Res call({String? title, String? input});
}

/// @nodoc
class _$HomeDtoCopyWithImpl<$Res, $Val extends HomeDto>
    implements $HomeDtoCopyWith<$Res> {
  _$HomeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      input: freezed == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeDtoCopyWith<$Res> implements $HomeDtoCopyWith<$Res> {
  factory _$$_HomeDtoCopyWith(
          _$_HomeDto value, $Res Function(_$_HomeDto) then) =
      __$$_HomeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? input});
}

/// @nodoc
class __$$_HomeDtoCopyWithImpl<$Res>
    extends _$HomeDtoCopyWithImpl<$Res, _$_HomeDto>
    implements _$$_HomeDtoCopyWith<$Res> {
  __$$_HomeDtoCopyWithImpl(_$_HomeDto _value, $Res Function(_$_HomeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? input = freezed,
  }) {
    return _then(_$_HomeDto(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      input: freezed == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeDto implements _HomeDto {
  const _$_HomeDto({this.title, this.input});

  factory _$_HomeDto.fromJson(Map<String, dynamic> json) =>
      _$$_HomeDtoFromJson(json);

  @override
  final String? title;
  @override
  final String? input;

  @override
  String toString() {
    return 'HomeDto(title: $title, input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.input, input) || other.input == input));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeDtoCopyWith<_$_HomeDto> get copyWith =>
      __$$_HomeDtoCopyWithImpl<_$_HomeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeDtoToJson(
      this,
    );
  }
}

abstract class _HomeDto implements HomeDto {
  const factory _HomeDto({final String? title, final String? input}) =
      _$_HomeDto;

  factory _HomeDto.fromJson(Map<String, dynamic> json) = _$_HomeDto.fromJson;

  @override
  String? get title;
  @override
  String? get input;
  @override
  @JsonKey(ignore: true)
  _$$_HomeDtoCopyWith<_$_HomeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
