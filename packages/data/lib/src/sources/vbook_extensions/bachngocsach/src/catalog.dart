import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:html/parser.dart';

import '../../../../dtos/dtos.dart';

Future<Pagination<ChapterDto>> catalog(String endpoint, int pageNumber) async {
  final dio = Dio();
  final response = await dio.getUri(
    Uri.parse('https://bachngocsach.com.vn$endpoint/muc-luc?page=all'),
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
