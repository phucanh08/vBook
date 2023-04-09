import 'package:domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'library_book_dto.freezed.dart';

@freezed
class LibraryBookDto with _$LibraryBookDto {
  const factory LibraryBookDto({
    required Book book,
    required num category,
    required num totalChapters,
    required num readCount,
    required num bookmarkCount,
    required num latestUpload,
    required num chapterFetchedAt,
    required num lastRead,
  }) = _LibraryBookDto;
}



