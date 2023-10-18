import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:html/parser.dart';

import '../../../../dtos/dtos.dart';
import '../../../sources.dart';

Future<Pagination<NovelItemDto>> page(String endpoint, int pageNumber) async {
  final dio = Dio();
  final response =
      await dio.getUri(Uri.parse('https://bachngocsach.com.vn$endpoint?page=$pageNumber'));
  final html = response.data.toString();
  final doc = parse(html);

  final next = doc
      .querySelectorAll('.pager-next')
      .lastOrNull
      ?.querySelector('a')
      ?.attributes['href']
      ?.match(r'page=(\d+)')
      ?.group(1);
  final nextPage = int.tryParse(next ?? '') ?? 0;

  final novelList = doc
      .querySelectorAll('ul.content-grid > li > div')
      .map((e) => NovelItemDto(
            name: e.querySelector('div.recent-truyen a')?.text,
            link: e.querySelector('div.recent-truyen a')?.attributes['href'],
            imgUrl: e.querySelector('div.recent-anhbia img')?.attributes['src'],
            description: e.querySelector('div.recent-chuong a')?.text,
          ))
      .toList();

  return Pagination(
    items: novelList,
    hasNext: nextPage > pageNumber,
  );
}
