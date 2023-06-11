part of 'extension_bloc.dart';

@freezed
class ExtensionState extends BaseState with _$ExtensionState {
  const ExtensionState._();
  const factory ExtensionState({
    @Default(<PluginModel>[]) List<PluginModel> listLocalPlugin,
    @Default(<PluginModel>[]) List<PluginModel> listLibraryPlugin,
    @Default(false) bool isSearchMode,
    @Default('') String searchText,
  }) = _ExtensionState;

  List<PluginModel> get localPlugins {
    return searchText.isEmpty
        ? listLocalPlugin
        : listLocalPlugin
            .where((element) => element.name
                .toLowerCaseNonAccentVietnamese()
                .contains(searchText.toLowerCaseNonAccentVietnamese()))
            .toList();
  }

  List<PluginModel> get libraryPlugins {
    return searchText.isEmpty
        ? listLibraryPlugin
        : listLibraryPlugin
        .where((element) => element.name
        .toLowerCaseNonAccentVietnamese()
        .contains(searchText.toLowerCaseNonAccentVietnamese()))
        .toList();
  }
}
