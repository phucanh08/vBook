import 'package:domain/domain.dart';

import '../../dtos/dtos.dart';

abstract class BaseApi {
  PluginDto plugin();

  List<HomeDto> getHome();

  Future<NovelDetailDto> getDetailNovel(String endpoint);

  Future<ChapterDetailDto> getDetailChapter(String endpoint);

  Future<Pagination<NovelItemDto>> getListNovelInPage(String endpoint, int pageNumber);

  Future<Pagination<ChapterDto>> getCatalog(String endpoint, int pageNumber);
}
