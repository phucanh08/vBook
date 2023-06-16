import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

@freezed
class HomeDto with _$HomeDto {
  const factory HomeDto({
    String? title,
    String? input,
  }) = _HomeDto;

  factory HomeDto.fromJson(Map<String, Object?> json) =>
      _$HomeDtoFromJson(json);
}

@freezed
class PageDto with _$PageDto {
  const factory PageDto({
    String? name,
    String? link,
    String? cover,
    String? description,
    String? host,
  }) = _PageDto;

  factory PageDto.fromJson(Map<String, Object?> json) =>
      _$PageDtoFromJson(json);
}



@freezed
class DetailNovelDto with _$DetailNovelDto {
  const factory DetailNovelDto({
    String? name,
    String? cover,
    String? host,
    String? author,
    String? description,
    String? detail,
  }) = _DetailNovelDto;

  factory DetailNovelDto.fromJson(Map<String, Object?> json) =>
      _$DetailNovelDtoFromJson(json);
}
