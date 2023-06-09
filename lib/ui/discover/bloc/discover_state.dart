part of 'discover_bloc.dart';

@freezed
class DiscoverState extends BaseState with _$DiscoverState {
  const DiscoverState._();
  const factory DiscoverState({
    @Default(<PluginModel>[]) List<PluginModel> listPlugin,
    @Default(<HomeModel>[]) List<HomeModel> listHome,
  }) = _DiscoverState;

  PluginModel? get currentPlugin => listPlugin.firstOrNull;
}
