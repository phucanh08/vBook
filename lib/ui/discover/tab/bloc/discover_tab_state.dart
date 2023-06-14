part of 'discover_tab_bloc.dart';

@freezed
class DiscoverTabState extends PaginationState<PageModel> with _$DiscoverTabState {
  const factory DiscoverTabState({
    @Default(<PageModel>[]) List<PageModel> listHome,
  }) = _DiscoverTabState;
}
