import 'package:domain/domain.dart';


abstract class NovelRepository {
  Future<List<HomeModel>> getHome(String sourceId);
  Future<NovelDetailModel> getDetailNovel(String sourceId, String endpoint);
  Future<Pagination<NovelItemModel>> getListNovelInPage(String sourceId, String endpoint, Page page);
  Future<Pagination<ChapterModel>> getCatalog(String sourceId, String endpoint, Page page);
  Future<ChapterDetailModel> getDetailChapter(String sourceId, String endpoint);
  Future<List<NovelModel>> getShelf();
  Future<List<NovelModel>> getHistory();
  Future<bool> save(SaveNovelInput saveNovelInput);
}