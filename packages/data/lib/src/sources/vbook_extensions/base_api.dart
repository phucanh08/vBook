import 'package:data/src/dtos/dtos.dart';
import 'package:domain/domain.dart';

abstract class BaseApi {
  PluginDto plugin();

  List<HomeDto> getHome();

  Future<Pagination<PageDto>> getListNovelInPage(String endpoint, Page page);
}
