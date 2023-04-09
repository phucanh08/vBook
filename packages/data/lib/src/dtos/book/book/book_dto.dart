import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_dto.freezed.dart';

@freezed
class BookDto with _$BookDto {
  const factory BookDto({
    required num id,
    num? source,
    bool? favorite,
    num? lastUpdate,
    DateTime? dateAdded,
    num? viewerFlags,
    num? chapterFlags,
    num? coverLastModified,
    String? url,
    String? title,
    num? status,
    // UpdateStrategy updateStrategy,
    bool? initialized,
    String? artist,
    String? author,
    String? description,
    List<String>? genre,
    String? thumbnailUrl,
  }) = _BookDto;
}




