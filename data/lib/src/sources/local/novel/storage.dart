import 'package:injectable/injectable.dart';

import '../../../../objectbox.g.dart';
import '../../../entities/entities.dart';
import '../local.dart';

abstract class NovelStorage {
  Stream<List<Novel>> streamAll();

  Future<Novel?> get(String sourceId, String novelEndpoint);

  Future<bool> save(Novel novel);

  Future<bool> remove(String sourceId, String novelEndpoint);
}

@Injectable(as: NovelStorage)
class NovelStorageImpl implements NovelStorage {
  NovelStorageImpl(@Named('LocalStorage') ObjectBox objectBox) : novelBox = objectBox.novelBox();

  final Box<Novel> novelBox;

  @override
  Future<bool> save(Novel novel) async {
    final data = await get(novel.sourceId, novel.novelEndpoint);
    if (data != null) {
      final _novel = data.copyWith(
        updatedAt: novel.updatedAt,
        name: novel.name,
        novelEndpoint: novel.novelEndpoint,
        sourceId: novel.sourceId,
        sourceName: novel.sourceName,
        imgUrl: novel.imgUrl,
        totalChapters: novel.totalChapters,
        currentChapter: novel.currentChapter,
        currentChapterName: novel.currentChapterName,
        timeRead: novel.timeRead,
        inShelf: novel.inShelf,
        scrollPercent: novel.scrollPercent,
      );
      await novelBox.putAsync(_novel, mode: PutMode.update);
    } else {
      await novelBox.putAsync(novel, mode: PutMode.insert);
    }

    return true;
  }

  @override
  Stream<List<Novel>> streamAll() {
    final result =
        novelBox.query().order(Novel_.updatedAt).watch(triggerImmediately: true).map((event) {
      event
        ..offset = 0
        ..limit = 1000;
      return event.find().reversed.toList();
    });

    return result;
  }

  @override
  Future<bool> remove(String sourceId, String novelEndpoint) async {
    final novel = await get(sourceId, novelEndpoint);

    return novel != null ? novelBox.remove(novel.id) : false;
  }

  @override
  Future<Novel?> get(String sourceId, String novelEndpoint) async {
    final query = novelBox
        .query(Novel_.sourceId.equals(sourceId).and(
              Novel_.novelEndpoint.equals(novelEndpoint),
            ))
        .build();
    final novels = query.find();

    return novels.firstOrNull;
  }
}
