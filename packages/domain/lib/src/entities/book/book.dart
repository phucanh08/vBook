import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required String id,
    required String imageUrl,
    required String name,
    required String description,
    required String author,
    required int numOfChapters,
    required BookStatus status,
    @Default('https://metruyencv.com') String host,
  }) = _Book;
}

enum BookStatus { coming, full }
