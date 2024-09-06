// import 'dart:async';
//
// import 'package:domain/domain.dart';
// import 'package:flutter_js/extensions/fetch.dart';
// import 'package:flutter_js/flutter_js.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../../dtos/dtos.dart';
// import '../../base/client/rest_client.dart';
// import '../base_api.dart';
// import 'src/catalog.dart';
// import 'src/chap.dart';
// import 'src/detail.dart';
// import 'src/home.dart';
// import 'src/page.dart';
//
// @injectable
// class BachNgocSachApi extends VBookApi {
//   BachNgocSachApi(@Named('currentApiClient') this.api);
//
//   final RestApiClient api;
//
//   @override
//   Future<List<PluginDto>> getAllPlugin() {
//     final completer = Completer<List<PluginDto>>();
//     const code = """
//       fetch('https://raw.githubusercontent.com/phucanh08/vbook-extensions/master/plugin.json')
//         .then(function(response) {
//             response.json().then(function(data) {
//               if (response.status === 200) {
//                 sendMessage('onRequestSuccess', JSON.stringify(data));
//               } else {
//                 sendMessage('onRequestFailure', JSON.stringify(data));
//               }
//             });
//         })
//         .catch(e => sendMessage('onError', e.message))
//     """;
//     getJavascriptRuntime(xhr: false).enableFetch().then((jsRuntime) {
//       jsRuntime.setInspectable(true);
//       jsRuntime.onMessage('onRequestSuccess', (json) {
//         final data = json['data'];
//         if (data is List) {
//           completer.complete(data.map((e) => PluginDto.fromJson(e)).toList());
//         }
//         jsRuntime.dispose();
//       });
//       jsRuntime.onMessage('onRequestFailure', (args) {
//         completer.completeError(args);
//         jsRuntime.dispose();
//       });
//       jsRuntime.onMessage('onError', (args) {
//         completer.completeError(args);
//         jsRuntime.dispose();
//       });
//       jsRuntime.evaluate(code);
//     });
//     return completer.future;
//   }
//
//   @override
//   Future<PluginDto> plugin(String path) {
//     final completer = Completer<PluginDto>();
//     const code = """
//       fetch('https://raw.githubusercontent.com/phucanh08/vbook-extensions/master/bachngocsach/plugin.json')
//         .then(function(response) {
//             response.json().then(function(data) {
//               if (response.status === 200) {
//                 sendMessage('onRequestSuccess', JSON.stringify(data));
//               } else {
//                 sendMessage('onRequestFailure', JSON.stringify(data));
//               }
//             });
//         })
//         .catch(e => sendMessage('onError', e.message))
//     """;
//     getJavascriptRuntime(xhr: false).enableFetch().then((jsRuntime) {
//       jsRuntime.setInspectable(true);
//       jsRuntime.onMessage('onRequestSuccess', (json) {
//         completer.complete(PluginDto.fromJson(json['metadata']));
//         jsRuntime.dispose();
//       });
//       jsRuntime.onMessage('onRequestFailure', (args) {
//         completer.completeError(args);
//         jsRuntime.dispose();
//       });
//       jsRuntime.onMessage('onError', (args) {
//         completer.completeError(args);
//         jsRuntime.dispose();
//       });
//       jsRuntime.evaluate(code);
//     });
//
//     return completer.future;
//   }
//
//   @override
//   List<HomeDto> home(String path) => home.call(path);
//
//   @override
//   Future<Pagination<NovelItemDto>> page(
//       String endpoint, int pageNumber) {
//     return page.call(endpoint, pageNumber);
//   }
//
//   @override
//   Future<NovelDetailDto> detail(String endpoint, String url) {
//     return detailNovel(url);
//   }
//
//   @override
//   Future<Pagination<ChapterDto>> toc(String endpoint, int pageNumber) {
//     return catalog(endpoint, pageNumber);
//   }
//
//   @override
//   Future<ChapterDetailDto> chap(String endpoint) {
//     return chap(endpoint);
//   }
// }
//
// dynamic execute() => {
//       'name': 'Bạch Ngọc Sách',
//       'version': 0,
//       'path': 'bachngocsach',
//       'source': 'https://bachngocsach.com.vn',
//       'icon':
//           'https://raw.githubusercontent.com/Darkrai9x/vbook-extensions/master/bachngocsach/icon.png',
//       'description': 'Đọc truyện trên trang bachngocsach.com.vn/reader',
//       'locale': 'vi_VN',
//       'type': 'novel',
//     };
