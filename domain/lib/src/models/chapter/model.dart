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
    required String url,
    required List<String> contents,
    @Default(0) int index,
  }) = _ChapterDetailModel;

  String get currentContent => contents.isNotEmpty ? contents[index] : '';
  bool get hasNext => index < contents.length - 1;
  bool get hasPrevious => index > 0;

  ChapterDetailModel get next => copyWith(index: index + 1);
  ChapterDetailModel get previous => copyWith(index: index - 1);
}
