import 'package:url_launcher/url_launcher.dart';

class IntentUtils {
  static Future<bool> openBrowserUri({
    required Uri uri,
    LaunchMode mode = LaunchMode.platformDefault,
  }) async {
    return await canLaunchUrl(uri)
        ? await launchUrl(
            uri,
            webViewConfiguration: const WebViewConfiguration(
              enableJavaScript: true,
            ),
            mode: mode,
          )
        : false;
  }

  static Future<bool> openBrowserURL({
    required String url,
    LaunchMode mode = LaunchMode.platformDefault,
  }) async {
    return openBrowserUri(uri: Uri.parse(url), mode: mode);
  }
}
