import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_dto.freezed.dart';

@freezed
class HistoryDto with _$HistoryDto {
  const factory HistoryDto({
    required num id,
    required num chapterId,
    required num readDuration,
  }) = _HistoryDto;
}
