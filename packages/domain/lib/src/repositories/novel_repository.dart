import 'package:domain/domain.dart';


abstract class NovelRepository {
  Future<List<HomeModel>> getHome(String id);
  Future<DetailNovelModel> getDetailNovel(String id, String endpoint);
  Future<Pagination<PageModel>> getListNovelInPage(String id, String endpoint, Page page);
  Future<Pagination<ChapterModel>> getCatalog(String id, String endpoint, Page page);
  Future<DetailChapterModel> getDetailChapter(String id, String endpoint);
}