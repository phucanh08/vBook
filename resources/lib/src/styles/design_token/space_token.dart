part of 'design_token.dart';

@immutable
class SpaceToken {
  const SpaceToken._();
  factory SpaceToken.instance() {
    _instance ??= const SpaceToken._();

    return _instance!;
  }
  static SpaceToken? _instance;

  final double none = 0;
  final double tiny = 4;
  final double small = 8;
  final double medium = 12;
  final double large = 20;
  final double huge = 24;
  final double gigantic = 32;
}
