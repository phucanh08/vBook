import 'dart:async';
import 'dart:convert';

import 'package:data/data.dart';
import 'package:data/src/sources/remote/book/book_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_js/flutter_js.dart';
import 'package:flutter_js/quickjs/ffi.dart';
import 'package:webview_flutter/webview_flutter.dart';

const String responseJs = '''  
      const Response = {
          success: function(data) {
              return JSON.stringify({'status': 'success', 'data': data});
          },
          success: function(data, data2) {
              return JSON.stringify({'status': 'success', 'data': data, 'data2': data2});
          },
          error: function(message) {
              return JSON.stringify({'status': 'error', 'data': message});
          }
      };
    ''';

class BookApi extends BookRepository {
  BookApi(this.dio);

  final Dio dio;

  late JavascriptRuntime flutterJs;

  List<PluginDto> plugins = [];

  Future<T> _fetch<T>(String url) async {
    assert(T == String || T == Map<String, dynamic>);
    final response = await dio.getUri(Uri.parse(url));
    if (T == String) {
      return response.data.toString() as T;
    }
    return jsonDecode(response.data) as T;
  }

  Future<List<PluginDto>> plugin(String url) async {
    final response = await _fetch<Map<String, dynamic>>(url);
    final List<PluginDto> data =
        response['data'].map<PluginDto>((e) => PluginDto.fromJson(e)).toList();
    plugins =
        await Future.wait<PluginDto>(data.map<Future<PluginDto>>((e) async {
      final String mUrl =
          e.path?.replaceAll('/plugin.zip', '/plugin.json') ?? '';

      final plugin =
          PluginDto.fromJson(await _fetch<Map<String, dynamic>>(mUrl));

      final Map<String, String> scripts = plugin.scripts ?? {};
      final Map<String, String> newScripts = {};

      for (var key in scripts.keys) {
        String mUrl =
            e.path?.replaceAll('/plugin.zip', '/src/${scripts[key]}') ?? '';
        final script = await _fetch<String>(mUrl);
        final Map<String, String> replaceALl = {};
        final rex = RegExp(r"load\('(.*)\.js'\);");
        final matches = rex.allMatches(script);
        for (RegExpMatch match in matches) {
          final String dataUrl =
              e.path?.replaceAll('/plugin.zip', '/src/${match.group(1)}.js') ??
                  '';
          replaceALl[match.group(1) ?? ''] = await _fetch<String>(dataUrl);
        }
        newScripts[key] = script.replaceAllMapped(
            rex, (match) => replaceALl[match.group(1)] ?? '');
      }
      return e.merge(plugin.copyWith(scripts: newScripts));
    }));

    return plugins;
  }

  @override
  Future<List<HomeDto>> home(String name) async {
    flutterJs = getJavascriptRuntime();
    final homeJs =
        plugins.firstWhereOrNull((e) => e.name == name)?.scripts?['home'];
    JsEvalResult jsResult = await flutterJs.evaluateAsync("$responseJs\n$homeJs \n execute();");
    flutterJs.dispose();

    return jsonDecode(jsResult.stringResult)?['data']
        .map<HomeDto>((e) => HomeDto.fromJson(e))
        .toList();
  }

  @override
  Future<List<GenreDto>> genre(String name) async {
    flutterJs = getJavascriptRuntime();
    final genreJs =
    plugins.firstWhereOrNull((e) => e.name == name)?.scripts?['genre'];
    JsEvalResult jsResult = await flutterJs.evaluateAsync("$responseJs\n$genreJs \n execute();");
    flutterJs.dispose();

    return jsonDecode( jsResult.stringResult)?['data']
        .map<GenreDto>((e) => GenreDto.fromJson(e))
        .toList();
  }

  final code = """
      const response = await fetch('https://reqres.in/api/users?page=2');
      const body = await response.json();
      if (response.status === 200) {
        sendMessage('onRequestSuccess', JSON.stringify(body));
      } else {
        sendMessage('onRequestFailure', JSON.stringify(body));
      }
  """;

  @override
  Future<DetailDto> detail(String name, String url) async {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)..loadRequest(Uri.parse('https://reqres.in/api/users?page=2'));
    final result = await controller.runJavaScriptReturningResult(code);


    flutterJs = getJavascriptRuntime(xhr: false);
    flutterJs.onMessage('onRequestSuccess', (dynamic args) {
      print(args);
    });
    final detailJs =
    plugins.firstWhereOrNull((e) => e.name == name)?.scripts?['detail']?.replaceAll('fetch', 'await fetch').replaceAll('function execute', 'async function execute').replaceAll("let doc = response.html();", """const html = await response.text();
    console.log(html);
    const doc = new DOMParser().parseFromString(html, 'text/html');""");
    JsEvalResult jsResult = await flutterJs.evaluateAsync(code);
    // JsEvalResult jsResult = flutterJs.evaluate("$responseJs\n$detailJs\n execute(\"$url\") .then(result => result);");
    // flutterJs.dispose();

    return jsonDecode( jsResult.stringResult)?['data']
        .map<GenreDto>((e) => GenreDto.fromJson(e))
        .toList();
  }

  @override
  Future<ChapterDetailDto> chap() {
    // TODO: implement chap
    throw UnimplementedError();
  }

  @override
  Future<List<BookDto>> gen() {
    // TODO: implement gen
    throw UnimplementedError();
  }

  @override
  Future<List<BookDto>> rank() {
    // TODO: implement rank
    throw UnimplementedError();
  }

  @override
  Future<List<BookDto>> search() {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  Future<List<ChapterDto>> toc() {
    // TODO: implement toc
    throw UnimplementedError();
  }

  @override
  Future<List<SourceDto>> sources() {
    // TODO: implement sources
    throw UnimplementedError();
  }
}
