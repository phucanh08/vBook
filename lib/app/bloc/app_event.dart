part of 'app_bloc.dart';

@freezed
class AppEvent extends BaseEvent with _$AppEvent {
  const factory AppEvent.initiated() = AppInitiated;
  const factory AppEvent.languageChanged() = AppLanguageChanged;
  const factory AppEvent.themeChanged() = AppThemeChanged;
  const factory AppEvent.loggedInStatusChanged() = AppLoggedInStatusChanged;
}
