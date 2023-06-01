import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';

@freezed
class BookInShelf with _$BookInShelf {
  const factory BookInShelf({
    required String id,
    required String source,
    required String sourceName,
    required String name,
    required int currentChapter,
    required String currentChapterName,
    required int totalChapters,
    required int timeRead,
  }) = _BookInShelf;
}
