import 'dart:convert';

import 'package:dart_eval/dart_eval.dart';
import 'package:data/src/dtos/dtos.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:html/parser.dart';

extension DioExtension on Dio {
  Future<dynamic> fetchUrl(String url) async {
    final response = await getUri(Uri.parse(url));
    try {
      return jsonDecode(response.data);
    } catch (e) {
      return response.data.toString();
    }
  }

}

@injectable
class PluginApi {
  PluginApi(@Named('git') this._dio, this._browser);

  final Dio _dio;
  final WebViewController _browser;

  Future<List<PluginDto>> getList(String link) async {
    final response = await _dio.fetchUrl(link);
    final data =
        response['data'].map<PluginDto>((e) => PluginDto.fromJson(e)).toList();
    getData();
    return data;
  }

  Future<dynamic> getData() async {
    _browser.loadRequest(
        Uri.parse('https://bachngocsach.com.vn/reader/recent-promote?page=0'));
    final html = await Future.delayed(
        const Duration(seconds: 3),
        () => _browser.runJavaScriptReturningResult(
            "$js \n execute();"));
    final data = parse(html);

    final result = eval(dartCode, args: [data]);
    print(html);
  }
}

const dartCode = """
import 'package:html/parser.dart';
  Map<String, dynamic> main(doc) {

    final regExp = RegExp(r'page=(\d+)');
    final data = doc.querySelectorAll(".pager-next").last.querySelector("a")?.attributes['href'];
    String? next;
    if(regExp.hasMatch(data)) {
      next = regExp.firstMatch(data)?.group(1);
    }
    final novelList = data.querySelectorAll("ul.content-grid > li > div").map((e) => {
      "name": e.querySelector("div.recent-truyen a")?.text,
      "link": e.querySelector("div.recent-truyen a")?.attributes["href"],
      "cover": e.querySelector("div.recent-anhbia img")?.attributes["src"],
      "description": e.querySelector("div.recent-chuong a")?.text,
    });

    return {
      "novelList": novelList,
      "next": next,
    };
  }

    """;

const js = """ 
function execute() {
    let doc = document;
    console.log('1');
    let next = doc.querySelector(".pager-next").last.innerHTML;
    console.log('5');
    return next;
}
console.log('0');
        """;
