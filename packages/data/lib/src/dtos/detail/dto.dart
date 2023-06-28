import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto.freezed.dart';
part 'dto.g.dart';

@freezed
class DetailDto with _$DetailDto {
  const factory DetailDto({
    String? name,
    String? cover,
    String? host,
    String? author,
    String? description,
    String? detail,
  }) = _DetailDto;

  factory DetailDto.fromJson(Map<String, Object?> json) =>
      _$DetailDtoFromJson(json);
}
