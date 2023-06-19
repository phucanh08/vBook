import 'package:data/src/dtos/dtos.dart';
import 'package:domain/domain.dart';

abstract class BaseApi {
  PluginDto plugin();

  List<HomeDto> getHome();

  Future<DetailNovelDto> getDetailNovel(String endpoint);

  Future<DetailChapterDto> getDetailChapter(String endpoint);

  Future<Pagination<PageDto>> getListNovelInPage(String endpoint, int pageNumber);

  Future<Pagination<ChapterDto>> getCatalog(String endpoint, int pageNumber);
}
