part of 'detail_chapter_bloc.dart';

@freezed
class DetailChapterState extends BaseState with _$DetailChapterState {
  const DetailChapterState._();

  const factory DetailChapterState({
    required AdjustableScrollController scrollController,
    @Default('') String sourceId,
    @Default('') String novelEndpoint,
    ChapterDetailModel? model,
    @Default(true) bool visibleAppBar,
    @Default(false) bool bookmarked,
    @Default([]) List<ChapterModel> catalog,
    @Default(1) int currentChapter,
    @Default(0) int currentPage,
    @Default(0) int totalPage,
    @Default(0.0) double percent,
  }) = _DetailChapterState;

  String get percentOfNovel => totalChapter == 0
      ? '0'
      : (((currentChapter - 1) * 100 + percent) / totalChapter)
          .toStringAsFixed(2);

  int get totalChapter => catalog.isNotEmpty ? catalog.length : 1;

  String get title =>
      catalog.isNotEmpty ? catalog[currentChapter - 1].name : '';

  String get url => model?.url ?? '';
}
