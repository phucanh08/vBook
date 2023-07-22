part of 'design_token.dart';

@immutable
class RadiusToken {
  const RadiusToken._();
  factory RadiusToken.instance() {
    _instance ??= const RadiusToken._();

    return _instance!;
  }
  static RadiusToken? _instance;

  final double none = 0;
  final double extraSmall = 4;
  final double small = 8;
  final double medium = 12;
  final double large = 16;
  final double extraLarge = 28;
  final double full = double.infinity;
}
