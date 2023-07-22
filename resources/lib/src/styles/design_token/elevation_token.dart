part of 'design_token.dart';

@immutable
class ElevationToken {
  const ElevationToken._();
  factory ElevationToken.instance() {
    _instance ??= const ElevationToken._();

    return _instance!;
  }
  static ElevationToken? _instance;
  final double level0 = 0;
  final double level1 = 1;
  final double level2 = 3;
  final double level3 = 6;
  final double level4 = 8;
  final double level5 = 12;
}
