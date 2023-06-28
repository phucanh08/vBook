import 'package:objectbox/objectbox.dart';

@Entity(realClass: Novel)
class Novel {
  Novel({
    required this.updatedAt,
    required this.name,
    required this.path,
    required this.sourceName,
    required this.imgUrl,
    required this.totalChapters,
    required this.currentChapter,
    required this.timeRead,
    this.inShelf = false,
    this.id = 0,
  });

  @Id() int id;
  final int updatedAt;
  final String name;
  final String path;
  final String sourceName;
  final String imgUrl;
  final String totalChapters;
  final String currentChapter;
  final int timeRead;
  final bool inShelf;
}
