import 'package:url_launcher/url_launcher.dart';

class IntentUtils {
  static Future<bool> openBrowserURL({
    required String url,
    bool inApp = false,
  }) async {
    return await canLaunchUrl(Uri.parse(url))
        ? await launchUrl(
            Uri.parse(url),
            mode: inApp ? LaunchMode.inAppWebView : LaunchMode.platformDefault,
            webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),
          )
    // forceSafariVC: inApp, forceWebView: inApp,
        : false;
  }
}
