import 'package:data/src/dtos/dtos.dart';
import 'package:data/src/sources/sources.dart';
import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:html/parser.dart';

Future<Pagination<PageDto>> page(String endpoint, Page page) async {
  final dio = Dio();
  final response = await dio.getUri(Uri.parse('https://bachngocsach.com.vn$endpoint?page=${page.number}'));
  final html = response.data.toString();
  final doc = parse(html);

  final next = doc
      .querySelectorAll('.pager-next')
      .lastOrNull
      ?.querySelector("a")
      ?.attributes['href']
      ?.match(r'page=(\d+)')
      ?.group(1);
  final nextPage = int.tryParse(next ?? '') ?? 0;

  final novelList = doc
      .querySelectorAll('ul.content-grid > li > div')
      .map((e) => PageDto(
            name: e.querySelector('div.recent-truyen a')?.text,
            link: e.querySelector('div.recent-truyen a')?.attributes['href'],
            cover: e.querySelector('div.recent-anhbia img')?.attributes['src'],
            description: e.querySelector('div.recent-chuong a')?.text,
          ))
      .toList();

  return Pagination(
    items: novelList,
    hasNext: nextPage > page.number,
  );
}
