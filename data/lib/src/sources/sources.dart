export 'local/local.dart';

extension StringRegexExtension on String {
  RegExpMatch? match(String regexString) {
    return RegExp(regexString).firstMatch(this);
  }
}
