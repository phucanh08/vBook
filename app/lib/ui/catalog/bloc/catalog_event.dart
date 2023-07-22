part of 'catalog_bloc.dart';

@freezed
class CatalogEvent extends PaginationEvent with _$CatalogEvent {
  const factory CatalogEvent.started({
    required String id,
    required String endpoint,
  }) = _Started;

  const factory CatalogEvent.sortSelected({
    required Sort sort,
  }) = _sortSelected;

  const factory CatalogEvent.itemPressed({
    required String sourceId,
    required String endpoint,
    required String novelEndpoint,
    required String currentChapterName,
    required int currentChapter,
  }) = _itemPressed;
}
