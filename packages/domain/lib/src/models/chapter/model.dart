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
