import 'package:domain/domain.dart';


abstract class NovelRepository {
  Future<List<HomeModel>> getHome(String id);
  Future<NovelDetailModel> getDetailNovel(String id, String endpoint);
  Future<Pagination<NovelItemModel>> getListNovelInPage(String id, String endpoint, Page page);
  Future<Pagination<ChapterModel>> getCatalog(String id, String endpoint, Page page);
  Future<ChapterDetailModel> getDetailChapter(String id, String endpoint);
  Future<List<NovelModel>> getShelf();
  Future<List<NovelModel>> getHistory();
}