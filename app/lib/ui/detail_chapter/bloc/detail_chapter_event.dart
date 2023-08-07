part of 'detail_chapter_bloc.dart';

enum HorizontalDraggedEnum {
  forward,
  none,
  backward;

  factory HorizontalDraggedEnum.fromPrimaryVelocity(double primaryVelocity) {
    if (primaryVelocity < 0) {
      return forward;
    } else if (primaryVelocity > 0) {
      return backward;
    } else {
      return none;
    }
  }
}

@freezed
class DetailChapterEvent extends BaseEvent with _$DetailChapterEvent {
  const factory DetailChapterEvent.started({
    required String sourceId,
    required String novelEndpoint,
    required String chapterEndpoint,
    required double percent,
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

  const factory DetailChapterEvent.readyBookSaved(String chapterEndpoint) =
      _ReadyBookSaved;

  const factory DetailChapterEvent.horizontalDragged(
      HorizontalDraggedEnum type) = _HorizontalDragged;
}
