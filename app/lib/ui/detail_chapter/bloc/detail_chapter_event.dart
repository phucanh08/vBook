part of 'detail_chapter_bloc.dart';

@freezed
class DetailChapterEvent extends BaseEvent with _$DetailChapterEvent {
  const factory DetailChapterEvent.started({
    required String sourceId,
    required String endpoint,
    required String novelEndpoint,
  }) = _Started;

  const factory DetailChapterEvent.visibleAppBarChanged({
    required bool visible,
  }) = _VisibleAppBarChanged;

  const factory DetailChapterEvent.bookmarkChanged() = _BookmarkChanged;

  const factory DetailChapterEvent.pageScrolled({
    required int currentPage,
    required int totalPage,
    required double percent,
  }) = _PageScrolled;
}
