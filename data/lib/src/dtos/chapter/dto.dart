import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto.freezed.dart';

@freezed
class ChapterDto with _$ChapterDto {
  const factory ChapterDto({
    String? name,
    String? url,
    String? host,
  }) = _ChapterDto;
}

@freezed
class ChapterDetailDto with _$ChapterDetailDto {
  const factory ChapterDetailDto({
    required String url,
    required String content,
  }) = _ChapterDetailDto;
}
