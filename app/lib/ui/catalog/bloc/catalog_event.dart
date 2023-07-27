part of 'catalog_bloc.dart';

@freezed
class CatalogEvent extends PaginationEvent with _$CatalogEvent {
  const factory CatalogEvent.started({
    required String id,
    required String endpoint,
  }) = _Started;

  const factory CatalogEvent.sortSelected({
    required Sort sort,
  }) = _SortSelected;

  const factory CatalogEvent.itemPressed({
    required String sourceId,
    required String chapterEndpoint,
    required String novelEndpoint,
    required String currentChapterName,
    required int currentChapter,
  }) = _ItemPressed;
}
