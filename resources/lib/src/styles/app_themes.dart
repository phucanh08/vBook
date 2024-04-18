import 'package:flutter/material.dart';

import '../../resources.dart';
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

    return AppTheme._(
      _themeData(
        brightness: Brightness.light,
        colorScheme: appColor.lightColorScheme,
      ),
      _themeData(
        brightness: Brightness.dark,
        colorScheme: appColor.darkColorScheme,
      ),
    );
  }

  factory AppTheme.fromSeed(Color seedColor, CustomPalette customPalette) {
    final appColor = AppColors.fromSeed(seedColor, customPalette);

    return AppTheme._(
      _themeData(
        brightness: Brightness.light,
        colorScheme: appColor.lightColorScheme,
      ),
      _themeData(
        brightness: Brightness.dark,
        colorScheme: appColor.darkColorScheme,
      ),
    );
  }

  final ThemeData lightTheme;
  final ThemeData darkTheme;

  static ThemeData? _current;

  static ThemeData get current => _current ?? ThemeData();

  static ThemeData _themeData({
    required ColorScheme colorScheme,
    required Brightness brightness,
  }) {
    final textTheme = AppTextTheme.textTheme().apply(displayColor: colorScheme.onSurface);

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      textTheme: textTheme,
      iconTheme: const IconThemeData(size: 28),
      cardTheme: CardTheme(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      chipTheme: ChipThemeData(
        labelStyle: textTheme.bodySmall?.copyWith(height: 1),
        brightness: brightness,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  static ThemeData of(BuildContext context) {
    _current = Theme.of(context);

    return _current!;
  }
}
