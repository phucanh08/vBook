part of 'detail_chapter_bloc.dart';

@freezed
class DetailChapterEvent extends BaseEvent with _$DetailChapterEvent {
  const factory DetailChapterEvent.started({
    required String id,
    required String endpoint,
  }) = _Started;

  const factory DetailChapterEvent.visibleAppBarChanged({
    required bool visible,
  }) = _VisibleAppBarChanged;

  const factory DetailChapterEvent.bookmarkChanged() = _BookmarkChanged;
}
