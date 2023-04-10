import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter.freezed.dart';

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
    required String id,
    required String bookId,
    required num lastPageRead,
    required DateTime createAt,
    required DateTime updateAt,
    required num sourceOrder,
    required String url,
    required String name,
    required num chapterNumber,
  }) = _Chapter;
}

@freezed
class ChapterDetail with _$ChapterDetail {
  const factory ChapterDetail({required List<String> content}) = _ChapterDetail;
}
