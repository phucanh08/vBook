part of 'design_token.dart';

@immutable
class IconSizeToken {
  const IconSizeToken._();
  factory IconSizeToken.instance() {
    _instance ??= const IconSizeToken._();

    return _instance!;
  }
  static IconSizeToken? _instance;

  final double none = 0;
  final double extraSmall = 4;
  final double small = 8;
  final double medium = 12;
  final double large = 16;
  final double extraLarge = 24;
  final double extraExtraLarge = 28;
  final double full = double.infinity;
}
