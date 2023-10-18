import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto.freezed.dart';
part 'dto.g.dart';

@freezed
class HomeDto with _$HomeDto {
  const factory HomeDto({
    String? title,
    String? input,
  }) = _HomeDto;

  factory HomeDto.fromJson(Map<String, Object?> json) => _$HomeDtoFromJson(json);
}
