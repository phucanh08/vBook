part of 'discover_tab_bloc.dart';

@freezed
class DiscoverTabState extends PaginationState<PageModel>
    with _$DiscoverTabState {
  const DiscoverTabState._();
  const factory DiscoverTabState({
    @Default('') String id,
    @Default('') String endpoint,
    @Default(Page()) Page page,
    @Default(Pagination(items: <PageModel>[], hasNext: false)) Pagination<PageModel> paginationData,
    @Default(PagedStatus.initial) PagedStatus pagedStatus,
  }) = _DiscoverTabState;

  @override
  Pagination<PageModel> get data => paginationData;

  @override
  PagedStatus get status => pagedStatus;
}
