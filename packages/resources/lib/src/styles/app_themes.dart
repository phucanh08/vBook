import 'package:flutter/material.dart';

import '../dimension/dimension.dart';

export 'design_token/design_token.dart';

part 'app_colors.dart';

part 'app_text_theme.dart';

class AppTheme {
  AppTheme._(this.lightTheme, this.darkTheme);

  factory AppTheme.fromAppPalette(
    AppPalette appPalette,
    CustomPalette customPalette,
  ) {
    final appColor = AppColors(appPalette, customPalette);
    final textTheme = AppTextTheme.textTheme();
    final themeData = ThemeData(
      useMaterial3: true,
      colorScheme: appColor.lightColorScheme,
      textTheme: textTheme,
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );

    return AppTheme._(
      themeData.copyWith(brightness: Brightness.light),
      themeData.copyWith(brightness: Brightness.dark),
    );
  }

  factory AppTheme.fromSeed(Color seedColor, CustomPalette customPalette) {
    final appColor = AppColors.fromSeed(seedColor, customPalette);
    final textTheme = AppTextTheme.textTheme();
    final themeData = ThemeData(
      useMaterial3: true,
      colorScheme: appColor.lightColorScheme,
      textTheme: textTheme,
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );

    return AppTheme._(
      themeData.copyWith(brightness: Brightness.light),
      themeData.copyWith(brightness: Brightness.dark),
    );
  }

  final ThemeData lightTheme;
  final ThemeData darkTheme;

  static ThemeData? _current;

  static ThemeData get current => _current ?? ThemeData();

  static ThemeData of(BuildContext context) {
    _current = Theme.of(context);

    return _current!;
  }
}
