import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

@freezed
class HomeDto with _$HomeDto {
  const factory HomeDto({
    String? title,
    String? input,
    String? script,
  }) = _HomeDto;

  factory HomeDto.fromJson(Map<String, Object?> json) =>
      _$HomeDtoFromJson(json);
}