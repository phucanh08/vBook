import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class DetailChapterModel with _$DetailChapterModel {
  const DetailChapterModel._();
  const factory DetailChapterModel({
    required String content,
  }) = _DetailChapterModel;
}
