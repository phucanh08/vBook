part of 'app_themes.dart';

class AppColors {
  AppColors._(this.lightColorScheme, this.darkColorScheme);

  AppColors(AppPalette appPalette, CustomPalette customPalette)
      : lightColorScheme = ColorScheme.light(
          /// primary
          primary: appPalette.primary[40]!,
          onPrimary: appPalette.primary[100]!,
          primaryContainer: appPalette.primary[90],
          onPrimaryContainer: appPalette.primary[10],

          /// secondary
          secondary: appPalette.secondary[40]!,
          onSecondary: appPalette.secondary[100]!,
          secondaryContainer: appPalette.secondary[90],
          onSecondaryContainer: appPalette.secondary[10],

          /// tertiary
          tertiary: appPalette.tertiary[40]!,
          onTertiary: appPalette.tertiary[100]!,
          tertiaryContainer: appPalette.tertiary[90],
          onTertiaryContainer: appPalette.tertiary[10],

          /// surface
          surface: appPalette.neutral[99]!,
          onSurface: appPalette.neutral[10]!,
          surfaceVariant: appPalette.neutralVariant[90],
          onSurfaceVariant: appPalette.neutralVariant[30],

          /// background
          background: appPalette.neutral[99]!,
          onBackground: appPalette.neutral[10]!,

          /// error
          error: appPalette.error[40]!,
          onError: appPalette.error[100]!,
          errorContainer: appPalette.error[90],
          onErrorContainer: appPalette.error[10],

          /// outline
          outline: appPalette.neutralVariant[50],
          outlineVariant: appPalette.neutralVariant[80],

          /// shadow
          shadow: appPalette.neutral,

          /// unknown
          surfaceTint: appPalette.primary[40],
          inverseSurface: appPalette.neutral[20],
          onInverseSurface: appPalette.neutral[95],
          inversePrimary: appPalette.primary[80],
          scrim: appPalette.neutral,
        )..addColor(customPalette),
        darkColorScheme = ColorScheme.dark(
          /// primary
          primary: appPalette.primary[80]!,
          onPrimary: appPalette.primary[20]!,
          primaryContainer: appPalette.primary[30],
          onPrimaryContainer: appPalette.primary[90],

          /// secondary
          secondary: appPalette.secondary[80]!,
          onSecondary: appPalette.secondary[20]!,
          secondaryContainer: appPalette.secondary[30],
          onSecondaryContainer: appPalette.secondary[90],

          /// tertiary
          tertiary: appPalette.tertiary[80]!,
          onTertiary: appPalette.tertiary[20]!,
          tertiaryContainer: appPalette.tertiary[30],
          onTertiaryContainer: appPalette.tertiary[90],

          /// surface
          surface: appPalette.neutral[10]!,
          onSurface: appPalette.neutral[90]!,
          surfaceVariant: appPalette.neutralVariant[30],
          onSurfaceVariant: appPalette.neutralVariant[80],

          /// error
          error: appPalette.error[80]!,
          onError: appPalette.error[20]!,
          errorContainer: appPalette.error[30],
          onErrorContainer: appPalette.error[90],

          /// background
          background: appPalette.neutral[10]!,
          onBackground: appPalette.neutral[90]!,

          /// outline
          outline: appPalette.neutralVariant[60],
          outlineVariant: appPalette.neutralVariant[30],

          /// shadow
          shadow: appPalette.neutral,

          /// unknown
          surfaceTint: appPalette.primary[80],
          inverseSurface: appPalette.neutral[90],
          onInverseSurface: appPalette.neutral[20],
          inversePrimary: appPalette.primary[40],
          scrim: appPalette.neutral,
        )..addColor(customPalette);

  AppColors.fromSeed(Color seedColor, CustomPalette customPalette)
      : lightColorScheme = ColorScheme.fromSeed(
          seedColor: seedColor,
          brightness: Brightness.light,
        )..addColor(customPalette),
        darkColorScheme = ColorScheme.fromSeed(
          seedColor: seedColor,
          brightness: Brightness.dark,
        )..addColor(customPalette);

  final ColorScheme lightColorScheme;
  final ColorScheme darkColorScheme;
}

class AppPalette {
  const AppPalette({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.error,
    required this.neutral,
    required this.neutralVariant,
  });

  final MaterialColor primary;
  final MaterialColor secondary;
  final MaterialColor tertiary;
  final MaterialColor error;
  final MaterialColor neutral;
  final MaterialColor neutralVariant;
}

class CustomPalette {
  const CustomPalette({
    required this.info,
    required this.success,
    required this.warning,
    required this.disabled,
  });

  final MaterialColor info;
  final MaterialColor success;
  final MaterialColor warning;
  final MaterialColor disabled;
}

enum _Color {
  /// info
  info,
  onInfo,
  infoContainer,
  onInfoContainer,

  /// success
  success,
  onSuccess,
  successContainer,
  onSuccessContainer,

  /// warning
  warning,
  onWarning,
  warningContainer,
  onWarningContainer,

  /// disabled
  disabled,
  onDisabled,
  disabledContainer,
  onDisabledContainer;
}

class CustomColor {
  const CustomColor(this.light, this.dark);

  final Color light;
  final Color dark;

  Color getColor(Brightness brightness) =>
      brightness == Brightness.light ? light : dark;
}

extension ThemeDataExtensions on ColorScheme {
  static final Map<_Color, CustomColor> _color = {};

  void addColor(CustomPalette palette) {
    /// info
    _color[_Color.info] = CustomColor(palette.info[40]!, palette.info[80]!);
    _color[_Color.onInfo] = CustomColor(palette.info[100]!, palette.info[20]!);
    _color[_Color.infoContainer] =
        CustomColor(palette.info[90]!, palette.info[30]!);
    _color[_Color.onInfoContainer] =
        CustomColor(palette.info[10]!, palette.info[90]!);

    /// success
    _color[_Color.success] =
        CustomColor(palette.success[40]!, palette.success[80]!);
    _color[_Color.onSuccess] =
        CustomColor(palette.success[100]!, palette.success[20]!);
    _color[_Color.successContainer] =
        CustomColor(palette.success[90]!, palette.success[30]!);
    _color[_Color.onSuccessContainer] =
        CustomColor(palette.success[10]!, palette.success[90]!);

    /// warning
    _color[_Color.warning] =
        CustomColor(palette.warning[40]!, palette.warning[80]!);
    _color[_Color.onWarning] =
        CustomColor(palette.warning[100]!, palette.warning[20]!);
    _color[_Color.warningContainer] =
        CustomColor(palette.warning[90]!, palette.warning[30]!);
    _color[_Color.onWarningContainer] =
        CustomColor(palette.warning[10]!, palette.warning[90]!);

    /// disabled
    _color[_Color.disabled] =
        CustomColor(palette.disabled[40]!, palette.disabled[80]!);
    _color[_Color.onDisabled] =
        CustomColor(palette.disabled[100]!, palette.disabled[20]!);
    _color[_Color.disabledContainer] =
        CustomColor(palette.disabled[90]!, palette.disabled[30]!);
    _color[_Color.onDisabledContainer] =
        CustomColor(palette.disabled[10]!, palette.disabled[90]!);
  }

  /// info
  Color? get info => _color[_Color.info]?.getColor(brightness);

  Color? get onInfo => _color[_Color.onInfo]?.getColor(brightness);

  Color? get infoContainer =>
      _color[_Color.infoContainer]?.getColor(brightness);

  Color? get onInfoContainer =>
      _color[_Color.onInfoContainer]?.getColor(brightness);

  /// success
  Color? get success => _color[_Color.success]?.getColor(brightness);

  Color? get onSuccess => _color[_Color.onSuccess]?.getColor(brightness);

  Color? get successContainer =>
      _color[_Color.successContainer]?.getColor(brightness);

  Color? get onSuccessContainer =>
      _color[_Color.onSuccessContainer]?.getColor(brightness);

  /// warning
  Color? get warning => _color[_Color.warning]?.getColor(brightness);

  Color? get onWarning => _color[_Color.onWarning]?.getColor(brightness);

  Color? get warningContainer =>
      _color[_Color.warningContainer]?.getColor(brightness);

  Color? get onWarningContainer =>
      _color[_Color.onWarningContainer]?.getColor(brightness);

  /// disabled
  Color? get disabled => _color[_Color.disabled]?.getColor(brightness);

  Color? get onDisabled => _color[_Color.onDisabled]?.getColor(brightness);

  Color? get disabledContainer =>
      _color[_Color.disabledContainer]?.getColor(brightness);

  Color? get onDisabledContainer =>
      _color[_Color.onDisabledContainer]?.getColor(brightness);
}
