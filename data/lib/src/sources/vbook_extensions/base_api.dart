import 'dart:async';

import 'package:domain/domain.dart';
import 'package:flutter_js/extensions/fetch.dart';
import 'package:flutter_js/flutter_js.dart';
import 'package:injectable/injectable.dart';

import '../../dtos/dtos.dart';

//"home": "<Tên script trang home (không bắt buộc)>",
//     "genre": "<Tên script danh sách thể loại, nếu không có thì không thêm>",
//     "detail": "<Tên script thông tin truyện (bắt buộc)>",
//     "search": "<Tên script tìm kiếm truyện (không bắt buộc)>",
//     "page": "<Tên script danh sách trang của mục luc (không bắt buộc)>",
//     "toc": "<Tên script mục lục (bắt buộc)>",
//     "chap": "<Tên script nội dung chương (bắt buộc)>"

abstract class VBookApi {
  Future<List<PluginDto>> getAllPlugin() {
    throw Exception('getAllPlugin not implemented');
  }

  Future<PluginDto> plugin(String path) {
    throw Exception('Plugin not implemented');
  }

  // Trang chủ
  List<Home> home(String path) {
    throw Exception('Home not implemented');
  }

  // Danh sách thể loại
  List<Genre> genre(String path) {
    throw Exception('Genre not implemented');
  }

  // Thông tin truyện
  Future<Detail> detail(String path, String url) {
    throw Exception('Detail not implemented');
  }


  // Tìm kiếm truyện
  List<Pagination<Book>> search(String path, String key, int page) {
    throw Exception('Search not implemented');
  }

  // Danh sách trang của mục luc
  Future<Pagination<Book>> page(String path, url) {
    throw Exception('Page not implemented');
  }

  // Mục luc
  Future<Pagination<Toc>> toc(String path, String url) {
    throw Exception('Toc not implemented');
  }

  // Nội dung chương
  Future<Chap> chap(String path, String url) {
    throw Exception('Chap not implemented');
  }
}

@Injectable(as: VBookApi)
class VBookApiImpl extends VBookApi {

  @override
  Future<List<PluginDto>> getAllPlugin() {
    final completer = Completer<List<PluginDto>>();
    const code = """
      fetch('https://raw.githubusercontent.com/phucanh08/vbook-extensions/master/plugin.json')
        .then(function(response) {
            response.json().then(function(data) {
              if (response.status === 200) {
                sendMessage('onRequestSuccess', JSON.stringify(data));
              } else {
                sendMessage('onRequestFailure', JSON.stringify(data));
              }
            });
        })
        .catch(e => sendMessage('onError', e.message))
    """;
    getJavascriptRuntime(xhr: false).enableFetch().then((jsRuntime) {
      jsRuntime.setInspectable(true);
      jsRuntime.onMessage('onRequestSuccess', (json) {
        final data = json['data'];
        if (data is List) {
          completer.complete(data.map((e) => PluginDto.fromJson(e)).toList());
        }
        jsRuntime.dispose();
      });
      jsRuntime.onMessage('onRequestFailure', (args) {
        completer.completeError(args);
        jsRuntime.dispose();
      });
      jsRuntime.onMessage('onError', (args) {
        completer.completeError(args);
        jsRuntime.dispose();
      });
      jsRuntime.evaluate(code);
    });
    return completer.future;
  }

  @override
  Future<PluginDto> plugin(String path) {
    final completer = Completer<PluginDto>();
    final code = """
      fetch('$path/plugin.json')
        .then(function(response) {
            response.json().then(function(data) {
              if (response.status === 200) {
                sendMessage('onRequestSuccess', JSON.stringify(data));
              } else {
                sendMessage('onRequestFailure', JSON.stringify(data));
              }
            });
        })
        .catch(e => sendMessage('onError', e.message))
    """;
    getJavascriptRuntime(xhr: false).enableFetch().then((jsRuntime) {
      jsRuntime.setInspectable(true);
      jsRuntime.onMessage('onRequestSuccess', (json) {
        completer.complete(PluginDto.fromJson(json['metadata']));
        jsRuntime.dispose();
      });
      jsRuntime.onMessage('onRequestFailure', (args) {
        completer.completeError(args);
        jsRuntime.dispose();
      });
      jsRuntime.onMessage('onError', (args) {
        completer.completeError(args);
        jsRuntime.dispose();
      });
      jsRuntime.evaluate(code);
    });
    return completer.future;
  }




}
