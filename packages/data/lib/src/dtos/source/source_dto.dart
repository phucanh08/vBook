import 'package:freezed_annotation/freezed_annotation.dart';

import '../dtos.dart';

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


