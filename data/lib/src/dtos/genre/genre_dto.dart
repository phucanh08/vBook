import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_dto.freezed.dart';
part 'genre_dto.g.dart';

@freezed
class GenreDto with _$GenreDto {
  const factory GenreDto({
    String? title,
    String? input,
    String? script,
  }) = _GenreDto;

  factory GenreDto.fromJson(Map<String, Object?> json) =>
      _$GenreDtoFromJson(json);
}
