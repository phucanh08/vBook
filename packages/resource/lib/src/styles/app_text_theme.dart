part of 'app_themes.dart';

extension AppTextStyles on TextStyle {
  TextStyle get nonHeight => copyWith(height: 1);

  TextStyle withColor({
    Color? color,
    double? tablet,
    double? ultraTablet,
  }) {
    return copyWith(
      fontSize: fontSize?.responsive(tablet: tablet, ultraTablet: ultraTablet),
      color: color,
    );
  }
}

class AppTextTheme extends TextTheme {
  const AppTextTheme._({
    super.displayLarge,
    super.displayMedium,
    super.displaySmall,
    super.headlineLarge,
    super.headlineMedium,
    super.headlineSmall,
    super.titleLarge,
    super.titleMedium,
    super.titleSmall,
    super.bodyLarge,
    super.bodyMedium,
    super.bodySmall,
    super.labelLarge,
    super.labelMedium,
    super.labelSmall,
  });

  factory AppTextTheme.textTheme() {
    return const AppTextTheme._(
      displayLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 57,
        height: 64 / 57,
        letterSpacing: 0,
      ),
      displayMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 45,
        height: 52 / 45,
        letterSpacing: 0,
      ),
      displaySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 36,
        height: 44 / 36,
        letterSpacing: 0,
      ),
      headlineLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 32,
        height: 40 / 32,
        letterSpacing: 0,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 28,
        height: 36 / 28,
        letterSpacing: 0,
      ),
      headlineSmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 24,
        height: 32 / 24,
        letterSpacing: 0,
      ),
      titleLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 22,
        height: 28 / 22,
        letterSpacing: 0,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 16,
        height: 24 / 16,
        letterSpacing: 0.15,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0.1,
      ),
      labelLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0.1,
      ),
      labelMedium: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 16 / 12,
        letterSpacing: 0.5,
      ),
      labelSmall: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        height: 16 / 11,
        letterSpacing: 0.5,
      ),
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 24 / 16,
        letterSpacing: 0.15,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 20 / 14,
        letterSpacing: 0.25,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 16 / 12,
        letterSpacing: 0.4,
      ),
    );
  }
}
