import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class ChapterDataMapper extends BaseDataMapper<ChapterDto, Chapter> {
  @override
  Chapter mapToEntity(ChapterDto? data) {
    return Chapter(
      id: data?.id ?? '',
      bookId: data?.bookId ?? '',
      lastPageRead: data?.lastPageRead ?? 0,
      createAt: data?.createAt ?? DateTime.now(),
      updateAt: data?.updateAt ?? DateTime.now(),
      sourceOrder: data?.sourceOrder ?? 0,
      url: data?.url ?? '',
      name: data?.name ?? '',
      chapterNumber: data?.chapterNumber ?? 0,
    );
  }
}

@injectable
class ChapterDetailDataMapper
    extends BaseDataMapper<ChapterDetailDto, ChapterDetail> {
  @override
  ChapterDetail mapToEntity(ChapterDetailDto? data) {
    return ChapterDetail(content: data?.content ?? []);
  }
}

