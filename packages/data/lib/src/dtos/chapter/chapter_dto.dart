import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_dto.freezed.dart';

@freezed
class ChapterDto with _$ChapterDto {
  const factory ChapterDto({
    String? id,
    String? bookId,
    num? lastPageRead,
    DateTime? createAt,
    DateTime? updateAt,
    num? sourceOrder,
    String? url,
    String? name,
    num? chapterNumber,
  }) = _ChapterDto;
}

@freezed
class ChapterDetailDto with _$ChapterDetailDto {
  const factory ChapterDetailDto({required List<String> content}) = _ChapterDetailDto;
}
