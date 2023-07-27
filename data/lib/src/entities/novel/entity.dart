import 'package:objectbox/objectbox.dart';

@Entity(realClass: Novel)
class Novel {
  Novel({
    required this.updatedAt,
    required this.name,
    required this.novelEndpoint,
    required this.sourceId,
    required this.chapterEndpoint,
    required this.sourceName,
    required this.imgUrl,
    required this.totalChapters,
    required this.currentChapter,
    required this.currentChapterName,
    required this.timeRead,
    this.inShelf = false,
    this.id = 0,
  });

  @Id()
  int id;
  final DateTime updatedAt;
  final String name;
  final String novelEndpoint;
  final String? chapterEndpoint;
  final String sourceId;
  final String sourceName;
  final String imgUrl;
  final int? totalChapters;
  final int? currentChapter;
  final String? currentChapterName;
  final int? timeRead;
  final bool inShelf;

  Novel copyWith({
    DateTime? updatedAt,
    String? name,
    String? novelEndpoint,
    String? chapterEndpoint,
    String? sourceId,
    String? sourceName,
    String? imgUrl,
    int? totalChapters,
    int? currentChapter,
    String? currentChapterName,
    int? timeRead,
    bool? inShelf,
  }) {
    return Novel(
      id: id,
      updatedAt: updatedAt ?? this.updatedAt,
      name: name ?? this.name,
      novelEndpoint: novelEndpoint ?? this.novelEndpoint,
      chapterEndpoint: chapterEndpoint ?? this.chapterEndpoint,
      sourceId: sourceId ?? this.sourceId,
      sourceName: sourceName ?? this.sourceName,
      imgUrl: imgUrl ?? this.imgUrl,
      totalChapters: totalChapters ?? this.totalChapters,
      currentChapter: currentChapter ?? this.currentChapter,
      currentChapterName: currentChapterName ?? this.currentChapterName,
      timeRead: timeRead ?? this.timeRead,
    );
  }
}
