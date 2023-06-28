import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../../data.dart' hide getIt;
import '../../mappers/page/mapper.dart';
import '../../sources/vbook_extensions/plugin.dart';


@Injectable(as: NovelRepository)
class PluginRepositoryImpl extends NovelRepository {
  PluginRepositoryImpl(this._homeMapper, this._pageMapper);
  final HomeDataMapper _homeMapper;
  final PageDataMapper _pageMapper;

  @override
  Future<List<HomeModel>> getHome(id) async {
    final api = getListApi[id];
    final response = api?.getHome();
    final result = _homeMapper.mapToListEntity(response);

    return result;
  }

  @override
  Future<Pagination<NovelItemModel>> getListNovelInPage(id, endpoint, page) async {
    final api = getListApi[id];
    final response = await api?.getListNovelInPage(endpoint, page.number);
    final result = _pageMapper.mapToListEntity(response?.items);

    return Pagination(items: result, hasNext: response?.hasNext == true);
  }

  @override
  Future<NovelDetailModel> getDetailNovel(String id, String endpoint) async {
    final api = getListApi[id];
    final response = await api?.getDetailNovel(endpoint);
    final result = getIt<DetailNovelDataMapper>().mapToEntity(response);

    return result;
  }

  @override
  Future<Pagination<ChapterModel>> getCatalog(String id, String endpoint, Page page) async {
    final api = getListApi[id];
    final response = await api?.getCatalog(endpoint, page.number);
    final result = getIt<ChapterDataMapper>().mapToListEntity(response?.items);

    return Pagination(items: result, hasNext: response?.hasNext == true);
  }

  @override
  Future<ChapterDetailModel> getDetailChapter(String id, String endpoint) async {
    final api = getListApi[id];
    final response = await api?.getDetailChapter(endpoint);
    final result = getIt<DetailChapterDataMapper>().mapToEntity(response);

    return result;
  }
}
