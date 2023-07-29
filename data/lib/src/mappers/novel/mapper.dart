import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../../data.dart';
import '../../entities/entities.dart';

@injectable
class NovelDataMapper extends BaseDataMapper<Novel, NovelModel> {
  @override
  NovelModel mapToEntity(Novel? data) {
    return NovelModel(
      id: data?.id,
      updatedAt: data?.updatedAt ?? DateTime.now(),
      name: data?.name ?? '',
      sourceId: data?.sourceId ?? '',
      sourceName: data?.sourceName ?? '',
      imgUrl: data?.imgUrl ?? '',
      totalChapters: data?.totalChapters ?? 0,
      currentChapter: data?.currentChapter ?? 0,
      currentChapterName: data?.currentChapterName ?? '',
      timeRead: data?.timeRead ?? 0,
      novelEndpoint: data?.novelEndpoint ?? '',
      currentChapterEndpoint: data?.chapterEndpoint ?? '',
      scrollPercent: data?.scrollPercent ?? 0.0,
    );
  }
}
