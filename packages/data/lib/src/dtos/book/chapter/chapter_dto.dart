import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_dto.freezed.dart';

@freezed
class ChapterDto with _$ChapterDto {
  const factory ChapterDto({
    required num id,
    num? mangaId,
    bool? read,
    bool? bookmark,
    num? lastPageRead,
    num? dateFetch,
    num? sourceOrder,
    String? url,
    String? name,
    num? dateUpload,
    num? chapterNumber,
    String? scanlator,
  }) = _ChapterDto;
}
