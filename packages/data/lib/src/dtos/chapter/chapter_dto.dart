import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_dto.freezed.dart';

@freezed
class ChapterDto with _$ChapterDto {
  const factory ChapterDto({
    String? name,
    String? url,
    String? host,
  }) = _ChapterDto;
}

@freezed
class DetailChapterDto with _$DetailChapterDto {
  const factory DetailChapterDto({required String content}) = _DetailChapterDto;
}
