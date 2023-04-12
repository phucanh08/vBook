import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared/shared.dart';

part 'app_dimen.dart';

extension DesignTokens on ThemeData {
  SpaceTokens get space => SpaceTokens.instance();
  InsertTokens get insert => InsertTokens.instance();
  RadiusTokens get radius => RadiusTokens.instance();
  ElevationTokens get elevation => ElevationTokens.instance();
}

class SpaceTokens {
  const SpaceTokens._();
  factory SpaceTokens.instance() {
    _instance ??= const SpaceTokens._();

    return _instance!;
  }
  static SpaceTokens? _instance;

  final double none = 0;
  final double tiny = 4;
  final double small = 8;
  final double medium = 12;
  final double large = 20;
  final double huge = 24;
  final double gigantic = 32;
}

class InsertTokens {
  const InsertTokens._();
  factory InsertTokens.instance() {
    _instance ??= const InsertTokens._();

    return _instance!;
  }
  static InsertTokens? _instance;

  final double tiny = 4;
  final double small = 8;
  final double medium = 12;
  final double large = 20;
  final double huge = 24;
  final double gigantic = 32;
}

class RadiusTokens {
  const RadiusTokens._();
  factory RadiusTokens.instance() {
    _instance ??= const RadiusTokens._();

    return _instance!;
  }
  static RadiusTokens? _instance;

  final double none = 0;
  final double extraSmall = 4;
  final double small = 8;
  final double medium = 12;
  final double large = 16;
  final double extraLarge = 28;
  final double full = double.infinity;
}

class ElevationTokens {
  const ElevationTokens._();
  factory ElevationTokens.instance() {
    _instance ??= const ElevationTokens._();

    return _instance!;
  }
  static ElevationTokens? _instance;
  final double level0 = 0;
  final double level1 = 1;
  final double level2 = 3;
  final double level3 = 6;
  final double level4 = 8;
  final double level5 = 12;
}
