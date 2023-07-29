import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class NovelItemModel with _$NovelItemModel {
  const NovelItemModel._();
  const factory NovelItemModel({
    required String name,
    required String link,
    required String imgUrl,
    required String description,
    required String host,
  }) = _NovelItemModel;
}

@freezed
class NovelDetailModel with _$NovelDetailModel {
  const NovelDetailModel._();
  const factory NovelDetailModel({
    required String name,
    required String imgUrl,
    required String host,
    required String author,
    required String description,
    required String detail,
    required String firstChapterEndpoint,
    required String firstChapterName,
  }) = _NovelDetailModel;
}

@freezed
class NovelModel with _$NovelModel {
  const NovelModel._();
  const factory NovelModel({
    required int? id,
    required DateTime updatedAt,
    required String sourceId,
    required String sourceName,
    required String novelEndpoint,
    required String currentChapterEndpoint,
    required String name,
    required String imgUrl,
    required int totalChapters,
    required int currentChapter,
    required double scrollPercent,
    required String currentChapterName,
    required int timeRead,
  }) = _NovelModel;
}
