import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto.freezed.dart';
part 'dto.g.dart';

@freezed
class NovelDetailDto with _$NovelDetailDto {
  const factory NovelDetailDto({
    String? name,
    String? imgUrl,
    String? host,
    String? author,
    String? description,
    String? detail,
    String? firstChapterEndpoint,
    String? firstChapterName,
  }) = _NovelDetailDto;

  factory NovelDetailDto.fromJson(Map<String, Object?> json) => _$NovelDetailDtoFromJson(json);
}

@freezed
class NovelItemDto with _$NovelItemDto {
  const factory NovelItemDto({
    String? name,
    String? link,
    String? imgUrl,
    String? description,
    String? host,
  }) = _NovelItemDto;

  factory NovelItemDto.fromJson(Map<String, Object?> json) => _$NovelItemDtoFromJson(json);
}
