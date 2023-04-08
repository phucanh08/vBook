import 'package:flutter/material.dart';

import '../dimens/dimens.dart';

part 'app_colors.dart';

part 'app_text_theme.dart';

class AppTheme {
  AppTheme._(this.lightTheme, this.darkTheme);

  factory AppTheme.fromAppPalette(AppPalette appPalette, CustomPalette customPalette) {
    final appColor = AppColors(appPalette, customPalette);
    final textTheme = AppTextTheme.textTheme();
    final themeData = ThemeData(
      useMaterial3: true,
      colorScheme: appColor.lightColorScheme,
      textTheme: textTheme,
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
    );

    return AppTheme._(
      themeData.copyWith(brightness: Brightness.light),
      themeData.copyWith(brightness: Brightness.dark),
    );
  }

  final ThemeData lightTheme;
  final ThemeData darkTheme;
}
