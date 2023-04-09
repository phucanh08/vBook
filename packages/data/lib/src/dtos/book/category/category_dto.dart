import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.freezed.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const factory CategoryDto({
    required num id,
    String? name,
    num? order,
    num? flags,
  }) = _CategoryDto;
}