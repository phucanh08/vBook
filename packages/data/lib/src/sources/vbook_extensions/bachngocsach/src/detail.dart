import 'package:data/src/dtos/dtos.dart';
import 'package:dio/dio.dart';
import 'package:html/parser.dart';

Future<DetailNovelDto> detailNovel(String endpoint) async {
  final dio = Dio();
  final response = await dio.getUri(Uri.parse('https://bachngocsach.com.vn$endpoint'));
  final html = response.data.toString();
  final doc = parse(html);

  return DetailNovelDto(
    name: doc.querySelector("h1#truyen-title")?.text,
    cover: doc.querySelector("div#anhbia img")?.attributes["src"],
    host: "https://bachngocsach.com",
    author: doc.querySelector("div#tacgia a")?.text,
    description: doc.querySelector("div#gioithieu")?.innerHtml,
    detail: '${doc.querySelector("div#tacgia")?.text}\n${doc.querySelector("div#theloai")?.text}'
  );
}
