import 'package:domain/domain.dart';


abstract class NovelRepository {
  Future<List<HomeModel>> getHome(String id);
  Future<Pagination<PageModel>> getListNovelInPage(String id, String endpoint, Page page);
}