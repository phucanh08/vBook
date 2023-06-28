import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class ChapterModel with _$ChapterModel {
  const ChapterModel._();
  const factory ChapterModel({
    required String name,
    required String endpoint,
  }) = _ChapterModel;
}

@freezed
class ChapterDetailModel with _$ChapterDetailModel {
  const ChapterDetailModel._();
  const factory ChapterDetailModel({
    required String content,
  }) = _ChapterDetailModel;
}

