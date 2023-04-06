part of 'app_bloc.dart';

@freezed
class AppState extends BaseState with _$AppState {
  const factory AppState({
    required AppPalette appPalette,
    required CustomPalette customPalette,
    @Default('vi') String languageCode,
    @Default(false) bool isLoggedIn,
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _AppState;

  factory AppState.initial() {
    return const AppState(
      appPalette: AppPalette(
        primary: MaterialColor(
          0xff000000,
          <int, Color>{
            10: Color(0xff21005d),
            20: Color(0xff381e72),
            30: Color(0xff4f378b),
            40: Color(0xff6750a4),
            50: Color(0xff7f67be),
            60: Color(0xff9a82db),
            70: Color(0xffb69df8),
            80: Color(0xffd0bcff),
            90: Color(0xffeaddff),
            95: Color(0xfff6edff),
            99: Color(0xfffffbfe),
            100: Color(0xffffffff),
          },
        ),
        secondary: MaterialColor(
          0xff000000,
          <int, Color>{
            10: Color(0xff1d192b),
            20: Color(0xff332d41),
            30: Color(0xff4a4458),
            40: Color(0xff625b71),
            50: Color(0xff7a7289),
            60: Color(0xff958da5),
            70: Color(0xffb0a7c0),
            80: Color(0xffccc2dc),
            90: Color(0xffe8def8),
            95: Color(0xfff6edff),
            99: Color(0xfffffbfe),
            100: Color(0xffffffff),
          },
        ),
        tertiary: MaterialColor(
          0xff000000,
          <int, Color>{
            10: Color(0xff31111d),
            20: Color(0xff492532),
            30: Color(0xff633b48),
            40: Color(0xff7d5260),
            50: Color(0xff986977),
            60: Color(0xffb58392),
            70: Color(0xffd29dac),
            80: Color(0xffefb8c8),
            90: Color(0xffffd8e4),
            95: Color(0xffffecf1),
            99: Color(0xfffffbfa),
            100: Color(0xffffffff),
          },
        ),
        error: MaterialColor(
          0xff000000,
          <int, Color>{
            10: Color(0xff410e0b),
            20: Color(0xff601410),
            30: Color(0xff8c1d18),
            40: Color(0xffb3261e),
            50: Color(0xffdc362e),
            60: Color(0xffe46962),
            70: Color(0xffec928e),
            80: Color(0xfff2b8b5),
            90: Color(0xfff9dedc),
            95: Color(0xfffceeee),
            99: Color(0xfffffbf9),
            100: Color(0xffffffff),
          },
        ),
        neutral: MaterialColor(
          0xff000000,
          <int, Color>{
            10: Color(0xff1c1b1f),
            20: Color(0xff313033),
            30: Color(0xff484649),
            40: Color(0xff605d62),
            50: Color(0xff787579),
            60: Color(0xff939094),
            70: Color(0xffaeaaae),
            80: Color(0xffc9c5ca),
            90: Color(0xffe6e1e5),
            95: Color(0xfff4eff4),
            99: Color(0xfffffbfe),
            100: Color(0xffffffff),
          },
        ),
        neutralVariant: MaterialColor(
          0xff000000,
          <int, Color>{
            10: Color(0xff1d1a22),
            20: Color(0xff322f37),
            30: Color(0xff49454f),
            40: Color(0xff605d66),
            50: Color(0xff79747e),
            60: Color(0xff938f99),
            70: Color(0xffaea9b4),
            80: Color(0xffcac4d0),
            90: Color(0xffe7e0ec),
            95: Color(0xfff5eefa),
            99: Color(0xfffffbfe),
            100: Color(0xffffffff),
          },
        ),
      ),
      customPalette: CustomPalette(
        info: MaterialColor(
          0xff000000,
          <int, Color>{
            10: Color(0xFF001D36),
            20: Color(0xFF003258),
            30: Color(0xFF00497D),
            40: Color(0xff0061a4),
            80: Color(0xFF9ECAFF),
            90: Color(0xffd1e4ff),
            100: Color(0xffffffff),
          },
        ),
        success: MaterialColor(
          0xff000000,
          <int, Color>{
            10: Color(0xFF002204),
            20: Color(0xFF00390A),
            30: Color(0xFF005313),
            40: Color(0xFF006E1C),
            80: Color(0xFF78DC77),
            90: Color(0xFF94F990),
            100: Color(0xffffffff),
          },
        ),
        warning: MaterialColor(
          0xff000000,
          <int, Color>{
            10: Color(0xFF2C1600),
            20: Color(0xFF4A2800),
            30: Color(0xFF693C00),
            40: Color(0xFF8B5000),
            80: Color(0xFFFFB870),
            90: Color(0xFFFFDCBE),
            100: Color(0xffffffff),
          },
        ),
        disabled: MaterialColor(
          0xff000000,
          <int, Color>{
            10: Color(0xff1c1b1f),
            20: Color(0xff313033),
            30: Color(0xff484649),
            40: Color(0xff605d62),
            80: Color(0xffc9c5ca),
            90: Color(0xffe6e1e5),
            95: Color(0xfff4eff4),
            99: Color(0xfffffbfe),
            100: Color(0xffffffff),
          },
        ),
      ),
    );
  }

  AppTheme? _appTheme;
  AppTheme get appTheme {
    _appTheme ??= AppTheme.fromAppPalette(appPalette, customPalette);

    return _appTheme!;
  }
}
