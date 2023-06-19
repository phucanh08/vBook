import 'package:data/src/dtos/dtos.dart';
import 'package:data/src/sources/vbook_extensions/bachngocsach/src/detail.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../base_api.dart';
import 'src/home.dart';
import 'src/page.dart';
import 'src/catalog.dart';
import 'src/chap.dart';

@injectable
class BachNgocSachApi extends BaseApi {
  @override
  PluginDto plugin() => PluginDto.fromJson(execute());

  @override
  List<HomeDto> getHome() => home.call();

  @override
  Future<Pagination<PageDto>> getListNovelInPage(String endpoint, int pageNumber) {
    return page.call(endpoint, pageNumber);
  }

  @override
  Future<DetailNovelDto> getDetailNovel(String endpoint) {
    return detailNovel(endpoint);
  }

  @override
  Future<Pagination<ChapterDto>> getCatalog(String endpoint, int pageNumber) {
    return catalog(endpoint, pageNumber);
  }

  @override
  Future<DetailChapterDto> getDetailChapter(String endpoint) {
   return chap(endpoint);
  }
}

dynamic execute() => {
      "name": "Bạch Ngọc Sách",
      "version": 0,
      "path": 'bachngocsach',
      "source": "https://bachngocsach.com.vn",
      "icon":
          "https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/bachngocsach/icon.png",
      "description": "Đọc truyện trên trang bachngocsach.com.vn/reader",
      "locale": "vi_VN",
      "type": "novel",
    };
