import 'package:domain/domain.dart';
import 'package:html/parser.dart';

import '../../../../dtos/dtos.dart';
import '../../../base/client/rest_client.dart';
import '../plugin.dart';

extension CatalogExtension on BachNgocSachApi {
  Future<Pagination<ChapterDto>> catalog(
      String endpoint, int pageNumber) async {
    final response = await api.requestUri(
      method: RestMethod.get,
      uri: Uri.parse('https://bachngocsach.com.vn$endpoint/muc-luc?page=all'),
    );
    final html = response.data.toString();
    final doc = parse(html);

    final catalog = doc
        .querySelectorAll('#mucluc-list .chuong-item a')
        .map((e) => ChapterDto(
              name: e.querySelector('.chuong-name')?.text,
              url: e.attributes['href'],
              host: 'https://bachngocsach.com.vn',
            ))
        .toList();

    return Pagination<ChapterDto>(
      items: catalog,
      hasNext: false,
    );
  }
}
