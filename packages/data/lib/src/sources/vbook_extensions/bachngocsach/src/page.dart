import 'package:data/data.dart' as data;
import 'package:data/data.dart';
import 'package:data/src/dtos/dtos.dart';
import 'package:domain/domain.dart';
import 'package:html/parser.dart';

Future<Pagination<PageDto>> page(String endpoint, Page page) async {
  final browser = data.getIt<Browser>();
  browser.launch('https://bachngocsach.com.vn$endpoint?page=${page.number}');
  final html = await browser.html(const Duration(milliseconds: 100));
  final doc = parse(html);

  final next = doc
      .querySelectorAll('.pager-next')
      .last
      .querySelector("a")
      ?.attributes['href']
      ?.matchAsPrefix(r'page=(\d+)')
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
    page: page.copyWith(number: nextPage),
    total: 0,
  );
}
