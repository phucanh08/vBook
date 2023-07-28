import 'package:dio/dio.dart';
import 'package:html/parser.dart';

import '../../../../dtos/dtos.dart';

Future<ChapterDetailDto> chap(String endpoint) async {
  final dio = Dio();
  final response =
      await dio.getUri(Uri.parse('https://bachngocsach.com.vn$endpoint'));
  final html = response.data.toString();
  final doc = parse(html);

  return ChapterDetailDto(
    url: 'https://bachngocsach.com.vn$endpoint',
    content: doc.querySelector('#noi-dung')!.text,
  );
}
