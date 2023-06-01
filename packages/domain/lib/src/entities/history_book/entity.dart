import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';

@freezed
class HistoryBook with _$HistoryBook {
  const factory HistoryBook({
    required String id,
    required String source,
    required String sourceName,
    required String name,
    required int currentChapter,
    required String currentChapterName,
    required DateTime lastRead,
  }) = _HistoryBook;
}
