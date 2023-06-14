import 'package:data/src/sources/local/local.dart';
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

  void browserConfig() {
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }
    final controller = WebViewController.fromPlatformCreationParams(params);
    controller.setJavaScriptMode(JavaScriptMode.unrestricted);
    if (controller.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
      (controller.platform as AndroidWebViewController)
          .setMediaPlaybackRequiresUserGesture(false);
    }

    di.getIt.registerSingleton<Browser>(BrowserImpl(controller));
  }

  @override
  Future<void> config() async {
    await ObjectBox.instance();
    di.configureInjection();
    browserConfig();
  }
}

abstract class Browser {
  void launch(String url); // Mở trang web với url
  Future<String> html([Duration duration = const Duration(milliseconds: 100)]); // Trả về Document object của trang web
}

class BrowserImpl extends Browser {
  BrowserImpl(this._controller);

  final WebViewController _controller;

  @override
  void launch(url) => _controller.loadRequest(Uri.parse(url));

  @override
  Future<String> html([duration = const Duration(milliseconds: 100)]) {
    return Future.delayed(duration, () async {
      final data = await _controller.runJavaScriptReturningResult(
        "window.document.getElementsByTagName('html')[0].innerHTML;",
      );
      return data.toString();
    });
  }
}
