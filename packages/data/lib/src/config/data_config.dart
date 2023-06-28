import 'dart:async';

import 'package:shared/shared.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

import '../di/di.dart' as di;
import '../sources/local/local.dart';

class DataConfig extends Config {
  DataConfig._();

  factory DataConfig.getInstance() {
    return _instance;
  }

  static final DataConfig _instance = DataConfig._();

  WebViewController browserConfig() {
    late final PlatformWebViewControllerCreationParams params;
    params = WebViewPlatform.instance is WebKitWebViewPlatform
        ? WebKitWebViewControllerCreationParams(
            allowsInlineMediaPlayback: true,
            mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
          )
        : const PlatformWebViewControllerCreationParams();
    final controller = WebViewController.fromPlatformCreationParams(params);
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }

    return controller;
  }

  @override
  Future<void> config() async {
    await ObjectBox.instance();
    di.getIt.registerSingleton<Browser>(BrowserImpl(browserConfig()));
    di.configureInjection();
  }
}

abstract class Browser {
  void launch(String url); // Mở trang web với url
  Future<String> html([Duration duration = const Duration(seconds: 1)]); // Trả về Document object của trang web
}

class BrowserImpl extends Browser {
  BrowserImpl(this._controller);

  final WebViewController _controller;

  @override
  void launch(url) => _controller.loadRequest(Uri.parse(url));

  @override
  Future<String> html([duration = const Duration(seconds: 1)]) async {
    String data = '<head></head><body></body>';
    while (data == '<head></head><body></body>') {
      data = (await Future.delayed(
        duration,
        () => _controller.runJavaScriptReturningResult(
          "window.document.getElementsByTagName('html')[0].innerHTML;",
        ),
      ))
          .toString();
    }
    await _controller.loadHtmlString('<head></head><body></body>');

    return data;
  }
}
