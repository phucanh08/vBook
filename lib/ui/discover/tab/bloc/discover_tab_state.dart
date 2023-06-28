part of 'discover_tab_bloc.dart';

@freezed
class DiscoverTabState extends PaginationState<NovelItemModel>
    with _$DiscoverTabState {
  const DiscoverTabState._();
  const factory DiscoverTabState({
    @Default('') String id,
    @Default('') String endpoint,
    @Default(Page()) Page page,
    @Default(Pagination(items: <NovelItemModel>[], hasNext: false)) Pagination<NovelItemModel> paginationData,
    @Default(PagedStatus.initial) PagedStatus pagedStatus,
  }) = _DiscoverTabState;

  @override
  Pagination<NovelItemModel> get data => paginationData;

  @override
  PagedStatus get status => pagedStatus;
}
