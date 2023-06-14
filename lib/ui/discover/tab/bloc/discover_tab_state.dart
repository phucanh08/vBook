part of 'discover_tab_bloc.dart';

@freezed
class DiscoverTabState extends PaginationState<PageModel>
    with _$DiscoverTabState {
  const DiscoverTabState._();
  const factory DiscoverTabState({
    @Default('') String id,
    @Default('') String endpoint,
    @Default(Page()) Page page,
    @Default(<PageModel>[]) List<PageModel> listPage,
    @Default(PagedStatus.initial) PagedStatus pagedStatus,
  }) = _DiscoverTabState;

  @override
  List<PageModel> get data => listPage;

  @override
  PagedStatus get status => pagedStatus;
}
