import 'package:dio/dio.dart';
import 'package:html/parser.dart';

Future<String> chap(String endpoint) async {
  final dio = Dio();
  final response = await dio.getUri(Uri.parse('https://bachngocsach.com.vn$endpoint'));
  final html = response.data.toString();
  final doc = parse(html);

  return doc.querySelector("#noi-dung")!.text;
}
