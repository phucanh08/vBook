part of 'catalog_bloc.dart';

enum Sort {
  oldest,
  newest;
}

@freezed
class CatalogState extends PaginationState<ChapterModel> with _$CatalogState {
  const CatalogState._();
  const factory CatalogState({
    @Default('') String id,
    @Default('') String endpoint,
    @Default(Page()) Page page,
    @Default(Pagination(items: <ChapterModel>[], hasNext: false))
    Pagination<ChapterModel> paginationData,
    @Default(PagedStatus.initial) PagedStatus pagedStatus,
    @Default(Sort.oldest) Sort sort,
  }) = _CatalogState;

  @override
  Pagination<ChapterModel> get data => paginationData;

  @override
  PagedStatus get status => pagedStatus;
}
