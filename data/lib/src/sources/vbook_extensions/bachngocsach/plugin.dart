import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../../../dtos/dtos.dart';
import '../../base/client/rest_client.dart';
import '../base_api.dart';
import 'src/catalog.dart';
import 'src/chap.dart';
import 'src/detail.dart';
import 'src/home.dart';
import 'src/page.dart';

@injectable
class BachNgocSachApi extends BaseApi {
  BachNgocSachApi(@Named('currentApiClient') this.api);

  final RestApiClient api;

  @override
  PluginDto plugin() => PluginDto.fromJson(execute());

  @override
  List<HomeDto> getHome() => home.call();

  @override
  Future<Pagination<NovelItemDto>> getListNovelInPage(
      String endpoint, int pageNumber) {
    return page.call(endpoint, pageNumber);
  }

  @override
  Future<NovelDetailDto> getDetailNovel(String endpoint) {
    return detailNovel(endpoint);
  }

  @override
  Future<Pagination<ChapterDto>> getCatalog(String endpoint, int pageNumber) {
    return catalog(endpoint, pageNumber);
  }

  @override
  Future<ChapterDetailDto> getDetailChapter(String endpoint) {
    return chap(endpoint);
  }
}

dynamic execute() => {
      'name': 'Bạch Ngọc Sách',
      'version': 0,
      'path': 'bachngocsach',
      'source': 'https://bachngocsach.com.vn',
      'icon':
          'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/bachngocsach/icon.png',
      'description': 'Đọc truyện trên trang bachngocsach.com.vn/reader',
      'locale': 'vi_VN',
      'type': 'novel',
    };
