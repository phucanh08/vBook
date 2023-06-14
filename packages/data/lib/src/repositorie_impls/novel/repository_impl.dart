import 'package:data/data.dart';
import 'package:data/src/mappers/page/mapper.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

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
  Future<Pagination<PageModel>> getListNovelInPage(id, endpoint, page) async {
    final api = getListApi[id];
    final response = await api?.getListNovelInPage(endpoint, page);
    final result = _pageMapper.mapToListEntity(response?.items);

    return Pagination(items: result, page: Page(), total: 40);
  }
}
