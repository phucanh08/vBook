import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_dto.freezed.dart';

@freezed
class SourceDto with _$SourceDto {
  const factory SourceDto({
    String? id,
    DateTime? createAt,
    DateTime? updateAt,
    String? host,
    String? name,
    String? imgUrl,
    List<FilterDto>? filters,
    HomeDto? home,
  }) = _SourceDto;
}

@freezed
class FilterDto with _$FilterDto {
  const factory FilterDto({
    String? host,
    String? name,
    List<Map<String, int>>? items,
  }) = _FilterDto;
}

@freezed
class HomeDto with _$HomeDto {
  const factory HomeDto({
    String? title,
    String? function,
    String? url,
  }) = _HomeDto;
}
