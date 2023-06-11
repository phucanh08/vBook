import 'package:data/src/sources/local/local.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

import '../di/di.dart' as di;

class DataConfig extends Config {
  DataConfig._();

  factory DataConfig.getInstance() {
    return _instance;
  }

  static final DataConfig _instance = DataConfig._();

  @override
  Future<void> config() async {
    await ObjectBox.instance();
    di.configureInjection();

    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }
    di.getIt.registerSingleton<WebViewController>(
        WebViewController.fromPlatformCreationParams(params));

    di
        .getIt<WebViewController>()
        .setJavaScriptMode(JavaScriptMode.unrestricted);
    if (di.getIt<WebViewController>().platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (di.getIt<WebViewController>().platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }
  }
}

abstract class Browser {
  void launch(String url); // Mở trang web với url
  Future<Object> callJs(String script, int waitTime); // Gọi Javascript function trên trang với waitTime, trả về Document object
  Future<String> html(waitTime); // Trả về Document object của trang web
}

@Injectable(as: Browser)
class BrowserImpl extends Browser {
  BrowserImpl(this._controller);

  final WebViewController _controller;

  @override
  void launch(url) {
    _controller.loadRequest(Uri.parse(url));
  }

  @override
  Future<Object> callJs(script, waitTime) {
    return Future<Object>.delayed(Duration(seconds: waitTime),
        () => _controller.runJavaScriptReturningResult(script));
  }

  @override
  Future<String> html(waitTime) {
    return Future.delayed(Duration(seconds: waitTime), () async {
      final data = await _controller.runJavaScriptReturningResult(
          "window.document.getElementsByTagName('html')[0].innerHTML;");
      return data.toString();
    });
  }
}
