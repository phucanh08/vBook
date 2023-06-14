import 'package:data/src/dtos/dtos.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

import '../base_api.dart';
import 'src/home.dart';
import 'src/page.dart';

@injectable
class BachNgocSachApi extends BaseApi {
  @override
  PluginDto plugin() => PluginDto.fromJson(execute());

  @override
  List<HomeDto> getHome() => home.call();

  @override
  Future<Pagination<PageDto>> getListNovelInPage(String endpoint, Page _page) {
    return page.call(endpoint, _page);
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
