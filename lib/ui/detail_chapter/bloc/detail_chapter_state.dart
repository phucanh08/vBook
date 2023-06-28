part of 'detail_chapter_bloc.dart';

@freezed
class DetailChapterState extends BaseState with _$DetailChapterState {
  const DetailChapterState._();
  const factory DetailChapterState({
    ChapterDetailModel? model,
    @Default(true) bool visibleAppBar,
    @Default(false) bool bookmarked,
    @Default([]) List<ChapterModel> catalog,
  }) = _DetailChapterState;

  int get currentChapNumber => 512;
}
