import 'package:dio/dio.dart';
import 'package:html/parser.dart';

import '../../../../dtos/dtos.dart';

Future<NovelDetailDto> detailNovel(String endpoint) async {
  final dio = Dio();
  final response = await dio.getUri(Uri.parse('https://bachngocsach.com.vn$endpoint'));
  final html = response.data.toString();
  final doc = parse(html);

  return NovelDetailDto(
    name: doc.querySelector('h1#truyen-title')?.text,
    imgUrl: doc.querySelector('div#anhbia img')?.attributes['src'],
    host: 'https://bachngocsach.com',
    author: doc.querySelector('div#tacgia a')?.text,
    description: doc.querySelector('div#gioithieu .block-content')?.text,
    detail: '${doc.querySelector("div#tacgia")?.text}\n${doc.querySelector("div#theloai")?.text}',
    firstChapterEndpoint: doc.querySelector('nav#truyen-nav')?.children.firstOrNull?.attributes['href'],
    firstChapterName: doc.querySelector('nav#truyen-nav')?.children.firstOrNull?.text,
  );
}
