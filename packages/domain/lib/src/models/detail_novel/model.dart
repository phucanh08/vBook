import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
class DetailNovelModel with _$DetailNovelModel {
  const DetailNovelModel._();
  const factory DetailNovelModel({
    required String name,
    required String cover,
    required String host,
    required String author,
    required String description,
    required String detail,
  }) = _DetailNovelModel;
}
