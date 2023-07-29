import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../../data.dart' hide getIt;
import '../../entities/entities.dart';
import '../../mappers/page/mapper.dart';
import '../../sources/local/novel/storage.dart';
import '../../sources/vbook_extensions/plugin.dart';

@Injectable(as: NovelRepository)
class PluginRepositoryImpl extends NovelRepository {
  PluginRepositoryImpl(
    this._homeMapper,
    this._pageMapper,
    this._novelDataMapper,
    this._novelStorage,
  );

  final HomeDataMapper _homeMapper;
  final PageDataMapper _pageMapper;
  final NovelDataMapper _novelDataMapper;
  final NovelStorage _novelStorage;

  @override
  Future<List<HomeModel>> getHome(sourceId) async {
    final api = getListApi[sourceId];
    final response = api?.getHome();
    final result = _homeMapper.mapToListEntity(response);
    return result;
  }

  @override
  Future<Pagination<NovelItemModel>> getListNovelInPage(
    String sourceId,
    String endpoint,
    Page page,
  ) async {
    final api = getListApi[sourceId];
    final response = await api?.getListNovelInPage(endpoint, page.number);
    final result = _pageMapper.mapToListEntity(response?.items);

    return Pagination(items: result, hasNext: response?.hasNext == true);
  }

  @override
  Future<NovelDetailModel> getDetailNovel(
    String sourceId,
    String endpoint,
  ) async {
    final api = getListApi[sourceId];
    final response = await api?.getDetailNovel(endpoint);
    final result = getIt<DetailNovelDataMapper>().mapToEntity(response);

    return result;
  }

  @override
  Future<Pagination<ChapterModel>> getCatalog(
    String sourceId,
    String endpoint,
    Page page,
  ) async {
    final api = getListApi[sourceId];
    final response = await api?.getCatalog(endpoint, page.number);
    final result = getIt<ChapterDataMapper>().mapToListEntity(response?.items);

    return Pagination(items: result, hasNext: response?.hasNext == true);
  }

  @override
  Future<ChapterDetailModel> getDetailChapter(
    String sourceId,
    String endpoint,
  ) async {
    final api = getListApi[sourceId];
    final response = await api?.getDetailChapter(endpoint);
    final result = getIt<DetailChapterDataMapper>().mapToEntity(response);

    return result;
  }

  @override
  Stream<List<NovelModel>> getHistory() {
    final data = _novelStorage.streamAll();

    return data.map((e) => _novelDataMapper.mapToListEntity(e));
  }

  @override
  Stream<List<NovelModel>> getShelf() {
    final data = _novelStorage.streamAll();

    return data
        .map((e) => e.where((element) => element.inShelf).toList())
        .map((e) => _novelDataMapper.mapToListEntity(e));
  }

  @override
  Future<bool> save(SaveNovelInput saveNovelInput) async {
    late final Novel newNovel;
    final novel = await _novelStorage.get(
      saveNovelInput.sourceId,
      saveNovelInput.novelEndpoint,
    );
    if (novel != null) {
      newNovel = novel.copyWith(
        updatedAt: DateTime.now(),
        novelEndpoint: saveNovelInput.novelEndpoint,
        currentChapterName: saveNovelInput.currentChapterName,
        currentChapter: saveNovelInput.currentChapter,
        totalChapters: saveNovelInput.totalChapters,
        timeRead: saveNovelInput.timeRead,
        inShelf: saveNovelInput.inShelf,
      );
    } else {
      final _novelModel = await getDetailNovel(
        saveNovelInput.sourceId,
        saveNovelInput.novelEndpoint,
      );
      final api = getListApi[saveNovelInput.sourceId];
      final response = api?.plugin();

      newNovel = Novel(
        updatedAt: DateTime.now(),
        name: _novelModel.name,
        novelEndpoint: saveNovelInput.novelEndpoint,
        chapterEndpoint: saveNovelInput.chapterEndpoint,
        sourceId: saveNovelInput.sourceId,
        sourceName: response?.name ?? '',
        imgUrl: _novelModel.imgUrl,
        totalChapters: saveNovelInput.totalChapters ?? 1,
        currentChapter: saveNovelInput.currentChapter ?? 0,
        currentChapterName: saveNovelInput.currentChapterName,
        timeRead: saveNovelInput.timeRead ?? 0,
        inShelf: saveNovelInput.inShelf == true,
        scrollPercent: saveNovelInput.scrollPercent ?? 0.0,
      );
    }

    return _novelStorage.save(newNovel);
  }
}
