import 'package:dio/dio.dart';
import 'package:html/parser.dart';

import '../../../../dtos/dtos.dart';

Future<List<HomeDto>> genre() async {
  final dio = Dio();
  final response =
      await dio.getUri(Uri.parse('https://bachngocsach.com.vn/reader/theloai'));
  final html = response.data.toString();
  final doc = parse(html);

  return doc
          .querySelectorAll('div.view-content .theloai-row a')
          .map((e) => HomeDto(title: e.text, input: e.attributes['href']))
          .toList();
}
