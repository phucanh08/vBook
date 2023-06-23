export 'local/local.dart';
export 'remote/remote.dart';

extension StringRegexExtension on String {
  RegExpMatch? match(String regexString) {
    return RegExp(regexString).firstMatch(this);
  }
}
