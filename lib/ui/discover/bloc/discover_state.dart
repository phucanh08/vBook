part of 'discover_bloc.dart';

@freezed
class DiscoverState extends BaseState with _$DiscoverState {
  const factory DiscoverState({
    SourceModel? currentSource,
    @Default(<SourceModel>[]) List<SourceModel> listSource,
  }) = _DiscoverState;
}
