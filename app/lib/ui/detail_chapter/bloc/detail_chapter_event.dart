part of 'detail_chapter_bloc.dart';

@freezed
class DetailChapterEvent extends BaseEvent with _$DetailChapterEvent {
  const factory DetailChapterEvent.started({
    required String sourceId,
    required String novelEndpoint,
    required String chapterEndpoint,
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

  const factory DetailChapterEvent.readyBookSaved({
    required String sourceId,
    required String novelEndpoint,
    required String chapterEndpoint,
  }) = _ReadyBookSaved;
}
